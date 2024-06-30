<?php 

    include 'koneksi.php';

    $query = "SELECT * FROM kelas";

    $ambil = "SELECT * FROM kelas LIMIT 6";

    $hasil = $koneksi->query($ambil);

    $result = $koneksi->query($query);

?>