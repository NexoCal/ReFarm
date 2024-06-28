<?php 

include 'koneksi.php';

if (isset($_POST['submit'])) {
    $nama = $_POST['nama'];
    $email = $_POST['email'];
    $hashed_password = hash('sha256', $_POST['password']);
    $provinsi = $_POST['provinsi'];
    $kota = $_POST['kota'];
    $day = $_POST['day'];
    $month = $_POST['month'];
    $year = $_POST['year'];
    
    // Gabungkan hari, bulan, dan tahun menjadi format tanggal SQL
    $tanggal_lahir = $year . '-' . $month . '-' . $day;

    // Query untuk memeriksa apakah email sudah terdaftar
    $email_check_query = "SELECT * FROM user WHERE email = '$email'";
    $result = mysqli_query($koneksi, $email_check_query);

    // Pastikan query dijalankan dengan benar
    if (!$result) {
        die("Query gagal: " . mysqli_error($koneksi));
    }

    if (mysqli_num_rows($result) > 0) {
        echo "<script>
        alert('Email sudah terdaftar');
        window.location.href = '../register.php';
        </script>";
    } else {
        $query = "INSERT INTO user (nama, email, password, provinsi, kota, tanggal_lahir) VALUES ('$nama', '$email', '$hashed_password', '$provinsi', '$kota', '$tanggal_lahir')";
        if (mysqli_query($koneksi, $query)) {
            echo "<script>
            alert('Akun berhasil didaftarkan, lanjutkan ke halaman login');
            window.location.href = '../login.php';
            </script>";
        } else {
            echo "Error: " . $query . "<br>" . mysqli_error($koneksi);
        }
    }
}

?>
