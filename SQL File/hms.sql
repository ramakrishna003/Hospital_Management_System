-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2022 at 06:18 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'Adminuheal', 'admin123', '');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorSpecialization` varchar(255) DEFAULT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `consultancyFees` int(11) DEFAULT NULL,
  `appointmentDate` varchar(255) DEFAULT NULL,
  `appointmentTime` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `userStatus` int(11) DEFAULT NULL,
  `doctorStatus` int(11) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(1, 'ENT', 1, 1, 500, '2022-11-10', '12:45 PM', '2022-11-06 12:21:48', 1, 0, '2022-11-06 12:23:35'),
(2, 'ENT', 1, 2, 500, '2022-11-17', '7:00 PM', '2022-11-06 13:16:18', 1, 1, NULL),
(3, 'General Medicine', 10, 3, 450, '2022-11-17', '8:30 PM', '2022-11-16 15:56:37', 1, 1, NULL),
(4, 'ENT', 7, 6, 200, '2022-11-21', '9:30 AM', '2022-11-16 15:57:45', 1, 1, NULL),
(5, '	Anesthesia', 9, 4, 450, '2022-11-19', '1:30 PM', '2022-11-16 15:58:21', 1, 1, NULL),
(6, 'Orthopedics', 4, 5, 350, '2022-11-21', '9:30 PM', '2022-11-16 15:58:55', 1, 1, NULL),
(7, 'General Medicine', 5, 3, 450, '2022-11-29', '4:45 PM', '2022-11-17 11:02:18', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `docFees` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `docEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(4, 'Orthopedics', 'Pallav Lalla', '23/a, 23/a, 2nd Cross,sampige Road, Malleswaram', '350', 8765436578, 'pallav@gmail.com', '6c1b29b01bf7bd39443aa5b81fad8913', '2022-11-16 15:08:28', NULL),
(5, 'General Medicine', 'Hari Krishna M ', 'Vidya nagar , Sai Baba Road, Hyderabad', '450', 8765436878, 'harikrishna@gmail.com', '0769e56eb5d72039f01530d705e971da', '2022-11-16 15:14:49', NULL),
(6, 'General Surgery', 'Mounika M', '479 a Duncan Road Girgaum, Mumbai,Hyderabad,400004,India', '500', 8769076543, 'mounika@gmail.com', '41ca5270a59afb306f436e3580eed29f', '2022-11-16 15:17:21', NULL),
(7, 'ENT', 'Shabeena Tasneem Shaik', '45 / Jatindra Mohan Avenue Bedon Street, Kolkata,Hyderabad,700006,India', '200', 9876543210, 'shabeena@gmail.com', '025e0028cdb02d41757f3d57befd2a89', '2022-11-16 15:18:26', NULL),
(8, '	Pediatrics', 'Pavani P ', 'Wz O/87 Outer Ring Road,Hyderabad,110018,Indi', '300', 9878956734, 'pavani@gmail.com', '6ac2da46fb7d5f6e62ab357ae29247b5', '2022-11-16 15:19:33', NULL),
(9, '	Anesthesia', 'Poorna Chand Anne', 'Vivekananda nagar  , Hyderabad', '450', 9762348976, 'poorna@gmail.com', 'd7cd40b29da095868d1063362d966e68', '2022-11-16 15:20:33', NULL),
(10, 'General Medicine', 'Kamala Priya A', 'Vivekananda Nagar, Hyderabad', '450', 6789654890, 'kamala@gmail.com', '795bfed29bfa6b83c56f70b8b4dd787c', '2022-11-16 15:21:37', NULL),
(11, 'Dental Care	', 'Rohith Anne', '125  Steriling Chambers S Radhakrishnana Marg J B Nagar Andheri ,Hyderabad', '300', 8976589065, 'rohith@gmail.com', 'b94f6ea45a3d1089df53bdbdcea6507e', '2022-11-16 15:22:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(29, 4, 'pallav@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-16 15:28:35', '16-11-2022 09:05:02 PM', 1),
(30, 4, 'pallav@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-16 15:59:10', '16-11-2022 09:39:54 PM', 1),
(31, NULL, 'harikrishna@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-17 11:03:22', NULL, 0),
(32, 5, 'harikrishna@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-17 11:03:31', '17-11-2022 04:34:06 PM', 1),
(33, NULL, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-20 04:30:43', NULL, 0),
(34, NULL, 'ha', 0x3a3a3100000000000000000000000000, '2022-11-20 04:30:58', NULL, 0),
(35, NULL, 'kkjkj', 0x3a3a3100000000000000000000000000, '2022-11-20 04:31:07', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(18, 'General Medicine', '2022-11-16 15:11:14', NULL),
(19, 'Orthopedics', '2022-11-16 15:12:00', NULL),
(20, 'Obstetrics and Gynecology	', '2022-11-16 15:12:11', NULL),
(21, '	Dermatology', '2022-11-16 15:12:20', NULL),
(22, '	Pediatrics', '2022-11-16 15:12:29', NULL),
(23, 'Radiology', '2022-11-16 15:12:38', NULL),
(24, '	Anesthesia', '2022-11-16 15:12:47', NULL),
(25, 'ENT', '2022-11-16 15:12:56', NULL),
(26, 'Dental Care	', '2022-11-16 15:13:08', NULL),
(27, 'General Surgery', '2022-11-16 15:13:16', NULL),
(28, 'Gynecology', '2022-11-16 15:45:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactus`
--

CREATE TABLE `tblcontactus` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(12) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `IsRead` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactus`
--

INSERT INTO `tblcontactus` (`id`, `fullname`, `email`, `contactno`, `message`, `PostingDate`, `AdminRemark`, `LastupdationDate`, `IsRead`) VALUES
(3, 'Aasritha Sai', 'aasritha@gmail.com', 6303044424, 'NA', '2022-11-16 16:04:41', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblmedicalhistory`
--

CREATE TABLE `tblmedicalhistory` (
  `ID` int(10) NOT NULL,
  `PatientID` int(10) DEFAULT NULL,
  `BloodPressure` varchar(200) DEFAULT NULL,
  `BloodSugar` varchar(200) NOT NULL,
  `Weight` varchar(100) DEFAULT NULL,
  `Temperature` varchar(200) DEFAULT NULL,
  `MedicalPres` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblmedicalhistory`
--

INSERT INTO `tblmedicalhistory` (`ID`, `PatientID`, `BloodPressure`, `BloodSugar`, `Weight`, `Temperature`, `MedicalPres`, `CreationDate`) VALUES
(1, 1, '80/120', '120', '85', '98', 'Test', '2022-11-16 13:19:41');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` varchar(200) DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT current_timestamp(),
  `OpenningTime` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `OpenningTime`) VALUES
(1, 'aboutus', 'About Us', '<ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.313em; margin-left: 1.655em;\" times=\"\" new=\"\" roman\";=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" center;=\"\" background-color:=\"\" rgb(255,=\"\" 246,=\"\" 246);\"=\"\"><li style=\"text-align: left;\"><font color=\"#000000\">UHeal was started in early 2019 with a vision of creating a hospital chain that patients can trust for the high quality of outcomes, transparency on pricing and world-class experience.\r\n<li>We started with one hospital in Secunderabad in January 2019, and have since expanded rapidly across Andhra Pradesh and Telangana, firmly establishing our brand name in the region. Today, YouHeal Hospitals is a network of 10+ world-class hospitals in the Telugu states.</li>\r\n\r\n<li>In 2021, we expanded our operations into Bangalore, NCR, Jaipur, and Hyderabad, and now have a network of 10+ hospitals across the country.</li>\r\n\r\n</font></li></ul>', NULL, NULL, '2020-05-20 07:21:52', NULL),
(2, 'contactus', 'Contact Details', 'Opp Baptist Church,Sanath Nagar, Secunderabad,India', 'uheal@gmail.com', 9876587652, '2020-05-20 07:24:07', '7:00 am To 10:30 Pm');

-- --------------------------------------------------------

--
-- Table structure for table `tblpatient`
--

CREATE TABLE `tblpatient` (
  `ID` int(10) NOT NULL,
  `Docid` int(10) DEFAULT NULL,
  `PatientName` varchar(200) DEFAULT NULL,
  `PatientContno` bigint(10) DEFAULT NULL,
  `PatientEmail` varchar(200) DEFAULT NULL,
  `PatientGender` varchar(50) DEFAULT NULL,
  `PatientAdd` mediumtext DEFAULT NULL,
  `PatientAge` int(10) DEFAULT NULL,
  `PatientMedhis` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpatient`
--

INSERT INTO `tblpatient` (`ID`, `Docid`, `PatientName`, `PatientContno`, `PatientEmail`, `PatientGender`, `PatientAdd`, `PatientAge`, `PatientMedhis`, `CreationDate`, `UpdationDate`) VALUES
(2, 4, 'Saranya', 7890765478, 'saranya@gmail.com', 'female', 'MRP Towers, Guntur', 19, 'N/A', '2022-11-16 16:08:20', NULL),
(3, 4, 'Mahima', 7865908723, 'mahima@gmail.com', 'female', 'Nehru Nagar, Guntur', 19, 'Has mild Migraine for the last 3 years ', '2022-11-16 16:09:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(13, NULL, 'mythri@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-16 14:54:58', NULL, 0),
(15, 3, 'aasritha@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-16 15:01:33', '16-11-2022 08:31:40 PM', 1),
(16, 4, 'aarthi@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-16 15:02:46', '16-11-2022 08:32:49 PM', 1),
(17, 5, 'krishna@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-16 15:04:44', '16-11-2022 08:34:48 PM', 1),
(18, 3, 'aasritha@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-16 15:56:07', '16-11-2022 09:26:45 PM', 1),
(19, 6, 'rohit@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-16 15:57:31', '16-11-2022 09:27:49 PM', 1),
(20, 4, 'aarthi@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-16 15:58:02', '16-11-2022 09:28:30 PM', 1),
(21, 5, 'krishna@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-16 15:58:45', '16-11-2022 09:28:59 PM', 1),
(22, NULL, 'mahima@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-16 16:10:05', NULL, 0),
(23, 3, 'aasritha@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-17 09:48:58', '17-11-2022 03:19:27 PM', 1),
(24, 5, 'krishna@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-17 10:34:01', '17-11-2022 04:04:09 PM', 1),
(25, 3, 'aasritha@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-17 10:34:36', '17-11-2022 04:05:19 PM', 1),
(26, 3, 'aasritha@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-17 10:37:45', '17-11-2022 04:08:00 PM', 1),
(27, 3, 'aasritha@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-17 11:02:03', '17-11-2022 04:32:30 PM', 1),
(28, 3, 'aasritha@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-17 11:02:47', NULL, 1),
(29, NULL, 'see@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-17 11:07:29', NULL, 0),
(30, 6, 'rohit@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-17 11:38:02', '17-11-2022 05:09:54 PM', 1),
(31, NULL, 'aasritha', 0x3a3a3100000000000000000000000000, '2022-11-20 04:29:52', NULL, 0),
(32, NULL, 'aasritha', 0x3a3a3100000000000000000000000000, '2022-11-20 04:30:01', NULL, 0),
(33, NULL, 'sarang.708', 0x3a3a3100000000000000000000000000, '2022-11-20 04:30:08', NULL, 0),
(34, NULL, 'johndoe12@test.com', 0x3a3a3100000000000000000000000000, '2022-11-20 04:30:19', NULL, 0),
(35, NULL, 'aasritha@', 0x3a3a3100000000000000000000000000, '2022-11-20 04:30:29', NULL, 0),
(36, NULL, 'aasritha2003', 0x3a3a3100000000000000000000000000, '2022-11-20 04:31:45', NULL, 0),
(37, 3, 'aasritha@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-20 04:33:41', '20-11-2022 10:03:44 AM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(3, 'VEMULAPALLI AASRITHA SAI', 'Chaitanyapuri 2nd lane, Guntur.', 'Guntur', 'female', 'aasritha@gmail.com', '3acf2f9bcc0d6807e7df0a0f25f3e207', '2022-11-16 15:01:18', NULL),
(4, 'YEPURI AARTHI HASITHA', 'Near Benz Cirlce , Vijayawada', 'Vijayawada', 'female', 'aarthi@gmail.com', '49fb3a6faaab0f750fbad377bf421ced', '2022-11-16 15:02:29', NULL),
(5, ' RAMA KRISHNA', 'Ongloe, Andhra Pradesh', 'Ongole', 'male', 'krishna@gmail.com', '8854b47fc05990266cc6df7f69d1adeb', '2022-11-16 15:04:32', NULL),
(6, 'rohit N', 'Khammam, Andhra Pradesh', 'Khammam', 'male', 'rohit@gmail.com', '1db2cd81f19741d67e4c7aef245a689e', '2022-11-16 15:57:18', NULL),
(7, 'aasritha', 'saibaba road', 'guntur', 'female', 'aasritha@gmailcom', '4bf8eb6ac4735a92cd40d67fbcf7fd70', '2022-11-20 04:40:21', NULL),
(8, 'jkwdhcgvjbbsn', 'ndhvbjn ', 'Guntur', 'female', 'aasritha@gmail', '76d80224611fc919a5d54f0ff9fba446', '2022-11-20 04:40:47', NULL),
(9, ' m,nbm', ',m.bvnm', 'guntur', 'female', 'aasritha@com', '76d80224611fc919a5d54f0ff9fba446', '2022-11-20 04:41:09', NULL),
(10, ' m,nbm', ',m.bvnm', 'guntur', 'female', 'aasritha@com', '76d80224611fc919a5d54f0ff9fba446', '2022-11-20 04:48:24', NULL),
(11, 'VEMULAPALLI AASRITHA SAI', 'Chaitanyapuri 2nd lane, Guntur.', 'Guntur', 'female', 'aasritha@gm', '202cb962ac59075b964b07152d234b70', '2022-11-20 04:48:45', NULL),
(12, 'VEMULAPALLI AASRITHA SAI', 'Chaitanyapuri 2nd lane, Guntur.', 'Guntur', 'female', 'aasritha@gm', '202cb962ac59075b964b07152d234b70', '2022-11-20 04:49:13', NULL),
(13, 'VEMULAPALLI AASRITHA SAI', 'Chaitanyapuri 2nd lane, Guntur.', 'Guntur', 'female', '8500219381@z.com', 'd16fb36f0911f878998c136191af705e', '2022-11-20 04:57:33', NULL),
(14, 'VEMULAPALLI AASRITHA SAI', 'Chaitanyapuri 2nd lane, Guntur.', 'Guntur', 'female', '8500219381@z.com', 'd16fb36f0911f878998c136191af705e', '2022-11-20 04:58:58', NULL),
(15, 'VEMULAPALLI AASRITHA SAI', 'Chaitanyapuri 2nd lane, Guntur.', 'Guntur', 'female', '20bce7074.aasritha@vitap.ac.in', 'e86fdc2283aff4717103f2d44d0610f7', '2022-11-20 05:01:39', NULL),
(16, 'VEMULAPALLI AASRITHA SAI', 'Chaitanyapuri 2nd lane, Guntur.', 'Guntur', 'male', 'aasritha@rti', 'a152e841783914146e4bcd4f39100686', '2022-11-20 05:03:43', NULL),
(17, 'VEMULAPALLI AASRITHA SAI', 'Chaitanyapuri 2nd lane, Guntur.', 'Guntur', 'female', 'aasritha@jjkl.bb', '9cb1ee7cf27fd09cb2d9099afefc6287', '2022-11-20 05:04:14', NULL),
(18, 'VEMULAPALLI AASRITHA SAI', 'Chaitanyapuri 2nd lane, Guntur.', 'guntur', 'female', 'aasrithasai2003@mail.com', '962012d09b8170d912f0669f6d7d9d07', '2022-11-20 05:08:32', NULL),
(19, 'YEPURI AARTHI HASITHA', 'Chaitanyapuri 2nd lane, Guntur.', 'Guntur', 'male', '8500219381@zmil', '040b7cf4a55014e185813e0644502ea9', '2022-11-20 05:09:03', NULL),
(20, 'YEPURI AARTHI HASITHA', 'Chaitanyapuri 2nd lane, Guntur.', 'Guntur', 'male', '8500219381@zmil', '040b7cf4a55014e185813e0644502ea9', '2022-11-20 05:09:41', NULL),
(21, 'YEPURI AARTHI HASITHA', 'Near Benz Cirlce , Vijayawada', 'Guntur', 'female', 'aasritha@zmil', 'eda27913df250233d8c130e4e7d3b3f8', '2022-11-20 05:10:09', NULL),
(22, 'YEPURI AARTHI HASITHA', 'Near Benz Cirlce , Vijayawada', 'Guntur', 'female', 'aasritha@zmil', 'eda27913df250233d8c130e4e7d3b3f8', '2022-11-20 05:11:46', NULL),
(23, 'VEMULAPALLI AASRITHA SAI', 'Near Benz Cirlce , Vijayawada', 'Guntur', 'male', 'qwert@zmil.co', '827ccb0eea8a706c4c34a16891f84e7b', '2022-11-20 05:12:38', NULL),
(24, 'VEMULAPALLI AASRITHA SAI', 'Chaitanyapuri 2nd lane, Guntur.', 'Guntur', 'female', 'kol@gml.xlo', '3f230640b78d7e71ac5514e57935eb69', '2022-11-20 05:13:17', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpatient`
--
ALTER TABLE `tblpatient`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpatient`
--
ALTER TABLE `tblpatient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
