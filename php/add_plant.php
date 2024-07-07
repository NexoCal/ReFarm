<?php
session_start();
include 'db_connection.php'; // Include your database connection script

// Check if the request is a POST request
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
  // Get the raw POST data
  $json = file_get_contents('php://input');
  $data = json_decode($json, true);

  // Check if user is logged in
  if (isset($_SESSION['user_id'])) {
    $user_id = $_SESSION['user_id'];

    // Prepare the SQL statement
    $stmt = $conn->prepare("INSERT INTO plants (user_id, nama_tanaman, jenis_tanaman, tanggal_tanam, lokasi_penanaman, media_tanam, kondisi_awal, kelembapan, tinggi_awal, kondisi_daun, kondisi_batang) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
    $stmt->bind_param('issssssssss', $user_id, $data['nama-tanaman'], $data['jenis-tanaman'], $data['tanggal-tanam'], $data['lokasi-penanaman'], $data['media-tanam'], $data['kondisi-awal'], $data['kelembapan'], $data['tinggi-awal'], $data['kondisi-daun'], $data['kondisi-batang']);

    if ($stmt->execute()) {
      http_response_code(200);
      echo json_encode(['message' => 'Tanaman berhasil ditambahkan']);
    } else {
      http_response_code(500);
      echo json_encode(['message' => 'Terjadi kesalahan saat menambahkan tanaman']);
    }

    $stmt->close();
  } else {
    http_response_code(401);
    echo json_encode(['message' => 'Anda harus login terlebih dahulu']);
  }
} else {
  http_response_code(405);
  echo json_encode(['message' => 'Metode request tidak valid']);
}

$conn->close();
?>
