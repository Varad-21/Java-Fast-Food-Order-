create database fastfoodjsp;

use fastfoodjsp;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`username`)
);

INSERT INTO `admin` VALUES ('admin','admin');

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;

CREATE TABLE `contact` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `contact` varchar(15) DEFAULT NULL,
  `emailid` varchar(50) DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `message` varchar(300) DEFAULT NULL,
  `msgDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `isRead` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cid`)
);

INSERT INTO `contact` VALUES (1,'Mohit','7845122200','mohit@gmail.com','About Delivery','Hello, How much time delivered the food.','2021-12-02 13:07:35',NULL);

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `catid` int NOT NULL AUTO_INCREMENT,
  `catname` varchar(30) NOT NULL,
  PRIMARY KEY (`catid`)
);

INSERT INTO `category` VALUES (1,'Soup'),(2,'Pizza'),(3,'Vegeterian'),(4,'NonVegeterian'),(5,'South indian Food'),(6,'Paratha'),(7,'Coffee');

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `prodid` int NOT NULL AUTO_INCREMENT,
  `pname` varchar(100) NOT NULL,
  `pcat` varchar(20) NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `disc_price` decimal(16,2) NOT NULL,
  `photo` varchar(40) DEFAULT NULL,
  `remarks` varchar(20) NOT NULL,
  `descr` text NOT NULL,
  `instock` varchar(20) DEFAULT 'In Stock',
  `featured` varchar(5) NOT NULL DEFAULT 'Yes',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`prodid`)
);

INSERT INTO `products` VALUES (1,'Tomato Soup','Soup',80.00,80.00,'1.jpg','No','Hot Tomato Soup and testy','In Stock','Yes','2021-12-02 16:43:53'),(2,'Sweet Corn Soup','Soup',120.00,120.00,'2.jpg','No','Sweet corn soup is a Indo Chinese style soup made with mixed veggies, sweet corn kernels & pepper.','In Stock','Yes','2021-12-02 16:45:08'),(3,'Hot n Sour Soup','Soup',100.00,100.00,'3.jpg','No','Hot and Sour soup is a spicy and hot soup made with mixed fresh vegetables, mushrooms, spices and soy sauce.','In Stock','Yes','2021-12-02 16:46:22'),(4,'Hot Coffee','Coffee',50.00,50.00,'4.jpg','No','Hot Coffee','In Stock','Yes','2021-12-02 16:47:36'),(5,'Venilla Latte','Coffee',100.00,100.00,'5.jpg','No','Pour milk into a steaming pitcher and heat to 145 degrees F to 165 degrees F (65 to 70 degrees C) using the steaming wand.','In Stock','Yes','2021-12-02 16:48:48'),(6,'Black Coffee','Coffee',60.00,60.00,'6.jpg','No',' Black coffee is simply coffee that is normally brewed without the addition of additives such as sugar, milk, cream, or added flavors.','In Stock','Yes','2021-12-02 16:49:57'),(7,'Paneer Pizza','Pizza',150.00,150.00,'7.jpg','No','Paneer Pizza are testy and spicy','In Stock','Yes','2021-12-02 16:51:17'),(8,'Veg Pizza','Pizza',90.00,90.00,'8.jpg','No','Veg Pizza','In Stock','Yes','2021-12-02 16:51:53'),(9,'Mashroom Pizza','Soup',150.00,150.00,'9.jpg','No','Mashroom pizza are one of the best pizza.','In Stock','Yes','2021-12-02 16:52:59'),(10,'Aaloo Paratha','Paratha',10.00,10.00,'10.jpg','No','Aaloo Paratha are spicy and testy. This paratha per peace Rs. 10','In Stock','Yes','2021-12-02 16:54:18'),(11,'Govi Paratha','Soup',10.00,10.00,'11.jpg','No','This Items are mixed of Govi and aaloo.','In Stock','Yes','2021-12-02 16:55:24'),(12,'Methi Paratha','Paratha',15.00,15.00,'12.jpg','No','Methi Paratha are testy.','In Stock','Yes','2021-12-02 16:56:17'),(13,'Idli','South indian Food',55.00,55.00,'13.jpg','No','Idli is the one of the best fast food of South indian ','In Stock','Yes','2021-12-02 16:57:24'),(14,'Paper Dosa','South indian Food',120.00,120.00,'14.jpg','No','Paper dosa is made from a batter of raw rice, urad dal, rice flour and water which is ground into a smooth paste.','In Stock','Yes','2021-12-02 16:58:21'),(15,'Sada Dosa','Soup',100.00,100.00,'15.jpg','No','Sada dosa is a variation of the popular South Indian dosa, which has its origins in Tuluva Udupi cuisine of Karnataka.','In Stock','Yes','2021-12-02 16:59:16'),(16,'Uttapam','South indian Food',50.00,50.00,'16.jpg','No','Uthappam is a type of dosa from South India. In Tamil Nadu it is known as Uthappam, in Karnataka it is known as Uttappa. ','In Stock','Yes','2021-12-02 17:00:20'),(17,'Paneer Kulcha','Vegeterian',150.00,130.00,'17.jpg','Rs. 20 Discount','A quick munching snack recipe that you can prepare anytime during the day and enjoy with tomato ketchup or as it is, Paneer Kulcha.','In Stock','Yes','2021-12-02 17:02:37'),(18,'Veg Burger','Vegeterian',80.00,80.00,'18.jpg','No','Veg Burger','In Stock','Yes','2021-12-02 17:03:30'),(19,'Caumin','Vegeterian',30.00,30.00,'19.jpg','No','Caumin Spicy','In Stock','Yes','2021-12-02 17:04:31'),(20,'Kadahi Paneer','Vegeterian',130.00,130.00,'20.jpg','No','Kadai paneer are testy and spicy fast food ','In Stock','Yes','2021-12-02 17:05:25'),(21,'Egg Curry','NonVegeterian',100.00,100.00,'21.jpg','No','Egg Curry','In Stock','Yes','2021-12-02 17:06:06'),(22,'Egg Rolls','NonVegeterian',140.00,140.00,'22.jpg','No','In Rs.140, 4 peace items','In Stock','Yes','2021-12-02 17:07:08'),(23,'Mutton Fry','NonVegeterian',250.00,250.00,'23.jpg','No','Mutton fry are testy and seasonal items','In Stock','Yes','2021-12-02 17:07:53'),(24,'Butter Chicken','NonVegeterian',350.00,350.00,'24.jpg','No','Butter Chicken','In Stock','Yes','2021-12-02 17:09:10');
--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `userid` varchar(30) NOT NULL,
  `prodid` int NOT NULL,
  `qty` int NOT NULL,
  PRIMARY KEY (`userid`,`prodid`)
);

INSERT INTO `cart` VALUES ('rohit@gmail.com',11,7),('rohit@gmail.com',17,1);

--
-- Table structure for table `cust_address`
--

DROP TABLE IF EXISTS `cust_address`;

CREATE TABLE `cust_address` (
  `userid` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `mobile` char(10) NOT NULL,
  `pin` char(8) NOT NULL,
  `locality` varchar(30) NOT NULL,
  `state` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `adtype` varchar(15) NOT NULL,
  PRIMARY KEY (`userid`)
);

INSERT INTO `cust_address` VALUES ('abhi@gmail.com','Abhishek','784512012','462021','Bhopal','MP','Bhopal','Narela Sankari Bhopal','Home'),('pallavi@gmail.com','Pallavi','7845128956','462020','Bhopal','MP','Bhopal','Anand Nagar bhopal','Home');

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;

CREATE TABLE `feedback` (
  `fid` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `contact` varchar(10) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `description` varchar(150) DEFAULT NULL,
  `feedbackDate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`fid`)
);

INSERT INTO `feedback` VALUES (1,'Abhishek','7845120102','abhi@gmail.com','Narela Sankari Bhopal','Good Service and Good Behaviour or Delivery Boys','2021-12-02 17:17:54');

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `orderdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` varchar(30) NOT NULL,
  `order_status` varchar(200) NOT NULL DEFAULT 'Pending',
  `remarks` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
);

INSERT INTO `orders` VALUES (1,'2021-12-02 17:15:43','abhi@gmail.com','Confirmed',NULL),(2,'2021-12-02 17:19:42','pallavi@gmail.com','Confirmed',NULL);

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;

CREATE TABLE `order_details` (
  `order_id` int NOT NULL,
  `prodid` int NOT NULL,
  `qty` int NOT NULL
);

INSERT INTO `order_details` VALUES (1,2,1),(1,4,1),(2,7,1),(2,10,5);

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `uid` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `contact` varchar(10) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `img` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`uid`)
);

INSERT INTO `users` VALUES (1,'Abhishek','Pandey','1234','abhi@gmail.com','7845120102','Bhopal','Narela Sankari Bhopal','1.jpg'),(2,'Rohit','Raj','1234','rohit@gmail.com','9865254520','Bhopal','Indrapuri Bhopal','2.jpg'),(3,'Pallavi','Singh','1234','pallavi@gmail.com','7845205210','Bhopal','Raisen Road Anand Nagar Bhopal','3.jpg');

--
-- Temporary view structure for view `orderview`
--

DROP TABLE IF EXISTS `orderview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `orderview`  AS  select `o`.`order_id` AS `order_id`,`od`.`orderdate` AS `orderdate`,`p`.`pname` AS `pname`,`p`.`disc_price` AS `disc_price`,`o`.`qty` AS `qty`,`p`.`disc_price` * `o`.`qty` AS `amount` from ((`order_details` `o` join `products` `p` on(`p`.`prodid` = `o`.`prodid`)) join `orders` `od` on(`od`.`order_id` = `o`.`order_id`)) ;


