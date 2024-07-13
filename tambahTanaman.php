<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title> Re:Farm</title>
  <link rel="icon" href="images\Logo ReFarm.png" type="image/png">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
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
        <a href="dashboard.php">
          <span class="material-symbols-outlined"> dashboard </span>Dashboard</a>
      </li>
      <li>
        <a href="kelas.php"><span class="material-symbols-outlined"> book </span>Kelas</a>
      </li>
      <li>
        <a href="tanamanSaya.php"><span class="material-symbols-outlined"> Psychiatry </span>Tanaman Saya</a>
      </li>
      <li>
        <a href="diskusi.php"><span class="material-symbols-outlined"> communication </span>Diskusi</a>
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
        <h2>Tambah Tanaman</h2>
      </div>
    </div>
    <section class="form-section">
      <form action="addtanaman.php" method="post">
        <div class="form-group">
          <label for="nama-tanaman">Nama Tanaman</label>
          <input type="text" id="nama-tanaman" name="nama-tanaman">
        </div>
        <select id="kategori-tanaman" name="kategori-tanaman">
          <label for="nama-tanaman">Kategori Tanaman</label>
          <option value="" disabled selected>Pilih Kategori Tanaman</option>
          <option value="Pangan">Pangan</option>
          <option value="Sayuran">Sayuran</option>
          <option value="Buah">Buah</option>
        </select>
        <div class="form-group">
          <label for="tanggal-tanam">Tanggal Awal Tanam</label>
          <input type="date" id="tanggal-tanam" name="tanggal-tanam">
        </div>
        <div class="form-group">
          <label for="tinggi-awal">Tinggi Awal Tanaman</label>
          <input type="text" id="tinggi-awal" name="tinggi-awal">
        </div>
        <div class="form-group">
          <label for="media-tanam">Media Tanam</label>
          <select id="media-tanam" name="media-tanam">
            <option value="" disabled selected>Pilih Media Tanam</option>
            <option value="Tanah">Tanah</option>
            <option value="Air ( Hidroponik )">Air ( Hidroponik )</option>
          </select>
        </div>
        <div class="form-group">
          <label for="Kelembapan">Kelembapan Tanah</label>
          <select id="kelembapan-tanah" name="kelembapan-tanah">
            <option value="" disabled selected>Pilih Kelembapan Tanah</option>
            <option value="Basah">Basah</option>
            <option value="Normal">Normal</option>
            <option value="Kering">Kering</option>
          </select>
        </div>
        <div class="form-group">
          <label for="Kondisi">Kondisi Daun</label>
          <select id="kondisi-daun" name="kondisi-daun">
            <option value="" disabled selected>Pilih Kondisi Daun</option>
            <option value="Segar">Segar</option>
            <option value="Sedikit Layu">Sedikit Layu</option>
            <option value="Layu">Layu</option>
          </select>
        </div>
        <div class="form-group">
          <label for="Kondisi">Kondisi Batang</label>
          <select id="kondisi-batang" name="kondisi-batang">
            <option value="" disabled selected>Pilih Kondisi Batang</option>
            <option value="Segar">Segar</option>
            <option value="Sedikit Layu">Sedikit Layu</option>
            <option value="Layu">Layu</option>
          </select>
        </div>
        <button type="submit">Tambah</button>
      </form>
    </section>
  </main>
  <script src=""></script>
</body>

</html>