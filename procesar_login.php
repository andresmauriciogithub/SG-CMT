<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "registro_usuarios";

// Crear conexión
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar conexión
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $correo = $_POST['correo_electronico'];
    $contrasena = $_POST['contrasena'];
    $tipoUsuario = $_POST['tipo_usuario']; // 

    // Depuración: Verificar que los datos se estén capturando correctamente
    echo "Correo: $correo <br>";
    echo "Contraseña (sin hash): $contrasena <br>";
    echo "Tipo de usuario: $tipoUsuario <br>";

    // Consulta SQL para verificar el usuario
    $sql = "SELECT * FROM usuarios WHERE correo_electronico='$correo' AND tipo_usuario='$tipoUsuario'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();

        // Depuración: Verificar los datos del usuario en la base de datos
        echo "Contraseña almacenada (hash): " . $row['contrasena'] . "<br>";

        // Verificar la contraseña
        if (password_verify($contrasena, $row['contrasena'])) {
            echo "Login exitoso";
            
            // Redirigir según el tipo de usuario
            switch ($row['tipo_usuario']) {
                case 'ClienteInterno':
                    header('Location: 4gestion_cliente.html');
                    exit;
                case 'ClienteExterno':
                    header('Location: 4gestion_cliente.html');
                    exit;
                case 'CoordinadorCMT':
                    header('Location: 6gestion_solicitudes.html');
                    exit;
                case 'GerenteGeneral':
                    header('Location: 5gerente_gestion_solicitudes.html');
                    exit;
                case 'ProveedorNatural':
                    header('Location: 10gestion_proveedor.html');
                    exit;
                case 'ProveedorJuridico':
                    header('Location: 10gestion_proveedor.html');
                    exit;
                default:
                    echo "Tipo de usuario no reconocido";
                    break;
            }
        } else {
            echo "Contraseña incorrecta";
        }
    } else {
        echo "Usuario no encontrado o tipo de usuario incorrecto";
    }

    $conn->close();
}
?>
