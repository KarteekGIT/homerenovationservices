-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 26, 2017 at 07:17 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `praveen`
--

-- --------------------------------------------------------

--
-- Table structure for table `callreport`
--

CREATE TABLE `callreport` (
  `callreport_id` int(5) NOT NULL,
  `store_name` varchar(20) NOT NULL,
  `store_number` int(20) NOT NULL,
  `store_contact_person` varchar(20) NOT NULL,
  `customer_name` varchar(20) NOT NULL,
  `customer_number` varchar(20) NOT NULL,
  `customer_alt_number` varchar(20) NOT NULL,
  `question1` text NOT NULL,
  `question2` text NOT NULL,
  `question3` text NOT NULL,
  `question4` text NOT NULL,
  `question5` text NOT NULL,
  `name_of_sp` varchar(20) NOT NULL,
  `sales_person_id` int(20) NOT NULL,
  `timecalled_in` varchar(30) NOT NULL,
  `datecalled_in` varchar(30) NOT NULL,
  `follow_up_call` varchar(30) NOT NULL,
  `requested_for` varchar(30) NOT NULL,
  `budget` varchar(30) NOT NULL,
  `date_of_appointment` varchar(30) NOT NULL,
  `summary` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `callreport`
--

INSERT INTO `callreport` (`callreport_id`, `store_name`, `store_number`, `store_contact_person`, `customer_name`, `customer_number`, `customer_alt_number`, `question1`, `question2`, `question3`, `question4`, `question5`, `name_of_sp`, `sales_person_id`, `timecalled_in`, `datecalled_in`, `follow_up_call`, `requested_for`, `budget`, `date_of_appointment`, `summary`) VALUES
(1, 'Timhortons', 123, 'Karteek', 'laksjksd', '6456456454', '6436546552', ',kajhdkah lkashdlkajs', 'aosidfuclasdnlasdj', ';aoeicusajalksdjljfsdlfnlksdj', 'something', 'something', 'KK', 1234, '10:00pm', '21-feb-2012', 'tomorrow', '', '', '12 feb 2016', 'lasdlskad;laskd;asmaslkd;aljda;fa;f;alsjfd;ad.,m;asld;asld'),
(2, 'Timhortons', 123, 'Karteek', 'laksjksd', '6456456454', '6436546552', ',kajhdkah lkashdlkajs', 'aosidfuclasdnlasdj', ';aoeicusajalksdjljfsdlfnlksdj', ';aoeicusajalksdjljfsdlfnlksdj', ';aoeicusajalksdjljfsdlfnlksdj', 'KK', 1234, '10:00pm', '21-feb-2012', 'tomorrow', 'Powder Room', '9000-12000', '12 feb 2016', ';alsdka;sldk;salkdopia;lkda;lskd;salkd;aslkd;alskd'),
(3, 'Timhortons', 123, 'Karteek', 'laksjksd', '6456456454', '6436546552', ',kajhdkah lkashdlkajs', 'aosidfuclasdnlasdj', ';aoeicusajalksdjljfsdlfnlksdj', ';aoeicusajalksdjljfsdlfnlksdj', ';aoeicusajalksdjljfsdlfnlksdj', 'KK', 1234, '10:00pm', '21-feb-2012', 'tomorrow', 'Powder Room', '9000-12000', '12 feb 2016', ';lkasd;lksa;lkdpoeirpoewira;lskdas;ldk'),
(4, 'Timhortons', 123, 'Karteek', 'laksjksd', '6456456454', '6436546552', ',kajhdkah lkashdlkajs', 'aosidfuclasdnlasdj', ';aoeicusajalksdjljfsdlfnlksdj', ';aoeicusajalksdjljfsdlfnlksdj', ';aoeicusajalksdjljfsdlfnlksdj', 'KK', 1234, '10:00pm', '21-feb-2012', 'tomorrow', 'Kitchen', '12000-15000', '12 feb 2016', ';lkasd;lsakd;lsakdsa;ldkas;ldk;aslkda;sldk;asldk;as');

-- --------------------------------------------------------

--
-- Table structure for table `leadinfosheet`
--

CREATE TABLE `leadinfosheet` (
  `leadsheet_id` int(5) NOT NULL,
  `store_name` varchar(20) NOT NULL,
  `store_number` varchar(20) NOT NULL,
  `department` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `primary_contact_name` varchar(30) NOT NULL,
  `primary_contact_number` varchar(30) NOT NULL,
  `extension` varchar(10) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `store_address` text NOT NULL,
  `customer_id` varchar(20) NOT NULL,
  `customer_name` varchar(30) NOT NULL,
  `customer_extension` varchar(10) NOT NULL,
  `customer_primary_number` varchar(15) NOT NULL,
  `customer_alternate_number` varchar(15) NOT NULL,
  `customer_address` text NOT NULL,
  `type_of_dwelling` varchar(20) NOT NULL,
  `single_semi_detached` varchar(30) NOT NULL,
  `site_id` varchar(15) NOT NULL,
  `site_contact_name` varchar(30) NOT NULL,
  `site_extension` varchar(15) NOT NULL,
  `site_primary_number` varchar(15) NOT NULL,
  `site_alt_number` varchar(15) NOT NULL,
  `site_address` text NOT NULL,
  `site_town_house` varchar(30) NOT NULL,
  `high_risk_triplex` varchar(30) NOT NULL,
  `summary` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leadinfosheet`
--

INSERT INTO `leadinfosheet` (`leadsheet_id`, `store_name`, `store_number`, `department`, `email`, `primary_contact_name`, `primary_contact_number`, `extension`, `fax`, `store_address`, `customer_id`, `customer_name`, `customer_extension`, `customer_primary_number`, `customer_alternate_number`, `customer_address`, `type_of_dwelling`, `single_semi_detached`, `site_id`, `site_contact_name`, `site_extension`, `site_primary_number`, `site_alt_number`, `site_address`, `site_town_house`, `high_risk_triplex`, `summary`) VALUES
(1, 'Timhortons', '123', 'asdsad', 'karteekkadari143@gmail.com', 'sdfsdfsdfds', '4545454545', '1234', '134567', 'sdfsdfdsfdsfsdfsdfds', '12121', 'laksjksd', '2323', '1233444444', '1454444234', 'asdasdasderweyuiyukhj', 'dsafdsfreytikjsdewtt', 'wqesaderewtrjhnm', '1212', 'qsaszsdflksdjflsd', '123', '1233312333', '1233312333', 'laskdsadkpowqiel;sadksa;ld', 'lskdjfoiersadlaskjfowqiurwq', 'alksdjsaodiuasmdoiuyut', 'lskdfjldks mcjsdlkfj ldksjfclksfj ljflks jflsdfkj'),
(2, 'asdasd', '123', 'asdsad', 'lk;laskda;ldksa@sdlmsdf', 'sdfsdfsdfds', '4545454545', '1234', '134567', 'sdfsdfdsfdsfsdfsdfds', '12121', 'laksjksd', '2323', '1233444444', '1454444234', 'asdasdasderweyuiyukhj', 'dsafdsfreytikjsdewtt', 'wqesaderewtrjhnm', '1212', 'qsaszsdflksdjflsd', '123', '1233312333', '1233312333', 'laskdsadkpowqiel;sadksa;ld', 'lskdjfoiersadlaskjfowqiurwq', 'alksdjsaodiuasmdoiuyut', ';lkd;aldfm/.m.a me;k /mf ;lsdfk;l df;');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(15) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `name`, `email`, `password`) VALUES
(2, 'admin', 'admin@domain.com', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `rfqid`
--

CREATE TABLE `rfqid` (
  `rfqid` int(15) NOT NULL,
  `callreport_id` int(15) NOT NULL,
  `leadsheet_id` int(15) NOT NULL,
  `ecost_id` int(15) NOT NULL,
  `sku_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `callreport`
--
ALTER TABLE `callreport`
  ADD PRIMARY KEY (`callreport_id`);

--
-- Indexes for table `leadinfosheet`
--
ALTER TABLE `leadinfosheet`
  ADD PRIMARY KEY (`leadsheet_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rfqid`
--
ALTER TABLE `rfqid`
  ADD PRIMARY KEY (`rfqid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `callreport`
--
ALTER TABLE `callreport`
  MODIFY `callreport_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `leadinfosheet`
--
ALTER TABLE `leadinfosheet`
  MODIFY `leadsheet_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `rfqid`
--
ALTER TABLE `rfqid`
  MODIFY `rfqid` int(15) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
