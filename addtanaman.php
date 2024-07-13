<?php 

session_start();

include "databasekey.php";

$userID = $_SESSION['LoggedUserID'];

$nama = $_POST["nama-tanaman"];
$jenis = $_POST["kategori-tanaman"];
$tanggal = $_POST["tanggal-tanam"];
$media = $_POST["media-tanam"];
$kelembapan = $_POST["kelembapan-tanah"];
$tinggiAwal = $_POST["tinggi-awal"];
$kondisiDaun = $_POST["kondisi-daun"];
$kondisiBatang = $_POST["kondisi-batang"];



$sqlinsertData = "INSERT INTO `tanaman` (`id_kategori`, `id_user`, `nama_tanaman`, 
`tanggal_tanam`, `media_tanam`, `tinggi_tanaman`, `kondisi_daun`, `kondisi_batang`, `kelembapan_tanah`) 
VALUES ((SELECT id_kategori FROM kategori_tanaman WHERE nama_kategori = '$jenis'),
$userID,'$nama','$tanggal','$media',$tinggiAwal,'$kondisiDaun','$kondisiBatang','$kelembapan')";
mysqli_query($conn, $sqlinsertData);
header("location:../refarm/tanamanSaya.php");
?>