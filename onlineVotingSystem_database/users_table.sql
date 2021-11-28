--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `mobileNumber` bigint DEFAULT NULL,
  `securityQuestion` varchar(200) DEFAULT NULL,
  `answer` varchar(200) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `adddress` varchar(500) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
INSERT INTO `users` VALUES ('Ashutosh Kumar choudhary','ashutoshpurnea4@gmail.com',7519982575,'What was your first car?','delhi','123456789','','','',''),('Manitosh Paul','manitosh@gmail.com',7862187781,'What city were you born in?','jamshedpur','98765','','','',''),('Randhir Kumar','randhir@gmail.com',7519982575,'What was your first car?','audi','98765','','','',''),('Santosh Kumar','san@gmail.com',8051444189,'What','amit','Santosh','','','',''),('Saurabh Choudhary','saurabh@gmail.com',7519982575,'What was your favorite movie?','sole','12345','','','','');
UNLOCK TABLES;