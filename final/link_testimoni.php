<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Luarsekolah</title>
    <link rel="icon" type="image/x-icon" href="src/images/favicon.ico">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Inter:ital,opsz,wght@0,14..32,100..900;1,14..32,100..900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Quicksand:wght@300..700&display=swap');

        :root {
            --primary-color: #1BC89D;
            --secondary-color: #D4FFF4;
            --grey-text: #6D7280;
            --semibold: 600;
        }

        * {
            font-family: 'Inter';
            padding: 0;
            margin: 0;
            box-sizing: border-box;
        }

        body {
            margin: 50px 40px;
        }

        h1 {
            text-align: center;
            font-weight: 700;
            margin-bottom: 16px;
            color: #222;
            font-size: 32px;
        }

        #subheader {
            color: var(--grey-text);
            font-weight: var(--semibold);
            margin-bottom: 50px;
            text-align: center;
        }

        .grid-container {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
            gap: 20px;
            justify-items: center;
            margin-top: 30px;
        }

        .card {
            background-color: white;
            border-radius: 30px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            text-align: center;
            width: 204px;
            height: 248.85px;
            position: relative;
            border: 2px solid black;
        }

        /* .card iframe {
            width: 100%;
            height: 100%;
            border: none;
            object-fit: cover;
            object-position: center;
        } */

        .iframe-wrapper {
            width: 100%; 
            height: 100%; 
            overflow: hidden;
            position: relative;
            border-color: transparent;
        }

        .iframe-wrapper iframe {
            position: absolute;
            top: -3px;
            height: auto;
            min-height: 250px;
            right: -40px;
        }

        .card-content {
            position: absolute;
            bottom: 0;
            left: 0;
            right: 12px;
            color: var(--primary-color);
            text-shadow: 
                -1px -1px 0 #000, /* Garis luar ke kiri atas */
                1px -1px 0 #000, /* Garis luar ke kanan atas */
                -1px  1px 0 #000, /* Garis luar ke kiri bawah */
                1px  1px 0 #000; /* Garis luar ke kanan bawah */
            padding: 10px;
            border-radius: 0 10px;
            z-index: 2;
            text-align: left;
            background-color: rgba(0, 0, 0, 0.5);
        }

        .card-content h3 {
            margin: 5px 0;
            font-size: 18px;
            color: white;
        }

        .card-content p {
            margin: 0;
            font-size: 14px;
        }

        .button-container {
            display: flex;
            align-items: center;
            flex-direction: column;
        }

        button {
            margin-top: 50px;
            border-radius: 100px;
            border-color: transparent;
            background-color: black;
            width: 166px;
            padding: 10px 20px;
            margin-bottom: 50px;
        }

        button a {
            color: white;
            text-decoration: none;
            font-size: 14px;
            font-weight: var(--semibold);
        }
    </style>
</head>
<body>
    <h1>Dengarkan Cerita Mereka</h1>
    <p id="subheader">Temukan kisah inspiratif dan cerita pengalaman anggota komunitas kami</p>
    <div class="grid-container" id="cardContainer">
        <!-- Card diisi di sini -->
    </div>

    <div class="button-container">
        <button><a href="index.php?page=komunitas#video-testimoni">Kembali</a></button>
    </div>

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            fetch('src/backend/getVideo.php')
                .then(response => response.json())
                .then(data => {
                    if (data.success) {
                        const container = document.getElementById('cardContainer');
                        data.videos.forEach(video => {
                            const card = document.createElement('div');
                            card.classList.add('card');

                            const iframe = document.createElement('iframe');
                            iframe.src = video.link; // Asumsikan kolom 'link' di database
                            iframe.allow = 'autoplay';

                            const cardContent = document.createElement('div');
                            cardContent.classList.add('card-content');

                            const name = document.createElement('h3');
                            name.textContent = video.nama; // Asumsikan kolom 'nama' di database

                            const occupation = document.createElement('p');
                            occupation.textContent = video.okupasi; // Asumsikan kolom 'okupasi' di database

                            cardContent.appendChild(name);
                            cardContent.appendChild(occupation);

                            const wrapper = document.createElement('div');
                            wrapper.classList.add('iframe-wrapper');

                            wrapper.appendChild(iframe);
                            card.appendChild(wrapper);
                            card.appendChild(cardContent);

                            container.appendChild(card);
                        });
                    } else {
                        console.error(data.error);
                    }
                })
                .catch(error => {
                    console.error('Terjadi kesalahan:', error);
                });
        });
    </script>
</body>
</html>
