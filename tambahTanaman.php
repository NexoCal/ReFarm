<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title> Re:Farm</title>
    <link rel="icon" href="images\Logo ReFarm.png" type="image/png">
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200"
    />
    <link rel="stylesheet" href="css\tambahTanaman.css" />
  </head>
  <body>
    <aside class="sidebar">
      <div class="sidebar-header">
        <img src="images\Logo ReFarm.png" alt="logo" />
        <h2>Re:Farm</h2>
      </div>
      <ul class="sidebar-links">
        <h4>
          <div class="menu-separator"></div>
        </h4>
        <li>
          <a href="dashboard.html">
            <span class="material-symbols-outlined"> dashboard </span>Dashboard</a>
        </li>
        <li>
          <a href="kelas.html"><span class="material-symbols-outlined"> book </span>Kelas</a>
        </li>
        <li>
          <a href="tanamanSaya.php"><span class="material-symbols-outlined"> Psychiatry </span>Tanaman Saya</a>
        </li>
        <li>
          <a href="diskusi.html"><span class="material-symbols-outlined"> communication </span>Diskusi</a>
        </li>
        <li>
          <a href="logout.html"><span class="material-symbols-outlined"> logout </span>Logout</a>
        </li>
      </ul>
    </aside>
    <main>
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
      <section class="form-section">
      <h2>Tambah Tanaman</h2>
        <form>
          <div class="form-group">
            <label for="nama-tanaman">Nama Tanaman</label>
            <input type="text" id="nama-tanaman" name="nama-tanaman">
          </div>
          <div class="form-group">
            <label for="jenis-tanaman">Jenis Tanaman</label>
            <input type="text" id="jenis-tanaman" name="jenis-tanaman">
          </div>
          <div class="form-group">
            <label for="tanggal-tanam">Tanggal Awal Tanam</label>
            <input type="date" id="tanggal-tanam" name="tanggal-tanam">
          </div>
          <div class="form-group">
            <label for="lokasi-penanaman">Lokasi Penanaman</label>
            <input type="text" id="lokasi-penanaman" name="lokasi-penanaman">
          </div>
          <div class="form-group">
            <label for="media-tanam">Media Tanam</label>
            <input type="text" id="media-tanam" name="media-tanam">
          </div>
          <div class="form-group">
            <label for="kondisi-awal">Kondisi Awal Tanaman</label>
            <input type="text" id="kondisi-awal" name="kondisi-awal">
          </div>
          <div class="form-group">
            <label for="kelembapan">Kelembapan Tanah</label>
            <input type="text" id="kelembapan" name="kelembapan">
          </div>
          <div class="form-group">
            <label for="tinggi-awal">Tinggi Awal Tanaman</label>
            <input type="text" id="tinggi-awal" name="tinggi-awal">
          </div>
          <div class="form-group">
            <label for="kondisi-daun">Kondisi Daun</label>
            <input type="text" id="kondisi-daun" name="kondisi-daun">
          </div>
          <div class="form-group">
            <label for="kondisi-batang">Kondisi Batang</label>
            <input type="text" id="kondisi-batang" name="kondisi-batang">
          </div>
          <button type="submit">Tambah</button>
        </form>
      </section>
    </main>
    <script src="js/tambahTanaman.js"></script>
  </body>
</html>
