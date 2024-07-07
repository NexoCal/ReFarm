<?php

include "databasekey.php";

if (isset($_POST["id_tanaman"])) {

    $nama = $_POST["nama_tanaman"];
    $tanggal = date("Y-m-d");
    $tinggi = $_POST["tinggi-tanaman"];
    $kondaun = $_POST["kondisi-daun"];
    $konbatang = $_POST["kondisi-batang"];
    $lembab = $_POST["kelembapan-tanah"];
    $frek = $_POST["frekuensi-siram"];
    $pengamat = $_POST["pengamatan-anda"];

    

    $newProgress = array(
        "namaTanaman" => $nama,
        "tanggalTanam" => $tanggal,
        "tinggi" => $tinggi,
        "kondisiDaun" => $kondaun,
        "kondisiBatang" => $konbatang,
        "kelembaban" => $lembab,
        "frekuensi" => $frek,
        "keterangan" => $pengamat
    );

    

    $idTanaman = $_POST["id_tanaman"];

    $sqlGrabData = "SELECT progress FROM tanaman WHERE id_tanaman = $idTanaman";
    $results = mysqli_query($conn, $sqlGrabData);
    $rows = mysqli_fetch_array($results, MYSQLI_ASSOC);
    $progressData = json_decode($rows['progress']);

    array_push($progressData,$newProgress);

    $newDataProgress = json_encode($progressData);

    $tgt = $_POST["id_tanaman"];
    $sql = "UPDATE tanaman SET progress='$newDataProgress' WHERE id_tanaman = $idTanaman";
    if (mysqli_query($conn, $sql)) {
        echo "New record created successfully";
        header("location:../refarm/tanaman.php?idtanaman=$tgt");
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }
};
