<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Re:Farm Registration</title>
    <link rel="stylesheet" href="./css/register.css">
    <link rel="icon" href="./images/Logo ReFarm.png" type="image/png">
</head>

<body>
    <div class="container">
        <div class="form-container">
            <div class="logo">
                <img src="./images/logo.png" alt="Re:Farm Logo">
            </div>
            <form action="php/register_controller.php" method="POST">
                <label for="email">Nama</label>
                <input type="text" id="nama" name="nama" required>

                <label for="email">Email</label>
                <input type="email" id="email" name="email" required>

                <label for="password">Password</label>
                <input type="password" id="password" name="password" required>

                <label for="provinsi">Alamat</label>
                <div class="alamat">
                    <input type="text" id="provinsi" name="provinsi" placeholder="Provinsi" required>
                    <input type="text" id="kota" name="kota" placeholder="Kota atau Kabupaten" required>
                </div>

                <label for="tanggal-lahir">Tanggal Lahir</label>
                <div class="tanggal-lahir">
                    <input type="number" id="day" name="day" min="1" max="31" placeholder="DD" required>
                    <input type="number" id="month" name="month" min="1" max="12" placeholder="MM" required>
                    <input type="number" id="year" name="year" min="1900" max="2023" placeholder="YYYY" required>
                </div>

                <button type="submit" name="submit">Daftar</button>
            </form>
        </div>
    </div>
</body>

</html>