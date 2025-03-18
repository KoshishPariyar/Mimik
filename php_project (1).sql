-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2025 at 09:19 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(250) NOT NULL,
  `admin_email` text NOT NULL,
  `admin_password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_password`) VALUES
(6, 'Sonal Thapa', 'mimikwears@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b'),
(7, 'Sonal Thapa', 'mimikwears@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `order_cost` decimal(6,2) NOT NULL,
  `order_status` varchar(100) NOT NULL DEFAULT 'on_hold',
  `user_id` int(11) NOT NULL,
  `user_phone` int(11) NOT NULL,
  `user_city` varchar(255) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `order_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `order_cost`, `order_status`, `user_id`, `user_phone`, `user_city`, `user_address`, `order_date`) VALUES
(12, 1350.00, 'not paid', 1, 2147483647, 'Parsa', 'Khairahani-8', '2024-12-29 09:00:22'),
(13, 1350.00, 'not paid', 1, 2147483647, 'Parsa', 'Khairahani-8', '2024-12-29 09:31:35'),
(14, 1350.00, 'not paid', 1, 2147483647, 'Parsa', 'Khairahani-8', '2024-12-29 10:28:31'),
(15, 1350.00, 'not paid', 1, 2147483647, 'Parsa', 'Khairahani-8', '2024-12-30 17:19:28'),
(16, 2700.00, 'not paid', 1, 2147483647, 'Parsa', 'Khairahani-8', '2024-12-30 17:59:44'),
(17, 1350.00, 'not paid', 1, 2147483647, 'Parsa', 'Khairahani-8', '2024-12-31 04:44:29'),
(18, 4050.00, 'not paid', 1, 2147483647, 'Parsa', 'Khairahani-8', '2024-12-31 04:45:30'),
(19, 1350.00, 'not paid', 2, 2147483647, 'Bhandra', 'Rapti-08', '2025-02-14 18:08:58'),
(20, 1350.00, 'not paid', 2, 2147483647, 'Bhandra', 'Rapti-08', '2025-02-18 13:07:32'),
(21, 1350.00, 'not paid', 2, 2147483647, 'Bhandra', 'Rapti-08', '2025-02-21 03:31:26');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_price` decimal(6,2) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`item_id`, `order_id`, `product_id`, `product_name`, `product_image`, `product_price`, `product_quantity`, `user_id`, `order_date`) VALUES
(9, 12, '2', 'Mind Vision T-shirt', 'Mind_Vision.png', 1350.00, 1, 1, '2024-12-29 09:00:22'),
(10, 13, '1', 'Illuminati T-shirts', 'illuminati.png', 1350.00, 1, 1, '2024-12-29 09:31:35'),
(11, 14, '1', 'Illuminati T-shirts', 'illuminati.png', 1350.00, 1, 1, '2024-12-29 10:28:31'),
(12, 15, '1', 'Illuminati T-shirts', 'illuminati.png', 1350.00, 1, 1, '2024-12-30 17:19:28'),
(13, 16, '9', 'Serendipity T-shirt', 'Serendipity.png', 1350.00, 2, 1, '2024-12-30 17:59:44'),
(14, 17, '1', 'Illuminati T-shirts', 'illuminati.png', 1350.00, 1, 1, '2024-12-31 04:44:29'),
(15, 18, '1', 'Illuminati T-shirts', 'illuminati.png', 1350.00, 1, 1, '2024-12-31 04:45:30'),
(16, 18, '2', 'Mind Vision T-shirt', 'Mind_Vision.png', 1350.00, 2, 1, '2024-12-31 04:45:30'),
(17, 19, '1', 'Illuminati T-shirts', 'illuminati.png', 1350.00, 1, 2, '2025-02-14 18:08:58'),
(18, 20, '3', 'Cosmic T-shirt', 'cosmic.png', 1350.00, 1, 2, '2025-02-18 13:07:32'),
(19, 21, '1', 'Illuminati T-shirts', 'illuminati.png', 1350.00, 1, 2, '2025-02-21 03:31:26');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_category` varchar(100) NOT NULL,
  `product_description` varchar(255) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_image2` varchar(255) NOT NULL,
  `product_image3` varchar(255) NOT NULL,
  `product_price` decimal(6,2) NOT NULL,
  `product_special_offer` int(2) NOT NULL,
  `product_color` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_category`, `product_description`, `product_image`, `product_image2`, `product_image3`, `product_price`, `product_special_offer`, `product_color`) VALUES
(1, 'Illuminati T-shirts', 'featured', 'Mimik Wear’s Illuminati-themed t-shirt blends mystery and symbolism, inspired by the allure of hidden knowledge and power. The design embodies a timeless enigma, perfect for those who embrace the unknown. Available in brown, black, and white, this premium', 'illuminati.png', 'illuminati2.png', 'illuminati3.png', 1350.00, 0, 'white'),
(2, 'Mind Vision T-shirt', 'featured', 'Discover Mind Vision by Mimik Wear is a celestial journey of introspection and cosmic connection. Featuring a serene figure in meditation surrounded by planets, this white tee symbolizes harmony and universal balance. Made in Nepal with premium-quality fa', 'Mind_Vision.png', '', '', 1350.00, 0, 'white'),
(3, 'Cosmic T-shirt', 'featured', 'Step into the universe with Mimik Wear\'s Cosmic Dreamscape t-shirt. Featuring a captivating alien design, this premium piece embodies the mystique of the cosmos. Available in earthy brown and bold black, each tee is crafted in Nepal with exceptional quali', 'cosmic.png', 'cosmic2.png', '', 1350.00, 0, 'black'),
(4, 'Majic Mushroom T-shirt', 'newarrival', 'Our Majic Mushroom T-shirt is made from 100% cotton terry for ultimate comfort and durability.Our special edition print features the Magic Mushroom, a rare and fascinating type of mushroom found in the lush landscapes of Sauraha, Chitwan, Nepal. This uniq', 'Mus.png', 'mus2.png', 'mus3.png', 1350.00, 0, 'black'),
(5, 'Wisely T-shirt', 'newarrival', 'Mimik Wear\'s \"Use Energy Wisely\" t-shirt features a calming yoga pose, symbolizing balance and mindfulness. Inspired by the importance of conserving energy—both physical and mental—this design encourages intentional living. Crafted from premium-quality fa', 'Wisely.png', 'Wisely2.png', '', 1350.00, 0, 'black'),
(6, 'Freedom T-shirt', 'newarrival', 'Mimik Wear\'s \'Freedom\' t-shirt features a powerful pigeon symbol, representing peace and liberation. The design reflects the spirit of breaking free, embracing independence, and soaring above challenges. Crafted in black with premium-quality fabric, each ', 'Freedom.png', '', '', 1350.00, 0, 'black'),
(7, 'Authentic T-shirt', 'arrival', 'Mimik Wear’s \"Authentic\" t-shirt features a striking Roman figure design, embodying timeless strength and heritage. Crafted with precision in Nepal, using premium-quality fabric, this piece celebrates both ancient history and modern style. Available in cl', 'Authentic.png', '', '', 1350.00, 0, 'black'),
(8, 'Travis T-shirt', 'arrival', 'Mimik Wear\'s Travis Scott-themed t-shirt captures the essence of the iconic rapper\'s bold style and musical influence. Inspired by his artistry, this design brings a unique touch to your wardrobe. Available in brown, black, and white, each tee is crafted ', 'Travis.png', 'Travis2.png', '', 1350.00, 0, 'black'),
(9, 'Serendipity T-shirt', 'arrival', 'Mimik Wear’s Serendipity is a celebration of life’s beautiful, unexpected moments. Featuring a delicately designed daisy flower, this t-shirt embodies simplicity, hope, and charm. Available in timeless shades of white and crème white, it’s crafted with pr', 'Serendipity.png', '', '', 1350.00, 0, ' white');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_password`) VALUES
(1, 'Koshish', 'koshishpariyar0@gmail.com', 'de03e82cd7c7f5210c78b01c17ccb2ec'),
(2, 'Soniya', 'soniyashres4152@gmail.com', '$2y$10$UC.OpMRCemfJ9H5bVn.mKuVLyLhpPk3fG4gVHbP5g8yzTHduAPTLi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `fk_orders_users` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `fk_order_items_orders` (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `UX_Constraint` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_orders_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `fk_order_items_orders` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
