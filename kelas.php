<?php 
include 'databasekey.php';
session_start();
$userID = $_SESSION['LoggedUserID'];
$sqlGrabData = "SELECT * FROM user WHERE id_user = '$userID'";
$results = mysqli_query($conn, $sqlGrabData);
$rows = mysqli_fetch_array($results, MYSQLI_ASSOC);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Re:Farm</title>
    <link rel="icon" href="images/logo.png" type="image/png" />
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <link rel="stylesheet" href="css/kelas.css" />
</head>
<body>
    <aside class="sidebar">
        <div class="sidebar-header">
            <img src="images/Logo ReFarm.png" alt="logo" />
            <h2>Re:Farm</h2>
        </div>
        <ul class="sidebar-links">
            <h4><div class="menu-separator"></div></h4>
            <li><a href="dashboard.php"><span class="material-symbols-outlined">dashboard</span>Dashboard</a></li>
            <li><a href="kelas.php" class="active"><span class="material-symbols-outlined">book</span>Kelas</a></li>
            <li><a href="tanamanSaya.php"><span class="material-symbols-outlined">psychiatry</span>Tanaman Saya</a></li>
            <li><a href="diskusi.php"><span class="material-symbols-outlined">communication</span>Diskusi</a></li>
            <li><a href="logout.php"><span class="material-symbols-outlined">logout</span>Logout</a></li>
        </ul>
    </aside>
    <main class="main-content">
        <div class="dashboard-header">
            <div class="search-bar">
                <input type="text" placeholder="Cari Kelas yang Anda Inginkan">
                <span class="material-symbols-outlined">search</span>
            </div>
            <div class="user-info">
                <span class="material-symbols-outlined">notifications</span>
                <span class="material-symbols-outlined">shopping_cart</span>
                <span class="material-symbols-outlined">account_circle</span>
                <span>Jacob</span>
            </div>
        </div>
        <!-- Add hero section -->
        <div class="hero-section">
            <img src="./images/irrigation-vegetables-into-sunset_128929-5.jpg" alt="Solusi Irigasi Untuk Lahan Kering">
            <div class="hero-text">
                <h1>Solusi Irigasi Untuk Lahan Kering</h1>
                <a href="#" class="info-button">Info Selengkapnya</a>
            </div>
        </div>
        <div class="carousel-indicators">
            <span class="indicator active"></span>
            <span class="indicator"></span>
            <span class="indicator"></span>
        </div>

        <div class="recommendations">
            <h2>Kelas Kamu</h2>
            <div class="card-container">
            <?php 
                    include 'php/fungsi_kelas_utama.php';
                    if ($hasil->num_rows>0){
                        while ($data = $hasil->fetch_assoc()){
                ?>
                 <a href="kelas2.php?id=<?php echo $data['id_kelas'];?>" class="card">
                    <img src="<?php echo $data['gambar']; ?>"
                        alt="Pemprosesan Hasil Pertanian">
                    <div class="card-content">
                        <h3><?php echo $data['nama_kelas'] ?></h3>
                        <p><span class="material-symbols-outlined">schedule</span> <?php  echo $data['durasi']; ?> Bulan <span
                                class="material-symbols-outlined">library_books</span> <?php  echo $data['jumlah_modul']; ?> Modul <span
                                </p>
                    </div>
                </a>
                <?php 
                        }
                    }else{
                        echo "error";
                    }
                ?>
            </div>
        </div>
        <div class="all-classes">
            <h2>Semua Kelas</h2>
            <div class="card-container">
                <?php 
                    include 'php/fungsi_kelas_utama.php';
                    if ($result->num_rows>0){
                        while ($row = $result->fetch_assoc()){
                ?>
                 <a href="kelas1.php?id=<?php echo $row['id_kelas'];?>" class="card">
                    <img src="<?php echo $row['gambar']; ?>"
                        alt="Pemprosesan Hasil Pertanian">
                    <div class="card-content">
                        <h3><?php echo $row['nama_kelas'] ?></h3>
                        <p><span class="material-symbols-outlined">schedule</span> <?php  echo $row['durasi']; ?> Minggu <span
                                class="material-symbols-outlined">library_books</span> <?php  echo $row['jumlah_modul']; ?> Modul <span
                                class="material-symbols-outlined">paid</span> <?php  echo $row['harga']; ?> </p>
                    </div>
                </a>
                <?php 
                        }
                    }else{
                        echo "error";
                    }
                ?>
            </div>
        </div>
    </main>
</body>
</html>
