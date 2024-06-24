-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2024 at 10:06 AM
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
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` varchar(10) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `password` varchar(15) NOT NULL,
  `hak` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama`, `password`, `hak`) VALUES
('1857301004', 'Saina Nilsa', '1234512345', 'admin'),
('1857301033', 'Iqbal', '123123', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `no_ktp` bigint(16) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `email` varchar(200) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `password` varchar(15) NOT NULL,
  `status` int(1) NOT NULL,
  `hak` varchar(5) NOT NULL,
  `date_created` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`no_ktp`, `nama`, `jenis_kelamin`, `email`, `no_hp`, `alamat`, `password`, `status`, `hak`, `date_created`) VALUES
(1057301010123442, 'Razziq', 'L', 'razziq@gmail.com', '082167679021', 'Medan', '$2y$10$El3ZbqdR', 0, '', '2024-06-24'),
(1057301010123445, 'Larisa', 'P', 'risa@gmail.com', '082341566579', 'Medan', '$2y$10$4VqDfd6v', 1, 'user', '2024-06-24'),
(1057301010123450, 'Aktiya', 'P', 'tiya@gmail.com', '085767899098', 'Pondok Aren', '$2y$10$cKHiGGpt', 1, 'user', '2024-06-24'),
(1057301010123451, 'Fazira', 'P', 'faziraa@gmail.com', '085214145676', 'Medan Denai', '$2y$10$qAX3X2g7', 0, '', '2024-06-24'),
(1057301010123452, 'Kurnia', 'L', 'kurnia@gmail.com', '085279805155', 'Jalan Belibis, Medan', '$2y$10$GG7pTcOm', 0, '', '2024-06-24'),
(1057301010123453, 'Rahmat', 'L', 'rahmat@gmail.com', '085243456060', 'Pondok Aren', '$2y$10$djRnl4b4', 1, 'user', '2024-06-24'),
(1057301010123454, 'Kanaya', 'P', 'kanaya@gmail.com', '082156768080', ' Bireun', '$2y$10$wgzftE1O', 1, 'user', '2024-06-24'),
(1057301010123455, 'Iqbal', 'L', 'iqbal@gmail.com', '082123329090', 'Banda Aceh', '$2y$10$YHQ4hZD1', 1, 'user', '2024-06-24'),
(1057301010123456, 'Hardin', 'L', 'hardin@gmail.com', '081234561234', 'Alue Awe', '$2y$10$3Hwdw4V5', 1, 'user', '2024-06-24'),
(1057301010123457, 'Queen', 'P', 'queen@gmail.com', '081234347878', 'Peuntet', '$2y$10$BPDhjMWQ', 1, 'user', '2024-06-24'),
(1057301010123458, 'Clara ', 'P', 'clara@gmail.com', '081278789090', 'Geudong', '$2y$10$UJtd7Cvy', 1, 'user', '2024-06-24'),
(1057301010123459, 'Atharrazqa', 'L', 'athar@gmail.com', '081234561234', 'Mongeudong', '$2y$10$ANmHVyX5', 1, 'user', '2024-06-24'),
(1057301010123461, 'Khairunnisa', 'P', 'nisa@gmail.com', '081290879087', 'Banda Aceh', '$2y$10$3OKxCBsw', 1, 'user', '2024-06-24');

-- --------------------------------------------------------

--
-- Table structure for table `tb_buku`
--

CREATE TABLE `tb_buku` (
  `id_buku` varchar(10) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `pengarang` varchar(100) NOT NULL,
  `penerbit` varchar(150) NOT NULL,
  `tahun_terbit` varchar(4) NOT NULL,
  `isbn` varchar(25) NOT NULL,
  `jumlah_buku` varchar(3) NOT NULL,
  `kategori_buku` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_buku`
--

INSERT INTO `tb_buku` (`id_buku`, `judul`, `pengarang`, `penerbit`, `tahun_terbit`, `isbn`, `jumlah_buku`, `kategori_buku`) VALUES
('A001', 'Clean Code: A Handbook of Agile Software Craftsmanship', 'Robert C. Martin', 'Prentice Hall', '2008', '978-0132350884', '4', 'A001'),
('A002', 'The Pragmatic Programmer: Your Journey to Mastery', 'Andrew Hunt, David Thomas', 'Addison-Wesley Professional', '1999', '978-0201616224', '1', 'A001'),
('A003', 'Design Patterns: Elements of Reusable Object-Oriented Software', 'Erich Gamma, Richard Helm, Ralph Johnson, John Vlissides', 'Addison-Wesley Professional', '1994', '978-0201633610', '4', 'A001'),
('A004', 'Introduction to Algorithms', 'Thomas H. Cormen, Charles E. Leiserson, Ronald L. Rivest, Clifford Stein', 'MIT Press', '2009', '978-0262033848', '1', 'A001'),
('A005', 'Code Complete: A Practical Handbook of Software Construction', 'Steve McConnell', 'Microsoft Press', '2004', '978-0735619678', '5', 'A001'),
('A006', 'Cracking the Coding Interview: 189 Programming Questions and Solutions', 'Gayle Laakmann McDowell', 'CareerCup', '2015', '978-0984782857', '3', 'A001'),
('A007', 'Artificial Intelligence: A Modern Approach', 'Stuart Russell, Peter Norvig', 'Pearson', '2021', '978-0134610993', '4', 'A001'),
('A008', 'Machine Learning Yearning', 'Andrew Ng', 'Deeplearning.ai', '2018', 'Tidak ada ISBN', '5', 'A001'),
('A009', 'The Innovators: How a Group of Hackers, Geniuses, and Geeks Created the Digital Revolution', 'Walter Isaacson', 'Simon & Schuster', '2014', '978-1476708690', '4', 'A001'),
('A010', 'The Phoenix Project: A Novel about IT, DevOps, and Helping Your Business Win', 'Gene Kim, Kevin Behr, George Spafford', 'IT Revolution Press', '2013', '978-0988262591', '1', 'A001'),
('B001', 'Sejarah Indonesia Modern 1200-2004', 'M.C. Ricklefs', 'Serambi', '2005', '978-979-9341-42-7', '9', 'A002'),
('B002', 'Jejak Langkah Pramoedya Ananta Toer', 'Pramoedya Ananta Toer', 'Hasta Mitra', '1985', '978-979-410-235-3', '9', 'A002'),
('B003', 'Indonesia Eksplisit: Kebudayaan yang Mengalir di Jalan Keindonesiaan', 'Goenawan Mohamad', 'Kepustakaan Populer Gramedia', '2003', '978-979-9023-35-1', '4', 'A002'),
('B004', 'Pulau Imaji: Pemikiran Politik Pramoedya Ananta Toer', 'Pramoedya Ananta Toer', 'Lontar Foundation', '1999', '978-981-05-9051-3', '8', 'A002'),
('B005', 'Sejarah Nasional Indonesia Jilid 1: Zaman Kuno', 'Slamet Muljana', 'PT Balai Pustaka', '2005', '978-979-407-408-5', '10', 'A002'),
('B006', 'Bung Karno: Penyambung Lidah Rakyat Indonesia', 'Cindy Adams', 'Mizan', '2010', '978-979-433-798-7', '5', 'A002'),
('B007', 'Raden Ajeng Kartini: Herinneringen van een Javaanse prinses', 'Raden Adjeng Kartini', 'Gramedia Pustaka Utama', '1993', '978-979-709-134-0', '15', 'A002'),
('B008', 'Sejarah Kecil Indonesia', 'Fadjar I. Thufail', 'Gramedia Pustaka Utama', '2008', '978-979-22-3638-1', '10', 'A002'),
('B009', 'Revolusi Nasional Indonesia: Di Balik Tirai Perang', 'Sudarmanto', 'Gramedia Pustaka Utama', '2010', '978-979-22-5971-6', '15', 'A002'),
('B010', 'Cerita-cerita dari Belakang Kaca Mata: Sebuah Kajian tentang Sejarah', 'John Roosa', 'Lontar Foundation', '2004', '978-979-8083-54-8', '15', 'A002'),
('C001', 'Menggiring Indonesia ke Puncak: Memoar Bambang Pamungkas', 'Bambang Pamungkas', 'PT Gramedia Pustaka Utama', '2011', '978-979-22-7553-2', '21', 'A003'),
('C002', 'Panduan Lengkap Bermain Sepak Bola', 'Luis Manuel Blanco', 'Penebar Swadaya', '2017', '978-602-233-523-5', '15', 'A003'),
('C003', 'Trik-Trik Badminton: Panduan untuk Pemain Pemula hingga Profesional', 'Ricky Subagja', 'Pustaka Hidayah', '2015', '978-602-6989-47-6', '17', 'A003'),
('C004', 'Pembimbing Lengkap Bermain Basket', 'LeBron James', 'Mizan', '2019', '978-602-6969-30-0', '9', 'A003'),
('C005', 'Manajemen Olahraga: Teori dan Praktik', 'Dr. H. Suparno, M.Pd.', 'Raja Grafindo Persada', '2016', '978-602-464-599-4', '6', 'A003'),
('C006', 'Panduan Praktis Bermain Tenis', 'Serena Williams', 'Kompas Gramedia', '2020', '978-602-424-520-6', '20', 'A003'),
('C007', 'Catatan Hidup dan Perjuangan Arie Sudarsono', 'Arie Sudarsono', 'Kepustakaan Populer Gramedia', '2008', '978-979-9102-86-8', '14', 'A003'),
('C008', 'Kisah Inspiratif Seorang Petinju: Memoar Chris John', 'Chris John', 'Elex Media Komputindo', '2013', '978-602-02-4451-5', '30', 'A003'),
('C009', 'Panduan Bermain Golf untuk Pemula', 'Tiger Woods', 'Gramedia Pustaka Utama', '2017', '978-979-22-9573-5', '24', 'A003'),
('C010', 'Sang Pemimpi: Biografi Joko Widodo', 'Joko Widodo', 'Bentang Pustaka', '2014', '978-602-220-176-7', '40', 'A003'),
('D001', 'Kosmologi: Sejarah dan Teori Pembentukan Alam Semesta', ' Stephen Hawking', ' Erlangga', '2004', '978-979-2055-57-8', '100', 'A004'),
('D002', 'Teori Kuantum untuk Pemula', 'Jim Al-Khalili', 'Pustaka Zahra Indonesia', '2016', '978-602-0844-04-5', '30', 'A004'),
('D003', 'Gen: Koperasi Makhluk Hidup', 'Matt Ridley', 'Penerbit Nusa Raya', '2003', '978-979-730-128-2', '34', 'A004'),
('D004', 'Sains Populer: Ensiklopedia Sains untuk Anak-Anak', 'Hadi Siswanto', 'Gramedia Pustaka Utama', '2018', '978-602-03-2464-8', '45', 'A004'),
('D005', 'Evolusi: Perubahan dan Adaptasi Makhluk Hidup', 'Charles Darwin', 'Kepustakaan Populer Gramedia', '2010', '978-979-9102-92-9', '35', 'A004'),
('D006', 'Fisika Modern: Dari Relativitas hingga Teori Quantum', 'Richard Feynman', 'Pustaka Delapan', '2015', '978-602-17461-8-9', '20', 'A004'),
('D007', 'Anatomi Manusia: Struktur dan Fungsi Tubuh Manusia', 'Frederic H. Martini', 'Penerbit Buku Kedokteran EGC', '2012', '978-979-044-527-7', '30', 'A004'),
('D008', 'Kimia Organik: Pendekatan Fungsional', 'Robert T. Morrison, Robert N. Boyd', 'Erlangga', '2008', '978-979-766-607-6', '30', 'A004'),
('D009', 'Sains untuk Kebenaran: Dari Kehidupan Setelah Kematian hingga Teori Konspirasi', 'Neil deGrasse Tyson', 'PT Gramedia Pustaka Utama', '2020', '978-602-06-3456-9', '50', 'A004'),
('D010', 'Biologi Sel: Struktur dan Fungsi Sel Hidup', 'Bruce Alberts, Alexander Johnson, Julian Lewis, Martin Raff, Keith Roberts, Peter Walter', 'Erlangga', '2009', '978-979-2055-25-7 Informa', '50', 'A004'),
('E001', 'Geografi Regional Indonesia', 'Koentjaraningrat', 'Gramedia Pustaka Utama', '2005', '978-979-22-0531-1', '30', 'A005'),
('E002', 'Ilmu Bumi dan Antariksa: Memahami Planet Bumi dan Tata Surya', 'Prof. Dr. Ir. Sukamto Wiradikarta', 'Erlangga', ' 201', '978-979-781-170-5', '60', 'A005'),
('E003', 'Atlas Indonesia dan Dunia', '-', 'Gramedia Pustaka Utama', '2019', '978-602-03-0893-7', '26', 'A005'),
('E004', 'Geografi: Konsep, Teori, dan Aplikasi', 'Michael Pacione', 'PT RajaGrafindo Persada', '2010', '978-979-769-760-0', '50', 'A005'),
('E005', 'Geografi Lingkungan: Teori dan Aplikasi', 'Edward J. Keller, David R. Montgomery', 'Penerbit Salemba Humanika', '2008', '978-979-691-754-8', '70', 'A005'),
('E006', 'Peta Indonesia: Lengkap dengan Data Geografis dan Sosial Ekonomi', '-', 'Kementerian Dalam Negeri Republik Indonesia', '2017', 'Tidak memiliki ISBN resmi', '50', 'A005'),
('E007', 'Geografi Manusia: Ruang, Tempat, dan Lingkungan', 'Derek Gregory, Ron Johnston, Geraldine Pratt, Michael Watts, Sarah Whatmore', 'Erlangga', '2009', '978-979-2055-19-6', '40', 'A005'),
('E008', 'Atlas Geografi Indonesia', '-', 'Penerbit Buku Kompas', '2015', '978-602-03-2908-6', '50', 'A005'),
('E009', 'Geografi Regional: Perspektif Indonesia dan Global', 'Prof. Dr. Ir. Sutrisno, M.Sc.', 'Penerbit Andi', '2014', '978-979-29-3766-4', '80', 'A005'),
('E010', 'Geografi Perkotaan: Teori, Konsep, dan Aplikasi', 'Paul L. Knox, Linda McCarthy', 'Pustaka Pelajar', '2013', '978-602-8688-47-2', '40', 'A004'),
('F001', 'Seni Rupa: Sejarah, Teori, dan Pengetahuan Dasar', 'Jim Supangkat', 'Kepustakaan Populer Gramedia', '2010', '978-979-9102-60-8', '20', 'A006'),
('F002', 'Mengenal Seni Musik', 'Dr. H. Agus Mulyana', 'Pustaka Al Kautsar', '2015', '978-602-6990-72-5', '50', 'A006'),
('F003', 'Seni Teater dan Drama: Sejarah dan Perkembangannya', 'John Russell Brown', 'Penerbit Universitas Indonesia (UI Press)', '2006', '978-979-704-984-7', '50', 'A006'),
('F004', 'Seni Tari: Pengertian, Sejarah, dan Perkembangannya di Indonesia', 'Sal Murgiyanto', 'Grasindo', '2013', '978-979-759-673-4', '30', 'A006'),
('F005', 'Arsitektur Tradisional Nusantara', 'Popo Danes', 'Penerbit Kanisius', '2008', '978-979-21-1055-0', '30', 'A006'),
('F006', 'Seni Lukis Indonesia: Katalog Lukisan dan Seniman Terkenal', '-', 'Penerbit Buku Kompas', '2016', '978-602-03-3542-1', '45', 'A006'),
('F007', 'Seni Grafis: Teknik dan Aplikasi dalam Dunia Seni', 'Yusman Ali', 'Penerbit Andi', '2014', '978-979-29-4810-3', '50', 'A006'),
('F008', 'Seni Fotografi: Mengabadikan Momen dengan Teknik Modern', 'Haryanto Kunto', 'Elex Media Komputindo', '2017', '978-602-02-3230-7', '50', 'A006'),
('F009', 'Seni Kriya Tradisional Indonesia', '-', 'Penerbit Ombak', '2012', '978-979-3890-66-5', '100', 'A006'),
('F010', 'Seni Patung: Sejarah, Teknik, dan Perkembangannya di Indonesia', 'Edi Sunarso', 'PT Gramedia Pustaka Utama', '2007', '978-979-22-2472-6', '15', 'A006'),
('G001', 'Sejarah Musik Dunia', 'Drs. H. Dedy Suryadi', 'Gema Insani Press', '2009', '978-979-780-274-1', '30', 'A007'),
('G002', 'Teori Musik: Belajar Mudah dan Cepat', 'William S. Newman', 'Gramedia Pustaka Utama', 'Tahu', '978-979-22-7890-8', '30', 'A007'),
('G003', 'Seni dan Pengajaran Musik', 'Prof. Dr. Sumarsam', 'Pustaka Pelajar', '2007', '978-979-23-2896-7', '50', 'A007'),
('G004', 'Musik Klasik: Pengantar', 'Agus Mulyana', 'Penerbit Ombak', '2010', '978-979-9102-10-3', '200', 'A007'),
('G005', 'Panduan Lengkap Belajar Piano', 'John Thompson', 'Elex Media Komputindo', '2015', '978-602-02-7220-7', '35', 'A007'),
('G006', 'Teori Musikal: Dasar-Dasar Musik untuk Pemula', 'Michael Pilhofer, Holly Day', 'Penerbit Pustaka Jaya', '2011', '978-979-3721-32-5', '30', 'A007'),
('G007', 'Musik Tradisional Nusantara', 'Jopie Latul', 'Kepustakaan Populer Gramedia', '2014', '978-979-9102-73-8', '40', 'A007'),
('G008', 'Teknik Vokal: Belajar Bernyanyi dengan Benar', 'Ronny Sianturi', 'PT Gramedia Pustaka Utama', '2018', '978-602-03-6060-0', '35', 'A006'),
('G009', 'Buku Pintar Gitar: Teknik Bermain Gitar untuk Pemula', 'Yayan Hadiatna', 'Penerbit PT Mizan Pustaka', '2016', '978-602-403-389-8', '50', 'A007'),
('G010', 'Pengenalan Alat Musik Tradisional Indonesia', 'Herli Guna Putra', 'Penerbit Kanisius', '2005', '978-979-21-1080-2', '50', 'A007'),
('H001', 'Harry Potter dan Batu Bertuah', 'J.K. Rowling', 'Gramedia Pustaka Utama', '2000', '-', '150', 'A008'),
('H002', 'The Lord of the Rings: The Fellowship of the Ring', 'J.R.R. Tolkien', 'Gramedia Pustaka Utama', '2001', '-', '150', 'A008'),
('H003', 'Chronicles of Narnia: The Lion, the Witch, and the Wardrobe', ' C.S. Lewis', 'PT Pustaka Harapan', '1995', '-', '180', 'A008'),
('H004', 'Percy Jackson & the Olympians: The Lightning Thief', 'Rick Riordan', 'Mizan Fantasi', '2008', '-', '500', 'A008'),
('H005', 'A Song of Ice and Fire: A Game of Thrones', 'George R.R. Martin', 'Gramedia Pustaka Utama', '2011', '-', '250', 'A008'),
('H006', 'The Hobbit', 'J.R.R. Tolkien', 'Gramedia Pustaka Utama', ' 201', '-', '400', 'A008'),
('H007', 'Artemis Fowl', 'Eoin Colfer', 'Gramedia Pustaka Utama', '2004', '-', '145', 'A008'),
('H008', 'Inheritance Cycle: Eragon', 'Christopher Paolini', 'Gramedia Pustaka Utama', '2005', '-', '450', 'A008'),
('H009', 'The Mortal Instruments: City of Bones', 'Cassandra Clare', 'Mizan Fantasi', '2010', '-', '135', 'A008'),
('H010', 'The Hunger Games', 'Suzanne Collins', 'Gramedia Pustaka Utama', '2012', '-', '235', 'A008'),
('I001', 'Steve Jobs', 'Walter Isaacson', 'Simon & Schuster', '2011', '978-1451648539', '200', 'A009'),
('I002', 'The Diary of a Young Girl', 'Anne Frank', 'Bantam', '1993', '978-0553296983', '400', 'A009'),
('I003', 'Long Walk to Freedom: The Autobiography of Nelson Mandela', 'Nelson Mandela', 'Little, Brown and Company', '1994', '978-0316548182', '300', 'A009'),
('I004', 'Becoming', 'Michelle Obama', 'Crown Publishing Group', '2018', '978-1524763138', '200', 'A009'),
('I005', 'The Story of My Experiments with Truth', 'Mahatma Gandhi', 'Navajivan Publishing House', '1927', '978-0141186863', '400', 'A009'),
('I006', 'Alexander Hamilton', 'Ron Chernow', 'Penguin Press', '2004', '978-1594200090', '200', 'A009'),
('I007', 'Einstein: His Life and Universe', 'Walter Isaacson', 'Simon & Schuster', '2007', '978-0743264730', '300', 'A009'),
('I008', 'The Glass Castle: A Memoir', 'Jeannette Walls', 'Scribner', '2005', '978-0743247542', '300', 'A009'),
('I009', 'Elon Musk: Tesla, SpaceX, and the Quest for a Fantastic Future', 'Ashlee Vance', 'Ecco', '2015', '978-0062301239', '200', 'A009'),
('I010', 'I Am Malala: The Girl Who Stood Up for Education and Was Shot by the Taliban', 'Malala Yousafzai', 'Little, Brown and Company', '2013', '978-0316322406', '300', 'A009'),
('J001', 'Soe Hok Gie: Catatan Seorang Demonstran', 'Soe Hok Gie', 'LP3ES', '1983', '978-9798015033', '100', 'A010'),
('J002', 'Habibie & Ainun', 'B.J. Habibie', 'THC Mandiri', '2010', '978-6028884204', '300', 'A010'),
('J003', 'Gus Dur: The Authorized Biography of Abdurrahman Wahid', 'Greg Barton', 'Equinox Publishing', ' 200', '978-9799589857', '300', 'A010'),
('J004', 'Jenderal Soedirman: Sebuah Biografi', 'Tjokropranolo', 'Gramedia Pustaka Utama', '1993', '978-9795114458', '300', 'A010'),
('J005', 'Sukarno: An Autobiography as Told to Cindy Adams', 'Cindy Adams', 'Gunung Agung', '1966', '978-9794442651', '300', 'A010'),
('J006', 'Kartini: Sebuah Biografi', 'Sitisoemandari Soeroto', 'Djambatan', '1979', '978-9794281137', '100', 'A010'),
('J007', 'Bung Karno: Penyambung Lidah Rakyat Indonesia', 'Cindy Adams', 'Gunung Agung', '1965', '978-9794441042', '300', 'A010'),
('J008', 'Gie, Anak Semua Bangsa', 'Stanley Adi Prasetyo, Rudy Badil, F. Rahardi', 'Gramedia Pustaka Utama', '1997', '978-9795116277', '100', 'A010'),
('J009', 'Sri Sultan Hamengku Buwono IX: Tahta untuk Rakyat', 'Atmakusumah', 'Gramedia Pustaka Utama', '2010', '978-9792264445', '500', 'A010'),
('J010', 'Pramoedya Ananta Toer: Luruh dalam Ideologi', 'Koesalah Soebagyo Toer', 'Kepustakaan Populer Gramedia', '2010', '978-9799101255', '200', 'A010');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategoribuku`
--

CREATE TABLE `tb_kategoribuku` (
  `id_kategori` varchar(11) NOT NULL,
  `kategori_buku` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_kategoribuku`
--

INSERT INTO `tb_kategoribuku` (`id_kategori`, `kategori_buku`) VALUES
('A001', 'Teknologi'),
('A002', 'Sejarah'),
('A003', 'Olahraga'),
('A004', 'Sains'),
('A005', 'Geografi'),
('A006', 'Seni'),
('A007', 'Musik'),
('A008', 'Fantasi'),
('A009', 'Biografi'),
('A010', 'Drama');

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `id_transaksi` varchar(10) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`id_transaksi`, `judul`, `nama`, `tgl_pinjam`, `tgl_kembali`, `status`) VALUES
('A001', 'Clean Code: A Handbook of Agile Software Craftsmanship', 'Razziq', '2024-06-24', '2024-06-28', 'pinjam'),
('A002', 'The Pragmatic Programmer: Your Journey to Mastery', 'Razziq', '2024-06-24', '2024-06-28', 'pinjam'),
('A003', 'Design Patterns: Elements of Reusable Object-Oriented Software', 'Razziq', '2024-06-24', '2024-06-28', 'pinjam'),
('B001', 'Sejarah Indonesia Modern 1200-2004', 'Larisa', '2024-06-24', '2024-06-28', 'pinjam'),
('B002', 'Jejak Langkah Pramoedya Ananta Toer', 'Larisa', '2024-06-24', '2024-06-28', 'pinjam'),
('B003', 'Indonesia Eksplisit: Kebudayaan yang Mengalir di Jalan Keindonesiaan', 'Larisa', '2024-06-24', '2024-06-28', 'pinjam'),
('C001', 'Menggiring Indonesia ke Puncak: Memoar Bambang Pamungkas', 'Aktiya', '2024-06-24', '2024-03-28', 'kembali'),
('C001', 'Menggiring Indonesia ke Puncak: Memoar Bambang Pamungkas', 'Aktiya', '2024-06-24', '2024-06-28', 'kembali'),
('C002', 'Panduan Lengkap Bermain Sepak Bola', 'Aktiya', '2024-06-24', '2024-06-28', 'kembali'),
('C003', 'Trik-Trik Badminton: Panduan untuk Pemain Pemula hingga Profesional', 'Aktiya', '2024-06-24', '2024-07-04', 'kembali'),
('C003', 'Manajemen Olahraga: Teori dan Praktik', 'Aktiya', '2024-06-24', '2024-07-06', 'kembali'),
('C003', 'Trik-Trik Badminton: Panduan untuk Pemain Pemula hingga Profesional', 'Aktiya', '2024-06-24', '2024-06-17', 'kembali'),
('C003', 'Panduan Praktis Bermain Tenis', 'Aktiya', '2024-06-24', '2024-06-19', 'pinjam');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`no_ktp`);

--
-- Indexes for table `tb_buku`
--
ALTER TABLE `tb_buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indexes for table `tb_kategoribuku`
--
ALTER TABLE `tb_kategoribuku`
  ADD PRIMARY KEY (`id_kategori`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
