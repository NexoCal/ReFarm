<?php 

include 'koneksi.php';
session_start();

if (isset($_POST['login'])) {
    $email = $_POST['email'];
    $password = $_POST['password'];
    $password_hash = hash('sha256', $password);

    $ambil = mysqli_query($koneksi, "SELECT * FROM user WHERE email = '$email'");

    if (mysqli_num_rows($ambil) === 1) {
        $data = mysqli_fetch_assoc($ambil);

        if ($password_hash === $data['password']) {
            // Memeriksa domain email
            if (strpos($email, '@kementan.go.id') !== false) {
                header("location: ../dashboardAdmin.php");
            } else {
                $_SESSION['LoggedUserID'] = $data['id_user']; 
                header("location: ../dashboard.php");
            }
            exit();
        } else {
            echo"<script>
                alert('password yang anda masukkan salah');
                window.location = '../login.php';
            </script>";
        }
    } else {
        echo"<script>
            alert('username yang anda masukkan salah');
            window.location = '../login.php';
        </script>";
    }
}
?>
