-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 18, 2019 at 03:47 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(2, 'SNACKS'),
(3, 'DRINKS'),
(4, 'DESSERT');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `description` varchar(225) NOT NULL,
  `price` decimal(18,2) NOT NULL,
  `image_path` varchar(225) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `description`, `price`, `image_path`, `category_id`) VALUES
(1, 'Batang Bawang', '', '0.00', '../assets/images/boybawang.jpeg', 2),
(2, 'Coke Float', 'Chocolate Coke Float with Strawberry syrup', '120.00', '../assets/images/strawberrychococokefloat.jpg', 3),
(3, 'Sanfran Beer', 'Authentic Peach Mango flavored Thai Beer', '200.00', '../assets/images/sanfran.jpeg', 3),
(4, 'Almond Blueberry Cheesecake', 'Cheesecake baked with real Blueberry fillings with Almonds on top', '500.00', '../assets/images/almondblueberrycheesecake.jpeg', 4),
(9, 'Chucky Doll', 'Lovely Doll', '10.00', '../assets/images/chuckie.jpeg', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `transaction_code` varchar(225) NOT NULL,
  `purchase_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status_id` int(11) NOT NULL,
  `payment_mode_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `transaction_code`, `purchase_date`, `status_id`, `payment_mode_id`) VALUES
(1, 10, '569C5F813E519911-1547603736', '2019-01-15 18:55:36', 2, 1),
(2, 10, 'C1F919535233BD41-1547605369', '2019-01-15 19:22:49', 3, 1),
(3, 10, '57CC351CD59AEED9-1547605577', '2019-01-15 19:26:17', 1, 1),
(4, 10, '1BFB29C6C867FA32-1547605743', '2019-01-15 19:29:03', 1, 1),
(5, 10, 'CA5C30283FD68E0C-1547605793', '2019-01-15 19:29:53', 1, 1),
(6, 11, '16479427A2D28A05-1547606405', '2019-01-15 19:40:05', 1, 1),
(7, 10, '1FD812E734B91B2A-1547606884', '2019-01-15 19:48:04', 1, 1),
(8, 10, 'D96C3C1FB365729E-1547607074', '2019-01-15 19:51:14', 1, 1),
(9, 10, '04E74FBAC1F701CA-1547607098', '2019-01-15 19:51:38', 1, 1),
(10, 10, '5F6D8AF4E1CEA024-1547607141', '2019-01-15 19:52:21', 1, 1),
(11, 10, '3549AB7241FC2AFB-1547607192', '2019-01-15 19:53:12', 1, 1),
(12, 10, '54513E08DAE0C2F8-1547607200', '2019-01-15 19:53:20', 1, 1),
(13, 10, '0A2DF7B023B84F98-1547626037', '2019-01-16 01:07:17', 1, 1),
(14, 10, 'EB84A18F61050468-1547626040', '2019-01-16 01:07:20', 1, 1),
(15, 10, '976F7CCC6E57CCBE-1547626044', '2019-01-16 01:07:24', 1, 1),
(16, 10, 'AFF8E1F0473FF4E7-1547626047', '2019-01-16 01:07:27', 1, 1),
(17, 10, 'F94A8515FBB39860-1547626051', '2019-01-16 01:07:31', 1, 1),
(18, 10, 'A1C17DDFF857A25D-1547626054', '2019-01-16 01:07:34', 1, 1),
(19, 10, '9CE0EDA8D43DE7E6-1547626056', '2019-01-16 01:07:36', 1, 1),
(20, 10, '5BE47BE9BBCFB4AB-1547626059', '2019-01-16 01:07:39', 1, 1),
(21, 10, '5E3B65AB761B5EA4-1547626063', '2019-01-16 01:07:43', 1, 1),
(22, 10, '5EC5031DD5F28236-1547626066', '2019-01-16 01:07:46', 1, 1),
(23, 10, '1716510C8570C4BD-1547626069', '2019-01-16 01:07:49', 1, 1),
(24, 10, 'E73531BBFB0ECF9F-1547626072', '2019-01-16 01:07:52', 1, 1),
(25, 10, '81F66D6EF9150BA0-1547626075', '2019-01-16 01:07:55', 1, 1),
(26, 10, 'F4286253D02242AF-1547626078', '2019-01-16 01:07:58', 1, 1),
(27, 10, '0415E93CC99D89C1-1547626081', '2019-01-16 01:08:01', 1, 1),
(28, 10, 'D2D9D7B4E3D58A77-1547626084', '2019-01-16 01:08:04', 1, 1),
(29, 10, '4E168422738EEA7A-1547626087', '2019-01-16 01:08:07', 1, 1),
(30, 10, '9E8563BE75DCD681-1547626090', '2019-01-16 01:08:10', 1, 1),
(31, 10, '75D737BE2989CA32-1547626093', '2019-01-16 01:08:13', 1, 1),
(32, 10, 'BFC0C3A3F4C95546-1547626096', '2019-01-16 01:08:16', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `price` decimal(18,2) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `item_id`, `price`, `quantity`) VALUES
(1, 1, 1, '0.00', 1),
(2, 1, 2, '0.00', 1),
(3, 1, 3, '0.00', 1),
(4, 1, 4, '0.00', 1),
(5, 2, 1, '0.00', 1),
(6, 2, 2, '0.00', 1),
(7, 2, 3, '0.00', 1),
(8, 2, 4, '0.00', 1),
(9, 4, 1, '0.00', 1),
(10, 4, 2, '0.00', 1),
(11, 4, 3, '0.00', 1),
(12, 4, 4, '0.00', 1),
(13, 5, 1, '0.00', 1),
(14, 5, 2, '0.00', 1),
(15, 5, 3, '0.00', 1),
(16, 5, 4, '0.00', 1),
(17, 6, 2, '0.00', 1),
(18, 7, 1, '0.00', 1),
(19, 7, 2, '0.00', 1),
(20, 8, 2, '0.00', 1),
(21, 10, 1, '0.00', 1),
(22, 12, 2, '120.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment_modes`
--

CREATE TABLE `payment_modes` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_modes`
--

INSERT INTO `payment_modes` (`id`, `name`) VALUES
(1, 'COD'),
(2, 'Paypal');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'admin'),
(2, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `name`) VALUES
(1, 'pending'),
(2, 'completed'),
(3, 'cancelled');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(225) NOT NULL,
  `lastname` varchar(225) NOT NULL,
  `username` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `address` varchar(225) NOT NULL,
  `roles_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `email`, `address`, `roles_id`) VALUES
(5, '', 'Trumpp', 'dondondontrump', '$2y$10$a1p8TslUK/zCg2NiXMTc9OCX0Jn0F8Ays8KXHTLHejGFBxuZJ4Nuu', 'trumppdon@gmail.com', 'White House', 2),
(6, 'John', 'Balilo', 'johnbal', '$2y$10$AfQyMNI8aPu0canrEQWTDuVYuVZvT79AT8IjEhl87vOptQLBpM0/C', 'johnbalilo@gmail.com', 'Rizal', 2),
(7, 'jjkjkkkjkjkjkj', 'jjhopoiu88io', 'john', '$2y$10$6H0s6pJ4DM3IujKrv5qC5.M8ldLZm9cLB1BT4Eolvq8lMugRXqB/6', 'jhhjhjjk@gmail.com', 'kkljkljkjkjhkhkkh', 2),
(8, 'Jedrus', 'Patron', 'jkkjkjjhjh', '$2y$10$7QtKTtNYD9UfBZR86rZMnOuZnGrI/0Q.K7cjCWkyKt8pvgif6UYda', 'jedruspatron@gmail.com', 'jkjkjkjkkkjkkj', 2),
(9, 'Thelma', 'Galit', 'tmgalitmd', '$2y$10$uHMHcK5FaqGoejddE/buGepf8cfmx9NZpeS/FiercQVfgO8xvQT32', 'tmggalitmd@yahoo.com', 'Lipa City', 2),
(10, 'Yves', 'Patron', 'yvesgpatron', '$2y$10$9Ww3iZj6wfAjgOIiaXm5c.bHyhCMkmUnY9T4VDxwHOjHE7xBaJei.', 'yvesgpatron@gmail.com', 'Makati City', 1),
(11, 'John', 'Balilo', 'johnbalilo', '$2y$10$qg6i05.7K.0ymBYYIzpufO0CuuOIy4awncQvNCrCV0m6AEt3XllsK', 'johnjay.balilo@gmail.com', 'Homeless', 2),
(15, 'Jandell', 'Patron', 'jandellpatron', '$2y$10$VdTl5McdjzajgoE9j7xIve9bteaAF1QSDXUVOQaWzqQFZ554aqSpq', 'jandell_patron@gmail.com', 'Laguna', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `payment_mode_id` (`payment_mode_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `payment_modes`
--
ALTER TABLE `payment_modes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roles_id` (`roles_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `payment_modes`
--
ALTER TABLE `payment_modes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`payment_mode_id`) REFERENCES `payment_modes` (`id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`roles_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
