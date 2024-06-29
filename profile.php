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
  <link rel="stylesheet" href="css/profile.css" />
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
          <span class="material-symbols-outlined"> dashboard </span>Dashboard</a>
      </li>
      <li>
        <a href="#" onclick="showCards('kelas')">
          <span class="material-symbols-outlined"> book </span>Kelas</a>
      </li>
      <li>
        <a href="#" onclick="showCards('tanaman')">
          <span class="material-symbols-outlined"> psychiatry </span>Tanaman Saya</a>
      </li>
      <li>
        <a href="diskusi.html">
          <span class="material-symbols-outlined"> communication </span>Diskusi</a>
      </li>
      <li>
        <a href="logout.html">
          <span class="material-symbols-outlined"> logout </span>Logout</a>
      </li>
    </ul>
  </aside>
  <main class="main-content">
    <div class="dashboard-header">
      <h1>Dashboard</h1>
      <div class="user-info">
        <span class="material-symbols-outlined"> notifications </span>
        <span class="material-symbols-outlined"> shopping_cart </span>
        <span class="material-symbols-outlined"> account_circle </span>
        <span>Jacob</span>
      </div>
    </div>

    <header class="profile-header">
      <img src="images/profile.png" alt="Profile Image"/>
      <button class="btn">Ubah Foto</button>
      <button class="btn">Ubah Kata Sandi</button>
    </header>
    
    <div class="tabs">
      <button class="tab active">Biodata Diri</button>
      <button class="tab" onclick="showCards('kelas')">Kelas Saya</button>
      <button class="tab" onclick="showCards('tanaman')">Tanaman Saya</button>
    </div>
    <div class="info">
      <h2>Ubah Biodata</h2>
      <p>Nama: Jacob <a href="#">Ubah</a></p>
      <p>Alamat: Solo <a href="#">Ubah</a></p>
      <p>Tanggal Lahir: 21 Mei 1990 <a href="#">Ubah</a></p>
    </div>
    <div class="contact-info">
      <h2>Ubah Kontak</h2>
      <p>Nomor HP: 08654851245 <a href="#">Ubah</a></p>
      <p>Email: jacob234@gmail.com <a href="#">Ubah</a></p>
    </div>
    <section id="kelasSection" class="hidden">
      <div class="card-container">
        <!-- Cards will be dynamically inserted here -->
      </div>
    </section>
    <section id="tanamanSection" class="hidden">
      <div class="card-container">
        <!-- Cards will be dynamically inserted here -->
      </div>
    </section>
  </main>

  <script>
    const kelasCards = [
      {
        title: 'Pemprosesan Hasil Pertanian Untuk Nilai Tambah',
        duration: '6 Bulan',
        modules: '5 Modul',
        cost: 'Gratis',
        image: 'images/card-image.png'
      },
      // Add more class cards here
    ];

    const tanamanCards = [
      {
        title: 'Tomato Plant',
        duration: '3 Bulan',
        modules: '3 Modul',
        cost: 'Rp. 200,000',
        image: 'images/card-image.png'
      },
      // Add more plant cards here
    ];

    function showCards(type) {
      const cardContainer = document.querySelector(`#${type}Section .card-container`);
      cardContainer.innerHTML = ''; // Clear any existing cards

      let cards;
      if (type === 'kelas') {
        cards = kelasCards;
      } else if (type === 'tanaman') {
        cards = tanamanCards;
      }

      cards.forEach(card => {
        const cardElement = document.createElement('div');
        cardElement.classList.add('card');
        cardElement.innerHTML = `
          <img src="${card.image}" alt="Card Image">
          <h3>${card.title}</h3>
          <p>Duration: ${card.duration}</p>
          <p>Modules: ${card.modules}</p>
          <p>Cost: ${card.cost}</p>
        `;
        cardContainer.appendChild(cardElement);
      });

      document.getElementById('kelasSection').classList.add('hidden');
      document.getElementById('tanamanSection').classList.add('hidden');
      document.getElementById(`${type}Section`).classList.remove('hidden');
    }
  </script>
</body>
</html>
