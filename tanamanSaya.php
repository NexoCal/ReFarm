<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Re:Farm</title>
  <link rel="icon" href="images/Logo ReFarm.png" type="image/png">
  <link
    rel="stylesheet"
    href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200"
  />
  <link rel="stylesheet" href="css/tanamanSaya.css" />

  <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
  <script type="text/javascript">
    google.charts.load('current', {'packages':['corechart']});
    google.charts.setOnLoadCallback(drawChart);

    function drawChart() {
      var data = google.visualization.arrayToDataTable([
        ['Tanggal', 'Pohon Pisang', 'Padi'],
        ['1', 2, 4],
        ['2', 5, 7],
        ['3', 8, 10],
        ['4', 11, 13],
        ['5', 14, 17],
        ['6', 17, 20],
        ['7', 20, 23],
        ['8', 23, 27],
        ['9', 26, 30],
        ['10', 29, 33],
        ['11', 32, 37],
        ['12', 35, 40],
        ['13', 38, 43],
        ['14', 41, 47],
        ['15', 44, 50],
        ['16', 47, 53],
        ['17', 50, 57],
        ['18', 53, 60],
        ['19', 56, 63],
        ['20', 59, 67],
        ['21', 62, 70],
        ['22', 65, 73],
        ['23', 68, 77],
        ['24', 71, 80],
        ['25', 74, 83],
        ['26', 77, 87],
        ['27', 80, 90],
        ['28', 83, 93],
        ['29', 86, 97],
        ['30', 89, 100]
      ]);

      var options = {
        title: 'Perkembangan Tanaman Bulan Juni',
        curveType: 'function',
        legend: { position: 'right' }
      };

      var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));

      chart.draw(data, options);
    }
  </script>
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
        <a href="dashboard.html">
          <span class="material-symbols-outlined">dashboard</span>Dashboard
        </a>
      </li>
      <li>
        <a href="kelas.html">
          <span class="material-symbols-outlined">book</span>Kelas
        </a>
      </li>
      <li>
        <a href="tanamanSaya.php">
          <span class="material-symbols-outlined">Psychiatry</span>Tanaman Saya
        </a>
      </li>
      <li>
        <a href="diskusi.html">
          <span class="material-symbols-outlined">communication</span>Diskusi
        </a>
      </li>
      <li>
        <a href="logout.html">
          <span class="material-symbols-outlined">logout</span>Logout
        </a>
      </li>
    </ul>
    <div class="user-account">
      <div class="user-profile">
        <img src="images/user.jpg" alt="User Profile" />
        <div class="user-detail">
          <h3>Jacob</h3>
          <span>Logout</span>
        </div>
      </div>
    </div>
  </aside>
  <div class="main-content">
    <div class="dashboard-header">
      <h1><span class="material-symbols-outlined">Psychiatry</span> Tanaman Saya</h1>
      <div class="user-info">
        <span class="material-symbols-outlined">notifications</span>
        <span class="material-symbols-outlined">shopping_cart</span>
        <span class="material-symbols-outlined">account_circle</span>
        <span>Jacob</span>
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
              <h3>10</h3>
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
      <div class="progress-chart">
        <div id="curve_chart" style="width: 1000; height: 500px"></div>
      </div>
      <div class="daftar-tanaman">
        <h2>Daftar Tanaman Saya</h2>
        <div class="card-container">
          <div class="card">
            <a href="tanaman.php" class="active">
              <div class="card-image">
                <img src="images/pisang.jpg" alt="foto" width="250" height="250" border-radius="20">
              </div>
              <div class="card-title"><h2>Pohon Pisang</h2></div>
            </a>
            <div class="card-info">
              <div class="card-info-item">
                <span class="material-symbols-outlined">sync</span>
                1 Bulan 13 Hari
              </div>
              <div class="card-info-item">
                <span class="material-symbols-outlined">timelapse</span>
                2 Hari
              </div>
            </div>
          </div>
          <div class="card">
            <div class="card-image">
              <img src="images/pisang.jpg" alt="foto" width="250" height="250">
            </div>
            <div class="card-title">
              <a href="tambahTanaman.php">
                <h2>Tambah Tanaman</h2>
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>
</html>
