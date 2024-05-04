-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2023 at 01:25 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crime_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `accused_info`
--

CREATE TABLE `accused_info` (
  `fid` varchar(100) NOT NULL,
  `a_id` varchar(100) NOT NULL,
  `a_name` varchar(200) NOT NULL,
  `a_address` varchar(400) NOT NULL,
  `cs_id` varchar(100) NOT NULL,
  `ipc` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `accused_info`
--

INSERT INTO `accused_info` (`fid`, `a_id`, `a_name`, `a_address`, `cs_id`, `ipc`) VALUES
('a131', '64313', 'Nabin Bora', 'Kabarak road , Near Mary Shop', '7477', '231/03');

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `uname` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`uname`, `pass`) VALUES
('admin', '123');

-- --------------------------------------------------------

--
-- Table structure for table `case_admin_confirm`
--

CREATE TABLE `case_admin_confirm` (
  `fid` varchar(40) NOT NULL,
  `vid` varchar(40) NOT NULL,
  `ioid` varchar(80) NOT NULL,
  `a_id` varchar(80) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `i_date` date NOT NULL,
  `f_date` date NOT NULL,
  `f_time` time NOT NULL,
  `c_details` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `case_admin_confirm`
--

INSERT INTO `case_admin_confirm` (`fid`, `vid`, `ioid`, `a_id`, `subject`, `i_date`, `f_date`, `f_time`, `c_details`) VALUES
('901', 'v5313', '1', '', 'FILE for Hit and run ', '2023-06-05', '2019-04-03', '23:00:00', ' \r\n		        		When i was coming from adabari to maligaon at above mentioned time a car hit me , who was coming in wrong direction also. The car registration number i noted as -  KAS 489O.		        	'),
('a131', 'v5313', 'j2314', '7653', 'FIR for Hit and run ', '2019-04-03', '2019-04-03', '23:00:00', ' \n		        		When i was coming from adabari to maligaon at above mentioned time a car hit me , who was coming in wrong direction also. The car registration number i noted as -  AS-07-h3113.		        	'),
('ar23', 'z7653', 'j2314', 'k888', 'FILE for stolen Motorbike', '2019-05-07', '2019-05-08', '10:00:00', ' \r\n		        		My bike has been stolen yesterday while i was watching footbal match.		        	'),
('as431', 'n752', 'r4612', 'trilok', 'FIR for attempt to murder', '2019-04-07', '2019-04-07', '04:56:00', ' \n		        		i man trying to kill me but he failed as i ran from the spot.		        	');

-- --------------------------------------------------------

--
-- Table structure for table `case_diary`
--

CREATE TABLE `case_diary` (
  `ps_name` varchar(200) NOT NULL,
  `fid` varchar(100) NOT NULL,
  `ioid` varchar(100) NOT NULL,
  `io_name` text NOT NULL,
  `cd_submit_date` date NOT NULL,
  `v_location` varchar(200) NOT NULL,
  `ipc` varchar(200) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `i_date` date NOT NULL,
  `i_time` time NOT NULL,
  `f_date` date NOT NULL,
  `f_time` time NOT NULL,
  `c_details` varchar(500) NOT NULL,
  `vid` varchar(100) NOT NULL,
  `v_name` text NOT NULL,
  `v_statement` varchar(500) NOT NULL,
  `w_name` text NOT NULL,
  `w_address` varchar(200) NOT NULL,
  `w_statement` varchar(500) NOT NULL,
  `a_id` varchar(100) NOT NULL,
  `a_name` text NOT NULL,
  `a_statement` varchar(500) NOT NULL,
  `io_statement` varchar(500) NOT NULL,
  `case_status` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `case_diary`
--

INSERT INTO `case_diary` (`ps_name`, `fid`, `ioid`, `io_name`, `cd_submit_date`, `v_location`, `ipc`, `subject`, `i_date`, `i_time`, `f_date`, `f_time`, `c_details`, `vid`, `v_name`, `v_statement`, `w_name`, `w_address`, `w_statement`, `a_id`, `a_name`, `a_statement`, `io_statement`, `case_status`) VALUES
('MOGOTIO', 'a131', 'j2314', 'Omwenga', '0000-00-00', 'Menengaii', '231/03', 'FILE for Hit and run ', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 'When i was coming from Nakuru town to Kabarak at above mentioned time a car hit me , who was coming in wrong direction also. The car registration number i noted as KAU 678Y.', 'v5313', 'Owen Kemboii', '', 'Purity Nasenta', 'PO 303 London,Nakuru', '', '', 'Nabin Bora', '', '', ''),
('Menengai', 'ar23', 'j2314', '', '2019-05-16', 'Salagaa', '122/421', 'FILE for stolen Motorbike', '0000-00-00', '00:00:00', '0000-00-00', '00:00:00', 'My bike has been stolen from salgaa centre yesterday while i was watching a football match.', 'z7653', 'Malkia Mohammed', 'Victim says about the case. ', '', '', 'No Witness.', '7883', 'Kamran Akmal', 'Suspected person says.', '', 'After 4 days of investigation the stolen motobike was found in Ambari .Information was given by Suspect Kamran Akmal .');

-- --------------------------------------------------------

--
-- Table structure for table `create_subadmin`
--

CREATE TABLE `create_subadmin` (
  `first_name` text NOT NULL,
  `last_name` text NOT NULL,
  `ioid` varchar(30) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `cpass` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `age` int(20) NOT NULL,
  `city` text NOT NULL,
  `state` text NOT NULL,
  `zcode` bigint(40) NOT NULL,
  `phoneno` bigint(40) NOT NULL,
  `gender` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `create_subadmin`
--

INSERT INTO `create_subadmin` (`first_name`, `last_name`, `ioid`, `uname`, `pass`, `cpass`, `email`, `age`, `city`, `state`, `zcode`, `phoneno`, `gender`) VALUES
('Marax', 'Sen', 'j2314', 'julia2', '1234', '1234', 'marax@gmail.com', 28, 'Kiamunyi ', 'Nakuru', 781011, 7964321678, 'm'),
('Penuel', 'Kibet', '4612', 'ravisankar4', '321', '321', 'alexa@gmail.com', 35, 'Litein', 'Kericho', 782061, 9614326676, 'm');

-- --------------------------------------------------------

--
-- Table structure for table `fir`
--

CREATE TABLE `fir` (
  `ward_no` int(40) NOT NULL,
  `ps_name` text NOT NULL,
  `fid` varchar(40) NOT NULL,
  `vid` varchar(40) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `i_date` date NOT NULL,
  `i_time` time NOT NULL,
  `i_place` varchar(50) NOT NULL,
  `a_name` text NOT NULL,
  `w_name` text NOT NULL,
  `w_address` varchar(500) NOT NULL,
  `f_date` date NOT NULL,
  `f_time` time NOT NULL,
  `c_details` varchar(500) NOT NULL,
  `f_name` text NOT NULL,
  `l_name` text NOT NULL,
  `relation` char(10) NOT NULL,
  `r_name` text NOT NULL,
  `city` text NOT NULL,
  `state` text NOT NULL,
  `p_code` bigint(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `phone` bigint(50) NOT NULL,
  `e_id` varchar(70) NOT NULL,
  `identity` char(100) NOT NULL,
  `identity_no` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `fir`
--

INSERT INTO `fir` (`ward_no`, `ps_name`, `fid`, `vid`, `subject`, `i_date`, `i_time`, `i_place`, `a_name`, `w_name`, `w_address`, `f_date`, `f_time`, `c_details`, `f_name`, `l_name`, `relation`, `r_name`, `city`, `state`, `p_code`, `address`, `phone`, `e_id`, `identity`, `identity_no`) VALUES
(11, 'Rafiki', 'a131', 'v5313', 'FILE for Hit and run ', '2019-04-03', '22:10:00', 'Maligaon', 'Nabin Bora', 'Hari Nath', 'PO Menegaii', '2019-04-03', '23:00:00', 'When i was coming from adabari to maligaon at above mentioned time a car hit me , who was coming in wrong direction also. The car registration number i noted as -  KAS 489O.', 'Prabin', 'Nath', 'Son of', 'NIrav Nath', 'Nakuru', 'rafiki', 781011, 'Rongaii', 7813464158, 'bravoo7@gmail.com', 'Voter Card', '38354436'),
(2, 'Rafiki', 'ar23', 'z7653', 'FILE for stolen Motorbike', '2019-05-07', '21:03:00', 'rafiki, bishop  area', '', '', '', '2019-05-08', '10:00:00', 'My bike has been stolen from Sansiro bar as from yesterday while i was watching a football match.', 'Robert', 'Njenga', 'Son of', 'Anand Saikia', 'Nakuru', 'Rafiki', 781002, 'rafiki,303100', 8765971314, 'roba@gmail.com', '', ''),
(8, 'Geetanagar', 'as431', 'n752', 'FIR for attempt to murder', '2019-04-07', '11:01:00', 'Gotanagar', 'Kulpradip Deka', 'Soniya Puri', 'new guwahati', '2019-04-07', '04:56:00', 'i man trying to kill me but he failed as i ran from the spot.', 'Amitabh', 'Gogoi', 'Son of', 'Cironjit Goroi', 'Guwahati', 'Assam', 781008, 'gotanagar', 9706185462, 'ami3@gmail.com', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `fir_rejected`
--

CREATE TABLE `fir_rejected` (
  `fir id` varchar(100) NOT NULL,
  `cause` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `fir_rejected`
--

INSERT INTO `fir_rejected` (`fir id`, `cause`) VALUES
('a131', 'Cancelled Due to Lack of proper supportive Evidence.'),
('as431', '');

-- --------------------------------------------------------

--
-- Table structure for table `fir_status`
--

CREATE TABLE `fir_status` (
  `status` text NOT NULL,
  `fid` varchar(100) NOT NULL,
  `vid` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `fir_status`
--

INSERT INTO `fir_status` (`status`, `fid`, `vid`) VALUES
('rejected', 'a131', 'v5313'),
('accepted', 'ar23', 'z7653'),
('rejected', 'as431', 'n752');

-- --------------------------------------------------------

--
-- Table structure for table `police_station`
--

CREATE TABLE `police_station` (
  `ps_id` varchar(30) NOT NULL,
  `ps_name` text NOT NULL,
  `oc_name` text NOT NULL,
  `ps_ph` bigint(100) NOT NULL,
  `ps_city` text NOT NULL,
  `state` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `police_station`
--

INSERT INTO `police_station` (`ps_id`, `ps_name`, `oc_name`, `ps_ph`, `ps_city`, `state`) VALUES
('1', 'Menengai', 'Penuel Kibet', 3612786326, 'Nakuru', 'Rongai'),
('2', 'Rafiki', 'Insp. P. K. Nath', 3612787220, 'Nakuru', 'Rongai'),
('3', 'Basistha', 'Insp. Omwengaa', 3612302158, 'Nakuru', 'Rongai'),
('4', 'Mogotio', 'Insp. Peter Cheruiyot', 3612231060, 'Nakuru', 'Rongai'),
('5', 'Salgaa', 'Insp. Samuel Ogamba', 3612261510, 'Nakuru', 'Salgaa'),
('6', 'Kiamunyii', 'Insp. Victor Korir', 3612461756, 'Nakuru', 'Rongai');

-- --------------------------------------------------------

--
-- Table structure for table `sub_admin_login`
--

CREATE TABLE `sub_admin_login` (
  `uname` varchar(30) NOT NULL,
  `pass` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `uname` varchar(30) NOT NULL,
  `pass` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_signup`
--

CREATE TABLE `user_signup` (
  `first_name` text NOT NULL,
  `last_name` text NOT NULL,
  `vid` varchar(20) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `pass` varchar(30) NOT NULL,
  `cpass` varchar(30) NOT NULL,
  `email` varchar(40) NOT NULL,
  `age` int(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `zcode` bigint(40) NOT NULL,
  `phoneno` bigint(40) NOT NULL,
  `gender` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_signup`
--

INSERT INTO `user_signup` (`first_name`, `last_name`, `vid`, `uname`, `pass`, `cpass`, `email`, `age`, `city`, `state`, `zcode`, `phoneno`, `gender`) VALUES
('Jesse', 'Tonui', 'A05t', 'jessetonui', '1234', '1234', 'tonui@gmail.com', 19, 'Nakuru', 'Rongai', 202100, 710800817, 'm'),
('Penu', 'Kibet', 'z7653', 'penudagreat', '1234', '1234', 'penu254@gmail.com', 18, 'Nakuru', 'Rongai', 784321, 9871463157, 'm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accused_info`
--
ALTER TABLE `accused_info`
  ADD UNIQUE KEY `fid` (`fid`,`a_id`,`cs_id`),
  ADD UNIQUE KEY `ipc` (`ipc`);

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD UNIQUE KEY `uname` (`uname`,`pass`);

--
-- Indexes for table `case_admin_confirm`
--
ALTER TABLE `case_admin_confirm`
  ADD UNIQUE KEY `fid` (`fid`);

--
-- Indexes for table `case_diary`
--
ALTER TABLE `case_diary`
  ADD UNIQUE KEY `fid` (`fid`,`ioid`),
  ADD UNIQUE KEY `vid` (`vid`),
  ADD UNIQUE KEY `a_id` (`a_id`);

--
-- Indexes for table `create_subadmin`
--
ALTER TABLE `create_subadmin`
  ADD PRIMARY KEY (`uname`),
  ADD UNIQUE KEY `uname` (`uname`,`pass`);

--
-- Indexes for table `fir`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `fir_rejected`
--
ALTER TABLE `file_rejected`
  ADD UNIQUE KEY `file id` (`file id`);

--
-- Indexes for table `fir_status`
--
ALTER TABLE `file_status`
  ADD UNIQUE KEY `fid` (`fid`),
  ADD UNIQUE KEY `vid` (`vid`);

--
-- Indexes for table `police_station`
--
ALTER TABLE `police_station`
  ADD PRIMARY KEY (`ps_id`);

--
-- Indexes for table `sub_admin_login`
--
ALTER TABLE `sub_admin_login`
  ADD UNIQUE KEY `uname` (`uname`,`pass`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD UNIQUE KEY `uname` (`uname`,`pass`);

--
-- Indexes for table `user_signup`
--
ALTER TABLE `user_signup`
  ADD PRIMARY KEY (`vid`),
  ADD UNIQUE KEY `uname` (`uname`,`pass`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
