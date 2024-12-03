<?php
// Tentukan konten berdasarkan parameter "page" di URL
$page = isset($_GET['page']) ? $_GET['page'] : 'komunitas';

// Validasi halaman
switch ($page) {
    case 'komunitas':
        $content = [
            'hero.html',
            'benefit_vid_testim.html',
            'mari_bergabung.html',
            'kegiatan_faq.html'
        ];
        break;
    case 'showcase':
        $content = [
            'pengantar_showcase.html',
            'portofolio.html',
            'penutup_showcase.html',
        ];
        break;
    default:
        $content = [
            'hero.html',
            'benefit.html',
            'mari_bergabung.html',
            'kegiatan_faq.html'
        ];  // Default ke komunitas
}

// Render header, content, dan footer
include 'header.html';

// Render konten berdasarkan array $content
foreach ($content as $file) {
    include $file;
}

include 'footer.html';
?>
