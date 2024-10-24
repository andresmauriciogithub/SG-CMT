<?php
include 'conexion.php';

$sql = "SELECT * FROM solicitudes";
$result = $conn->query($sql);

$solicitudes = [];
while ($row = $result->fetch_assoc()) {
    $solicitudes[] = $row;
}

echo json_encode($solicitudes);

$conn->close();
?>
