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
  <link rel="stylesheet" href="css/diskusi.css" />
  <link rel="stylesheet" href="css/grid.css" />
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
      <h1><span class="material-symbols-outlined">communication</span>Diskusi</h1>
      <div class="user-info">
        <span class="material-symbols-outlined"> shopping_cart </span>
        <span class="material-symbols-outlined"> account_circle </span>
        <span>Jacob</span>
      </div>
    </div>
    <div class="diskusi-header">
      <div class="input-container">
        <input type="text" placeholder="Apa yang ingin tanyakan?" />
        <button type="button">Kirim</button>
      </div>
    </div>
    <div class="row">
      <div class="col-8">
        <div class="diskusi-content">
          <div class="diskusi-item">
            <p><strong>Muhammad Sumbul</strong> <span>21 Jam yang lalu</span></p>
            <p>Bagaimana yah, cara mencangkokan tanaman?</p>
            <div class="diskusi-meta">
              <span>65</span>
              <span>12</span>
              <span>Lihat Balasan</span>
            </div>
          </div>
          <div class="diskusi-item">
            <p><strong>Muhammad Sumbul</strong> <span>21 Jam yang lalu</span></p>
            <p>Bagaimana yah, cara mencangkokan tanaman?</p>
            <div class="diskusi-meta">
              <span>65</span>
              <span>12</span>
              <span>Lihat Balasan</span>
            </div>
          </div>
          <div class="diskusi-item">
            <p><strong>Muhammad Sumbul</strong> <span>21 Jam yang lalu</span></p>
            <p>Bagaimana yah, cara mencangkokan tanaman?</p>
            <div class="diskusi-meta">
              <span>65</span>
              <span>12</span>
              <span>Lihat Balasan</span>
            </div>
          </div>
          <div class="diskusi-item">
            <p><strong>Muhammad Sumbul</strong> <span>21 Jam yang lalu</span></p>
            <p>Bagaimana yah, cara mencangkokan tanaman?</p>
            <div class="diskusi-meta">
              <span>65</span>
              <span>12</span>
              <span>Lihat Balasan</span>
            </div>
          </div>
        </div>
      </div>
      <div class="col-3">
        <div class="tags">
          <h3>Tag Populer</h3>
          <ul>
            <li>#Menanam</li>
            <li>#Padi</li>
            <li>#Kelapa</li>
            <li>#Sawah</li>
            <li>#Kebun</li>
            <li>#Sayur</li>
            <li>#Pisang</li>
          </ul>
        </div>
      </div>
    </div>
  </main>
</body>
</html>