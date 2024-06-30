<?php

include "databasekey.php";



?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Re:Farm</title>
    <link rel="icon" href="images/Logo ReFarm.png" type="image/png">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <link rel="stylesheet" href="css/tanaman.css" />
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
                    <span class="material-symbols-outlined">dashboard</span>Dashboard
                </a>
            </li>
            <li>
                <a href="kelas.php">
                    <span class="material-symbols-outlined">book</span>Kelas
                </a>
            </li>
            <li>
                <a href="tanamanSaya.php" class="active">
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
            <h1> <span class="material-symbols-outlined">Psychiatry</span>Tanaman Saya</h1>
            <div class="user-info">
                <span class="material-symbols-outlined">notifications</span>
                <span class="material-symbols-outlined">shopping_cart</span>
                <span class="material-symbols-outlined">account_circle</span>
                <span>Sulaiman</span>
            </div>
        </div>
        <div class="content-section">
            <div class="intro-section">
                <div class="col-6">
                    <h2>Deskripsi Tanaman</h2>
                    <div class="plant-description">
                        <p>Nama: Padi</p>
                        <p>Jenis: Pertanian</p>
                        <p>Media Tanam: Tanah</p>
                        <p>Mulai Tanam: 21 Juni 2024</p>
                        <p>Prediksi Selesai: 21 September 2024</p>
                    </div>
                </div>
            </div>

            <div class="statistik-kamu">
                <h2>Statistik Perkembangan Tanaman</h2>
                <div class="statistik-content">
                    <div>
                        <p>Rata rata pertumbuhan: 0.5 cm / Hari</p>
                        <p>Kondisi Tanaman: Sehat</p>
                        <p>Musim: Hujan</p>
                    </div>
                </div>
                <table class="progress-table">
                    <thead>
                        <tr>
                            <th>Tanggal</th>
                            <th>Tinggi Tanaman</th>
                            <th>Kondisi Daun</th>
                            <th>Kondisi Batang</th>
                            <th>Kelembapan Tanah</th>
                            <th>Frekuensi Siram</th>
                            <th>Keterangan Kondisi</th>
                        </tr>
                    </thead>
                    <tbody id="table-body">
                        <?php

                        $sqlGrabData = 'SELECT * FROM tanaman WHERE id_tanaman = 21';

                        $results = mysqli_query($conn, $sqlGrabData);
                        $rows = mysqli_fetch_array($results, MYSQLI_ASSOC);
                        $progressData = json_decode($rows['progress']);

                        for ($i = 0; $i < count($progressData) - 1; $i++) {
                        ?>
                            <tr>
                                <td><?php echo $progressData[$i]->tanggalTanam ?></td>
                                <td><?php echo $progressData[$i]->tinggi ?></td>
                                <td><?php echo $progressData[$i]->kondisiDaun ?></td>
                                <td><?php echo $progressData[$i]->kondisiBatang ?></td>
                                <td><?php echo $progressData[$i]->kelembaban ?></td>
                                <td><?php echo $progressData[$i]->frekuensi ?></td>
                                <td><?php echo $progressData[$i]->keterangan ?></td>
                            </tr>
                        <?php
                        }
                        ?>

                        <?php

                        $sqlGrabData = 'SELECT * FROM tanaman WHERE id_tanaman = 21';

                        $results = mysqli_query($conn, $sqlGrabData);
                        $rows = mysqli_fetch_array($results, MYSQLI_ASSOC);
                        $progressData = json_decode($rows['progress']);

                        $i = count($progressData) - 1 
                        ?>
                            <tr>
                                <td id="latest-tanggal"><?php echo $progressData[$i]->tanggalTanam ?></td>
                                <td id="latest-tinggi"><?php echo $progressData[$i]->tinggi ?></td>
                                <td id="latest-daun"><?php echo $progressData[$i]->kondisiDaun ?></td>
                                <td id="latest-batang"><?php echo $progressData[$i]->kondisiBatang ?></td>
                                <td id="latest-lembab"><?php echo $progressData[$i]->kelembaban ?></td>
                                <td id="latest-freq"><?php echo $progressData[$i]->frekuensi ?></td>
                                <td id="latest-keterangan"><?php echo $progressData[$i]->keterangan ?></td>
                            </tr>
                        <?php
                        
                        ?>


                    </tbody>
                </table>
                <div class="form-container" id="form-container" style="display: none;">
                    <label for="tanggal">Tanggal Awal Tanam</label>
                    <input type="date" id="tanggal" />
                    <label for="Tinggi">Tinggi Tanaman</label>
                    <input type="text" id="tinggi-tanaman" placeholder="Tinggi Tanaman" />
                    <label for="Kondisi">Kondisi Daun</label>
                    <select id="kondisi-daun">
                        <option value="" disabled selected>Pilih Kondisi Daun</option>
                        <option value="Segar">Segar</option>
                        <option value="Sedikit Layu">Sedikit Layu</option>
                        <option value="Layu">Layu</option>
                    </select>
                    <label for="Kondisi">Kondisi Batang</label>
                    <select id="kondisi-batang">
                        <option value="" disabled selected>Pilih Kondisi Batang</option>
                        <option value="Segar">Segar</option>
                        <option value="Sedikit Layu">Sedikit Layu</option>
                        <option value="Layu">Layu</option>
                    </select>
                    <label for="Kelembapan">Kelembapan Tanah</label>
                    <select id="kelembapan-tanah">
                        <option value="" disabled selected>Pilih Kelembapan Tanah</option>
                        <option value="Basah">Basah</option>
                        <option value="Normal">Normal</option>
                        <option value="Kering">Kering</option>
                    </select>
                    <label for="Frekuensi">Frekuensi Siram</label>
                    <select id="frekuensi-siram">
                        <option value="" disabled selected>Pilih Frekuensi</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3 dan lebih">3 dan lebih</option>
                    </select>
                    <label for="Tambah">Tambah Gambar</label>
                    <input type="file" id="gambar-tanaman" accept="image/*" />
                    <img id="gambar-preview" style="display:none;" width="100" height="100" />
                    <label for="Pengamatan">Pengamatan Anda</label>
                    <input type="text" id="pengamatan-anda" placeholder="Pengamatan Anda" />
                </div>
                <div class="gptresponse">
                    <textarea class="output-space" name="output" id="output" readonly style="display: none; "></textarea>
                </div>
                <div class="buttons">
                    <button class="btn-add" id="btn-add">Tambah</button>
                    <button class="btn-analyze" id="btn-analyze" onclick="getresponse()">Analyze</button>
                    <button class="btn-save" id="btn-save" style="display: none;">Save</button>
                    <button class="btn-cancel" id="btn-cancel" style="display: none;">Batal</button>
                </div>
            </div>
        </div>
    </div>
    <script src="js/tanaman.js"></script>
    <script src="js/getresponse.js"></script>
</body>

</html>