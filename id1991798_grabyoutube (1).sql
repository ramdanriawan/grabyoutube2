-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2017 at 06:13 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id1991798_grabyoutube`
--

-- --------------------------------------------------------

--
-- Table structure for table `chanel`
--

CREATE TABLE `chanel` (
  `id` int(11) NOT NULL,
  `link` varchar(200) NOT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `subscriber` varchar(110) DEFAULT NULL,
  `videos` varchar(200) DEFAULT NULL,
  `playlists` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chanel`
--

INSERT INTO `chanel` (`id`, `link`, `logo`, `name`, `subscriber`, `videos`, `playlists`) VALUES
(7, 'https://www.youtube.com/channel/UCpSPS5yLCxYRuZSrCx-eBjA', 'https://yt3.ggpht.com/-XRHoroFCkyg/AAAAAAAAAAI/AAAAAAAAAAA/oYjwbmm1HwY/s100-c-k-no-mo-rj-c0xffffff/photo.jpg', 'Sekolah Koding', '21.243', 'https://www.youtube.com/channel/UCpSPS5yLCxYRuZSrCx-eBjA/videos', 'https://www.youtube.com/channel/UCpSPS5yLCxYRuZSrCx-eBjA/playlists'),
(8, 'https://www.youtube.com/channel/UCpSPS5yLCxYRuZSrCx-eBjA', 'https://yt3.ggpht.com/-XRHoroFCkyg/AAAAAAAAAAI/AAAAAAAAAAA/oYjwbmm1HwY/s100-c-k-no-mo-rj-c0xffffff/photo.jpg', 'Sekolah Koding', '21.243', 'https://www.youtube.com/channel/UCpSPS5yLCxYRuZSrCx-eBjA/videos', 'https://www.youtube.com/channel/UCpSPS5yLCxYRuZSrCx-eBjA/playlists');

-- --------------------------------------------------------

--
-- Table structure for table `playlists`
--

CREATE TABLE `playlists` (
  `id` int(11) NOT NULL,
  `chanel` varchar(200) NOT NULL,
  `name` varchar(100) NOT NULL,
  `gambar` text NOT NULL,
  `judul` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `total_videos` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `playlists`
--

INSERT INTO `playlists` (`id`, `chanel`, `name`, `gambar`, `judul`, `link`, `total_videos`) VALUES
(94, 'https://www.youtube.com/channel/UCpSPS5yLCxYRuZSrCx-eBjA', 'Sekolah Koding', 'https://i.ytimg.com/vi/xXyJekhcItI/hqdefault.jpg?sqp=-oaymwEWCMQBEG5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLBhiwYZvYx0FXC8ZpsaqkLZKEUWng', 'Kenalan dengan Firebase', 'http://youtube.com/playlist?list=PLCZlgfAG0GXCMaYN4ZYiuyHRG5KSGd2la', 8),
(95, 'https://www.youtube.com/channel/UCpSPS5yLCxYRuZSrCx-eBjA', 'Sekolah Koding', 'https://i.ytimg.com/vi/E7XgI57ujXI/hqdefault.jpg?sqp=-oaymwEWCMQBEG5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLBKTlM_oiK_YPI_DfloDqKyX8KYhQ', 'Trailer kelas Sekolah Koding', 'http://youtube.com/playlist?list=PLCZlgfAG0GXDdMNphIUFf9uzo_TFwzwo5', 44),
(96, 'https://www.youtube.com/channel/UCpSPS5yLCxYRuZSrCx-eBjA', 'Sekolah Koding', 'https://i.ytimg.com/vi/wis5cgn1Ntw/hqdefault.jpg?sqp=-oaymwEWCMQBEG5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLBEruI1V4-VPRvpvkvTGBlnnBRqiw', 'Podcast random sekolah koding', 'http://youtube.com/playlist?list=PLCZlgfAG0GXB-hHWb9ydU6UTPfGRUsgkl', 13),
(97, 'https://www.youtube.com/channel/UCpSPS5yLCxYRuZSrCx-eBjA', 'Sekolah Koding', 'https://i.ytimg.com/vi/qhvgcZkyPlE/hqdefault.jpg?sqp=-oaymwEWCMQBEG5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLAR-UgPkO1r1OS08rnThmpVNa1BXQ', 'Santai Sedikit', 'http://youtube.com/playlist?list=PLCZlgfAG0GXC1U-Kj53NtMeSivutRDnS9', 7),
(98, 'https://www.youtube.com/channel/UCpSPS5yLCxYRuZSrCx-eBjA', 'Sekolah Koding', 'https://i.ytimg.com/vi/XSgSWPLfFvE/hqdefault.jpg?sqp=-oaymwEWCMQBEG5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLBjMEmPuHYTiQrPVYG3rBoiYkf-cQ', 'Belajar es6 - javacsript gaya baru', 'http://youtube.com/playlist?list=PLCZlgfAG0GXBWhs2AwMdPyKtMG2cF4YSR', 12),
(99, 'https://www.youtube.com/channel/UCpSPS5yLCxYRuZSrCx-eBjA', 'Sekolah Koding', 'https://i.ytimg.com/vi/NMOz7VjH4rE/hqdefault.jpg?sqp=-oaymwEWCMQBEG5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLCrc6nmgAcMaBXs9sGjVtZNxKzI4Q', 'bloopers || yang salah salah', 'http://youtube.com/playlist?list=PLCZlgfAG0GXBGycc71aYEX7Lv-Pi8XN6K', 16),
(100, 'https://www.youtube.com/channel/UCpSPS5yLCxYRuZSrCx-eBjA', 'Sekolah Koding', 'https://i.ytimg.com/vi/h3KN7az274k/hqdefault.jpg?sqp=-oaymwEWCMQBEG5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLC4TjN1McAJ552hr652VJKZLGtbKw', 'Luaskan manfaat dengan startup digital #startup101', 'http://youtube.com/playlist?list=PLCZlgfAG0GXASlv3QJfjJHSt9AxoGQt2f', 3),
(101, 'https://www.youtube.com/channel/UCpSPS5yLCxYRuZSrCx-eBjA', 'Sekolah Koding', 'https://i.ytimg.com/vi/SdaNLv9eKfE/hqdefault.jpg?sqp=-oaymwEWCMQBEG5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLCJbAxAAJr-0jLpQSEBJTVfb3RNVA', 'Mengatur data .env', 'http://youtube.com/playlist?list=PLCZlgfAG0GXD1fcGgo3LVDkuVPOevo3_S', 1),
(102, 'https://www.youtube.com/channel/UCpSPS5yLCxYRuZSrCx-eBjA', 'Sekolah Koding', 'https://i.ytimg.com/vi/5CCu1xg0ero/hqdefault.jpg?sqp=-oaymwEWCMQBEG5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLBMTIVA09xluQFFZoLaLeTBjLnIxA', 'Tutorial SLIM basic bahasa indonesia', 'http://youtube.com/playlist?list=PLCZlgfAG0GXA8Ej-KUGJONNw6myCaIDBC', 11),
(103, 'https://www.youtube.com/channel/UCpSPS5yLCxYRuZSrCx-eBjA', 'Sekolah Koding', 'https://i.ytimg.com/vi/VdQeMGLI8L0/hqdefault.jpg?sqp=-oaymwEWCMQBEG5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLAePXswHX-bF1P0l1H_yehQlOOYfw', 'PHP 7 New Feature', 'http://youtube.com/playlist?list=PLCZlgfAG0GXBVuXEPpeQQRGjJOi9ZQvmO', 3),
(104, 'https://www.youtube.com/channel/UCpSPS5yLCxYRuZSrCx-eBjA', 'Sekolah Koding', 'https://i.ytimg.com/vi/wa0LTALA46w/hqdefault.jpg?sqp=-oaymwEWCMQBEG5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLB_tq0PpTr_emlNXuPv640b1U8CAg', 'Dunia waktu PHP', 'http://youtube.com/playlist?list=PLCZlgfAG0GXCnuFmwT-DzURfbYb87CqfJ', 6),
(105, 'https://www.youtube.com/channel/UCpSPS5yLCxYRuZSrCx-eBjA', 'Sekolah Koding', 'https://i.ytimg.com/vi/GNdXrXSCdJM/hqdefault.jpg?sqp=-oaymwEWCMQBEG5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLAOP0toSUCZ0BK0cgRRZGJzUPsmbg', 'Tutorial laravel 5.3 bahasa indonesia', 'http://youtube.com/playlist?list=PLCZlgfAG0GXDijjesNoqcCmuYpQSbpucl', 15),
(106, 'https://www.youtube.com/channel/UCpSPS5yLCxYRuZSrCx-eBjA', 'Sekolah Koding', 'https://i.ytimg.com/vi/tc23ZaGiuHo/hqdefault.jpg?sqp=-oaymwEWCMQBEG5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLBU_XrWPObGL6rBTpBDrH4DeSPebg', 'Google reCaptcha', 'http://youtube.com/playlist?list=PLCZlgfAG0GXC4FpCUfvzKBDuXDR6YY3MB', 2),
(107, 'https://www.youtube.com/channel/UCpSPS5yLCxYRuZSrCx-eBjA', 'Sekolah Koding', 'https://i.ytimg.com/vi/SzbURidcsoo/hqdefault.jpg?sqp=-oaymwEWCMQBEG5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLDFNJ0YvV7P8M21X8BpGWSgQOcuYw', 'Belajar NodeJS dan Express 101', 'http://youtube.com/playlist?list=PLCZlgfAG0GXA5Z4r_J_Ll5hClBU8QxyGi', 3),
(108, 'https://www.youtube.com/channel/UCpSPS5yLCxYRuZSrCx-eBjA', 'Sekolah Koding', 'https://i.ytimg.com/vi/sXQJ4S-EYVI/hqdefault.jpg?sqp=-oaymwEWCMQBEG5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLBjUWEFzI3GISHoj3txwGuNNDBDrA', 'Belajar desain website 101', 'http://youtube.com/playlist?list=PLCZlgfAG0GXDZefjFxJFW_a05qyIU72cO', 6),
(109, 'https://www.youtube.com/channel/UCpSPS5yLCxYRuZSrCx-eBjA', 'Sekolah Koding', 'https://i.ytimg.com/vi/X-9hn5i3XDo/hqdefault.jpg?sqp=-oaymwEWCMQBEG5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLCgs1AbVeRt3I06rh2lXy_MnrZuJQ', 'Chat dengan NodeJS', 'http://youtube.com/playlist?list=PLCZlgfAG0GXAUTPXAuKedq_tqK8E-DHOf', 4),
(110, 'https://www.youtube.com/channel/UCpSPS5yLCxYRuZSrCx-eBjA', 'Sekolah Koding', 'https://i.ytimg.com/vi/mxQGf57SyCU/hqdefault.jpg?sqp=-oaymwEWCMQBEG5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLCMJf40eIAiVC0yLP8sbELOHB4TBA', 'Hosting digital ocean bahasa indonesia', 'http://youtube.com/playlist?list=PLCZlgfAG0GXA8ZOg0T0tz-4b2q5n_UxGs', 7),
(111, 'https://www.youtube.com/channel/UCpSPS5yLCxYRuZSrCx-eBjA', 'Sekolah Koding', 'https://i.ytimg.com/vi/fqdOzQiV-TY/hqdefault.jpg?sqp=-oaymwEWCMQBEG5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLDlGnZLHK414vwMJo4sPNyD0mUz-g', 'Tutorial MongoDB Bahasa Indonesia', 'http://youtube.com/playlist?list=PLCZlgfAG0GXAEWTD54Acrotb1EGDrJOcN', 4),
(112, 'https://www.youtube.com/channel/UCpSPS5yLCxYRuZSrCx-eBjA', 'Sekolah Koding', 'https://i.ytimg.com/vi/oTN-LBhLONc/hqdefault.jpg?sqp=-oaymwEWCMQBEG5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLBPmUrn4Et-DnOwv1eMvs0H13OG1A', 'SQL Join Bahasa indonesia', 'http://youtube.com/playlist?list=PLCZlgfAG0GXBwa0iifRSOGXIv7I-Bwiqf', 1),
(113, 'https://www.youtube.com/channel/UCpSPS5yLCxYRuZSrCx-eBjA', 'Sekolah Koding', 'https://i.ytimg.com/vi/V11aSMIa2Qg/hqdefault.jpg?sqp=-oaymwEWCMQBEG5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLAGiyijedPyVljmWP_84IqsoI5rgA', 'Database dengan MYSQLi dan PHP (OOP)', 'http://youtube.com/playlist?list=PLCZlgfAG0GXCpn2SNWSpvjLPBqA9YcU2X', 8),
(114, 'https://www.youtube.com/channel/UCpSPS5yLCxYRuZSrCx-eBjA', 'Sekolah Koding', 'https://i.ytimg.com/vi/8ncFAcXnSUw/hqdefault.jpg?sqp=-oaymwEWCMQBEG5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLCJKEjNTaAEKNcZ1jzBSCD1IX6f3w', 'Mengisi database dengan Faker', 'http://youtube.com/playlist?list=PLCZlgfAG0GXBJwrOAljhm84MBdn15jWgD', 1),
(115, 'https://www.youtube.com/channel/UCpSPS5yLCxYRuZSrCx-eBjA', 'Sekolah Koding', 'https://i.ytimg.com/vi/EmCBOtkXxdg/hqdefault.jpg?sqp=-oaymwEWCMQBEG5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLAzvy_krjCc_8abRXUJrlfI8RVbaQ', 'Tutorial Vue JS bahasa indonesia', 'http://youtube.com/playlist?list=PLCZlgfAG0GXCFeOD_wBc9GrYF9pA8loLQ', 15),
(116, 'https://www.youtube.com/channel/UCpSPS5yLCxYRuZSrCx-eBjA', 'Sekolah Koding', 'https://i.ytimg.com/vi/5HWmcKXESVI/hqdefault.jpg?sqp=-oaymwEWCMQBEG5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLD44I3FZRIBvWoOoQJBHFRQ5I6LbQ', 'Tutorial PDO database PHP bahasa indonesia', 'http://youtube.com/playlist?list=PLCZlgfAG0GXDEjdARA-7VqT0w2RD-99x4', 5),
(117, 'https://www.youtube.com/channel/UCpSPS5yLCxYRuZSrCx-eBjA', 'Sekolah Koding', 'https://i.ytimg.com/vi/kBdeAveOxlo/hqdefault.jpg?sqp=-oaymwEWCMQBEG5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLCddQFh7kqY54cUMbfzN7bq0HdQ6w', 'Belajar apa itu curl', 'http://youtube.com/playlist?list=PLCZlgfAG0GXCgNT423D74xar1M9Q2VfUl', 1),
(118, 'https://www.youtube.com/channel/UCpSPS5yLCxYRuZSrCx-eBjA', 'Sekolah Koding', 'https://i.ytimg.com/vi/M_4HvmFLjW0/hqdefault.jpg?sqp=-oaymwEWCMQBEG5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLCe1wVL2ga59Bhuu-xdrUMkvRFfVg', 'Belajar material design untuk frontend - materializecss', 'http://youtube.com/playlist?list=PLCZlgfAG0GXC1_dzGEca4aoESIrEBL6FW', 14),
(119, 'https://www.youtube.com/channel/UCpSPS5yLCxYRuZSrCx-eBjA', 'Sekolah Koding', 'https://i.ytimg.com/vi/vFpWrj34Vog/hqdefault.jpg?sqp=-oaymwEWCMQBEG5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLCOZXX4tBI0YiDXtX7fUe_tBiLuhw', 'Database dengan MYSQLi dan PHP', 'http://youtube.com/playlist?list=PLCZlgfAG0GXAQPgBd7tNutH1D1QRgklW2', 10),
(120, 'https://www.youtube.com/channel/UCpSPS5yLCxYRuZSrCx-eBjA', 'Sekolah Koding', 'https://i.ytimg.com/vi/QWlX48x4BeM/hqdefault.jpg?sqp=-oaymwEWCMQBEG5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLAUO0d9hQ274gtxb0ACMQz-M5AiTQ', 'PHP untuk intermediate', 'http://youtube.com/playlist?list=PLCZlgfAG0GXD8VW1dni83lSsummwhg12d', 16),
(121, 'https://www.youtube.com/channel/UCpSPS5yLCxYRuZSrCx-eBjA', 'Sekolah Koding', 'https://i.ytimg.com/vi/PfwkhK0Ev5k/hqdefault.jpg?sqp=-oaymwEWCMQBEG5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLAu5A-DW5Vd4zSPPtJ48XzTz-w_0g', 'OOP pada PHP', 'http://youtube.com/playlist?list=PLCZlgfAG0GXAPy7l4Wgwhz11GbuR-h2M6', 14),
(122, 'https://www.youtube.com/channel/UCpSPS5yLCxYRuZSrCx-eBjA', 'Sekolah Koding', 'https://i.ytimg.com/vi/ttYTx_wGcQY/hqdefault.jpg?sqp=-oaymwEWCMQBEG5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLAy5S6wBfXEfDjUd-4-B_pe9CCfaA', 'Belajar javascript untuk pemula', 'http://youtube.com/playlist?list=PLCZlgfAG0GXAiH1acKFPx8EtpJAq44gjP', 31),
(123, 'https://www.youtube.com/channel/UCpSPS5yLCxYRuZSrCx-eBjA', 'Sekolah Koding', 'https://i.ytimg.com/vi/R4BCPryXw80/hqdefault.jpg?sqp=-oaymwEWCMQBEG5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLCqwAZz9bY2QnlMcp1J8m2vXeSQIg', 'Belajar GIT - version control system', 'http://youtube.com/playlist?list=PLCZlgfAG0GXATLIO3kp405u6TyFPQ9Kjy', 6);

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `chanel` varchar(200) NOT NULL,
  `name` varchar(100) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `link` varchar(255) NOT NULL,
  `time` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `chanel`, `name`, `gambar`, `judul`, `link`, `time`) VALUES
(181, 'https://www.youtube.com/channel/UCpSPS5yLCxYRuZSrCx-eBjA', 'Sekolah Koding', 'https://i.ytimg.com/vi/v73eFFdpdgE/hqdefault.jpg?sqp=-oaymwEWCMQBEG5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLAGdtGYewMZASZ291urJ5KUXK4tzg', 'firebase database relation', 'http://youtube.com/watch?v=v73eFFdpdgE', 9),
(182, 'https://www.youtube.com/channel/UCpSPS5yLCxYRuZSrCx-eBjA', 'Sekolah Koding', 'https://i.ytimg.com/vi/u_Q6VeUfYXU/hqdefault.jpg?sqp=-oaymwEWCMQBEG5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLBT12dCmsGHUioJakWoOgBs15mx_g', 'firebase database rules security', 'http://youtube.com/watch?v=u_Q6VeUfYXU', 15),
(183, 'https://www.youtube.com/channel/UCpSPS5yLCxYRuZSrCx-eBjA', 'Sekolah Koding', 'https://i.ytimg.com/vi/E7XgI57ujXI/hqdefault.jpg?sqp=-oaymwEWCMQBEG5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLBKTlM_oiK_YPI_DfloDqKyX8KYhQ', 'Trailer - membuat karakter bergerak dengan jquery', 'http://youtube.com/watch?v=E7XgI57ujXI', 2),
(184, 'https://www.youtube.com/channel/UCpSPS5yLCxYRuZSrCx-eBjA', 'Sekolah Koding', 'https://i.ytimg.com/vi/wis5cgn1Ntw/hqdefault.jpg?sqp=-oaymwEWCMQBEG5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLBEruI1V4-VPRvpvkvTGBlnnBRqiw', 'Episode 13 -  mitos mitos ide', 'http://youtube.com/watch?v=wis5cgn1Ntw', 10),
(185, 'https://www.youtube.com/channel/UCpSPS5yLCxYRuZSrCx-eBjA', 'Sekolah Koding', 'https://i.ytimg.com/vi/lwxY330yG-w/hqdefault.jpg?sqp=-oaymwEWCMQBEG5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLDg8Eorrayg7Ahqmtf-EsQ08TmrvA', 'Sistem authentikasi bagian 2', 'http://youtube.com/watch?v=lwxY330yG-w', 4),
(186, 'https://www.youtube.com/channel/UCpSPS5yLCxYRuZSrCx-eBjA', 'Sekolah Koding', 'https://i.ytimg.com/vi/UekFliePV1s/hqdefault.jpg?sqp=-oaymwEWCMQBEG5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLCItbhhtDQXGlEC5qzwYdbVA0-PxA', 'Sistem authentikasi firebase', 'http://youtube.com/watch?v=UekFliePV1s', 15),
(187, 'https://www.youtube.com/channel/UCpSPS5yLCxYRuZSrCx-eBjA', 'Sekolah Koding', 'https://i.ytimg.com/vi/wcUSiAmvcRQ/hqdefault.jpg?sqp=-oaymwEWCMQBEG5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLAjgIevvHtZmL9CYXMdLdY_6avDUg', 'crud programmtically di firebase', 'http://youtube.com/watch?v=wcUSiAmvcRQ', 9),
(188, 'https://www.youtube.com/channel/UCpSPS5yLCxYRuZSrCx-eBjA', 'Sekolah Koding', 'https://i.ytimg.com/vi/R81_oYnPYOc/hqdefault.jpg?sqp=-oaymwEWCMQBEG5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLDQsmcDuNwjnlmAoshzQCJFnUI_Jg', 'filter dan sort query firebase', 'http://youtube.com/watch?v=R81_oYnPYOc', 14),
(189, 'https://www.youtube.com/channel/UCpSPS5yLCxYRuZSrCx-eBjA', 'Sekolah Koding', 'https://i.ytimg.com/vi/G7JwP_NDL7s/hqdefault.jpg?sqp=-oaymwEWCMQBEG5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLDE3lw_MTr8qRAzjQX9twaVn9HtRQ', 'intro realtime database firebase', 'http://youtube.com/watch?v=G7JwP_NDL7s', 18),
(190, 'https://www.youtube.com/channel/UCpSPS5yLCxYRuZSrCx-eBjA', 'Sekolah Koding', 'https://i.ytimg.com/vi/xXyJekhcItI/hqdefault.jpg?sqp=-oaymwEWCMQBEG5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLBhiwYZvYx0FXC8ZpsaqkLZKEUWng', 'kenalan dengan firebase & hosting website statis', 'http://youtube.com/watch?v=xXyJekhcItI', 13),
(191, 'https://www.youtube.com/channel/UCpSPS5yLCxYRuZSrCx-eBjA', 'Sekolah Koding', 'https://i.ytimg.com/vi/UpsuDEw8TcU/hqdefault.jpg?sqp=-oaymwEWCMQBEG5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLB5R22o124iDLP7lgSMSkm4Lxx2rA', 'Trailer pusher notification', 'http://youtube.com/watch?v=UpsuDEw8TcU', 2),
(192, 'https://www.youtube.com/channel/UCpSPS5yLCxYRuZSrCx-eBjA', 'Sekolah Koding', 'https://i.ytimg.com/vi/u6VjrDren_c/hqdefault.jpg?sqp=-oaymwEWCMQBEG5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLBtl8QUGnpgqUSjCIvN-IBdHkE5aQ', 'Episode 12 - Ngga seseram yang kita bayangkan', 'http://youtube.com/watch?v=u6VjrDren_c', 12),
(193, 'https://www.youtube.com/channel/UCpSPS5yLCxYRuZSrCx-eBjA', 'Sekolah Koding', 'https://i.ytimg.com/vi/rFmHAfdZS9A/hqdefault.jpg?sqp=-oaymwEWCMQBEG5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLD0dGdM0fKFT852GHhvw9fFL9E8BQ', 'trailer laravel kutipan', 'http://youtube.com/watch?v=rFmHAfdZS9A', 2),
(194, 'https://www.youtube.com/channel/UCpSPS5yLCxYRuZSrCx-eBjA', 'Sekolah Koding', 'https://i.ytimg.com/vi/TVMrRoIg0m8/hqdefault.jpg?sqp=-oaymwEWCMQBEG5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLCcBiYLpmqPHQCxb4gLbUNw2d35ag', '0 intro vuejs tag sistem', 'http://youtube.com/watch?v=TVMrRoIg0m8', 3),
(195, 'https://www.youtube.com/channel/UCpSPS5yLCxYRuZSrCx-eBjA', 'Sekolah Koding', 'https://i.ytimg.com/vi/oalHWquzVaE/hqdefault.jpg?sqp=-oaymwEWCMQBEG5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLDsC6kk4nq0mkV70KGtNFPgohLhuA', 'Episode 10: HAI: heart, attitude dan impact', 'http://youtube.com/watch?v=oalHWquzVaE', 8),
(196, 'https://www.youtube.com/channel/UCpSPS5yLCxYRuZSrCx-eBjA', 'Sekolah Koding', 'https://i.ytimg.com/vi/qhvgcZkyPlE/hqdefault.jpg?sqp=-oaymwEWCMQBEG5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLAR-UgPkO1r1OS08rnThmpVNa1BXQ', 'Cara bertanya di forum', 'http://youtube.com/watch?v=qhvgcZkyPlE', 4),
(197, 'https://www.youtube.com/channel/UCpSPS5yLCxYRuZSrCx-eBjA', 'Sekolah Koding', 'https://i.ytimg.com/vi/163NbxU8iRk/hqdefault.jpg?sqp=-oaymwEWCMQBEG5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLCjUrfOR4Uxqno8sS6qGWmDtLfjYA', '0 intro bikin jquery sendiri', 'http://youtube.com/watch?v=163NbxU8iRk', 2),
(198, 'https://www.youtube.com/channel/UCpSPS5yLCxYRuZSrCx-eBjA', 'Sekolah Koding', 'https://i.ytimg.com/vi/iOFJJ2KG7ME/hqdefault.jpg?sqp=-oaymwEWCMQBEG5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLBw7EQhuE3nboiTYQDwOiEw9fKAog', 'Episode 11: Gagal lebih cepat', 'http://youtube.com/watch?v=iOFJJ2KG7ME', 11),
(199, 'https://www.youtube.com/channel/UCpSPS5yLCxYRuZSrCx-eBjA', 'Sekolah Koding', 'https://i.ytimg.com/vi/An3OMS2KWbg/hqdefault.jpg?sqp=-oaymwEWCMQBEG5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLCI8lUuPHJBGdxIbwUdpWvjElQFUw', 'Trailer vuex member app', 'http://youtube.com/watch?v=An3OMS2KWbg', 1),
(200, 'https://www.youtube.com/channel/UCpSPS5yLCxYRuZSrCx-eBjA', 'Sekolah Koding', 'https://i.ytimg.com/vi/kJECTKOswt0/hqdefault.jpg?sqp=-oaymwEWCMQBEG5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLD_OgRpuPmSy6qScAU6OAwAKJpWgA', '0 intro dan persiapan mailist dengan laravel', 'http://youtube.com/watch?v=kJECTKOswt0', 4),
(201, 'https://www.youtube.com/channel/UCpSPS5yLCxYRuZSrCx-eBjA', 'Sekolah Koding', 'https://i.ytimg.com/vi/H20A-rPqotk/hqdefault.jpg?sqp=-oaymwEWCMQBEG5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLCv6iQXFsEOM1WSad9Dwnw_8VnU7g', 'Episode 9: Sapi warna ungu', 'http://youtube.com/watch?v=H20A-rPqotk', 12),
(202, 'https://www.youtube.com/channel/UCpSPS5yLCxYRuZSrCx-eBjA', 'Sekolah Koding', 'https://i.ytimg.com/vi/CoqCEqGmaBA/hqdefault.jpg?sqp=-oaymwEWCMQBEG5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLDtwOHfrq-Yi3LJNRCcNm7esqUhFg', '2 berkenalan dengan syntax arrow', 'http://youtube.com/watch?v=CoqCEqGmaBA', 7),
(203, 'https://www.youtube.com/channel/UCpSPS5yLCxYRuZSrCx-eBjA', 'Sekolah Koding', 'https://i.ytimg.com/vi/XSgSWPLfFvE/hqdefault.jpg?sqp=-oaymwEWCMQBEG5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLBjMEmPuHYTiQrPVYG3rBoiYkf-cQ', '0 intro es6 dan setup babel', 'http://youtube.com/watch?v=XSgSWPLfFvE', 7),
(204, 'https://www.youtube.com/channel/UCpSPS5yLCxYRuZSrCx-eBjA', 'Sekolah Koding', 'https://i.ytimg.com/vi/ZONHw3BLnD8/hqdefault.jpg?sqp=-oaymwEWCMQBEG5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLDb5QxKD9HRT3VKmJaZ-ClAGrQZLQ', '1 var vs let vs const', 'http://youtube.com/watch?v=ZONHw3BLnD8', 10),
(205, 'https://www.youtube.com/channel/UCpSPS5yLCxYRuZSrCx-eBjA', 'Sekolah Koding', 'https://i.ytimg.com/vi/gevwniqLAdU/hqdefault.jpg?sqp=-oaymwEWCMQBEG5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLBLysL4YZDrUlLJ7e3dYOnDq-RuXw', '3 default parameter', 'http://youtube.com/watch?v=gevwniqLAdU', 3),
(206, 'https://www.youtube.com/channel/UCpSPS5yLCxYRuZSrCx-eBjA', 'Sekolah Koding', 'https://i.ytimg.com/vi/HAFY2jITJco/hqdefault.jpg?sqp=-oaymwEWCMQBEG5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLBthW9nE9dvWV4sjh4Yz_0NiGQndw', '6 shorthand dan destructuring object', 'http://youtube.com/watch?v=HAFY2jITJco', 4),
(207, 'https://www.youtube.com/channel/UCpSPS5yLCxYRuZSrCx-eBjA', 'Sekolah Koding', 'https://i.ytimg.com/vi/GeQN3gNGkLg/hqdefault.jpg?sqp=-oaymwEWCMQBEG5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLBAxnZy-g5q7d-WK6Dnylpo0d_rCA', '5 template literal luar biasa', 'http://youtube.com/watch?v=GeQN3gNGkLg', 8),
(208, 'https://www.youtube.com/channel/UCpSPS5yLCxYRuZSrCx-eBjA', 'Sekolah Koding', 'https://i.ytimg.com/vi/LcUXJnvlm88/hqdefault.jpg?sqp=-oaymwEWCMQBEG5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLAEJqVf5axyMNKF8FBAu6pZ-iC5uQ', '4 rest dan spread', 'http://youtube.com/watch?v=LcUXJnvlm88', 3),
(209, 'https://www.youtube.com/channel/UCpSPS5yLCxYRuZSrCx-eBjA', 'Sekolah Koding', 'https://i.ytimg.com/vi/qTwSO74f1qY/hqdefault.jpg?sqp=-oaymwEWCMQBEG5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLCsknnx6J_bdJSqUoXqPQJ4HzUY0A', '7 Kita punya class', 'http://youtube.com/watch?v=qTwSO74f1qY', 6),
(210, 'https://www.youtube.com/channel/UCpSPS5yLCxYRuZSrCx-eBjA', 'Sekolah Koding', 'https://i.ytimg.com/vi/HaKVzcWvc2M/hqdefault.jpg?sqp=-oaymwEWCMQBEG5IWvKriqkDCQgBFQAAiEIYAQ==&rs=AOn4CLAihOLslcykG9s3CcMxpmEILzF3kA', '10 export default', 'http://youtube.com/watch?v=HaKVzcWvc2M', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chanel`
--
ALTER TABLE `chanel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlists`
--
ALTER TABLE `playlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chanel`
--
ALTER TABLE `chanel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `playlists`
--
ALTER TABLE `playlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;
--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
