-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2024 at 06:29 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kgb_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` bigint(255) NOT NULL,
  `order_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `product_id`, `name`, `email`, `contact`, `order_status`) VALUES
(25, 3, 'wdad', 'guestako@guest.com', 2147483647, 0),
(26, 6, 'xt202000407@wmsu.edu.ph', 'akositester@123', 2147483647, 0),
(27, 2, 'adad', 'wewe@aa', 2147483647, 1),
(28, 4, '11', 'wewe@aa', 2147483647, 1),
(29, 3, 'adad', 'wewe@aa', 90909090909, 1),
(30, 5, 'awww', 'akositester@123', 9399660334, 1),
(31, 13, 'kiezer', 'akositester@123', 90909090909, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_image` blob NOT NULL,
  `price` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_image`, `price`) VALUES
(2, 'GPU ni Gelo', 0x2e2f75706c6f6164732f36383462363063366338393261366436373062613262393661656131633832335f363631343337623339383330332e6a7067, 15000),
(3, 'CPU ni bennix', 0x2e2f75706c6f6164732f4379616e204d6f6465726e2050726f66657373696f6e616c20546563686e6f6c6f677920436f6d70616e79204c6f676f5f363631343335373939663536392e6a7067, 1122),
(4, 'Keyboard ni kent', 0x2e2f75706c6f6164732f696d616765732d3431313138393837363934362e2e77656270, 11111),
(5, 'Kugmo ni Aids', 0x2e2f75706c6f6164732f77617463682e6a7067, 50),
(6, 'Biot si Jongky', 0x2e2f75706c6f6164732f6865616470686f6e65732e6a7067, 150),
(7, 'Baka 4sale', 0x2e2f75706c6f6164732f63616d6572612e6a7067, 30000),
(11, '111', 0x2e2f75706c6f6164732f5f507572706c65204d6f6465726e204e656f6e20506c61792067616d6573204465736b746f702057616c6c706170657220283329202831292e6a7067, 111),
(13, 'ffff', 0x2e2f75706c6f6164732f77616c6c65742e6a7067, 1111),
(14, 'rrqwe', 0x2e2f75706c6f6164732f42726f776e20616e642050696e6b20496c6c757374726174697665204d6f6e6b65792047616d696e67204c6f676f2e706e67, 1244);

-- --------------------------------------------------------

--
-- Table structure for table `review_table`
--

CREATE TABLE `review_table` (
  `review_id` int(11) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `user_rating` int(1) NOT NULL,
  `user_review` text NOT NULL,
  `datetime` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review_table`
--

INSERT INTO `review_table` (`review_id`, `user_name`, `user_rating`, `user_review`, `datetime`) VALUES
(11, 'kiezer', 5, 'awdawda', 1713019097),
(12, 'gelo', 4, 'best store', 1713019745),
(14, 'bennix', 5, 'biot si gelo', 1713020559);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `service_name` varchar(500) NOT NULL,
  `s_desc` text NOT NULL,
  `s_price` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `service_name`, `s_desc`, `s_price`) VALUES
(18, 'Thermal Paste GPU & CPU', 'asdadasdasd asdasd adas das dqw jdw km kmdqwkmdkwdk awndadjwnd oqjo kqnmqkm kqwon q oqn jnw dkasndquw do qwo neqokmwdo iqjqkdmqkmkqm kdqm iqm ikm kqn oqk mo mqokm dkqwd \r\n', 122),
(19, 'Thermal Paste GPU & CPU', 'aDASdasdasd ada sdas dw', 200),
(23, 'Massage', 'Great massage by bennix', 150),
(25, 'last', 'test', 150),
(26, 'awdawdawd', 'awdawdaEFa  dhqw dhwa kjdhaw jd wjdajw dnjaw bdjaw bjd baw dnw kdaw diaw gwjesoewfhwq h qwk sdakw nwi dhwai dhaw hwi dhaw dhawo dhwua gefw fnq k diwao haw hdao di  w h en w jwa naiksd', 1500),
(27, 'awdhawdhaiw', 'jhfawdhuawh uwah duw hwudh awojdoawij dwa jhdoiwh oiadhaoiuw bdiaw bdiuwh aduhwaod qo ', 15000);

-- --------------------------------------------------------

--
-- Table structure for table `sorders`
--

CREATE TABLE `sorders` (
  `s_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` bigint(255) NOT NULL,
  `order_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sorders`
--

INSERT INTO `sorders` (`s_id`, `id`, `name`, `email`, `contact`, `order_status`) VALUES
(5, 26, 'kiezer', 'kiezer@tester.com', 11112, 1),
(6, 23, 'kiezer', 'kiezer@tester.com', 90909090909, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `review_table`
--
ALTER TABLE `review_table`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sorders`
--
ALTER TABLE `sorders`
  ADD PRIMARY KEY (`s_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `review_table`
--
ALTER TABLE `review_table`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `sorders`
--
ALTER TABLE `sorders`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
