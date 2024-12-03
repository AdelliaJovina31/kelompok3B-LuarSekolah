<?php
// Tentukan konten berdasarkan parameter "page" di URL
$page = isset($_GET['page']) ? $_GET['page'] : 'komunitas';

// Validasi halaman
switch ($page) {
    case 'komunitas':
        $content = [
            'hero.php',
            'benefit_vid_testim.php',
            'mari_bergabung.php',
            'kegiatan_faq.php',
        ];
        break;
    case 'showcase':
        $content = [
            'pengantar_showcase.php',
            'portofolio.php',
            'penutup_showcase.php',
        ];
        break;
    default:
        $content = [
            'hero.php',
            'benefit.php',
            'mari_bergabung.php',
            'kegiatan_faq.php',
        ];  // Default ke komunitas
}

// Render header, content, dan footer
include 'header.php';

// Render konten berdasarkan array $content
foreach ($content as $file) {
    include $file;
}

include 'footer.php';
?>
