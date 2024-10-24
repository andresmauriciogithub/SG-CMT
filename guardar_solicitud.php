<?php
include 'conexion.php';

// Verificar si se envían los datos a través de AJAX
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $tipo_solicitud = $_POST['tipoSolicitud'];
    $servicio_producto = $_POST['servicioProducto'];
    $tipo_mantenimiento = isset($_POST['tipoMantenimiento']) ? $_POST['tipoMantenimiento'] : '';
    $descripcion = $_POST['descripcion'];

    // Preparar e insertar la solicitud en la base de datos
    $stmt = $conn->prepare("INSERT INTO solicitudes (tipo_solicitud, servicio_producto, tipo_mantenimiento, descripcion) VALUES (?, ?, ?, ?)");
    $stmt->bind_param("ssss", $tipo_solicitud, $servicio_producto, $tipo_mantenimiento, $descripcion);

    if ($stmt->execute()) {
        echo "Solicitud guardada correctamente";
    } else {
        echo "Error al guardar la solicitud: " . $stmt->error;
    }

    $stmt->close();
    $conn->close();
}
?>
