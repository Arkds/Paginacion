<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "farmacia";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Error de conexión: " . $conn->connect_error);
}

$page = $_POST['page'];

$resultsPerPage = $_POST['resultsPerPage'];

$startFrom = ($page - 1) * $resultsPerPage;

$searchInput = $_POST['searchInput'];

$query = "SELECT * FROM medicamentos WHERE nombre LIKE '%$searchInput%' LIMIT $startFrom, $resultsPerPage";
$result = $conn->query($query);

if ($result->num_rows > 0) {
    echo "<table class='table'>";
    echo "<tr><th>ID</th><th>Nombre</th><th>Descripción</th></tr>";
    while ($row = $result->fetch_assoc()) {
        echo "<tr><td>" . $row["id"] . "</td><td>" . $row["nombre"] . "</td><td>" . $row["descripcion"] . "</td></tr>";
    }
    echo "</table>";
} else {
    echo "No se encontraron resultados.";
}

$queryCount = "SELECT COUNT(*) AS count FROM medicamentos WHERE nombre LIKE '%$searchInput%'";
$resultCount = $conn->query($queryCount);
$rowCount = $resultCount->fetch_assoc();
$totalPages = ceil($rowCount["count"] / $resultsPerPage);

echo "<div id='pagination' class='pagination justify-content-center'>";
if ($page > 1) {
    echo "<a class='btn btn-primary mr-2' href='javascript:void(0);' onclick='loadTableData(" . ($page - 1) . ")'>&laquo; Anterior</a>";
}
for ($i = 1; $i <= $totalPages; $i++) {
    echo "<a class='btn btn-primary mr-2' href='javascript:void(0);' onclick='loadTableData($i)'>$i</a>";
}
if ($page < $totalPages) {
    echo "<a class='btn btn-primary' href='javascript:void(0);' onclick='loadTableData(" . ($page + 1) . ")'>Siguiente &raquo;</a>";
}
echo "</div>";

$conn->close();
?>
