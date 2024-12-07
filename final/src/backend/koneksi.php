<?php
    session_start();
    $conn = new mysqli('localhost', 'root', '', 'luarsekolah_revamp');
        
    if ($conn->connect_error) {
        die("Koneksi gagal: " . $conn->connect_error);
    }  // else {
    //     echo 'Terkoneksi';
    //  }
?>