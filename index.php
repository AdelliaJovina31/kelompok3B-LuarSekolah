<?php
// Tentukan konten berdasarkan parameter "page" di URL
$page = isset($_GET['page']) ? $_GET['page'] : 'komunitas';

// Validasi halaman
switch ($page) {
    case 'komunitas':
        $content = 'komunitas.html';
        break;
    case 'showcase':
        $content = 'showcase.html';
        break;
    default:
        $content = 'komunitas.html'; // Default ke komunitas
}

// Render header, content, dan footer
include 'header.html';
include $content;
include 'footer.html';
?>
