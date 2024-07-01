<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Re:Farm - Solusi Irigasi</title>
    <link rel="icon" href="./images/Logo ReFarm.png" type="image/png">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200">
    <link rel="stylesheet" href="./css/kelas1.css">
</head>

<body>
    <aside class="sidebar">
    <div class="sidebar-header">
            <img src="images/Logo ReFarm.png" alt="logo" />
            <h2>Re:Farm</h2>
        </div>
        <ul class="sidebar-links">
            <li><a href="dashboard.php"><span class="material-symbols-outlined">dashboard</span>Dashboard</a></li>
            <li><a href="kelas.php" class="active"><span class="material-symbols-outlined">book</span>Kelas</a></li>
            <li><a href="tanamanSaya.php"><span class="material-symbols-outlined">psychiatry</span>Tanaman Saya</a></li>
            <li><a href="diskusi.php"><span class="material-symbols-outlined">communication</span>Diskusi</a></li>
            <li><a href="javascript:history.back()"><span class="material-symbols-outlined">arrow_back</span>Kembali</a></li>
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
        <section class="class-details">
            <?php
            include 'php/koneksi.php';

            if (isset($_GET['id'])) {
                $id_kelas = $_GET['id'];

                $query = "SELECT * FROM kelas WHERE kelas.id_kelas = $id_kelas";
                $ambil_modul = "SELECT * FROM modul WHERE id_kelas = $id_kelas ORDER BY urutan_modul ASC";
                $data_modul = $koneksi->query($ambil_modul);
                $result = $koneksi->query($query);
                if ($result->num_rows > 0) {
                    $row = $result->fetch_assoc();
                    ?>
                    <div class="class-header">
                        <img class="class-image" src="<?php echo $row['gambar'] ?>" alt="Class Image">
                        <div class="class-info">
                            <h1><?php echo $row['nama_kelas']; ?></h1>
                            <p>87 orang sedang mengikuti kelas ini</p>
                            <div class="class-meta">
                                <span class="material-symbols-outlined">book</span><?php echo $row['jumlah_modul']; ?> Modul
                                <span class="material-symbols-outlined">schedule</span><?php echo $row['durasi']; ?> Bulan
                                <span class="material-symbols-outlined">attach_money</span>Rp <?php echo $row['harga']; ?>
                            </div>
                            <div class="class-actions">
                                <button class="btn-cart"><span class="material-symbols-outlined">add_shopping_cart</span>Masukkan Keranjang</button>
                                <button class="btn-favorite"><span class="material-symbols-outlined">favorite</span>Tambah Favorite</button>
                            </div>
                        </div>
                    </div>
                    <div class="class-tabs">
                        <button class="tab active" onclick="openTab(event, 'Deskripsi')">Deskripsi</button>
                        <button class="tab" onclick="openTab(event, 'Modul')">Modul</button>
                        <button class="tab" onclick="openTab(event, 'Ulasan')">Ulasan</button>
                    </div>
                    <div id="Deskripsi" class="tab-content active">
                        <p><?php echo $row['deskripsi']; ?></p>
                    </div>
                    <div id="Modul" class="tab-content" style="display: none;">
                        <?php
                        if ($data_modul->num_rows > 0) {
                            $nomor = 1;
                            while ($hasil_modul = $data_modul->fetch_assoc()) {
                                ?>
                                <div class="module-list">
                                    <div class="module-item">BAB <?php echo $nomor++, " : ", $hasil_modul['nama_modul']; ?></div>
                                </div>
                                <?php
                            }
                        }
                        ?>
                    </div>
                    <div id="Ulasan" class="tab-content" style="display: none;">
                        <?php
                        include "php/fungsi_ulasan.php";
                        $query_ulasan = "SELECT ulasan.*, user.nama FROM ulasan 
                                         LEFT JOIN user ON ulasan.id_user = user.id_user 
                                         WHERE ulasan.id_kelas = $id_kelas";
                        $result_ulasan = $koneksi->query($query_ulasan);
                        
                        if ($result_ulasan) {
                            if ($result_ulasan->num_rows > 0) {
                                while ($ulasan = $result_ulasan->fetch_assoc()) {
                                    ?>
                                    <div class="review">
                                        <div class="review-author">
                                            <span class="material-symbols-outlined">person</span>
                                            <span><?php echo $ulasan["nama"] ?></span>
                                        </div>
                                        <div class="review-rating">
                                            <?php
                                            for ($i = 1; $i <= $ulasan["jumlah_bintang"]; $i++) {
                                                ?>
                                                <span class="material-symbols-outlined">star</span>
                                                <?php
                                            }
                                            ?>
                                        </div>
                                        <div class="review-content">
                                            <p><?php echo $ulasan["isi_ulasan"]; ?></p>
                                        </div>
                                    </div>
                                    <?php
                                }
                            } else {
                                echo "<p>Belum ada ulasan untuk kelas ini.</p>";
                            }
                        } else {
                            echo "<p>Error: " . $koneksi->error . "</p>";
                        }
                        ?>
                    </div>
                    <?php
                } else {
                    echo "<p>Kelas tidak ditemukan.</p>";
                }
            } else {
                echo "<p>ID Kelas tidak ditemukan.</p>";
            }
            ?>
        </section>
    </main>

    <script>
        function openTab(evt, tabName) {
            var i, tabcontent, tablinks;

            tabcontent = document.getElementsByClassName("tab-content");
            for (i = 0; i < tabcontent.length; i++) {
                tabcontent[i].style.display = "none";
            }

            tablinks = document.getElementsByClassName("tab");
            for (i = 0; i < tablinks.length; i++) {
                tablinks[i].className = tablinks[i].className.replace(" active", "");
            }

            document.getElementById(tabName).style.display = "block";
            evt.currentTarget.className += " active";
        }

        document.addEventListener('DOMContentLoaded', function () {
            // Ensure only the Deskripsi tab content is shown
            document.getElementById('Deskripsi').style.display = 'block';
        });
    </script>
</body>

</html>
