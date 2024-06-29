<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Re:Farm</title>
    <link rel="icon" href="images/Logo ReFarm.png" type="image/png" />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200"
    />
    <link rel="stylesheet" href="css\kelas.css" />
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
            <span class="material-symbols-outlined"> dashboard </span>Dashboard</a
          >
        </li>
        <li>
          <a href="kelas.php"
            ><span class="material-symbols-outlined"> book </span>Kelas</a
          >
        </li>
        <li>
          <a href="tanamanSaya.php"
            ><span class="material-symbols-outlined"> psychiatry </span>Tanaman Saya</a
          >
        </li>
        <li>
          <a href="diskusi.php"
            ><span class="material-symbols-outlined"> communication </span>Diskusi</a
          >
        </li>
      </ul>
    </aside>
    <main class="main-content">
      <div class="dashboard-header">
        <h1>Kelas</h1>
        <div class="user-info">
          <span class="material-symbols-outlined"> notifications </span>
          <span class="material-symbols-outlined"> shopping_cart </span>
          <span class="material-symbols-outlined"> account_circle </span>
          <span>Jacob</span>
        </div>
      </div>
      <section class="intro-section">
        <div class="intro-text">
          <p>Yuk kenali dan pelajari dunia pertanian</p>
          <button>Info Selengkapnya</button>
        </div>
      </section>
      <section class="content-section">
        <div class="lanjutkan-melihat">
          <h2>Lanjutkan Melihat</h2>
          <div class="card-container">
            <div class="card">
              <img src="images/pertanian.jpg" alt="Pertanian" />
              <div class="card-info">
                <h3>Pertanian Berkelanjutan Ramah Lingkungan</h3>
                <p>7 Modul</p>
                <div class="progress-bar">
                  <div class="progress" style="width: 65%;"></div>
                </div>
              </div>
            </div>
            <div class="card">
              <img src="images/organik.jpg" alt="Organik" />
              <div class="card-info">
                <h3>Dasar-Dasar Pertanian Organik</h3>
                <p>4 Modul</p>
                <div class="progress-bar">
                  <div class="progress" style="width: 100%;"></div>
                </div>
              </div>
            </div>
            <div class="card">
              <img src="images/hortikultura.jpg" alt="Hortikultura" />
              <div class="card-info">
                <h3>Manajemen Tanaman Hortikultura</h3>
                <p>8 Modul</p>
                <div class="progress-bar">
                  <div class="progress" style="width: 0%;"></div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="kelas-anda">
          <h2>Kelas Anda</h2>
          <div class="card-container">
            <div class="card">
              <img src="images/hidroponik.jpg" alt="Hidroponik" />
              <div class="card-info">
                <h3>Yuk Kenalan Dengan Hidroponik</h3>
                <p>2 Modul</p>
                <div class="progress-bar">
                  <div class="progress" style="width: 25%;"></div>
                </div>
              </div>
            </div>
            <div class="card">
              <img src="images/irigasi.jpg" alt="Irigasi" />
              <div class="card-info">
                <h3>Membangun Irigasi yang Irit Air</h3>
                <p>2 Modul</p>
                <div class="progress-bar">
                  <div class="progress" style="width: 60%;"></div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="progres-tanaman">
          <h2>Progres Tanaman Saya</h2>
          <div class="card-container">
            <div class="card">
              <img src="images/cabai.jpg" alt="Cabai" />
              <div class="card-info">
                <h3>Cabai</h3>
                <div class="progress-bar">
                  <div class="progress" style="width: 10%;"></div>
                </div>
              </div>
            </div>
            <div class="card">
              <img src="images/kentang.jpg" alt="Kentang" />
              <div class="card-info">
                <h3>Kentang</h3>
                <div class="progress-bar">
                  <div class="progress" style="width: 50%;"></div>
                </div>
              </div>
            </div>
            <div class="card">
              <img src="images/seledri.jpg" alt="Seledri" />
              <div class="card-info">
                <h3>Seledri</h3>
                <div class="progress-bar">
                  <div class="progress" style="width: 30%;"></div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="statistik-kamu">
          <h2>Statistik Kamu</h2>
          <div class="statistik-content">
            <span class="material-symbols-outlined"> account_circle </span>
            <div>
              <h3>Hai, Jacob</h3>
              <div class="chart">Chart Placeholder</div>
            </div>
          </div>
        </div>
      </section>
    </main>
  </body>
</html>
