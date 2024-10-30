<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "taller_motos";

// Crear conexión
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar conexión
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

// Insertar nuevo producto si el formulario es enviado
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['action']) && $_POST['action'] == 'add') {
    $nombre = $_POST['nombre'];
    $descripcion = $_POST['descripcion'];
    $cantidad = $_POST['cantidad'];

    $sql = "INSERT INTO repuestos_consumibles (nombre, descripcion, cantidad) VALUES ('$nombre', '$descripcion', '$cantidad')";
    
    if ($conn->query($sql) === TRUE) {
        echo "<p>Producto agregado exitosamente.</p>";
    } else {
        echo "<p>Error: " . $sql . "<br>" . $conn->error . "</p>";
    }
}

// Editar la cantidad de un producto
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['action']) && $_POST['action'] == 'edit') {
    $id_repuesto = $_POST['id_herramienta']; // Corregido el nombre a 'id_herramienta'
    $cantidad = $_POST['cantidad'];
    
    $sql = "UPDATE repuestos_consumibles SET cantidad='$cantidad' WHERE id_repuesto ='$id_repuesto'";
    
    if ($conn->query($sql) === TRUE) {
        echo "<p>Cantidad actualizada exitosamente.</p>";
    } else {
        echo "<p>Error: " . $sql . "<br>" . $conn->error . "</p>";
    }
}

// Obtener todos los productos de la base de datos
$sql = "SELECT * FROM repuestos_consumibles";
$result = $conn->query($sql);

$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inventario de Repuestos Consumibles</title>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="bases.css">
    <style>
        .low-stock {
            background-color: #ffdddd; /* Fondo rojo claro para productos agotados */
            color: #d9534f; /* Texto en rojo */
            font-weight: bold;
        }
        .notification {
            color: red;
            font-weight: bold;
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Inventario de Repuestos Consumibles</h1>
        <form method="POST" action="">
            <input type="hidden" name="action" value="add">
            <div class="input-group">
                <input type="text" name="nombre" placeholder="Nombre del Producto" required>
                <input type="text" name="descripcion" placeholder="Descripción del Producto" required>
                <input type="number" name="cantidad" placeholder="Cantidad" required>
            </div>
            <button type="submit">Agregar Producto</button>
        </form>
        
        <h2>Lista de Repuestos</h2>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nombre</th>
                    <th>Descripción</th>
                    <th>Cantidad</th>
                </tr>
            </thead>
            <tbody>
            <?php
                if ($result->num_rows > 0) {
                    while ($row = $result->fetch_assoc()) {
                        $cantidad = $row["cantidad"];
                        $cantidad_class = $cantidad == 0 ? "low-stock" : ""; // Clase CSS si la cantidad es 0

                        echo "<tr class='$cantidad_class'>";
                        echo "<td>" . $row["id_repuesto"] . "</td>";
                        echo "<td>" . $row["nombre"] . "</td>";
                        echo "<td>" . $row["descripcion"] . "</td>";
                        echo "<td>
                                <form method='POST' action='' style='display:inline-block;'>
                                    <input type='hidden' name='id_herramienta' value='" . $row["id_repuesto"] . "'>
                                    <input type='hidden' name='action' value='edit'>
                                    <input type='number' name='cantidad' value='" . $row["cantidad"] . "' required>
                                    <button type='submit'>Editar</button>
                                </form>
                              </td>";
                        echo "</tr>";

                        // Mostrar mensaje de notificación si la cantidad es 0
                        if ($cantidad == 0) {
                            echo "<tr><td colspan='4' class='notification'>¡Atención! El repuesto '" . $row["nombre"] . "' necesita reabastecimiento.</td></tr>";
                        }
                    }
                } else {
                    echo "<tr><td colspan='4'>No se encontraron productos.</td></tr>";
                }
            ?>
            </tbody>
        </table>
        <button onclick="location.href='inventario.php'">Volver a Inventario</button>
    </div>
</body>
</html>