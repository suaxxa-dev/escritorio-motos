<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Registro - Taller de Motos</title>
    <link rel="stylesheet" href="login.css">
</head>
<body>
    <div class="wrapper">
        <div class="login-box">
            <h2>Registro</h2>
            <?php
            if ($_SERVER["REQUEST_METHOD"] == "POST") {
                $servername = "localhost";
                $username = "root";
                $password = "";
                $dbname = "login_motos";
                
                $conn = new mysqli($servername, $username, $password, $dbname);

                if ($conn->connect_error) {
                    die("Conexión fallida: " . $conn->connect_error);
                }

                $usuario = $_POST['username'];
                $clave = $_POST['password'];

                // Verificar si el nombre de usuario ya existe
                $sql = "SELECT * FROM usuarios WHERE username='$usuario'";
                $result = $conn->query($sql);

                if ($result->num_rows > 0) {
                    echo "<p>El nombre de usuario ya está en uso.</p>";
                } else {
                    // Insertar el nuevo usuario en la base de datos
                    $sql = "INSERT INTO usuarios (username, password) VALUES ('$usuario', '$clave')";
                    if ($conn->query($sql) === TRUE) {
                        echo "<p>¡Registro exitoso!</p>";
                    } else {
                        echo "<p>Error: " . $sql . "<br>" . $conn->error . "</p>";
                    }
                }

                $conn->close();
            }
            ?>
            <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="POST">
                <div class="input-box">
                    <input type="text" name="username" required>
                    <label for="username">Usuario</label>
                </div>
                <div class="input-box">
                    <input type="password" name="password" required>
                    <label for="password">Contraseña</label>
                </div>
                <button type="submit">Registrarse</button>
                <div class="Register-link">
                    <p>¿Ya tienes cuenta? <a href="login.php">Inicia sesión</a></p>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
