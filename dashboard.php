<?php

// include 'databasekey.php';
include 'php/koneksi.php';

?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Re:Farm</title>
  <link rel="icon" href="images/Logo ReFarm.png" type="image/png" />
  <link rel="stylesheet"
    href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
  <link rel="stylesheet" href="css/dashboard.css" />
</head>

<body>
  <aside class="sidebar">
    <div class="sidebar-header">
      <img src="images/Logo ReFarm.png" alt="logo" />
      <h2>Re:Farm</h2>
    </div>
    <ul class="sidebar-links">
      <h4>
        <div class="menu-separator"></div>
      </h4>
      <li>
        <a href="dashboard.php">
          <span class="material-symbols-outlined"> dashboard </span>Dashboard</a>
      </li>
      <li>
        <a href="kelas.php">
          <span class="material-symbols-outlined"> book </span>Kelas</a>
      </li>
      <li>
        <a href="tanamanSaya.php">
          <span class="material-symbols-outlined"> psychiatry </span>Tanaman Saya</a>
      </li>
      <li>
        <a href="diskusi.php">
          <span class="material-symbols-outlined"> communication </span>Diskusi</a>
      </li>
    </ul>
  </aside>
  <main class="main-content">
    <div class="dashboard-header">
      <h1> <span class="material-symbols-outlined"> dashboard </span> Dashboard</h1>
      <div class="user-info">
        <span class="material-symbols-outlined"> shopping_cart </span>
        <span class="material-symbols-outlined"> account_circle </span>
        <!-- <span><?php echo explode(" ", $rows['nama'])[0] . "..." ?></span> -->
      </div>
    </div>
    <section class="content-section">
      <div class="statistik-kamu">
        <h2>Statistik Kamu</h2>
        <div class="statistik-content">
          <div>
            <!-- <h3>Hai, <?php echo $rows['nama'] ?></h3> -->
          </div>
        </div>
      </div>
      <section>
        <div class="lanjutkan-melihat">
          <h2>Lanjutkan Melihat</h2>
          <div class="card-container">
            <?php
            include 'php/fungsi_kelas_utama.php';
            if ($hasil->num_rows > 0) {
              while ($data = $hasil->fetch_assoc()) {
                ?>
                <div class="card">
                  <img src="<?php echo $data['gambar']; ?>" alt="<?php echo $data['nama_kelas']; ?>" />
                  <div class="card-info">
                    <h3><?php echo $data['nama_kelas']; ?></h3>
                    <p><?php echo $data['jumlah_modul']; ?> Modul</p>
                    <div class="progress-bar">
                      <div class="progress" style="width: 70%"></div>
                    </div>
                  </div>
                </div>
              <?php
              }
            } else {
              echo "<p class='no-data'>Tidak ada data</p>";
            }
            ?>
          </div>
        </div>
      </section>
      <section>
        <div class="kelas-anda">
          <h2>Kelas Anda</h2>
          <div class="card-container">
          <?php
            include 'php/fungsi_kelas_utama.php';
            if ($hasil->num_rows > 0) {
              while ($data = $hasil->fetch_assoc()) {
                ?>
                <div class="card">
                  <img src="<?php echo $data['gambar']; ?>" alt="<?php echo $data['nama_kelas']; ?>" />
                  <div class="card-info">
                    <h3><?php echo $data['nama_kelas']; ?></h3>
                    <p><?php echo $data['jumlah_modul']; ?> Modul</p>
                    <div class="progress-bar">
                      <div class="progress" style="width: 70%"></div>
                    </div>
                  </div>
                </div>
              <?php
              }
            } else {
              echo "<p class='no-data'>Tidak ada data</p>";
            }
            ?>
          </div>
        </div>
      </section>
      <section>
        <div class="progres-tanaman">
          <h2>Progres Tanaman Saya</h2>
          <div class="card-container">
            <div class="card">
              <img src="images/'.$row['image'].'" alt="'.$row['name'].'" />
              <div class="card-info">
                <h3>'.$row['name'].'</h3>
                <div class="progress-bar">
                  <div class="progress" style="width: 70%;"></div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
    </section>
  </main>

  <!-- Tambahan JavaScript untuk carousel -->
  <script>
    document.addEventListener('DOMContentLoaded', function () {
      const cardContainers = document.querySelectorAll('.card-container');
      cardContainers.forEach(cardContainer => {
        const cards = cardContainer.querySelectorAll('.card');
        if (cards.length > 4) {
          cardContainer.style.overflowX = 'scroll'; // Mengaktifkan scrollbar untuk card-container
        } else {
          cardContainer.style.overflowX = 'hidden'; // Menyembunyikan scrollbar jika card kurang dari 4
        }
      });
    });
  </script>
</body>

</html>