<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Video Testimoni</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            text-align: center;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        select {
            padding: 10px;
            margin-bottom: 20px;
            width: 80%;
            max-width: 400px;
            font-size: 14px;
        }

        iframe {
            width: 80%;
            height: 400px;
            max-width: 800px;
            border: none;
            border-radius: 30px;
        }
    </style>
</head>
<body>
    <h1>Pilih Video Testimoni</h1>
    <select id="videoSelector" onchange="updateVideo()">
        <option value="">Pilih Video</option>
        <option value="https://drive.google.com/file/d/1M2Ttk7iNOLsjQ6aX6umWcIlAk5xtGr7G/preview">Raisya Aliya Fatika - Social Media Marketing</option>
        <option value="https://drive.google.com/file/d/1ItTG1DCU1zr6yCy6JR2Q8UBEPWdw1sZJ/preview">Anita Herovica - Graphic Designer</option>
        <option value="https://drive.google.com/file/d/101cTFEek0hRuLk8nJi-ChkJCuVIC7rBP/preview">Iis Khaerunnisa - UI/UX Designer</option>
        <option value="https://drive.google.com/open?id=1w5DmzDhIyjjd7roG1O2mJ1_eR46USM6s/preview">Bernadine Kayla Kristila - Digital Marketing</option>
        <option value="https://drive.google.com/open?id=19r_FXrUJsZEFE3Lv2k5dEYPniqiY0XYh/preview">Mario Arifiyandi - Web Developer</option>
        <option value="https://drive.google.com/open?id=1UA79LePre2ZA7wsAt5wta6svKRQxefE6/preview">Noviantika - Content Writer</option>
        <option value="https://drive.google.com/open?id=1vDUTph6mlJBGPQZ-LiIU_x54UrIc-Zln/preview">Alif Revinsa Arrafi - UI/UX Designer</option>
        <option value="https://drive.google.com/open?id=1GS36R_P8V0qeeyBWb0PqmMjQUai1998S/preview">Ardiyanto Satrio Nugroho - Web Developer</option>
        <option value="https://drive.google.com/open?id=1c9pPK6GFLiBIzylBmNHQPyGBmzPrzHrV/preview">Eka Rossalina Fitria - Digital Marketing</option>
        <option value="https://drive.google.com/open?id=1xgQHaJXRBJHiaAaTwtrdLldfm_OIcgUD/preview">Wafiq Nur Agniati - Graphic Designer</option>
    </select>

    <iframe id="videoFrame" src="" allowfullscreen></iframe>

    <script>
        function updateVideo() {
            const selector = document.getElementById('videoSelector');
            const iframe = document.getElementById('videoFrame');
            iframe.src = selector.value;
        }
    </script>
</body>
</html>
