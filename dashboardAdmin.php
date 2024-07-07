<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Re:Farm</title>
    <link rel="icon" href="images/Logo ReFarm.png" type="image/png" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <link rel="stylesheet" href="css/dashboardAdmin.css" />
    <link rel="stylesheet" href="css/grid.css" />
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <?php
    // Database connection
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "refarm";

    // Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Fetch data for province chart
    $sql = "SELECT provinsi, COUNT(*) as pengguna FROM user GROUP BY provinsi";
    $result = $conn->query($sql);

    $data = [];
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            $data[] = [$row['provinsi'], (int)$row['pengguna']];
        }
    }

    // Fetch data for age category chart
    $sql_age = "
        SELECT 
            SUM(CASE WHEN TIMESTAMPDIFF(YEAR, tanggal_lahir, CURDATE()) < 20 THEN 1 ELSE 0 END) AS kurang_dari_20,
            SUM(CASE WHEN TIMESTAMPDIFF(YEAR, tanggal_lahir, CURDATE()) BETWEEN 20 AND 30 THEN 1 ELSE 0 END) AS antara_20_30,
            SUM(CASE WHEN TIMESTAMPDIFF(YEAR, tanggal_lahir, CURDATE()) > 30 THEN 1 ELSE 0 END) AS lebih_dari_30
        FROM user";
    $result_age = $conn->query($sql_age);

    $age_data = [];
    if ($result_age->num_rows > 0) {
        $row = $result_age->fetch_assoc();
        $age_data = [
            ['Kurang dari 20 tahun', (int)$row['kurang_dari_20']],
            ['20-30 tahun', (int)$row['antara_20_30']],
            ['Lebih dari 30 tahun', (int)$row['lebih_dari_30']]
        ];
    }

    // Fetch data for category chart
    $sql_category = "
        SELECT kk.nama_kategori, COUNT(uk.id_user) as jumlah_pengguna
        FROM user_kelas uk
        JOIN kelas k ON uk.id_kelas = k.id_kelas
        JOIN kategori_kelas kk ON k.id_kategori = kk.id_kategori
        GROUP BY kk.nama_kategori";
    $result_category = $conn->query($sql_category);

    $category_data = [];
    if ($result_category->num_rows > 0) {
        while($row = $result_category->fetch_assoc()) {
            $category_data[] = [$row['nama_kategori'], (int)$row['jumlah_pengguna']];
        }
    }

    // Fetch data for class chart
    $sql_class = "
        SELECT k.nama_kelas, COUNT(uk.id_user) as jumlah_pengguna
        FROM user_kelas uk
        JOIN kelas k ON uk.id_kelas = k.id_kelas
        GROUP BY k.nama_kelas";
    $result_class = $conn->query($sql_class);

    $class_data = [];
    if ($result_class->num_rows > 0) {
        while($row = $result_class->fetch_assoc()) {
            $class_data[] = [$row['nama_kelas'], (int)$row['jumlah_pengguna']];
        }
    }

    // Fetch data for plant category chart
    $sql_plant_category = "
        SELECT kt.nama_kategori, COUNT(t.id_tanaman) as jumlah_tanaman
        FROM tanaman t
        JOIN kategori_tanaman kt ON t.id_kategori = kt.id_kategori
        GROUP BY kt.nama_kategori";
    $result_plant_category = $conn->query($sql_plant_category);

    $plant_category_data = [];
    if ($result_plant_category->num_rows > 0) {
        while($row = $result_plant_category->fetch_assoc()) {
            $plant_category_data[] = [$row['nama_kategori'], (int)$row['jumlah_tanaman']];
        }
    }

    $conn->close();
    ?>

    <script type="text/javascript">
      google.charts.load('current', {
        'packages':['geochart', 'corechart', 'table']
      });
      google.charts.setOnLoadCallback(drawRegionsMap);
      google.charts.setOnLoadCallback(drawPieCharts);
      google.charts.setOnLoadCallback(drawTable);

      function drawRegionsMap() {
        var data = google.visualization.arrayToDataTable([
          ['Province', 'Pengguna'],
          <?php
          foreach ($data as $d) {
              echo "['" . $d[0] . "', " . $d[1] . "],";
          }
          ?>
        ]);

        var options = {
          region: 'ID', // Indonesia
          displayMode: 'regions',
          resolution: 'provinces'
        };

        var chart = new google.visualization.GeoChart(document.getElementById('regions_div'));

        chart.draw(data, options);
      }

      function drawTable() {
        var data = google.visualization.arrayToDataTable([
          ['Province', 'Pengguna'],
          <?php
          foreach ($data as $d) {
              echo "['" . $d[0] . "', " . $d[1] . "],";
          }
          ?>
        ]);

        var table = new google.visualization.Table(document.getElementById('table_div'));

        table.draw(data, {showRowNumber: true, width: '100%', height: '100%'});
      }

      function drawPieCharts() {
        var ageData = google.visualization.arrayToDataTable([
          ['Kategori Umur', 'Jumlah Pengguna'],
          <?php
          foreach ($age_data as $d) {
              echo "['" . $d[0] . "', " . $d[1] . "],";
          }
          ?>
        ]);

        var ageOptions = {
          title: 'Distribusi Umur Pengguna'
        };

        var ageChart = new google.visualization.PieChart(document.getElementById('piechart1'));
        ageChart.draw(ageData, ageOptions);

        var categoryData = google.visualization.arrayToDataTable([
          ['Kategori Kelas', 'Jumlah Pengguna'],
          <?php
          foreach ($category_data as $d) {
              echo "['" . $d[0] . "', " . $d[1] . "],";
          }
          ?>
        ]);

        var categoryOptions = {
          title: 'Distribusi Pengguna Berdasarkan Kategori Kelas'
        };

        var categoryChart = new google.visualization.PieChart(document.getElementById('piechart2'));
        categoryChart.draw(categoryData, categoryOptions);

        var classData = google.visualization.arrayToDataTable([
          ['Nama Kelas', 'Jumlah Pengguna'],
          <?php
          foreach ($class_data as $d) {
              echo "['" . $d[0] . "', " . $d[1] . "],";
          }
          ?>
        ]);

        var classOptions = {
          title: 'Kelas yang Paling Banyak Diikuti'
        };

        var classChart = new google.visualization.PieChart(document.getElementById('piechart3'));
        classChart.draw(classData, classOptions);

        var plantCategoryData = google.visualization.arrayToDataTable([
          ['Kategori Tanaman', 'Jumlah Tanaman'],
          <?php
          foreach ($plant_category_data as $d) {
              echo "['" . $d[0] . "', " . $d[1] . "],";
          }
          ?>
        ]);

        var plantCategoryOptions = {
          title: 'Distribusi Tanaman Berdasarkan Kategori'
        };

        var plantCategoryChart = new google.visualization.PieChart(document.getElementById('piechart4'));
        plantCategoryChart.draw(plantCategoryData, plantCategoryOptions);

        // Example data for other piecharts
        var exampleData = google.visualization.arrayToDataTable([
          ['Task', 'Hours per Day'],
          ['Work', 11],
          ['Eat', 2],
          ['Commute', 2],
          ['Watch TV', 2],
          ['Sleep', 7]
        ]);

        var exampleOptions = {
          title: 'My Daily Activities'
        };

        var piecharts = document.querySelectorAll('.piechart');
        piecharts.forEach(function(chartDiv, index) {
          if (index > 3) { // Avoid re-drawing piechart1, piechart2, piechart3, and piechart4
            var chart = new google.visualization.PieChart(chartDiv);
            chart.draw(exampleData, exampleOptions);
          }
        });
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
                <a href="dashboardAdmin.php">
                    <span class="material-symbols-outlined"> dashboard </span>Dashboard</a>
            </li>
            <li>
              <a href="logout.php">
              <span class="material-symbols-outlined"> logout </span>Logout</a>
            </li>
        </ul>
    </aside>
    <main class="main-content">
        <div class="dashboard-header">
            <h1> <span class="material-symbols-outlined"> dashboard </span> Dashboard</h1>
        </div>
        <section class="content-section">
            <div class="statistik-kamu">
                <h2>Jumlah Pengguna</h2>
                <div id="geochart_table_container">
                    <div id="regions_div" style="width: 60%; height: 500px; float: left;"></div>
                    <div id="table_div" style="width: 40%; height: 500px; float: left;"></div>
                </div>
            </div>
            <div class="piecharts-container">
              <div id="piechart1" class="piechart"></div>
              <div id="piechart2" class="piechart"></div>
              <div id="piechart3" class="piechart"></div>
              <div id="piechart4" class="piechart"></div>
            </div>
        </section>
    </main>
</body>
</html>