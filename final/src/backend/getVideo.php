<?php
    require 'koneksi.php';

    $stmt = $conn->prepare("SELECT * FROM video_testimoni");
    $stmt->execute();

    $result = $stmt->get_result();

    $videos = [];
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $videos[] = $row;
        }
        echo json_encode(['success' => true, 'videos' => $videos]);
    } else {
        echo json_encode(['error' => 'Data tidak ditemukan']);
    }
?>