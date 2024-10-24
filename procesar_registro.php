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
    $tipoUsuario = $_POST['tipo_usuario'];
    $nombres = $_POST['nombres'] ?? '';
    $apellidos = $_POST['apellidos'] ?? '';
    $correo = $_POST['correo_electronico'];
    $contrasena = $_POST['contrasena'];
    $area = $_POST['area'] ?? '';
    $cargo = $_POST['cargo'] ?? '';
    $nombreEmpresa = $_POST['nombre_empresa'] ?? '';
    $nit = $_POST['nit'] ?? '';
    $personaAcargo = $_POST['persona_a_cargo'] ?? '';
    $identificacion = $_POST['identificacion'] ?? '';
    $telefono = $_POST['telefono'] ?? '';
    $eps = $_POST['eps'] ?? '';
    $arl = $_POST['arl'] ?? '';
    $productoServicio = $_POST['producto_servicio'] ?? '';
    $direccion = $_POST['direccion'] ?? '';
    $nombreContacto = $_POST['nombre_contacto'] ?? '';

    // Consulta SQL para insertar los datos
    $contrasenaHashed = password_hash($contrasena, PASSWORD_DEFAULT);

    $sql = "INSERT INTO usuarios (tipo_usuario, nombres, apellidos, correo_electronico, contrasena, area, cargo, nombre_empresa, nit, persona_a_cargo, identificacion, telefono, eps, arl, producto_servicio, direccion, nombre_contacto)
            VALUES ('$tipoUsuario', '$nombres', '$apellidos', '$correo', '$contrasenaHashed', '$area', '$cargo', '$nombreEmpresa', '$nit', '$personaAcargo', '$identificacion', '$telefono', '$eps', '$arl', '$productoServicio', '$direccion', '$nombreContacto')";

    if ($conn->query($sql) === TRUE) {
        echo "Usuario registrado con éxito";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }

    $conn->close();
}
?>
