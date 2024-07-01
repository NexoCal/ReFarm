<?php

include 'databasekey.php';

session_start();
$userID = $_SESSION['LoggedUserID'];

$sqlGrabData = "SELECT * FROM user WHERE id_user = '$userID'";

$results = mysqli_query($conn, $sqlGrabData);
$rows = mysqli_fetch_array($results, MYSQLI_ASSOC);

$sqlGrabDataTanaman = "SELECT * FROM tanaman WHERE id_user = $userID";

$resultsTanaman = mysqli_query($conn, $sqlGrabDataTanaman);
$numbering = 1;

$countTanaman = mysqli_query($conn, "SELECT COUNT('nama_tanaman') AS plant_counter FROM tanaman WHERE id_user = $userID");
$rowCount = mysqli_fetch_array($countTanaman);
$count = $rowCount['plant_counter'];


?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Re:Farm</title>
  <link rel="icon" href="images/Logo ReFarm.png" type="image/png">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
  <link rel="stylesheet" href="css/tanamanSaya.css" />
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
          <span class="material-symbols-outlined">dashboard</span>Dashboard
        </a>
      </li>
      <li>
        <a href="kelas.php">
          <span class="material-symbols-outlined">book</span>Kelas
        </a>
      </li>
      <li>
        <a href="tanamanSaya.php">
          <span class="material-symbols-outlined">Psychiatry</span>Tanaman Saya
        </a>
      </li>
      <li>
        <a href="diskusi.php">
          <span class="material-symbols-outlined">communication</span>Diskusi
        </a>
      </li>
    </ul>
  </aside>
  <div class="main-content">
    <div class="dashboard-header">
      <h1><span class="material-symbols-outlined">Psychiatry</span> Tanaman Saya</h1>
      <div class="user-info">
        <span class="material-symbols-outlined">notifications</span>
        <span class="material-symbols-outlined">shopping_cart</span>
        <span class="material-symbols-outlined">account_circle</span>
        <span><?php echo explode(" ", $rows['nama'])[0] . "..." ?></span>
      </div>
    </div>
    <div class="intro-section">
      <div class="intro-text">
        <h2>Statistik Perkembangan Tanaman</h2>
      </div>
    </div>
    <div class="content-section">
      <div class="statistik-kamu">
        <div class="statistik-aku">
          <h2>Statistik Perkembangan Tanaman</h2>
          <div class="statistik-content">
            <div>
              <p>Suhu rata-rata: 25°C</p>
              <p>Curah Hujan: Cukup Sering</p>
              <p>Musim: Hujan</p>
            </div>
          </div>
          <div class="statistik-cards">
            <div class="card">
              <p>Total Tanaman Yang Ditanam</p>
              <h3><?php echo $count?></h3>
            </div>
            <div class="card">
              <p>Tanaman yang sedang ditanam</p>
              <h3>5</h3>
            </div>
            <div class="card">
              <p>Tanaman yang berhasil ditanam</p>
              <h3>3</h3>
            </div>
            <div class="card">
              <p>Tanaman yang gagal ditanam</p>
              <h3>2</h3>
            </div>
          </div>
        </div>
      </div>
      <?php



      ?>
      <div class="progress-chart">
        <h2>Progress Tanaman</h2>
        <div class="progress-tabel">
          <div class="tabel-header">
            <div class="tabel-col">No</div>
            <div class="tabel-col">Nama Tanaman</div>
            <div class="tabel-col">Terakhir kali diupdate</div>
            <div class="tabel-col">Rata rata tinggi tanaman perhari</div>
            <div class="tabel-col">Status tanaman</div>
          </div>
          <?php
          while ($rowsTanaman = mysqli_fetch_array($resultsTanaman, MYSQLI_ASSOC)){
          ?>
            <div class="tabel-row" onclick="window.location.href='tanaman.php?idtanaman=<?php echo $rowsTanaman['id_tanaman'] ?>'">
              <div class="tabel-col"><?php echo $numbering ?></div>
              <div class="tabel-col"><?php echo $rowsTanaman['nama_tanaman'] ?></div>
              <div class="tabel-col"><?php

                                      $planttime = new DateTime($rowsTanaman['tanggal_tanam']);
                                      $todaytime = new DateTime(date("y-m-d"));

                                      $dateDiffTime = date_diff($planttime, $todaytime);

                                      echo $dateDiffTime->format('%d hari lalu')


                                      ?></div>
              <div class="tabel-col"><?php echo $rowsTanaman['tinggi_tanaman']." Cm" ?></div>
              <div class="tabel-col">Sehat</div>
            </div>
          <?php
          $numbering++;
          }
          ?>
          <div class="buttons">
            <button class="btn-add" id="btn-add">Tambah</button>
          </div>
        </div>
        <script>
          document.getElementById('btn-add').addEventListener('click', function() {
            window.location.href = 'tambahTanaman.php';
          });
        </script>
      </div>
    </div>
  </div>
  </div>
</body>

</html>