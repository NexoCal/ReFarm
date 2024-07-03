<?php 

include "dashboard.php";

$nama = $_POST["nama-tanaman"];
$nama = $_POST["jenis-tanaman"];
$nama = $_POST["tanggal-tanam"];
$nama = $_POST["lokasi-penanaman"];
$nama = $_POST["media-tanam"];
$nama = $_POST["kondisi-awal"];
$nama = $_POST["kelembapan"];
$nama = $_POST["tinggi-awal"];
$nama = $_POST["kondisi-daun"];
$nama = $_POST["kondisi-batang"];

$sqlinsertData = "INSERT INTO `tanaman`(`id_kategori`, `id_user`, `nama_tanaman`, `tanggal_tanam`, `tanggal_panen`, `media_tanam`, `tinggi_tanaman`, `kondisi_daun`, `kondisi_batang`, `kelembapan_tanah`, `frekuensi_siram`, `keterangan_kondisi`, `progress`) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]','[value-5]','[value-6]','[value-7]','[value-8]','[value-9]','[value-10]','[value-11]','[value-12]','[value-13]')"

?>