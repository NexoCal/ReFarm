<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Re:Farm Login</title>
    <link rel="stylesheet" href="./css/login.css">
    <link rel="icon" href="./images/Logo ReFarm.png" type="image/png">
</head>
<body>
    <div class="container">
        <div class="form-container">
            <div class="logo">
                <img src="./images/logo.png" alt="Re:Farm Logo">
            </div>
            <p class="intro-text">Ayo masuk ke akunmu dan mulai mencari tahu dunia pertanian</p>
            <form action="php/login_controller.php" method="POST">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" required>

                <label for="password">Password</label>
                <input type="password" id="password" name="password" required>

                <div class="buttons">
                    <a href="./dashboard.html"><button type="submit" class="login-button" name="login">Masuk</button></a>
                    <span>Belum punya akun?</span>
                    <a href="./register.php"><button type="button" class="register-button">Daftar</button></a>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
