<?php 

include "databasekey.php";

if (isset($_GET["id_tanaman"])) {

    $idTanaman = $_GET["id_tanaman"];
    $indTgt = $_GET["ind"];

    $sqlGrabData = "SELECT progress FROM tanaman WHERE id_tanaman = $idTanaman";
    $results = mysqli_query($conn, $sqlGrabData);
    $rows = mysqli_fetch_array($results, MYSQLI_ASSOC);
    $progressData = json_decode($rows['progress']);

    echo $progressData;
    unset($progressData[$indTgt]);

    $newDataProgress = json_encode($progressData);
    echo $newDataProgress;

    $tgt = $_GET["id_tanaman"];
    $sql = "UPDATE tanaman SET progress='$newDataProgress' WHERE id_tanaman = $idTanaman";
    if (mysqli_query($conn, $sql)) {
        echo "New record created successfully";
        header("location:../refarm/tanaman.php?idtanaman=$tgt");
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }
};


?>