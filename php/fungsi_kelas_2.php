<?php
include 'koneksi.php';

if (isset($_GET['id'])) {
    $id_kelas = $_GET['id'];

    $query = "SELECT id_modul, nama_modul, isi_modul FROM modul WHERE id_kelas = $id_kelas ORDER BY urutan_modul";
    $result = $koneksi->query($query);

    $modul_data = [];
    while ($row = $result->fetch_assoc()) {
        $modul_data[] = $row;
    }
} else {
    echo 'ID tidak ditemukan';
    exit;
}
?>
