<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Inicio de Sesión - Taller de Motos</title>
    <link rel="stylesheet" href="login.css">
</head>
<body>
    <div class="wrapper">
        <div class="login-box">
            <!-- Aquí se inserta el logo -->
            <div class="logo">
                <img src="images/THE DOCTOR’S.png" alt="Logo del Taller de Motos" style="width: 200px; height: auto; display: block; margin: 0 auto 20px;">
            </div>
            <h2>Inicio de Sesión</h2>
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

                $sql = "SELECT * FROM usuarios WHERE username='$usuario' AND password='$clave'";
                $result = $conn->query($sql);

                if ($result->num_rows > 0) {
                    header("Location: inventario.php");
                    exit();
                } else {
                    echo "<p>Nombre de usuario o contraseña incorrectos.</p>";
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
                <div class="remember-forgot">
                    <label>
                        <input type="checkbox" name="remember"> Recuérdame
                    </label>
                    <a href="#">¿Olvidaste tu contraseña?</a>
                </div>
                <button type="submit">Iniciar Sesión</button>
                <div class="Register-link">
                    <p>¿No tienes cuenta? <a href="register.php">Regístrate</a></p>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
