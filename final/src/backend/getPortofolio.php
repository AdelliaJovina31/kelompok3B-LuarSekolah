<?php
header('Content-Type: application/json');
require 'koneksi.php';

// Array pemetaan antara data-filter dan format `okupasi` di database
$filterMap = [
    'web-developer' => 'Web Developer',
    'ui-ux-designer' => 'UI/UX Designer',
    'digital-marketing' => 'Digital Marketing',
    'data-analyst' => 'Data Analyst',
    'graphic-designer' => 'Graphic Designer',
    'content-writer' => 'Content Writer'
];

// Ambil filter dari parameter URL
$filter = isset($_GET['filter']) && $_GET['filter'] !== 'all' ? $_GET['filter'] : null;

// Periksa apakah filter ada di dalam pemetaan
if ($filter && array_key_exists($filter, $filterMap)) {
    $filterValue = $filterMap[$filter];
} else {
    $filterValue = null; // Jika tidak ada filter, tampilkan semua data
}

try {
    if ($filterValue) {
        // Query untuk memfilter berdasarkan format yang benar
        $stmt = $conn->prepare("SELECT * FROM portofolio WHERE LOWER(okupasi) = LOWER(?)");
        $stmt->bind_param("s", $filterValue);
    } else {
        $stmt = $conn->prepare("SELECT * FROM portofolio");
    }

    if (!$stmt) {
        echo json_encode(['success' => false, 'error' => 'Kesalahan dalam query']);
        exit;
    }

    $stmt->execute();
    $result = $stmt->get_result();

    $portfolios = [];
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $portfolios[] = $row;
        }
        echo json_encode(['success' => true, 'portfolios' => $portfolios]);
    } else {
        echo json_encode(['success' => false, 'error' => 'Data tidak ditemukan']);
    }
} catch (Exception $e) {
    echo json_encode(['success' => false, 'error' => $e->getMessage()]);
}
?>
