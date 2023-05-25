-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.24-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for ecommerceweb
CREATE DATABASE IF NOT EXISTS `ecommerceweb` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `ecommerceweb`;

-- Dumping structure for table ecommerceweb.tbl_color
CREATE TABLE IF NOT EXISTS `tbl_color` (
  `color_id` int(11) NOT NULL AUTO_INCREMENT,
  `color_name` varchar(255) NOT NULL,
  PRIMARY KEY (`color_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

-- Dumping data for table ecommerceweb.tbl_color: ~0 rows (approximately)

-- Dumping structure for table ecommerceweb.tbl_country
CREATE TABLE IF NOT EXISTS `tbl_country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=247 DEFAULT CHARSET=utf8;

-- Dumping data for table ecommerceweb.tbl_country: 0 rows
/*!40000 ALTER TABLE `tbl_country` DISABLE KEYS */;
INSERT INTO `tbl_country` (`country_id`, `country_name`) VALUES
	(246, 'Bangladesh');
/*!40000 ALTER TABLE `tbl_country` ENABLE KEYS */;

-- Dumping structure for table ecommerceweb.tbl_customer
CREATE TABLE IF NOT EXISTS `tbl_customer` (
  `cust_id` int(11) NOT NULL AUTO_INCREMENT,
  `cust_name` varchar(100) NOT NULL,
  `cust_cname` varchar(100) NOT NULL,
  `cust_email` varchar(100) NOT NULL,
  `cust_phone` varchar(50) NOT NULL,
  `cust_country` int(11) NOT NULL,
  `cust_address` text NOT NULL,
  `cust_city` varchar(100) NOT NULL,
  `cust_state` varchar(100) NOT NULL,
  `cust_zip` varchar(30) NOT NULL,
  `cust_b_name` varchar(100) NOT NULL,
  `cust_b_cname` varchar(100) NOT NULL,
  `cust_b_phone` varchar(50) NOT NULL,
  `cust_b_country` int(11) NOT NULL,
  `cust_b_address` text NOT NULL,
  `cust_b_city` varchar(100) NOT NULL,
  `cust_b_state` varchar(100) NOT NULL,
  `cust_b_zip` varchar(30) NOT NULL,
  `cust_s_name` varchar(100) NOT NULL,
  `cust_s_cname` varchar(100) NOT NULL,
  `cust_s_phone` varchar(50) NOT NULL,
  `cust_s_country` int(11) NOT NULL,
  `cust_s_address` text NOT NULL,
  `cust_s_city` varchar(100) NOT NULL,
  `cust_s_state` varchar(100) NOT NULL,
  `cust_s_zip` varchar(30) NOT NULL,
  `cust_password` varchar(100) NOT NULL,
  `cust_token` varchar(255) NOT NULL,
  `cust_datetime` varchar(100) NOT NULL,
  `cust_timestamp` varchar(100) NOT NULL,
  `cust_status` int(1) NOT NULL,
  PRIMARY KEY (`cust_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- Dumping data for table ecommerceweb.tbl_customer: ~1 rows (approximately)
INSERT INTO `tbl_customer` (`cust_id`, `cust_name`, `cust_cname`, `cust_email`, `cust_phone`, `cust_country`, `cust_address`, `cust_city`, `cust_state`, `cust_zip`, `cust_b_name`, `cust_b_cname`, `cust_b_phone`, `cust_b_country`, `cust_b_address`, `cust_b_city`, `cust_b_state`, `cust_b_zip`, `cust_s_name`, `cust_s_cname`, `cust_s_phone`, `cust_s_country`, `cust_s_address`, `cust_s_city`, `cust_s_state`, `cust_s_zip`, `cust_password`, `cust_token`, `cust_datetime`, `cust_timestamp`, `cust_status`) VALUES
	(12, 'Foysal Bin Zaman', 'asd', 'foysalbinzaman1@gmail.com', '01625017386', 246, 'Darbarsharif Road\r\n502', 'Tongi', 'GAZIPUR', '1710', 'Foysal Bin Zaman', 'as', '01625017386', 246, 'Darbarsharif Road\r\n502', 'Tongi', 'GAZIPUR', '1710', 'Foysal Bin Zaman', 'asd', '01625017386', 246, 'Darbarsharif Road\r\n502', 'Tongi', 'GAZIPUR', '1710', 'e10adc3949ba59abbe56e057f20f883e', '24b531531d502279ed77e26b672b6911', '2023-05-23 06:24:42', '1684848282', 1);

-- Dumping structure for table ecommerceweb.tbl_customer_message
CREATE TABLE IF NOT EXISTS `tbl_customer_message` (
  `customer_message_id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `order_detail` text NOT NULL,
  `cust_id` int(11) NOT NULL,
  PRIMARY KEY (`customer_message_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Dumping data for table ecommerceweb.tbl_customer_message: 0 rows
/*!40000 ALTER TABLE `tbl_customer_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_customer_message` ENABLE KEYS */;

-- Dumping structure for table ecommerceweb.tbl_end_category
CREATE TABLE IF NOT EXISTS `tbl_end_category` (
  `ecat_id` int(11) NOT NULL AUTO_INCREMENT,
  `ecat_name` varchar(255) NOT NULL,
  `mcat_id` int(11) NOT NULL,
  PRIMARY KEY (`ecat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=latin1;

-- Dumping data for table ecommerceweb.tbl_end_category: ~3 rows (approximately)
INSERT INTO `tbl_end_category` (`ecat_id`, `ecat_name`, `mcat_id`) VALUES
	(81, 'PARACETAMOL', 19),
	(82, 'FEXOFENATINE', 19),
	(83, 'METRONIDAZOLE', 19);

-- Dumping structure for table ecommerceweb.tbl_faq
CREATE TABLE IF NOT EXISTS `tbl_faq` (
  `faq_id` int(11) NOT NULL AUTO_INCREMENT,
  `faq_title` varchar(255) NOT NULL,
  `faq_content` text NOT NULL,
  PRIMARY KEY (`faq_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table ecommerceweb.tbl_faq: ~5 rows (approximately)
INSERT INTO `tbl_faq` (`faq_id`, `faq_title`, `faq_content`) VALUES
	(1, 'How to find an item?', '<h3 class="checkout-complete-box font-bold txt16" style="box-sizing: inherit; text-rendering: optimizeLegibility; margin: 0.2rem 0px 0.5rem; padding: 0px; line-height: 1.4; background-color: rgb(250, 250, 250);"><font color="#222222" face="opensans, Helvetica Neue, Helvetica, Helvetica, Arial, sans-serif"><span style="font-size: 15.7143px;">We have a wide range of fabulous products to choose from.</span></font></h3><h3 class="checkout-complete-box font-bold txt16" style="box-sizing: inherit; text-rendering: optimizeLegibility; margin: 0.2rem 0px 0.5rem; padding: 0px; line-height: 1.4; background-color: rgb(250, 250, 250);"><span style="font-size: 15.7143px; color: rgb(34, 34, 34); font-family: opensans, "Helvetica Neue", Helvetica, Helvetica, Arial, sans-serif;">Tip 1: If you\'re looking for a specific product, use the keyword search box located at the top of the site. Simply type what you are looking for, and prepare to be amazed!</span></h3><h3 class="checkout-complete-box font-bold txt16" style="box-sizing: inherit; text-rendering: optimizeLegibility; margin: 0.2rem 0px 0.5rem; padding: 0px; line-height: 1.4; background-color: rgb(250, 250, 250);"><font color="#222222" face="opensans, Helvetica Neue, Helvetica, Helvetica, Arial, sans-serif"><span style="font-size: 15.7143px;">Tip 2: If you want to explore a category of products, use the Shop Categories in the upper menu, and navigate through your favorite categories where we\'ll feature the best products in each.</span></font><br><br></h3>\r\n'),
	(2, 'What is your return policy?', '<p><span style="color: rgb(10, 10, 10); font-family: opensans, &quot;Helvetica Neue&quot;, Helvetica, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;">You have 15 days to make a refund request after your order has been delivered.</span><br></p>\r\n'),
	(3, ' I received a defective/damaged item, can I get a refund?', '<p>In case the item you received is damaged or defective, you could return an item in the same condition as you received it with the original box and/or packaging intact. Once we receive the returned item, we will inspect it and if the item is found to be defective or damaged, we will process the refund along with any shipping fees incurred.<br></p>\r\n'),
	(4, 'When are ‘Returns’ not possible?', '<p class="a  " style="box-sizing: inherit; text-rendering: optimizeLegibility; line-height: 1.6; margin-bottom: 0.714286rem; padding: 0px; font-size: 14px; color: rgb(10, 10, 10); font-family: opensans, &quot;Helvetica Neue&quot;, Helvetica, Helvetica, Arial, sans-serif; background-color: rgb(250, 250, 250);">There are a few certain scenarios where it is difficult for us to support returns:</p><ol style="box-sizing: inherit; line-height: 1.6; margin-right: 0px; margin-bottom: 0px; margin-left: 1.25rem; padding: 0px; list-style-position: outside; color: rgb(10, 10, 10); font-family: opensans, &quot;Helvetica Neue&quot;, Helvetica, Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(250, 250, 250);"><li style="box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;">Return request is made outside the specified time frame, of 15 days from delivery.</li><li style="box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;">Product is used, damaged, or is not in the same condition as you received it.</li><li style="box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;">Specific categories like innerwear, lingerie, socks and clothing freebies etc.</li><li style="box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;">Defective products which are covered under the manufacturer\'s warranty.</li><li style="box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;">Any consumable item which has been used or installed.</li><li style="box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;">Products with tampered or missing serial numbers.</li><li style="box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;">Anything missing from the package you\'ve received including price tags, labels, original packing, freebies and accessories.</li><li style="box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;">Fragile items, hygiene related items.</li></ol>\r\n'),
	(5, 'What are the items that cannot be returned?', '<p>The items that can not be returned are:</p><p>Clearance items clearly marked as such and displaying a No-Return Policy<br></p><p>When the offer notes states so specifically are items that cannot be returned.</p><p>Items that fall into the below product types-</p><ul><li>Underwear</li><li>Lingerie</li><li>Socks</li><li>Software</li><li>Music albums</li><li>Books</li><li>Swimwear</li><li>Beauty &amp; Fragrances</li><li>Hosiery</li></ul><p>Also, any consumable items that are used or installed cannot be returned. As outlined in consumer Protection Rights and concerning section on non-returnable items<br></p>');

-- Dumping structure for table ecommerceweb.tbl_language
CREATE TABLE IF NOT EXISTS `tbl_language` (
  `lang_id` int(11) NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(255) NOT NULL,
  `lang_value` text NOT NULL,
  PRIMARY KEY (`lang_id`)
) ENGINE=MyISAM AUTO_INCREMENT=164 DEFAULT CHARSET=latin1;

-- Dumping data for table ecommerceweb.tbl_language: 163 rows
/*!40000 ALTER TABLE `tbl_language` DISABLE KEYS */;
INSERT INTO `tbl_language` (`lang_id`, `lang_name`, `lang_value`) VALUES
	(1, 'Currency', '$'),
	(2, 'Search Product', 'Search Product'),
	(3, 'Search', 'Search'),
	(4, 'Submit', 'Submit'),
	(5, 'Update', 'Update'),
	(6, 'Read More', 'Read More'),
	(7, 'Serial', 'Serial'),
	(8, 'Photo', 'Photo'),
	(9, 'Login', 'Login'),
	(10, 'Customer Login', 'Customer Login'),
	(11, 'Click here to login', 'Click here to login'),
	(12, 'Back to Login Page', 'Back to Login Page'),
	(13, 'Logged in as', 'Logged in as'),
	(14, 'Logout', 'Logout'),
	(15, 'Register', 'Register'),
	(16, 'Customer Registration', 'Customer Registration'),
	(17, 'Registration Successful', 'Registration Successful'),
	(18, 'Cart', 'Cart'),
	(19, 'View Cart', 'View Cart'),
	(20, 'Update Cart', 'Update Cart'),
	(21, 'Back to Cart', 'Back to Cart'),
	(22, 'Checkout', 'Checkout'),
	(23, 'Proceed to Checkout', 'Proceed to Checkout'),
	(24, 'Orders', 'Orders'),
	(25, 'Order History', 'Order History'),
	(26, 'Order Details', 'Order Details'),
	(27, 'Payment Date and Time', 'Payment Date and Time'),
	(28, 'Transaction ID', 'Transaction ID'),
	(29, 'Paid Amount', 'Paid Amount'),
	(30, 'Payment Status', 'Payment Status'),
	(31, 'Payment Method', 'Payment Method'),
	(32, 'Payment ID', 'Payment ID'),
	(33, 'Payment Section', 'Payment Section'),
	(34, 'Select Payment Method', 'Select Payment Method'),
	(35, 'Select a Method', 'Select a Method'),
	(36, 'PayPal', 'PayPal'),
	(37, 'Stripe', 'Stripe'),
	(38, 'Bank Deposit', 'Bank Deposit'),
	(39, 'Card Number', 'Card Number'),
	(40, 'CVV', 'CVV'),
	(41, 'Month', 'Month'),
	(42, 'Year', 'Year'),
	(43, 'Send to this Details', 'Send to this Details'),
	(44, 'Transaction Information', 'Transaction Information'),
	(45, 'Include transaction id and other information correctly', 'Include transaction id and other information correctly'),
	(46, 'Pay Now', 'Pay Now'),
	(47, 'Product Name', 'Product Name'),
	(48, 'Product Details', 'Product Details'),
	(49, 'Categories', 'Categories'),
	(50, 'Category:', 'Category:'),
	(51, 'All Products Under', 'All Products Under'),
	(52, 'Select Size', 'Select Size'),
	(53, 'Select Color', 'Select Color'),
	(54, 'Product Price', 'Product Price'),
	(55, 'Quantity', 'Quantity'),
	(56, 'Out of Stock', 'Out of Stock'),
	(57, 'Share This', 'Share This'),
	(58, 'Share This Product', 'Share This Product'),
	(59, 'Product Description', 'Product Description'),
	(60, 'Features', 'Features'),
	(61, 'Conditions', 'Conditions'),
	(62, 'Return Policy', 'Return Policy'),
	(63, 'Reviews', 'Reviews'),
	(64, 'Review', 'Review'),
	(65, 'Give a Review', 'Give a Review'),
	(66, 'Write your comment (Optional)', 'Write your comment (Optional)'),
	(67, 'Submit Review', 'Submit Review'),
	(68, 'You already have given a rating!', 'You already have given a rating!'),
	(69, 'You must have to login to give a review', 'You must have to login to give a review'),
	(70, 'No description found', 'No description found'),
	(71, 'No feature found', 'No feature found'),
	(72, 'No condition found', 'No condition found'),
	(73, 'No return policy found', 'No return policy found'),
	(74, 'Review not found', 'Review not found'),
	(75, 'Customer Name', 'Customer Name'),
	(76, 'Comment', 'Comment'),
	(77, 'Comments', 'Comments'),
	(78, 'Rating', 'Rating'),
	(79, 'Previous', 'Previous'),
	(80, 'Next', 'Next'),
	(81, 'Sub Total', 'Sub Total'),
	(82, 'Total', 'Total'),
	(83, 'Action', 'Action'),
	(84, 'Shipping Cost', 'Shipping Cost'),
	(85, 'Continue Shopping', 'Continue Shopping'),
	(86, 'Update Billing Address', 'Update Billing Address'),
	(87, 'Update Shipping Address', 'Update Shipping Address'),
	(88, 'Update Billing and Shipping Info', 'Update Billing and Shipping Info'),
	(89, 'Dashboard', 'Dashboard'),
	(90, 'Welcome to the Dashboard', 'Welcome to the Dashboard'),
	(91, 'Back to Dashboard', 'Back to Dashboard'),
	(92, 'Subscribe', 'Subscribe'),
	(93, 'Subscribe To Our Newsletter', 'Subscribe To Our Newsletter'),
	(94, 'Email Address', 'Email Address'),
	(95, 'Enter Your Email Address', 'Enter Your Email Address'),
	(96, 'Password', 'Password'),
	(97, 'Forget Password', 'Forget Password'),
	(98, 'Retype Password', 'Retype Password'),
	(99, 'Update Password', 'Update Password'),
	(100, 'New Password', 'New Password'),
	(101, 'Retype New Password', 'Retype New Password'),
	(102, 'Full Name', 'Full Name'),
	(103, 'Company Name', 'Company Name'),
	(104, 'Phone Number', 'Phone Number'),
	(105, 'Address', 'Address'),
	(106, 'Country', 'Country'),
	(107, 'City', 'City'),
	(108, 'State', 'State'),
	(109, 'Zip Code', 'Zip Code'),
	(110, 'About Us', 'About Us'),
	(111, 'Featured Posts', 'Featured Posts'),
	(112, 'Popular Posts', 'Popular Posts'),
	(113, 'Recent Posts', 'Recent Posts'),
	(114, 'Contact Information', 'Contact Information'),
	(115, 'Contact Form', 'Contact Form'),
	(116, 'Our Office', 'Our Office'),
	(117, 'Update Profile', 'Update Profile'),
	(118, 'Send Message', 'Send Message'),
	(119, 'Message', 'Message'),
	(120, 'Find Us On Map', 'Find Us On Map'),
	(121, 'Congratulation! Payment is successful.', 'Congratulation! Payment is successful.'),
	(122, 'Billing and Shipping Information is updated successfully.', 'Billing and Shipping Information is updated successfully.'),
	(123, 'Customer Name can not be empty.', 'Customer Name can not be empty.'),
	(124, 'Phone Number can not be empty.', 'Phone Number can not be empty.'),
	(125, 'Address can not be empty.', 'Address can not be empty.'),
	(126, 'You must have to select a country.', 'You must have to select a country.'),
	(127, 'City can not be empty.', 'City can not be empty.'),
	(128, 'State can not be empty.', 'State can not be empty.'),
	(129, 'Zip Code can not be empty.', 'Zip Code can not be empty.'),
	(130, 'Profile Information is updated successfully.', 'Profile Information is updated successfully.'),
	(131, 'Email Address can not be empty', 'Email Address can not be empty'),
	(132, 'Email and/or Password can not be empty.', 'Email and/or Password can not be empty.'),
	(133, 'Email Address does not match.', 'Email Address does not match.'),
	(134, 'Email address must be valid.', 'Email address must be valid.'),
	(135, 'You email address is not found in our system.', 'You email address is not found in our system.'),
	(136, 'Please check your email and confirm your subscription.', 'Please check your email and confirm your subscription.'),
	(137, 'Your email is verified successfully. You can now login to our website.', 'Your email is verified successfully. You can now login to our website.'),
	(138, 'Password can not be empty.', 'Password can not be empty.'),
	(139, 'Passwords do not match.', 'Passwords do not match.'),
	(140, 'Please enter new and retype passwords.', 'Please enter new and retype passwords.'),
	(141, 'Password is updated successfully.', 'Password is updated successfully.'),
	(142, 'To reset your password, please click on the link below.', 'To reset your password, please click on the link below.'),
	(143, 'PASSWORD RESET REQUEST - YOUR WEBSITE.COM', 'PASSWORD RESET REQUEST - YOUR WEBSITE.COM'),
	(144, 'The password reset email time (24 hours) has expired. Please again try to reset your password.', 'The password reset email time (24 hours) has expired. Please again try to reset your password.'),
	(145, 'A confirmation link is sent to your email address. You will get the password reset information in there.', 'A confirmation link is sent to your email address. You will get the password reset information in there.'),
	(146, 'Password is reset successfully. You can now login.', 'Password is reset successfully. You can now login.'),
	(147, 'Email Address Already Exists', 'Email Address Already Exists.'),
	(148, 'Sorry! Your account is inactive. Please contact to the administrator.', 'Sorry! Your account is inactive. Please contact to the administrator.'),
	(149, 'Change Password', 'Change Password'),
	(150, 'Registration Email Confirmation for YOUR WEBSITE', 'Registration Email Confirmation for YOUR WEBSITE.'),
	(151, 'Thank you for your registration! Your account has been created. To active your account click on the link below:', 'Thank you for your registration! Your account has been created. To active your account click on the link below:'),
	(152, 'Your registration is completed. Please check your email address to follow the process to confirm your registration.', 'Your registration is completed. Please check your email address to follow the process to confirm your registration.'),
	(153, 'No Product Found', 'No Product Found'),
	(154, 'Add to Cart', 'Add to Cart'),
	(155, 'Related Products', 'Related Products'),
	(156, 'See all related products from below', 'See all the related products from below'),
	(157, 'Size', 'Size'),
	(158, 'Color', 'Color'),
	(159, 'Price', 'Price'),
	(160, 'Please login as customer to checkout', 'Please login as customer to checkout'),
	(161, 'Billing Address', 'Billing Address'),
	(162, 'Shipping Address', 'Shipping Address'),
	(163, 'Rating is Submitted Successfully!', 'Rating is Submitted Successfully!');
/*!40000 ALTER TABLE `tbl_language` ENABLE KEYS */;

-- Dumping structure for table ecommerceweb.tbl_mid_category
CREATE TABLE IF NOT EXISTS `tbl_mid_category` (
  `mcat_id` int(11) NOT NULL AUTO_INCREMENT,
  `mcat_name` varchar(255) NOT NULL,
  `tcat_id` int(11) NOT NULL,
  PRIMARY KEY (`mcat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

-- Dumping data for table ecommerceweb.tbl_mid_category: ~5 rows (approximately)
INSERT INTO `tbl_mid_category` (`mcat_id`, `mcat_name`, `tcat_id`) VALUES
	(19, 'BEXIMCO', 13),
	(20, 'SQUARE', 13),
	(21, 'OPSONIN', 13),
	(22, 'BIOPHARMA', 13),
	(23, 'POPULAR', 13);

-- Dumping structure for table ecommerceweb.tbl_order
CREATE TABLE IF NOT EXISTS `tbl_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `size` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `unit_price` varchar(50) NOT NULL,
  `payment_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table ecommerceweb.tbl_order: ~1 rows (approximately)
INSERT INTO `tbl_order` (`id`, `product_id`, `product_name`, `size`, `color`, `quantity`, `unit_price`, `payment_id`) VALUES
	(6, 104, 'Napa', '', '', '5', '2', '1684848405');

-- Dumping structure for table ecommerceweb.tbl_page
CREATE TABLE IF NOT EXISTS `tbl_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `about_title` varchar(255) NOT NULL,
  `about_content` text NOT NULL,
  `about_banner` varchar(255) NOT NULL,
  `about_meta_title` varchar(255) NOT NULL,
  `about_meta_keyword` text NOT NULL,
  `about_meta_description` text NOT NULL,
  `faq_title` varchar(255) NOT NULL,
  `faq_banner` varchar(255) NOT NULL,
  `faq_meta_title` varchar(255) NOT NULL,
  `faq_meta_keyword` text NOT NULL,
  `faq_meta_description` text NOT NULL,
  `blog_title` varchar(255) NOT NULL,
  `blog_banner` varchar(255) NOT NULL,
  `blog_meta_title` varchar(255) NOT NULL,
  `blog_meta_keyword` text NOT NULL,
  `blog_meta_description` text NOT NULL,
  `contact_title` varchar(255) NOT NULL,
  `contact_banner` varchar(255) NOT NULL,
  `contact_meta_title` varchar(255) NOT NULL,
  `contact_meta_keyword` text NOT NULL,
  `contact_meta_description` text NOT NULL,
  `pgallery_title` varchar(255) NOT NULL,
  `pgallery_banner` varchar(255) NOT NULL,
  `pgallery_meta_title` varchar(255) NOT NULL,
  `pgallery_meta_keyword` text NOT NULL,
  `pgallery_meta_description` text NOT NULL,
  `vgallery_title` varchar(255) NOT NULL,
  `vgallery_banner` varchar(255) NOT NULL,
  `vgallery_meta_title` varchar(255) NOT NULL,
  `vgallery_meta_keyword` text NOT NULL,
  `vgallery_meta_description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table ecommerceweb.tbl_page: ~0 rows (approximately)
INSERT INTO `tbl_page` (`id`, `about_title`, `about_content`, `about_banner`, `about_meta_title`, `about_meta_keyword`, `about_meta_description`, `faq_title`, `faq_banner`, `faq_meta_title`, `faq_meta_keyword`, `faq_meta_description`, `blog_title`, `blog_banner`, `blog_meta_title`, `blog_meta_keyword`, `blog_meta_description`, `contact_title`, `contact_banner`, `contact_meta_title`, `contact_meta_keyword`, `contact_meta_description`, `pgallery_title`, `pgallery_banner`, `pgallery_meta_title`, `pgallery_meta_keyword`, `pgallery_meta_description`, `vgallery_title`, `vgallery_banner`, `vgallery_meta_title`, `vgallery_meta_keyword`, `vgallery_meta_description`) VALUES
	(1, 'About Us', '<p style="border: 0px solid; margin-top: 1.5rem; margin-bottom: 0px;">Welcome to Ecommerce PHP Project!</p><p style="border: 0px solid; margin-top: 1.5rem; margin-bottom: 0px;"><span style="border: 0px solid;">We aim to offer our customers a variety of the latest [PRODUCTS_CATEGORY_NAME]. Weâ€™ve come a long way, so we know exactly which direction to take when supplying you with high quality yet budget-friendly products. We offer all of this while providing excellent customer service and friendly support.</span></p><p style="border: 0px solid; margin-top: 1.5rem; margin-bottom: 0px;"><span style="border: 0px solid;">We always keep an eye on the latest trends in [PRODUCTS CATEGORY NAME] and put our customersâ€™ wishes first. That is why we have satisfied customers all over the world, and are thrilled to be a part of the [PRODUCTS CATEGORY NAME] industry.</span></p><p style="border: 0px solid; margin-top: 1.5rem; margin-bottom: 0px;"><span style="border: 0px solid;">The interests of our customers are always top priority for us, so we hope you will enjoy our products as much as we enjoy making them available to you.</span></p><p style="">We make sure you get the best quality outfits with hassle free returns and exchanges policy. We ensure what you see is exactly what you get!</p><ul><li style="text-align: justify;"><font face="apercu, Arial, sans-serif"><span style="font-size: 14px;">Low Price Guarantee</span></font></li><li style="text-align: justify;"><font face="apercu, Arial, sans-serif"><span style="font-size: 14px;">24/7 Customer Support</span></font></li><li style="text-align: justify;"><font face="apercu, Arial, sans-serif"><span style="font-size: 14px;">E-Mail - Text - Call</span></font></li><li style="text-align: justify;"><font face="apercu, Arial, sans-serif"><span style="font-size: 14px;">We are here for you 24/7 online and via phone.</span></font></li><li style="text-align: justify;"><font face="apercu, Arial, sans-serif"><span style="font-size: 14px;">Sizing & Color</span></font></li><li style="text-align: justify;"><font face="apercu, Arial, sans-serif"><span style="font-size: 14px;">Worldwide Shipping</span></font></li><li style="text-align: justify;"><font face="apercu, Arial, sans-serif"><span style="font-size: 14px;">Weâ€™d love to expand our business Internationally soon.</span></font></li><li style="text-align: justify;"><font face="apercu, Arial, sans-serif"><span style="font-size: 14px;">Easy Returns</span></font></li></ul><p style="text-align: justify; "><font face="apercu, Arial, sans-serif"><span style="font-size: 14px;">Bought an outfit but want to return it? We have a 3 days easy return policy. Please mail us at support@ecommercephp.com for more details.</span></font></p><p style="text-align: justify; "><font face="apercu, Arial, sans-serif"><span style="font-size: 14px;"><b>Dream Dresses for Every Occasion</b></span></font></p><p style="text-align: justify; "><font face="apercu, Arial, sans-serif"><span style="font-size: 14px;">Fashionys.com carries all carefully handpicked by our stylists. If youâ€™re interested in a particular model please mail us we will try our best to offer you the loved dress.</span></font></p><p style="text-align: justify; "><font face="apercu, Arial, sans-serif"><span style="font-size: 14px;"><b>Verified Security</b></span></font></p><p style="text-align: justify; "><font face="apercu, Arial, sans-serif"><span style="font-size: 14px;">All our transactions are Verified by Norton and with the highest standards of security. Plus, there\'s a lot to go around too through regular exciting offers and gifts, so spread the word and refer us to everyone from your family, friends and colleagues and get rewarded for it. And to top it all, you can share your user experience by posting reviews. Donâ€™t wait any longer Sign up with us now! start stalking, start buying and start loving and start Introducing the beauty in you.</span></font></p>\r\n', 'about-banner.jpg', 'Ecommerce PHP - About Us', 'about, about us, about fashion, about company, about ecommerce php project', 'Our goal has always been to get the best in you we brought a huge collection whether youâ€™re attending a party, wedding, and all those events that require a WOW dress.', 'FAQ', 'faq-banner.jpg', 'Fashionys.com - FAQ', '', '', 'Blog', 'blog-banner.jpg', 'Ecommerce - Blog', '', '', 'Contact Us', 'contact-banner.jpg', 'Fashionys.com - Contact', '', '', 'Photo Gallery', 'pgallery-banner.jpg', 'Ecommerce - Photo Gallery', '', '', 'Video Gallery', 'vgallery-banner.jpg', 'Ecommerce - Video Gallery', '', '');

-- Dumping structure for table ecommerceweb.tbl_payment
CREATE TABLE IF NOT EXISTS `tbl_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `payment_date` varchar(50) NOT NULL,
  `txnid` varchar(255) NOT NULL,
  `paid_amount` int(11) NOT NULL,
  `card_number` varchar(50) NOT NULL,
  `card_cvv` varchar(10) NOT NULL,
  `card_month` varchar(10) NOT NULL,
  `card_year` varchar(10) NOT NULL,
  `bank_transaction_info` text NOT NULL,
  `payment_method` varchar(20) NOT NULL,
  `payment_status` varchar(25) NOT NULL,
  `shipping_status` varchar(20) NOT NULL,
  `payment_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;

-- Dumping data for table ecommerceweb.tbl_payment: 0 rows
/*!40000 ALTER TABLE `tbl_payment` DISABLE KEYS */;
INSERT INTO `tbl_payment` (`id`, `customer_id`, `customer_name`, `customer_email`, `payment_date`, `txnid`, `paid_amount`, `card_number`, `card_cvv`, `card_month`, `card_year`, `bank_transaction_info`, `payment_method`, `payment_status`, `shipping_status`, `payment_id`) VALUES
	(56, 12, 'Foysal Bin Zaman', 'foysalbinzaman1@gmail.com', '2023-05-23 06:26:45', '', 10, '', '', '', '', 't123124asd', 'Bank Deposit', 'Completed', 'Completed', '1684848405');
/*!40000 ALTER TABLE `tbl_payment` ENABLE KEYS */;

-- Dumping structure for table ecommerceweb.tbl_photo
CREATE TABLE IF NOT EXISTS `tbl_photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `caption` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table ecommerceweb.tbl_photo: ~0 rows (approximately)

-- Dumping structure for table ecommerceweb.tbl_post
CREATE TABLE IF NOT EXISTS `tbl_post` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `post_title` varchar(255) NOT NULL,
  `post_slug` varchar(255) NOT NULL,
  `post_content` text NOT NULL,
  `post_date` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `total_view` int(11) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- Dumping data for table ecommerceweb.tbl_post: ~0 rows (approximately)

-- Dumping structure for table ecommerceweb.tbl_product
CREATE TABLE IF NOT EXISTS `tbl_product` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_name` varchar(255) NOT NULL,
  `p_old_price` varchar(10) NOT NULL,
  `p_current_price` varchar(10) NOT NULL,
  `p_qty` int(10) NOT NULL,
  `p_featured_photo` varchar(255) NOT NULL,
  `p_description` text NOT NULL,
  `p_short_description` text NOT NULL,
  `p_feature` text NOT NULL,
  `p_condition` text NOT NULL,
  `p_return_policy` text NOT NULL,
  `p_total_view` int(11) NOT NULL,
  `p_is_featured` int(1) NOT NULL,
  `p_is_active` int(1) NOT NULL,
  `ecat_id` int(11) NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=latin1;

-- Dumping data for table ecommerceweb.tbl_product: ~1 rows (approximately)
INSERT INTO `tbl_product` (`p_id`, `p_name`, `p_old_price`, `p_current_price`, `p_qty`, `p_featured_photo`, `p_description`, `p_short_description`, `p_feature`, `p_condition`, `p_return_policy`, `p_total_view`, `p_is_featured`, `p_is_active`, `ecat_id`) VALUES
	(104, 'Napa', '', '2', 95, 'product-featured-104.jpg', '<p><font color="#050505" face="Segoe UI Historic, Segoe UI, Helvetica, Arial, sans-serif"><span style="font-size: 15px; white-space: pre-wrap; background-color: rgb(228, 230, 235);">Paracetamol has analgesic and antipyretic properties with weak anti-inflammatory activity. Paracetamol (Acetaminophen) is thought</span></font></p><p><font color="#050505" face="Segoe UI Historic, Segoe UI, Helvetica, Arial, sans-serif"><span style="font-size: 15px; white-space: pre-wrap; background-color: rgb(228, 230, 235);"><br></span></font></p><p><font color="#050505" face="Segoe UI Historic, Segoe UI, Helvetica, Arial, sans-serif"><span style="font-size: 15px; white-space: pre-wrap; background-color: rgb(228, 230, 235);">to act primarily in the CNS, increasing the pain threshold by inhibiting both isoforms of cyclooxygenase, COX-1, COX-2, and COX- 3 enzymes involved in prostaglandin (PG) synthesis. Paracetamol is a para aminophenol derivative, has analgesic and antipyretic properties with weak anti-inflammatory activity. Paracetamol is one of the most widely used, safest and fast acting analgesic. It is well tolerated and free from various side effects of aspirin.</span></font></p>', '<p><span style="color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px; white-space: pre-wrap; background-color: rgb(228, 230, 235);">Paracetamol has analgesic and antipyretic properties with weak anti-inflammatory activity. Paracetamol (Acetaminophen) is thought</span><br></p>', '<p><span style="color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px; white-space: pre-wrap; background-color: rgb(228, 230, 235);">Paracetamol has analgesic and antipyretic properties with weak anti-inflammatory activity. Paracetamol (Acetaminophen) is thought</span><br></p>', '', '', 7, 1, 1, 81);

-- Dumping structure for table ecommerceweb.tbl_product_color
CREATE TABLE IF NOT EXISTS `tbl_product_color` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `color_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=268 DEFAULT CHARSET=latin1;

-- Dumping data for table ecommerceweb.tbl_product_color: ~0 rows (approximately)

-- Dumping structure for table ecommerceweb.tbl_product_photo
CREATE TABLE IF NOT EXISTS `tbl_product_photo` (
  `pp_id` int(11) NOT NULL AUTO_INCREMENT,
  `photo` varchar(255) NOT NULL,
  `p_id` int(11) NOT NULL,
  PRIMARY KEY (`pp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=latin1;

-- Dumping data for table ecommerceweb.tbl_product_photo: ~0 rows (approximately)

-- Dumping structure for table ecommerceweb.tbl_product_size
CREATE TABLE IF NOT EXISTS `tbl_product_size` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `size_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=448 DEFAULT CHARSET=latin1;

-- Dumping data for table ecommerceweb.tbl_product_size: ~0 rows (approximately)

-- Dumping structure for table ecommerceweb.tbl_rating
CREATE TABLE IF NOT EXISTS `tbl_rating` (
  `rt_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `rating` int(11) NOT NULL,
  PRIMARY KEY (`rt_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table ecommerceweb.tbl_rating: ~0 rows (approximately)

-- Dumping structure for table ecommerceweb.tbl_service
CREATE TABLE IF NOT EXISTS `tbl_service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `photo` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Dumping data for table ecommerceweb.tbl_service: ~2 rows (approximately)
INSERT INTO `tbl_service` (`id`, `title`, `content`, `photo`) VALUES
	(7, 'Fast Shipping', 'Items are shipped within 24 hours.', 'service-7.png');

-- Dumping structure for table ecommerceweb.tbl_settings
CREATE TABLE IF NOT EXISTS `tbl_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `logo` varchar(255) NOT NULL,
  `favicon` varchar(255) NOT NULL,
  `footer_about` text NOT NULL,
  `footer_copyright` text NOT NULL,
  `contact_address` text NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `contact_phone` varchar(255) NOT NULL,
  `contact_fax` varchar(255) NOT NULL,
  `contact_map_iframe` text NOT NULL,
  `receive_email` varchar(255) NOT NULL,
  `receive_email_subject` varchar(255) NOT NULL,
  `receive_email_thank_you_message` text NOT NULL,
  `forget_password_message` text NOT NULL,
  `total_recent_post_footer` int(10) NOT NULL,
  `total_popular_post_footer` int(10) NOT NULL,
  `total_recent_post_sidebar` int(11) NOT NULL,
  `total_popular_post_sidebar` int(11) NOT NULL,
  `total_featured_product_home` int(11) NOT NULL,
  `total_latest_product_home` int(11) NOT NULL,
  `total_popular_product_home` int(11) NOT NULL,
  `meta_title_home` text NOT NULL,
  `meta_keyword_home` text NOT NULL,
  `meta_description_home` text NOT NULL,
  `banner_login` varchar(255) NOT NULL,
  `banner_registration` varchar(255) NOT NULL,
  `banner_forget_password` varchar(255) NOT NULL,
  `banner_reset_password` varchar(255) NOT NULL,
  `banner_search` varchar(255) NOT NULL,
  `banner_cart` varchar(255) NOT NULL,
  `banner_checkout` varchar(255) NOT NULL,
  `banner_product_category` varchar(255) NOT NULL,
  `banner_blog` varchar(255) NOT NULL,
  `cta_title` varchar(255) NOT NULL,
  `cta_content` text NOT NULL,
  `cta_read_more_text` varchar(255) NOT NULL,
  `cta_read_more_url` varchar(255) NOT NULL,
  `cta_photo` varchar(255) NOT NULL,
  `featured_product_title` varchar(255) NOT NULL,
  `featured_product_subtitle` varchar(255) NOT NULL,
  `latest_product_title` varchar(255) NOT NULL,
  `latest_product_subtitle` varchar(255) NOT NULL,
  `popular_product_title` varchar(255) NOT NULL,
  `popular_product_subtitle` varchar(255) NOT NULL,
  `testimonial_title` varchar(255) NOT NULL,
  `testimonial_subtitle` varchar(255) NOT NULL,
  `testimonial_photo` varchar(255) NOT NULL,
  `blog_title` varchar(255) NOT NULL,
  `blog_subtitle` varchar(255) NOT NULL,
  `newsletter_text` text NOT NULL,
  `paypal_email` varchar(255) NOT NULL,
  `stripe_public_key` varchar(255) NOT NULL,
  `stripe_secret_key` varchar(255) NOT NULL,
  `bank_detail` text NOT NULL,
  `before_head` text NOT NULL,
  `after_body` text NOT NULL,
  `before_body` text NOT NULL,
  `home_service_on_off` int(11) NOT NULL,
  `home_welcome_on_off` int(11) NOT NULL,
  `home_featured_product_on_off` int(11) NOT NULL,
  `home_latest_product_on_off` int(11) NOT NULL,
  `home_popular_product_on_off` int(11) NOT NULL,
  `home_testimonial_on_off` int(11) NOT NULL,
  `home_blog_on_off` int(11) NOT NULL,
  `newsletter_on_off` int(11) NOT NULL,
  `ads_above_welcome_on_off` int(1) NOT NULL,
  `ads_above_featured_product_on_off` int(1) NOT NULL,
  `ads_above_latest_product_on_off` int(1) NOT NULL,
  `ads_above_popular_product_on_off` int(1) NOT NULL,
  `ads_above_testimonial_on_off` int(1) NOT NULL,
  `ads_category_sidebar_on_off` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table ecommerceweb.tbl_settings: ~0 rows (approximately)
INSERT INTO `tbl_settings` (`id`, `logo`, `favicon`, `footer_about`, `footer_copyright`, `contact_address`, `contact_email`, `contact_phone`, `contact_fax`, `contact_map_iframe`, `receive_email`, `receive_email_subject`, `receive_email_thank_you_message`, `forget_password_message`, `total_recent_post_footer`, `total_popular_post_footer`, `total_recent_post_sidebar`, `total_popular_post_sidebar`, `total_featured_product_home`, `total_latest_product_home`, `total_popular_product_home`, `meta_title_home`, `meta_keyword_home`, `meta_description_home`, `banner_login`, `banner_registration`, `banner_forget_password`, `banner_reset_password`, `banner_search`, `banner_cart`, `banner_checkout`, `banner_product_category`, `banner_blog`, `cta_title`, `cta_content`, `cta_read_more_text`, `cta_read_more_url`, `cta_photo`, `featured_product_title`, `featured_product_subtitle`, `latest_product_title`, `latest_product_subtitle`, `popular_product_title`, `popular_product_subtitle`, `testimonial_title`, `testimonial_subtitle`, `testimonial_photo`, `blog_title`, `blog_subtitle`, `newsletter_text`, `paypal_email`, `stripe_public_key`, `stripe_secret_key`, `bank_detail`, `before_head`, `after_body`, `before_body`, `home_service_on_off`, `home_welcome_on_off`, `home_featured_product_on_off`, `home_latest_product_on_off`, `home_popular_product_on_off`, `home_testimonial_on_off`, `home_blog_on_off`, `newsletter_on_off`, `ads_above_welcome_on_off`, `ads_above_featured_product_on_off`, `ads_above_latest_product_on_off`, `ads_above_popular_product_on_off`, `ads_above_testimonial_on_off`, `ads_category_sidebar_on_off`) VALUES
	(1, 'logo.png', 'favicon.png', '<p>Lorem ipsum dolor sit amet, omnis signiferumque in mei, mei ex enim concludaturque. Senserit salutandi euripidis no per, modus maiestatis scribentur est an.Â Ea suas pertinax has.</p>\r\n', 'COPYRIGHT 2023 BY HIGHFLIER', '', 'foysal.zaman@northsouth.edu', '+1610546578976541', '', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3650.095895828483!2d90.4243430759956!3d23.815188786284693!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c64bf3fba4cf%3A0x856818fd0e59c387!2sNorth%20South%20University%20Central%20Library!5e0!3m2!1sen!2sbd!4v1684837427578!5m2!1sen!2sbd" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', 'foysalbinzaman1@gmail.com', 'foysalbinzaman1@gmail.com', 'Thank you for sending email. We will contact you shortly.', 'A confirmation link is sent to your email address. You will get the password reset information in there.', 4, 4, 5, 5, 5, 6, 8, 'MediCare PHP', 'Online Pharmacy', 'Online Pharmacy in BD', 'banner_login.jpg', 'banner_registration.jpg', 'banner_forget_password.jpg', 'banner_reset_password.jpg', 'banner_search.jpg', 'banner_cart.jpg', 'banner_checkout.jpg', 'banner_product_category.jpg', 'banner_blog.jpg', 'Welcome To Our Ecommerce Website', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, \r\nat usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. ', 'Read More', '#', 'cta.jpg', 'Featured Products', 'Our list on Top Featured Products', 'Latest Products', 'Our list of recently added products', 'Popular Products', 'Popular products based on customer\'s choice', 'Testimonials', 'See what our clients tell about us', 'testimonial.jpg', 'Latest Blog', 'See all our latest articles and news from below', 'Sign-up to our newsletter for latest promotions and discounts.', 'admin@ecom.com', 'pk_test_0SwMWadgu8DwmEcPdUPRsZ7b', 'sk_test_TFcsLJ7xxUtpALbDo1L5c1PN', 'Bank Name: WestView Bank\r\nAccount Number: CA100270589600\r\nBranch Name: CA Branch\r\nCountry: USA', '', '<div id="fb-root"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.10&appId=323620764400430";\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, \'script\', \'facebook-jssdk\'));</script>', '<!--Start of Tawk.to Script-->\r\n<script type="text/javascript">\r\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n(function(){\r\nvar s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];\r\ns1.async=true;\r\ns1.src=\'https://embed.tawk.to/5ae370d7227d3d7edc24cb96/default\';\r\ns1.charset=\'UTF-8\';\r\ns1.setAttribute(\'crossorigin\',\'*\');\r\ns0.parentNode.insertBefore(s1,s0);\r\n})();\r\n</script>\r\n<!--End of Tawk.to Script-->', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

-- Dumping structure for table ecommerceweb.tbl_shipping_cost
CREATE TABLE IF NOT EXISTS `tbl_shipping_cost` (
  `shipping_cost_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `amount` varchar(20) NOT NULL,
  PRIMARY KEY (`shipping_cost_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table ecommerceweb.tbl_shipping_cost: ~0 rows (approximately)
INSERT INTO `tbl_shipping_cost` (`shipping_cost_id`, `country_id`, `amount`) VALUES
	(5, 246, '1');

-- Dumping structure for table ecommerceweb.tbl_shipping_cost_all
CREATE TABLE IF NOT EXISTS `tbl_shipping_cost_all` (
  `sca_id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` varchar(20) NOT NULL,
  PRIMARY KEY (`sca_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table ecommerceweb.tbl_shipping_cost_all: ~0 rows (approximately)

-- Dumping structure for table ecommerceweb.tbl_size
CREATE TABLE IF NOT EXISTS `tbl_size` (
  `size_id` int(11) NOT NULL AUTO_INCREMENT,
  `size_name` varchar(255) NOT NULL,
  PRIMARY KEY (`size_id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

-- Dumping data for table ecommerceweb.tbl_size: ~0 rows (approximately)

-- Dumping structure for table ecommerceweb.tbl_slider
CREATE TABLE IF NOT EXISTS `tbl_slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photo` varchar(255) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `button_text` varchar(255) NOT NULL,
  `button_url` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table ecommerceweb.tbl_slider: ~3 rows (approximately)
INSERT INTO `tbl_slider` (`id`, `photo`, `heading`, `content`, `button_text`, `button_url`, `position`) VALUES
	(1, 'slider-1.jpg', 'COVID-19 HELP', 'Online Shop for Medicine', '', '', 'Center'),
	(2, 'slider-2.jpg', 'Emergency Delivery', 'Emergency Delivery System ,24/7', '', '', 'Center'),
	(3, 'slider-3.png', '24 Hours Customer Support', '', 'Read More', '#', 'Right');

-- Dumping structure for table ecommerceweb.tbl_social
CREATE TABLE IF NOT EXISTS `tbl_social` (
  `social_id` int(11) NOT NULL AUTO_INCREMENT,
  `social_name` varchar(30) NOT NULL,
  `social_url` varchar(255) NOT NULL,
  `social_icon` varchar(30) NOT NULL,
  PRIMARY KEY (`social_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- Dumping data for table ecommerceweb.tbl_social: ~16 rows (approximately)
INSERT INTO `tbl_social` (`social_id`, `social_name`, `social_url`, `social_icon`) VALUES
	(1, 'Facebook', 'https://www.facebook.com/#', 'fa fa-facebook'),
	(2, 'Twitter', 'https://www.twitter.com/#', 'fa fa-twitter'),
	(3, 'LinkedIn', '', 'fa fa-linkedin'),
	(4, 'Google Plus', '', 'fa fa-google-plus'),
	(5, 'Pinterest', '', 'fa fa-pinterest'),
	(6, 'YouTube', 'https://www.youtube.com/#', 'fa fa-youtube'),
	(7, 'Instagram', 'https://www.instagram.com/#', 'fa fa-instagram'),
	(8, 'Tumblr', '', 'fa fa-tumblr'),
	(9, 'Flickr', '', 'fa fa-flickr'),
	(10, 'Reddit', '', 'fa fa-reddit'),
	(11, 'Snapchat', '', 'fa fa-snapchat'),
	(12, 'WhatsApp', 'https://www.whatsapp.com/#', 'fa fa-whatsapp'),
	(13, 'Quora', '', 'fa fa-quora'),
	(14, 'StumbleUpon', '', 'fa fa-stumbleupon'),
	(15, 'Delicious', '', 'fa fa-delicious'),
	(16, 'Digg', '', 'fa fa-digg');

-- Dumping structure for table ecommerceweb.tbl_subscriber
CREATE TABLE IF NOT EXISTS `tbl_subscriber` (
  `subs_id` int(11) NOT NULL AUTO_INCREMENT,
  `subs_email` varchar(255) NOT NULL,
  `subs_date` varchar(100) NOT NULL,
  `subs_date_time` varchar(100) NOT NULL,
  `subs_hash` varchar(255) NOT NULL,
  `subs_active` int(11) NOT NULL,
  PRIMARY KEY (`subs_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table ecommerceweb.tbl_subscriber: ~0 rows (approximately)

-- Dumping structure for table ecommerceweb.tbl_top_category
CREATE TABLE IF NOT EXISTS `tbl_top_category` (
  `tcat_id` int(11) NOT NULL AUTO_INCREMENT,
  `tcat_name` varchar(255) NOT NULL,
  `show_on_menu` int(1) NOT NULL,
  PRIMARY KEY (`tcat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- Dumping data for table ecommerceweb.tbl_top_category: ~5 rows (approximately)
INSERT INTO `tbl_top_category` (`tcat_id`, `tcat_name`, `show_on_menu`) VALUES
	(13, 'TABLET', 1),
	(14, 'CAPSUL', 1),
	(15, 'SYRUP', 1),
	(16, 'INECTION', 1),
	(17, 'ACCESORIES', 1);

-- Dumping structure for table ecommerceweb.tbl_user
CREATE TABLE IF NOT EXISTS `tbl_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `role` varchar(30) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table ecommerceweb.tbl_user: ~2 rows (approximately)
INSERT INTO `tbl_user` (`id`, `full_name`, `email`, `phone`, `password`, `photo`, `role`, `status`) VALUES
	(1, 'FOYSAL', 'admin@mail.com', '7777777777', 'd00f5d5217896fb7fd601412cb890830', 'user-1.jpg', 'Super Admin', 'Active'),
	(2, 'Christine', 'christine@mail.com', '4444444444', '81dc9bdb52d04dc20036dbd8313ed055', 'user-13.jpg', 'Admin', 'Active');

-- Dumping structure for table ecommerceweb.tbl_video
CREATE TABLE IF NOT EXISTS `tbl_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `iframe_code` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table ecommerceweb.tbl_video: ~3 rows (approximately)
INSERT INTO `tbl_video` (`id`, `title`, `iframe_code`) VALUES
	(1, 'Video 1', '<iframe width="560" height="315" src="https://www.youtube.com/embed/L3XAFSMdVWU" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
	(2, 'Video 2', '<iframe width="560" height="315" src="https://www.youtube.com/embed/sinQ06YzbJI" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>'),
	(4, 'Video 3', '<iframe width="560" height="315" src="https://www.youtube.com/embed/ViZNgU-Yt-Y" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
