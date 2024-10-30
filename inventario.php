<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inventario</title>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="inventario.css">
</head>
<body>
    <div class="wrapper">
        <div class="container">
            <button class="logout" onclick="logout()">Cerrar Sesión</button>
            <h1>Inventario</h1>
            <h2>Base de Datos Taller de Motos</h2>
            <div class="inventory-box">
                <ul class="inventory-list centered">
                    <li><a href="equipos_electronicos.php">Equipos Electrónicos</a></li>
                    <li><a href="equipos_seguridad.php">Equipos de Seguridad</a></li>
                    <li><a href="herramientas.php">Herramientas</a></li>
                    <li><a href="otrosaccesorios.php">Otros Accesorios</a></li>
                    <li><a href="limpieza.php">Productos de Limpieza</a></li>
                    <li><a href="repuestos.php">Repuestos Consumibles</a></li>
                </ul>
            </div>
        </div>
    </div>

    <script>
        function logout() {
            // Aquí puedes añadir la lógica para cerrar sesión
            alert("Has cerrado sesión.");
            window.location.href = "login.php"; // Redirige a la página de inicio de sesión
        }
    </script>
</body>
</html>
