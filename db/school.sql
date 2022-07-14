-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2020 at 11:39 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `AID` int(11) NOT NULL,
  `ANAME` varchar(150) NOT NULL,
  `APASS` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`AID`, `ANAME`, `APASS`) VALUES
(1, 'Admin', '81dc9bdb52d04dc20036dbd8313ed055'),
(3, 'CEO', '81dc9bdb52d04dc20036dbd8313ed055');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `att_id` int(11) NOT NULL,
  `DATE` date NOT NULL,
  `CLASS` int(11) NOT NULL,
  `STUDENT_ID` int(11) NOT NULL,
  `PAR` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`att_id`, `DATE`, `CLASS`, `STUDENT_ID`, `PAR`) VALUES
(1, '2020-12-28', 4, 1, 'Present'),
(2, '2020-12-28', 4, 4, 'Present'),
(3, '2020-12-28', 4, 5, 'Present'),
(4, '2020-12-28', 4, 7, 'Present'),
(5, '2020-12-28', 4, 6, 'Present'),
(6, '2020-12-28', 6, 2, 'Present'),
(7, '2020-12-28', 6, 5, 'Present'),
(8, '2020-12-28', 6, 1, 'Present'),
(9, '2020-12-28', 6, 8, 'Present'),
(10, '2020-12-28', 6, 10, 'Present'),
(11, '2020-12-28', 7, 2, 'Present'),
(12, '2020-12-28', 7, 1, 'Absence'),
(13, '2020-12-28', 7, 5, 'Present'),
(14, '2020-12-28', 7, 7, 'Present'),
(15, '2020-12-28', 7, 9, 'Present'),
(16, '2020-12-28', 8, 1, 'Present'),
(17, '2020-12-28', 8, 6, 'Present'),
(18, '2020-12-28', 8, 5, 'Present'),
(19, '2020-12-28', 8, 9, 'Present'),
(20, '2020-12-28', 8, 2, 'Present'),
(22, '2020-12-28', 9, 7, 'Present'),
(23, '2020-12-28', 9, 6, 'Present'),
(24, '2020-12-28', 9, 1, 'Present'),
(25, '2020-12-28', 9, 2, 'Present'),
(26, '2020-12-28', 9, 3, 'Present'),
(27, '2020-12-28', 9, 4, 'Present'),
(28, '2020-12-28', 1, 7, 'Present'),
(29, '2020-12-28', 1, 2, 'Present'),
(30, '2020-12-28', 1, 1, 'Present'),
(31, '2020-12-28', 1, 10, 'Present'),
(32, '2020-12-28', 1, 9, 'Present'),
(33, '2020-12-28', 1, 6, 'Present'),
(34, '2020-12-28', 10, 6, 'Present'),
(35, '2020-12-28', 10, 7, 'Present'),
(36, '2020-12-28', 10, 9, 'Present'),
(37, '2020-12-28', 10, 8, 'Present'),
(38, '2020-12-28', 10, 10, 'Present'),
(39, '2020-12-28', 11, 2, 'Present'),
(40, '2020-12-28', 11, 2, 'Present'),
(41, '2020-12-28', 11, 3, 'Present'),
(42, '2020-12-28', 11, 4, 'Present'),
(43, '2020-12-28', 11, 5, 'Present'),
(44, '2020-12-28', 12, 1, 'Present'),
(45, '2020-12-28', 12, 2, 'Present'),
(46, '2020-12-28', 12, 3, 'Present'),
(47, '2020-12-28', 12, 7, 'Present'),
(48, '2020-12-28', 12, 6, 'Present'),
(49, '2020-12-28', 12, 1, 'Present'),
(50, '2020-12-30', 1, 66, 'Present');

-- --------------------------------------------------------

--
-- Table structure for table `cafe`
--

CREATE TABLE `cafe` (
  `caid` int(150) NOT NULL,
  `ca_date` date NOT NULL,
  `ca_inc` varchar(150) NOT NULL,
  `ca_exp` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cafe`
--

INSERT INTO `cafe` (`caid`, `ca_date`, `ca_inc`, `ca_exp`) VALUES
(1, '2020-12-28', '15800', '3250'),
(2, '2020-12-26', '15000', '2300'),
(3, '2020-12-27', '12000', '4200'),
(4, '2020-12-29', '18000', '3800'),
(5, '2020-12-31', '12900', '1750'),
(6, '2021-01-01', '9750', '1950'),
(7, '2021-01-05', '13460', '4200'),
(8, '2021-01-08', '7550', '1340'),
(9, '2021-01-09', '8790', '1320'),
(10, '2021-01-12', '14680', '2450');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `CID` int(11) NOT NULL,
  `CNAME` varchar(150) NOT NULL,
  `COMM_DATE` date NOT NULL,
  `CLASS_DAY` varchar(30) NOT NULL,
  `CLASS_TIME` time NOT NULL,
  `SID` int(11) NOT NULL,
  `TID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`CID`, `CNAME`, `COMM_DATE`, `CLASS_DAY`, `CLASS_TIME`, `SID`, `TID`) VALUES
(1, 'Grade 6', '2020-12-27', 'Monday', '15:00:00', 3, 10),
(4, 'Grade 7', '2021-01-11', 'Wednesday', '14:30:00', 11, 1),
(6, 'Grade 8', '2020-06-16', 'Wednesday', '15:07:00', 2, 2),
(7, 'Grade 9', '2020-04-09', 'Thursday', '16:15:00', 3, 3),
(8, 'Grade 10', '2020-10-14', 'Friday', '17:10:00', 1, 4),
(9, 'Grade 11', '2020-05-12', 'Tuesday', '16:15:00', 10, 5),
(10, 'Grade 12', '2020-01-15', 'Saturday', '09:15:00', 8, 7),
(11, 'Grade 12', '2020-08-05', 'Sunday', '11:15:00', 7, 8),
(12, 'Grade 13', '2020-09-08', 'Sunday', '14:00:00', 12, 9),
(13, 'Grade 13', '2020-08-12', 'Friday', '16:00:00', 6, 6);

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `EID` int(11) NOT NULL,
  `ENAME` varchar(150) NOT NULL,
  `ETYPE` varchar(150) NOT NULL,
  `EDATE` varchar(150) NOT NULL,
  `SESSION` varchar(150) NOT NULL,
  `CLASS` varchar(150) NOT NULL,
  `SUB` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`EID`, `ENAME`, `ETYPE`, `EDATE`, `SESSION`, `CLASS`, `SUB`) VALUES
(1, 'Mid Year', '2nd Term', '3-01-2021', 'Morning', 'Grade 9', 'English'),
(2, 'Final Exam', '3rd Term', '16-01-2021', 'Morning', 'Grade 10', 'English'),
(3, 'Moc Exam', '1st Term', '7-02-2021', 'Evening', 'Grade 12', 'ICT'),
(4, 'Moc Exam', '2nd Term', '17-02-2021', 'Evening', 'Grade 13', 'Combined Maths'),
(5, 'Mid Year', '1st Term', '16-03-2021', 'Morning', 'Grade 7', 'Science'),
(6, 'Final Exam', '3rd Term', '7-03-2021', 'Morning', 'Grade 10', 'Sinhala'),
(7, 'Moc Exam', '3rd Term', '19-02-2021', 'Morning', 'Grade 12', 'ICT'),
(8, 'Final Exam', '3rd Term', '14-03-2021', 'Evening', 'Grade 11', 'Social Science'),
(9, 'Mid Year', '2nd Term', '14-02-2021', 'Evening', 'Grade 13', 'Chemistry'),
(10, 'Mid Year', '2nd Term', '15-03-2021', 'Evening', 'Grade 12', 'Physics');

-- --------------------------------------------------------

--
-- Table structure for table `lecturer`
--

CREATE TABLE `lecturer` (
  `TID` int(11) NOT NULL,
  `TNAME` varchar(150) NOT NULL,
  `TPASS` varchar(150) NOT NULL,
  `QUAL` varchar(150) NOT NULL,
  `SAL` varchar(150) NOT NULL,
  `PNO` varchar(150) NOT NULL,
  `MAIL` varchar(150) NOT NULL,
  `PADDR` text NOT NULL,
  `IMG` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lecturer`
--

INSERT INTO `lecturer` (`TID`, `TNAME`, `TPASS`, `QUAL`, `SAL`, `PNO`, `MAIL`, `PADDR`, `IMG`) VALUES
(1, 'Umar Uzman', '202cb962ac59075b964b07152d234b70', 'Degree', '65000', '+94778192969', 'umaruzman.lk@gmail.com', '26/1, St Jude Road, Enderamulla, Wattala', 'lecturer/6sQ0moHH.jpg'),
(2, 'Dilrukshi Deegalla', '202cb962ac59075b964b07152d234b70', 'BSc', '45000', '0771891741', 'udeshi.dilrukshi@gmail.com', 'A 84/4,Kegalle', 'staff/DD.jpg'),
(3, 'Mafas Nisar', '202cb962ac59075b964b07152d234b70', 'BSc', '45000', '0766275526', 'muhammadumafas@gmail.com', '16/1,Jinna Road, Galbokka, Weligama.', 'lecturer/Mafas_Nisar.jpg'),
(4, 'Shoufiya Begum', '202cb962ac59075b964b07152d234b70', 'Degree', '45000', '0720697484', 'shoufiyabegum@gmail.com', 'No 19, Cooray Mawatha, Wellawatte.', 'lecturer/rs.png'),
(5, 'Anushka Eriyagahadeniya', '202cb962ac59075b964b07152d234b70', 'MBA', '55000', '0771234567', 'anushka@gmail.com', 'Peradeniya, Kandy', 'lecturer/IMG-20190307-WA0040.jpg'),
(6, 'Asfaq', '202cb962ac59075b964b07152d234b70', 'HND', '60000', '0756772424', 'asfaqhussain1996@gmail.com', 'Kinniya,Trincomalee,Eastern', 'staff/WhatsApp Image 2020-12-28 at 11.35.58 AM.jpeg'),
(7, 'Nuwan Ekanayaka', '202cb962ac59075b964b07152d234b70', 'BSc', '45000', '0771891721', 'nuwan@gmail.com', 'Kandy Road,\r\nMawanella', 'staff/Nuwan.jpeg'),
(8, 'Dhanushka Ranasinghe', '202cb962ac59075b964b07152d234b70', 'BSc', '43000', '0771653354', 'dhanushka@gmail.com', 'Kandy Road,\r\nKadawatha', 'staff/Dhanushka.jpeg'),
(9, 'Kasun Palihawadana', '202cb962ac59075b964b07152d234b70', 'HND', '38000', '0771665534', 'kasun@gmail.com', 'Thalangama north,\r\nKoswaththa', 'staff/Kasun.jpeg'),
(10, 'Sahma', '202cb962ac59075b964b07152d234b70', 'B Eng ', '50000', '0770666568', 'sahmarizan14@gmail.com', '27/Hill Street, Dehiwala', 'lecturer/s15.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `mark`
--

CREATE TABLE `mark` (
  `MID` int(11) NOT NULL,
  `REGNO` varchar(150) NOT NULL,
  `SUB` varchar(150) NOT NULL,
  `MARK` varchar(150) NOT NULL,
  `TERM` varchar(150) NOT NULL,
  `CLASS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mark`
--

INSERT INTO `mark` (`MID`, `REGNO`, `SUB`, `MARK`, `TERM`, `CLASS`) VALUES
(2, 's121', 'Science', '100', '2nd Term', 7),
(3, 'S120', 'English', '85', '2nd Term', 7);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `pay_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `stu_id` int(11) NOT NULL,
  `pay_date` date NOT NULL,
  `pay_time` time NOT NULL,
  `month` varchar(100) NOT NULL,
  `year` varchar(255) NOT NULL,
  `amount` decimal(10,0) NOT NULL,
  `pay_method` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`pay_id`, `class_id`, `stu_id`, `pay_date`, `pay_time`, `month`, `year`, `amount`, `pay_method`) VALUES
(1, 1, 7, '2020-12-28', '11:59:20', 'January', '2020', '300', 'Cash'),
(2, 4, 1, '2020-12-28', '12:00:15', 'February', '2020', '500', 'Cash'),
(3, 7, 2, '2020-12-28', '12:02:08', 'April', '2020', '300', 'Card'),
(4, 1, 7, '2020-12-28', '12:03:02', 'December', '2020', '300', 'Cash'),
(5, 6, 8, '2020-12-28', '12:03:28', 'August', '2020', '300', 'Card'),
(6, 8, 6, '2020-12-28', '12:03:58', 'January', '2021', '300', 'Card'),
(7, 12, 6, '2020-12-28', '12:06:04', 'December', '2020', '300', 'Bank Trasfer'),
(8, 13, 5, '2020-12-28', '12:06:34', 'January', '2021', '500', 'Online Transaction'),
(9, 10, 8, '2020-12-28', '12:07:20', 'December', '2021', '500', 'Bank Trasfer'),
(10, 11, 4, '2020-12-28', '12:07:44', 'January', '2021', '500', 'Bank Trasfer'),
(11, 9, 4, '2020-12-28', '12:08:27', 'September', '2020', '300', 'Online Transaction');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `NAID` int(150) NOT NULL,
  `NANAME` varchar(150) NOT NULL,
  `NAPASS` varchar(150) NOT NULL,
  `ROLE` varchar(100) NOT NULL,
  `NAQUAL` varchar(150) NOT NULL,
  `NASAL` varchar(150) NOT NULL,
  `NAPNO` varchar(150) NOT NULL,
  `NAMAIL` varchar(150) NOT NULL,
  `NAADDR` text NOT NULL,
  `NAIMG` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`NAID`, `NANAME`, `NAPASS`, `ROLE`, `NAQUAL`, `NASAL`, `NAPNO`, `NAMAIL`, `NAADDR`, `NAIMG`) VALUES
(1, 'Mirunaalini', '202cb962ac59075b964b07152d234b70', 'hr', 'MBA', '50000', '0770584962', 'miru@gmail.com', 'No 22, Nelson place, Wellawatte', 'staff/Miru.jpeg'),
(2, 'Kasinaatham', '202cb962ac59075b964b07152d234b70', 'hr', 'MBA', '50000', '0770584523', 'kasi@gmail.com', 'No 23, Nelson Mw, Colombo', 'staff/Kasinatham.jpeg'),
(3, 'Kamal Silva', '202cb962ac59075b964b07152d234b70', 'cafeteria', 'Degree', '30000', '0770584444', 'kamal@gmail.com', 'No 34, Lilly Avenue, Wellawatte', 'staff/Kamal.jpeg'),
(4, 'Naalini Gamage', '202cb962ac59075b964b07152d234b70', 'cafeteria', 'Degree', '35000', '0770846526', 'naalini@gmail.com', 'No 34, Holingwood Avenue, Wellawatte', 'staff/Nalani.jpeg'),
(5, 'Sachinthani', '202cb962ac59075b964b07152d234b70', 'front_office', 'Degree', '35000', '0774851234', 'sachi@gmail.com', 'No 14, Lilly Avenue, Colombo 12', 'staff/Sachi.jpeg'),
(6, 'Priyanka Silva', '202cb962ac59075b964b07152d234b70', 'finance', 'MBA', '40000', '0778451237', 'priya@gmail.com', 'No 25, Nelson Mw, Colombo 12', 'staff/Priyanka.jpeg'),
(7, 'Dinesh Fernando', '202cb962ac59075b964b07152d234b70', 'finance', 'MBA', '40000', '0770584966', 'dinesh@gmail.com', 'No 12, Nelson place, Dehiwala', 'staff/Dinesh.jpeg'),
(8, 'NImeshi Chathukala', '202cb962ac59075b964b07152d234b70', 'finance', 'Degree', '25000', '0770554962', 'nimeshi@gmail.com', 'No 13, Nelson Mw, Dehiwala', 'staff/Nimeshi.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `ID` int(11) NOT NULL,
  `RNO` varchar(150) NOT NULL,
  `NAME` varchar(150) NOT NULL,
  `FNAME` varchar(150) NOT NULL,
  `DOB` varchar(150) NOT NULL,
  `GEN` varchar(150) NOT NULL,
  `PHO` varchar(150) NOT NULL,
  `MAIL` varchar(150) NOT NULL,
  `ADDR` text NOT NULL,
  `SIMG` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`ID`, `RNO`, `NAME`, `FNAME`, `DOB`, `GEN`, `PHO`, `MAIL`, `ADDR`, `SIMG`) VALUES
(1, 'S101', 'Fathima Aaila', 'Kamaldeen', '7-02-2000', 'Female', '0770847849', 'kamal@gmail.com', 'No 12, Lilly Avenue, Wellawatte', 'student/s8.jpeg'),
(2, 'S102', 'Chanakya', 'Fernando Lias', '13-01-2000', 'Male', '0770846544', 'fernan@gmail.com', 'No 34, KKP Road, Wellawatte', 'student/s3.jpeg'),
(3, 'S103', 'Dharani', 'Wijeshinghe', '13-08-2002', 'Female', '0770006515', 'wijes@gmail.com', 'No 23, Seilan Road, Colombo 11', 'student/s5.jpeg'),
(4, 'S104', 'Fathima Aaliya', 'Samsudeen', '15-05-2001', 'Female', '0770006515', 'samsu@gmail.com', 'No 45, KKP Road, Colombo 12', 'student/s6.jpeg'),
(5, 'S105', 'Inkaran', 'Perumal Pillai', '5-08-2000', 'Male', '0770846515', 'peruma@gmail.com', 'No 23, Aalayadiwembu, Colombo 12', 'student/s14.jpeg'),
(6, 'S106', 'Sobajini', 'Sankaran', '25-02-2000', 'Female', '0770866515', 'sankaran@gmail.com', 'No 45, Nelson Place, Colombo 11 ', 'student/s10.jpeg'),
(7, 'S107', 'Raadhiya', 'Amararan', '18-05-2001', 'Female', '0770847715', 'amaran@gmail.com', 'No 56, Cooray Mawatha, Wellawatte', 'student/s15.jpeg'),
(8, 'S108', 'Senanayaka', 'Wickramarachchi', '16-05-2000', 'Male', '0770848815', 'wickrama@gmail.com', 'No 34, Vanniyar Road, Colombo 14', 'student/s11.jpeg'),
(9, 'S109', 'Manjula', 'Kaariyapparan', '17-09-2001', 'Female', '0770006885', 'kaariya@gmail.com', 'No 45, Holingwwod, Dehiwala', 'student/s13.jpeg'),
(10, 'S110', 'Nalandhani', 'Aariyaarachchi', '19-05-2000', 'Female', '0770843334', 'aariyara@gmail.com', 'No 23, Keselwatta, Colombo 15', 'student/s12.jpeg'),
(11, 'S111', 'Tony', 'Stark', '11-01-2000', 'Male', '0779871231', 'stark@starkindustiries.com', '24,Kadawatha, Gampaha', 'student/cd63958613ce86afc242b1bcc5812bba.jpg'),
(12, 'S112', 'Safras', 'Jaufar', '1-01-2004', 'Male', '0759775454', 'jaufar@gmail.com', 'Sri Lankaramaya Serpentine Road, 08', 'student/1b27.jpg'),
(13, 'S113', 'Minrada  ', 'Abeyesundere', '4-02-2006', 'Male', '0778372238', 'Abeyesundere@yahoo.com', 'DANGASPITIYA INDUSTRIAL PARK, KOHILEGEDARA, Kurunegala', 'student/b1.jpg'),
(14, 'S114', 'Sandun', 'Abeywickrama', '1-04-2008', 'Male', '0781124137', 'Abeywickrama12@gmail.com', 'BOC MERCHANT TOWER, NO.28, ST.MICHAELS RD, Colombo\r\n', 'student/b2.jpg'),
(15, 'S115', 'Priyashantha  ', 'Abeyesundere', '5-02-2000', 'Male', '0768775452', 'Abeyesundere@gmail.com', '147/2, Senanayake Mawatha, Nawala', 'student/b3.webp'),
(16, 'S116', 'Dhanuka ', ' Gopallawa', '15-04-2002', 'Male', '0758445789', 'gopallawa@gmail.com', '63, ALVITIGALA MAWATHA, Colombo', 'student/b4.jpg'),
(17, 'S117', 'Anuhas  ', 'seneviratne', '13-04-2004', 'Male', '0759448568', 'seneviratne@gmail.com', '159A, Weralugaha Liyadda, \r\nLabuduwaGalle\r\n', 'student/b5.jpg'),
(18, 'S118', 'Viranga  ', 'Obeysekera', '13-09-2003', 'Male', '0759778565', 'Obeysekera@gmail.com', 'FREE TRADE ZONE, Katunayake', 'student/b6.jpeg'),
(19, 'S119', 'Sanath  ', 'Jayaratne', '5-08-2003', 'Male', '0725896863', 'Jayaratne@gmail.com', '126 B, Old Nawala RoadNawala', 'student/b7.jpg'),
(20, 'S120', 'Thisara ', 'Weerasinghe', '12-04-2006', 'Male', '012546320', 'weerasinghe@gmail.com', 'No 20, Kandana Rd, Wattala', 'student/1b20.png'),
(21, 'S121', 'Fathima Risma', 'Mohommed', '11-10-2005', 'Female', '0752654105', 'mohommed@gmail.com', '314/15 Boralugoda, Athurugiriya', 'student/1s25.jpg'),
(22, 'S122', 'Minfas ', 'Minhar', '3-12-2009', 'Male', '0775627180', 'minhar@gmail.com', '472/43, suriya mawatha , koswaththa. baththaramulla', 'student/b8.jpg'),
(23, 'S123', 'Sajini ', 'Silva', '12-08-2009', 'Female', '0710140756', 'silva@gmail.com', '60 , Sri ghanarathana mawatha , Peliyagoda', 'student/1s33.jpg'),
(24, 'S124', 'Kiyara ', 'Senevirathna', '12-06-2003', 'Female', '0703954843', 'ksenevirathna@gmail.com', 'No.465,Lake Road,Akuregoda,Battaramulla', 'student/1s34.jpg'),
(25, 'S125', 'Nikolo ', 'Srinath', '16-02-2002', 'Male', '0703248187', 'srinath@gmail.com', 'No. 310/3, Pannipitiya rd., Pellawatte, Battaramulla', 'student/b9.jpg'),
(26, 'S126', 'Fasim ', 'Hussain', '6-05-2001', 'Male', '0758679544', 'hussain@gmail.com', 'No.235, Koskanaththa Road, Mampe, Piliyandala', 'student/b10.jpg'),
(27, 'S127', 'Arosha ', 'Weerasinghe', '5-10-2003', 'Male', '0778224946', 'weerasinghe@gmail.com', '312/46/A , Moragodawatta , Gonamadiththa Road , Kesbewa', 'student/b11.jpg'),
(28, 'S128', 'Kaveen ', 'Liyanage', '15-05-2003', 'Male', '0758697781', 'liyanage@gmail.com', '197, Weerasekara Mw, Pepiliyana, Boralasgamuwa', 'student/b13.jpg'),
(29, 'S129', 'Thanuri ', 'Liyanage', '17-09-2002', 'Female', '0723017976', 'tliyanage@gmail.com', '2/1 A, 1st Lane, Gorakapitiya, Piliyandala.', 'student/s1.jpg'),
(30, 'S130', 'Janidu ', 'Ranasinghe', '26-07-2004', 'Male', '0719865409', 'Ranasinghe@gmail.com', '45 Morattawatte, Kahatapitiya, Kananwila, Horana', 'student/b12.webp'),
(31, 'S131', 'Dulara ', 'Paliskara', '30-08-2003', 'Male', '0767214649', 'paliskara@gmail.com', '256 D/44, Atthanayake Mawatha,Kudamadoowa,Siddamulla,Polgasovita', 'student/b14.jpg'),
(32, 'S132', 'Imadh ', 'Mohommed', '12-10-2006', 'Male', '0762860203', 'imohommed@gmail.com', 'No.74/1A,samagimawatha,makuluduwa,piliyandala', 'student/b15.jpg'),
(33, 'S133', 'Risvi ', 'Yaseeer', '29-09-2008', 'Male', '0752172548', 'yaseeer@gmail.com', 'No: 101, Ceiko Gardens, Madapatha, Piliyandala', 'student/b16.jpg'),
(34, 'S134', 'Chemini ', 'Dharmasena', '7-01-2007', 'Female', '0770789262', 'dharmasena@gmail.com', '314/D, welivita, kaduwela', 'student/s5.jpg'),
(35, 'S135', 'Dihini ', 'Karunarathne', '28-10-2007', 'Female', '0773543156', 'dkarunarathne@gmail.com', 'No. 305/C/11, Sathjana Mw, Manikagara Road, Korathota, Kaduwela', 'student/s9.jpeg'),
(36, 'S136', 'Rayani ', 'Kuruppu', '5-02-2005', 'Female', '0773939782', 'kuruppu@gmail.com', 'No:107/4,Asiri Uyana ,Meegoda', 'student/1s38.jpg'),
(37, 'S137', 'Ravindu ', 'Pathirana', '26-06-2009', 'Male', '0710506683', 'pathirana@gmail.com', 'No.55/33,Galabadawatta,Korathota,Kaduwela.', 'student/b18.jpg'),
(38, 'S138', 'Bihandu ', 'Rathnaweera', '30-10-2004', 'Male', '0767171582', 'rathnaweera@gmail.com', '303/2 Pera Uyana, Migasmulla, Panagoda, Dadigamuwa', 'student/b17.jpg'),
(39, 'S139', 'Adhil ', 'Ahamed', '5-05-2003', 'Male', '0710717982', 'ahamed@gmail.com', 'No.222/C/1,Mawathagama,Padukka', 'student/b19.jpg'),
(40, 'S140', 'Sonali ', 'Chandralal', '29-07-2002', 'Female', '0757585020', 'chandralal@gmail.com', 'No 331/1,Somananda Mw, Arukwatta north, Padukka', 'student/s2.jpg'),
(41, 'S141', 'Dulmi ', 'Rathnayake', '27-10-2005', 'Female', '0725887924', 'adrthnayake@gmail.com', '939 B 1/3 Vijitha pura, Pelawatta, Battaramulla,Thalangama South', 'student/s9.jpg'),
(42, 'S142', 'Adisha', ' Sarathchandra', '25-07-2006', 'Male', '0772762759', 'Sarathchandra@gmail.com', 'No. 84, 3rd Lane, Ratmalana.', 'student/b20.png'),
(43, 'S143', 'Hameez', 'Ahamed', '21-05-2007', 'Male', '0767877351', 'hahamed@gmail.com', 'No. 36/E/1, Sri Dharmarama Rd, Rathmalana.\r\n', 'student/b21.jpg'),
(44, 'S144', 'Buddhika', 'Dissanayake', '4-09-2009', 'Male', '0756499554', 'bdissanayake@gmail.com', 'No. 473/2/3, Maniyawatta, Aggona, Angoda.\r\n', 'student/b26.jpg'),
(45, 'S145', 'Hamna', 'Imsiyan', '26-06-2002', 'Female', '0750206346', 'himsiyan@gmail.com', 'No. 166/C, Maligagodella Rd, Mulleriyawa.\r\n', 'student/s7.jpeg'),
(46, 'S146', 'Nusha', 'Mohommed', '15-10-2005', 'Female', '0750206346', 'ohommed@gmail.com', 'No. 166/C, Maligagodella Rd, Mulleriyawa.\r\n', 'student/s14.jpg'),
(47, 'S147', 'Umedha', 'Rathmalgoda', '28-06-2005', 'Female', '0717993950', 'rathmalgoda@gmail.com', 'No. 60/29, Mihindupura, Galpotta Rd, Athurugiriya.\r\n', 'student/s3.jpg'),
(48, 'S148', 'Anujee', 'Nissanka', '8-03-2003', 'Female', '0754395832', 'nissanka@gmail.com', '315/4 hokandara east hokandara\r\n', 'student/s17.webp'),
(49, 'S149', 'Imashi', 'Rajasekara', '25-10-2005', 'Female', '0715323268', 'raasekara@gmail.com', '418/E, Welipara, Thalawathugoda\r\n', 'student/s19.jpg'),
(50, 'S150', 'Sanchana', 'Rathnayaka', '27-05-2008', 'Female', '0769139833', 'srathnayaka@gmail.com', 'No. 52/1A, Palpolawatta, Godagama, Meegoda.\r\n', 'student/s11.jpg'),
(51, 'S151', 'Sheshni', 'Hilmi', '28-03-2009', 'Female', '0712902498', 'shilmi@gmail.com', '966/2,Sripali Mawatha,Pannipitiya Rode,Baththramulla.\r\n', 'student/s9.jpeg'),
(52, 'S152', 'Umar', 'Rishad', '10-07-2004', 'Male', '0776194480', 'rishad@gmail.com', 'No. 158/2/B, Thalahena, malabe.\r\n', 'student/s13.jpeg'),
(53, 'S153', 'Chalani', 'Mishel', '14-07-2002', 'Female', '0713452719', 'mishel@gmail.com', 'No. 642/48A, Thunhadahena, Korathota, Kaduwela.\r\n', 'student/s37.jpg'),
(54, 'S154', 'Shimak', 'Ahamed', '7-08-2009', 'Male', '0756708020', 'shiahamed@gmail.com', 'No. 441, kalapaluwawa, Rajagiriya.\r\n', 'student/b34.jpeg'),
(55, 'S155', 'Kenuli', 'Karunakalage', '14-05-2003', 'Female', '0756805525', 'karunakalage@gmail.com', 'No. 626/6/5, Station rd, Hunupitiya, Wattala.\r\n', 'student/s20.jpg'),
(56, 'S156', 'Enric', 'Aneslam', '6-01-2008', 'Male', '0759884924', 'aneslam@gmail.com', 'No. 167/9A, Elakata Rd, Palliyawatta, Hendala, Wattala.\r\n', 'student/b33.jpg'),
(57, 'S157', 'Udesh', 'Mendis', '4-10-2004', 'Male', '0760522678', 'mendis@gmail.com', 'No. 223/5, Madiwela Rd, Pitakotte.\r\n', 'student/b32.jpg'),
(58, 'S158', 'Ashani', 'Fernando', '16-09-2004', 'Female', '0757596339', 'fernando@gmail.com', 'No. 360/A, School Lane, kalapaluwawa, rajagiriya.\r\n', 'student/s36.jpg'),
(59, 'S159', 'Dhananjaya', 'Kularathna', '24-09-2007', 'Male', '0715554251', 'kularathna@gmail.com', 'No. 56/8/2, Police Quaters, Modara.\r\n', 'student/b37.jpg'),
(60, 'S160', 'Chamika', 'Millangoda', '31-07-2003', 'Male', '0702934250', 'millangoda@gmail.com', 'No. 117/1, Bangalawatta, Kottawa, Pannipitiya.\r\n', 'student/b22.jpg'),
(61, 'S161', 'Kalana', 'Caldera', '11-05-2008', 'Male', '0750778408', 'caldera@gmail.com', '90/4 Cross Road Borella\r\n', 'student/b23.jpg'),
(62, 'S162', 'Vihangi', 'Gunawardana', '29-11-2004', 'Female', '0765611877', 'gunawardana@gmail.com', '487/24 Thimbirigasyaya Road, Narahenpita, Colombo-05\r\n', 'student/s27.jpg'),
(63, 'S163', 'Rasaiyya', 'Pradeeban', '12-05-2007', 'Male', '0757997790', 'pradeeban@gmail.com', '233/44, Henamulla, Colombo15\r\n', 'student/b25.jpg'),
(64, 'S164', 'Gayanthi', 'Perera', '10-03-2005', 'Female', '0766158405', 'eperera@gmail.com', '613/9, High level Road, Gangoadavila\r\n', 'student/s28.jpg'),
(65, 'S165', 'Amaali', 'Perera', '7-07-2006', 'Female', '0714312718', 'aperera@gmail.com', '246, Heenati Kubura Road, Polwatta Gunasekara Mw, Hibutana.\r\n', 'student/s24.jpg'),
(66, 'S166', 'Fazal', 'Mohommed', '16-10-2005', 'Male', '0768448843', 'fmohommed@gmail.com', 'Sri Pushparamaya,Kirulapona\r\n', 'student/b36.jpg'),
(67, 'S167', 'Anuradha', 'kariyawasam', '16-03-2003', 'Male', '0704554292', 'kariyawasam@gmail.com', 'No.142/93,Samanala uyana,Kirimandala Mw,narahenpita,Colombo 5\r\n', 'student/b38.jpg'),
(68, 'S168', 'Nilusha', 'Vishwajith', '23-10-2006', 'Male', '0775914302', 'vishwajith@gmail.com', 'D/F1/U14,Randiya Uyana,Henamulla,Colombo 15.\r\n', 'student/b35.jpg'),
(69, 'S169', 'Madhushani', 'Thomas', '24-07-2008', 'Female', '0758399779', 'thomas@gmail.com', '8/2, Pahala Mapitigama, Malwana', 'student/s31.jpg'),
(70, 'S170', 'Gihan', 'Prabuddha', '15-06-2002', 'Male', '0766083837', 'prabuddha@gmail.com', '537/3 Thalangama North, Battaramulla\r\n', 'student/b39.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `student_class`
--

CREATE TABLE `student_class` (
  `id` int(11) NOT NULL,
  `stu_id` int(11) NOT NULL,
  `CID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_class`
--

INSERT INTO `student_class` (`id`, `stu_id`, `CID`) VALUES
(61, 1, 13),
(62, 2, 13),
(63, 3, 13),
(64, 4, 13),
(65, 5, 13),
(66, 6, 13),
(67, 7, 13),
(68, 8, 12),
(69, 9, 12),
(70, 10, 12),
(71, 11, 12),
(72, 12, 12),
(73, 13, 12),
(74, 14, 12),
(75, 15, 11),
(76, 16, 11),
(77, 17, 11),
(78, 18, 11),
(79, 20, 11),
(80, 19, 11),
(81, 21, 11),
(82, 22, 10),
(83, 23, 10),
(84, 24, 10),
(86, 25, 10),
(87, 26, 10),
(88, 27, 10),
(89, 28, 10),
(90, 29, 9),
(91, 30, 9),
(92, 31, 9),
(93, 32, 9),
(94, 33, 9),
(95, 34, 9),
(96, 35, 9),
(97, 36, 8),
(98, 37, 8),
(99, 38, 8),
(100, 39, 8),
(101, 40, 8),
(102, 41, 8),
(103, 42, 8),
(104, 43, 7),
(105, 44, 7),
(106, 45, 7),
(107, 46, 7),
(108, 47, 7),
(109, 48, 7),
(110, 49, 7),
(111, 50, 6),
(112, 51, 6),
(113, 52, 6),
(114, 53, 6),
(115, 54, 6),
(116, 55, 6),
(117, 56, 6),
(118, 57, 4),
(120, 58, 4),
(121, 59, 4),
(122, 60, 4),
(123, 61, 4),
(125, 62, 4),
(126, 63, 4),
(127, 64, 1),
(128, 65, 1),
(129, 66, 1),
(130, 67, 1),
(131, 68, 1),
(132, 69, 1),
(133, 70, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sub`
--

CREATE TABLE `sub` (
  `SID` int(11) NOT NULL,
  `SNAME` varchar(150) NOT NULL,
  `SFEE` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub`
--

INSERT INTO `sub` (`SID`, `SNAME`, `SFEE`) VALUES
(1, 'Maths', '300'),
(2, 'Science', '300'),
(3, 'English', '300'),
(4, 'History', '300'),
(5, 'Social Science', '300'),
(6, 'Physics', '500'),
(7, 'Chemistry', '500'),
(8, 'Biology', '500'),
(9, 'Sinhala', '300'),
(10, 'Civics', '300'),
(11, 'ICT', '500'),
(12, 'Combined Maths', '300');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`AID`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`att_id`),
  ADD KEY `class_id_fk` (`CLASS`),
  ADD KEY `stu_id_att_fk` (`STUDENT_ID`);

--
-- Indexes for table `cafe`
--
ALTER TABLE `cafe`
  ADD PRIMARY KEY (`caid`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`CID`),
  ADD KEY `sid_fk` (`SID`),
  ADD KEY `tid_fk` (`TID`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`EID`);

--
-- Indexes for table `lecturer`
--
ALTER TABLE `lecturer`
  ADD PRIMARY KEY (`TID`);

--
-- Indexes for table `mark`
--
ALTER TABLE `mark`
  ADD PRIMARY KEY (`MID`),
  ADD KEY `class_id_fk_mark` (`CLASS`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`pay_id`),
  ADD KEY `class_id_pay_fk` (`class_id`),
  ADD KEY `stu_id_pay_fk` (`stu_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`NAID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RNO` (`RNO`);

--
-- Indexes for table `student_class`
--
ALTER TABLE `student_class`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stuid_fk` (`stu_id`),
  ADD KEY `cid_fk` (`CID`);

--
-- Indexes for table `sub`
--
ALTER TABLE `sub`
  ADD PRIMARY KEY (`SID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `AID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `att_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `cafe`
--
ALTER TABLE `cafe`
  MODIFY `caid` int(150) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `CID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `EID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `lecturer`
--
ALTER TABLE `lecturer`
  MODIFY `TID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `mark`
--
ALTER TABLE `mark`
  MODIFY `MID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `pay_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `NAID` int(150) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `student_class`
--
ALTER TABLE `student_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `sub`
--
ALTER TABLE `sub`
  MODIFY `SID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `class_id_fk` FOREIGN KEY (`CLASS`) REFERENCES `class` (`CID`),
  ADD CONSTRAINT `stu_id_att_fk` FOREIGN KEY (`STUDENT_ID`) REFERENCES `student` (`ID`);

--
-- Constraints for table `class`
--
ALTER TABLE `class`
  ADD CONSTRAINT `sid_fk` FOREIGN KEY (`SID`) REFERENCES `sub` (`SID`),
  ADD CONSTRAINT `tid_fk` FOREIGN KEY (`TID`) REFERENCES `lecturer` (`TID`);

--
-- Constraints for table `mark`
--
ALTER TABLE `mark`
  ADD CONSTRAINT `class_id_fk_mark` FOREIGN KEY (`CLASS`) REFERENCES `class` (`CID`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `class_id_pay_fk` FOREIGN KEY (`class_id`) REFERENCES `class` (`CID`),
  ADD CONSTRAINT `stu_id_pay_fk` FOREIGN KEY (`stu_id`) REFERENCES `student` (`ID`);

--
-- Constraints for table `student_class`
--
ALTER TABLE `student_class`
  ADD CONSTRAINT `cid_fk` FOREIGN KEY (`CID`) REFERENCES `class` (`CID`),
  ADD CONSTRAINT `stuid_fk` FOREIGN KEY (`stu_id`) REFERENCES `student` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
