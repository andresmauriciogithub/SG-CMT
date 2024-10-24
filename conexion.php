<?php
$host = "localhost";  // Servidor de MySQL
$user = "root";       // Usuario de MySQL
$password = "";       // Contraseña (en XAMPP por defecto está en blanco)
$dbname = "portal_solicitudes";  // Nombre de la base de datos

// Crear conexión
$conn = new mysqli($host, $user, $password, $dbname);

// Verificar la conexión
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}
?>
