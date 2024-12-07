-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2024 at 11:47 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `luarsekolah_revamp`
--

-- --------------------------------------------------------

--
-- Table structure for table `portofolio`
--

CREATE TABLE `portofolio` (
  `id_portofolio` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `okupasi` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `linkedin` text NOT NULL,
  `google_drive` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portofolio`
--

INSERT INTO `portofolio` (`id_portofolio`, `judul`, `nama`, `okupasi`, `gambar`, `linkedin`, `google_drive`) VALUES
(1, 'Portofolio', 'M. Satria Zuda S.', 'Web Developer', '1.png', 'https://www.linkedin.com/in/muhammad-satria-zuda-saputra-27aa092a2/', 'https://spectacular-troubled-carp.glitch.me/'),
(2, 'Digital Marketing Case Studies', 'Bernadine', 'Digital Marketing', '2.png', 'https://www.linkedin.com/in/bernadine-kayla-kristila/', 'https://docs.google.com/presentation/d/1pnvQk-fZNletr1-wnTzXfIdoURSHTVgqxhG-UDLFvtc/edit#slide=id.p'),
(3, 'Blog Bisnis', 'Nazhila Natsa', 'Content Writer', '3.png', 'https://www.linkedin.com/in/nazhila-natsa-nufikha-a97962216/', 'https://luarsekolah.com/article/6-ide-bisnis-kreatif-menambah-cuan-mahasiswa-modal-seadanya'),
(4, 'Blog Bisnis', 'Salma Aulia N.', 'Content Writer', '4.png', 'https://www.linkedin.com/in/salma-aulia-najmah-2b254a2a0/', 'https://luarsekolah.com/article/5-hobi-yang-bisa-menghasilkan-uang-ada-hobimu'),
(5, 'Design Thinking', 'Syahrul Maulana A.', 'UI/UX Designer', '5.png', 'https://www.linkedin.com/in/syahrul-maula-azmi/', 'https://www.linkedin.com/posts/syahrul-maula-azmi_week-1-uiux-design-assignment-overcoming-ugcPost-7247281490072408065-ygdB'),
(6, 'Thread Post', 'Nabila Brenda', 'Graphic Designer', '6.png', 'https://www.linkedin.com/in/nabila-brenda-azzahra-929259229/', 'https://www.threads.net/@luarsekolah/post/C_SgrxiT2xX?xmt=AQGza0cB1ZAbTEV4m3Vn-502uIzzzGa__OrNhwZTpwKwSw'),
(7, 'UI Luarsekolah Mobile', 'Indra Romadhon', 'UI/UX Designer', '7.png', 'https://www.linkedin.com/in/indraromadhon/', 'https://www.figma.com/design/VaN3asDHwtVw1K0j2B1hlM/Study-Case-Magang-Luar-Sekolah?node-id=0-1&node-type=canvas'),
(8, 'Blog Informatif', 'Muhammad Ismail', 'Content Writer', '8.png', 'https://www.linkedin.com/in/muhammad-ismail-07847a156/', 'https://luarsekolah.com/article/jadi-social-media-specialist-beginilah-kerjanya'),
(9, 'Study Case', 'Trisna Dewi', 'Digital Marketing', '9.png', 'https://www.linkedin.com/in/trisnadewi/', 'https://www.canva.com/design/DAGSq1PlakY/7_etqWo3AOZpjFhK2qOxRg/edit'),
(10, 'Thread Post', 'Putrika Salsabila', 'Graphic Designer', '10.png', 'https://www.linkedin.com/in/putrikasalsabila/', 'https://www.threads.net/@luarsekolah/post/C_Sguiuzu2G?xmt=AQGza0cB1ZAbTEV4m3Vn-502uIzzzGa__OrNhwZTpwKwSw'),
(11, 'Thread Post', 'Imam Aqil', 'Graphic Designer', '11.png', 'https://www.linkedin.com/in/imam-aqil-al-basyary-1bbab2184/', 'https://www.threads.net/@luarsekolah/post/C_Sgn1GzwOu?xmt=AQGza0cB1ZAbTEV4m3Vn-502uIzzzGa__OrNhwZTpwKwSw'),
(12, 'Portofolio', 'Leodionis', 'Web Developer', '12.png', 'https://www.linkedin.com/in/leodionis/', 'https://webportfolio-leodionis-projects.vercel.app/');

-- --------------------------------------------------------

--
-- Table structure for table `testimoni`
--

CREATE TABLE `testimoni` (
  `id_testimoni` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `okupasi` varchar(100) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `testimoni`
--

INSERT INTO `testimoni` (`id_testimoni`, `nama`, `okupasi`, `foto`, `deskripsi`) VALUES
(1, 'Ilona Aurellia', 'Social Media Marketing', 'testimoni1.jpg', 'Pengalaman Project Based Internship di Luarsekolah Batch 5 & Jadi Captain of Class] Akhirnya selesai juga Project Based Internship saya di Luarsekolah dan baru aja lulus pada 15 November 2024 kemarin!✨ Selama project-based internship di bidang Social Media Marketing, saya banyak dapet insight baru lewat real study case, mulai dari bikin SOW (Scope of Work), nyusun strategi konten, sampai pendekatan langsung ke kolaborator untuk kerjasama dalam eksekusi kampanye.\r\n\r\nSelain itu, saya juga dipercaya jadi Captain of Class, memimpin tim yang terdiri dari 15+ orang, memastikan koordinasi antar anggota tim tetap lancar dan komunikasi berjalan efektif.\r\n\r\nPengalaman ini nggak cuma nambah skill di social media marketing dan leadership, tapi juga bener-bener mengubah cara saya melihat dunia digital marketing dan kepemimpinan. Gak sabar buat melangkah lebih jauh dan terus berkembang! 🚀\r\n\r\nTerima kasih untuk semua yang sudah memberi kesempatan dan dukungannya! Let\'s see what’s next! 🙌\r\n'),
(2, 'Maria Anna Kartika', 'Digital Marketing', 'testimoni2.jpg', 'Over the past four weeks, I, together with the amazing team from PBI LuarSekolah, have successfully completed the About Us page revamp project and created a new page for Our Activities.\r\n\r\nAs part of the Digital Marketing division, my roles included:\r\n✅ Researching target audiences & industry trends\r\n✅ Competitor and publication section analysis\r\n✅ Structuring content sections\r\n✅ Conducting SEO keyword research\r\n✅ Creating SEO-friendly content\r\n\r\nThis project wasn’t just about updating pages—it was about conveying LuarSekolah’s branding and values in a more relevant and engaging way for the audience. Through research and strategy implementation, we created pages that are not only visually appealing but also highly functional for digital marketing needs.\r\n\r\nSpecial thanks to my mentor, Gusti Agung Setiawan, for his continuous guidance and inspiration, as well as to the entire team and Luarsekolah for their incredible support!'),
(3, 'Ihza Affikri Awwal', 'Content Writer', 'testimoni3.jpg', 'Saya berterima kasih kepada Luarsekolah yang telah membantu saya merangkai kata-kata menjadi tulisan yang penuh makna dalam bidang “content writing” dan “copywriting”. Dua bulan telah dijalani bersama teman-teman seperjuangan dalam Project Based Internship Batch 5.\r\n\r\nSertifikat ini menjadi bukti bahwa saya akan menjadi bagian dari keseluruhan manusia di muka bumi ini untuk menjadikannya lebih baik. Ada yang berjuang dalam dunia IT, mesin, ritel, desain antarmuka, manajemen, dan lain sebagainya. Sementara saya akan berjuang dalam dunia tulis menulis. Memastikan setiap susunan kata-kata menjadi penuh makna. Setiap orang yang membacanya, saya berharap mereka menemukan jalan yang terbaik untuk mencapai kebahagiaannya.\r\n\r\nMari kita bersama-sama membuat dunia lebih bahagia dan bersahabat!\r\nTerima kasih.'),
(4, 'Syahrul Maula Azmi', 'UI/UX Designer', 'testimoni4.jpg', '[Week 2 UI/UX Design Assignment: Tracing Design with Auto Layout] This assignment challenged me to trace a UI design with high accuracy and personal creativity. The steps I took: 1. Tracing UI Design: I recreate the design as closely as possible to the given example, optimizing the use of Auto Layout for efficiency and flexibility in design. 2. Creativity Exploration: I was free to choose fonts, colors, icons, and images to add a creative touch to the design without sacrificing similarity (target >80%).\r\n\r\nThrough this assignment, I learned how to maximize Auto Layout in Figma and balance between accuracy and creativity in the design process. ✨\r\n\r\nProject-Based Internship: UI/UX Designer at Luarsekolah\r\n'),
(5, 'Salman Al Haritsi', 'Web Developer', 'testimoni5.jpg', 'Three months have passed, and I am very excited to have successfully completed my internship with Luarsekolah as a remote web developer. This experience has been incredibly valuable to me and represents a significant stepping stone toward achieving my dream career. 🚀👨‍💻 \r\n\r\nI want to extend my heartfelt thanks to Luarsekolah for creating this innovative program that helps young people acquire the skills needed in today\'s industry. ✨✨ \r\n\r\nI also want to express my deepest gratitude to Kak Rian, my web development mentor, who has provided invaluable guidance over the past three months. He not only taught me essential hard skills but also imparted important soft skills crucial for becoming a professional. 💯 \r\n\r\nDuring this internship, I learned how to collaborate effectively with my peers. I want to thank everyone for their hard work and dedication. See you at the top, guys!'),
(6, 'Fidela Azzahra', 'Web Developer', 'testimoni6.jpg', 'Hi everyone 👋\r\n\r\nI am pleased to announce that I have successfully completed an independent internship conducted remotely with Luarsekolah from March 4th to April 5th, 2024 🎉🎉\r\n\r\nMagang+ program offers an opportunity for anyone to experience working and completing projects relevant to real industry cases. Web Developer is one of the paths within the information technology occupation. Within this occupation, there are two paths: UI/UX Designer and Web Developer, with durations ranging from one to three months. I chose the Web Developer path with a one-month duration, which was conducted remotely.\r\n\r\nThroughout the week, Web Developer participants are required to attend two online meetings with their respective supervisors. The first meeting, usually held on Mondays, consists of presentations and explanations of weekly tasks for the duration of one month. The second meeting, held on Fridays or Saturdays, is dedicated to joint evaluations. During each evaluation session, every intern is required to present the progress of their projects, including the website interface and explanations of the code.\r\n\r\nEach week, the learning materials provided by the supervisor. In the first week, the material focused on the basic use of HTML. In the second week, CSS was introduced to the web page created in the first week. The third week included an introduction to basic logic using JavaScript. In the fourth week, each participant was equipped to prepare for the final project. The final project consists of two assignments. For the first assignment, participants are required to complete the website program they have developed. For the second assignment, participants are required to create a video detailing their activities during the internship with Luarsekolah, as well as an overview of the project they have created. At the end of the internship period, participants will undergo a graduation session, scheduled for April 5th, on Friday.\r\n\r\nParticipating in Internship Batch 3 with Luarsekolah has been a valuable experience for me. Not only has it taught me discipline and responsibility, but it has also trained me to think logically and solve problems systematically. I would like to express my gratitude to Mr. Rian Hidayat, my supervisor, for providing me with valuable feedback and guidance throughout this internship. I will take the feedback provided and use it as a lesson to become a better individual in the future 😁\r\n\r\nFor the demo project, please click the link below 👇 \r\nhttps://lnkd.in/gNkVswBS');

-- --------------------------------------------------------

--
-- Table structure for table `video_testimoni`
--

CREATE TABLE `video_testimoni` (
  `id_video` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `okupasi` varchar(100) NOT NULL,
  `link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `video_testimoni`
--

INSERT INTO `video_testimoni` (`id_video`, `nama`, `okupasi`, `link`) VALUES
(1, 'Ni Putu Reggita Dania P.', 'Social Media Marketing', 'https://drive.google.com/file/d/1QuiJS5Jr-n1tp-OUH95kEtorpie_-ybS/preview'),
(2, 'Anita Herovica', 'Graphic Designer', 'https://drive.google.com/file/d/1ItTG1DCU1zr6yCy6JR2Q8UBEPWdw1sZJ/preview'),
(3, 'Muhammad Farhan', 'UI/UX Designer', 'https://drive.google.com/file/d/1LXBZzEsDQgUTJeSKmktHfPFg47PNIn52/preview'),
(4, 'Arman Parinding', 'Digital Marketing', 'https://drive.google.com/file/d/1P1_XFXeQnuRuGX2f6t1KGhZyeCJ18ssL/preview'),
(5, 'Mario Arifiyandi', 'Web Developer', 'https://drive.google.com/file/d/19r_FXrUJsZEFE3Lv2k5dEYPniqiY0XYh/preview'),
(6, 'Muhammad Gibrant Aryoseno', 'Content Writer', 'https://drive.google.com/file/d/1TsJnQbtfmgi8GX8Lfx2YQgUOxwbOccsM/preview'),
(7, 'Alif Revinsa Arrafi', 'UI/UX Designer', 'https://drive.google.com/file/d/1vDUTph6mlJBGPQZ-LiIU_x54UrIc-Zln/preview'),
(8, 'Ardiyanto Satrio Nugroho', 'Web Developer', 'https://drive.google.com/file/d/1GS36R_P8V0qeeyBWb0PqmMjQUai1998S/preview'),
(9, 'Eka Rossalina Fitria', 'Digital Marketing', 'https://drive.google.com/file/d/1c9pPK6GFLiBIzylBmNHQPyGBmzPrzHrV/preview'),
(10, 'Wafiq Nur Agniati', 'Graphic Designer', 'https://drive.google.com/file/d/1xgQHaJXRBJHiaAaTwtrdLldfm_OIcgUD/preview');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `portofolio`
--
ALTER TABLE `portofolio`
  ADD PRIMARY KEY (`id_portofolio`);

--
-- Indexes for table `testimoni`
--
ALTER TABLE `testimoni`
  ADD PRIMARY KEY (`id_testimoni`);

--
-- Indexes for table `video_testimoni`
--
ALTER TABLE `video_testimoni`
  ADD PRIMARY KEY (`id_video`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `portofolio`
--
ALTER TABLE `portofolio`
  MODIFY `id_portofolio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `testimoni`
--
ALTER TABLE `testimoni`
  MODIFY `id_testimoni` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `video_testimoni`
--
ALTER TABLE `video_testimoni`
  MODIFY `id_video` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
