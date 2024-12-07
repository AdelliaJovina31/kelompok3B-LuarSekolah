<?php
    header('Content-Type: application/json');
    require 'koneksi.php';

    $stmt = $conn->prepare("SELECT * FROM testimoni");
    $stmt->execute();

    $result = $stmt->get_result();

    $testimoniArr = [];
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $testimoniArr[] = $row;
        }
        echo json_encode(['success' => true, 'testimoniArr' => $testimoniArr]);
    } else {
        echo json_encode(['error' => 'Data tidak ditemukan']);
    }
?>