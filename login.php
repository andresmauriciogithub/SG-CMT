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
    $tipoUsuario = $_POST['tipo_usuario'];

    // Preparar consulta para verificar el usuario
    $sql = "SELECT * FROM usuarios WHERE correo_electronico=? AND tipo_usuario=?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("ss", $correo, $tipoUsuario);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        if (password_verify($contrasena, $row['contrasena'])) {
            // Iniciar sesión y redirigir según tipo de usuario
            session_start();
            $_SESSION['correo'] = $correo;
            $_SESSION['tipo_usuario'] = $row['tipo_usuario'];
             
            // Enviar mensaje de éxito y URL de redirección
            echo "Login exitoso. REDIRIGIR: ";
            
            switch ($row['tipo_usuario']) {
                case 'ClienteInterno':
                    echo "4gestion_cliente.html";
                    break;
                case 'ClienteExterno':
                    echo "4gestion_cliente.html";
                    break;
                case 'CoordinadorCMT':
                    echo "6gestion_solicitudes.html";
                    break;
                case 'GerenteGeneral':
                    echo "5gerente_gestion_solicitudes.html";
                    break;
                case 'ProveedorNatural':
                    echo "10gestion_proveedor.html";
                    break;
                case 'ProveedorJuridico':
                    echo "10gestion_proveedor.html";
                    break;
                default:
                    echo "Tipo de usuario no reconocido";
            }
        } else {
            echo "Contraseña incorrecta";
        }
    } else {
        echo "Usuario no encontrado o tipo de usuario incorrecto";
    }


    $stmt->close();
    $conn->close();
}


?>
