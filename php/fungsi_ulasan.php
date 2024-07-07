<?php
include 'koneksi.php';

if (isset($_GET['id_kelas'])) {
    $id_kelas = $_GET['id_kelas'];
    $query = "SELECT ulasan.*, user.nama_user FROM ulasan 
              LEFT JOIN user ON ulasan.id_user = user.id_user 
              WHERE ulasan.id_kelas = $id_kelas";

    $result = $koneksi->query($query);

    if (!$result) {
        echo "Error: " . $koneksi->error;
    }
}
?>
