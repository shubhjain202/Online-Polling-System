--
-- Table structure for table `voter`
--

DROP TABLE IF EXISTS `voter`;
CREATE TABLE `voter` (
  `voter_id` bigint NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `father_name` varchar(50) DEFAULT NULL,
  `dob` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `contact_no` varchar(50) DEFAULT NULL,
  `pin_code` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `confirmpassword` varchar(50) DEFAULT NULL,
  `securityQuestion` varchar(500) DEFAULT NULL,
  `securityAnswer` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`voter_id`),
  UNIQUE KEY `username` (`username`)
) ;

--
-- Dumping data for table `voter`
--

LOCK TABLES `voter` WRITE;
INSERT INTO `voter` VALUES (1,'aaa','asas','Panchanand Choudhary','2021-09-17','asa','fveer','Gandhinagar Madhubani','ashutoshpurnea4@gmail.com','7519982575','1212','sasa','M','12345','asas','What was your favorite school teachers name?','Biharsda'),(2,'aaa','asas','purnia','','asa','fveer','dasdac','ashutoshpurnea4@gmail.com','7519982575','1212','alll','M','123','345','What was your favorite school teachers name?','asas'),(4,'aaa','asas','fgfgfg','2021-09-08','asa','fveer','dasdac','ashutoshpurnea4@gmail.com','7519982575','1212','Ak','M','1234','0987','What was your first car?','56325'),(5,'aaa','asas','asa','','asa','fveer','dasdac','ashutoshpurnea4@gmail.com','7519982575','1212','new','M','123','123','What is your date of birth?','as'),(6,'Ram','Jha','Shayama','2021-10-22','Bihar','Purnia','Noida','ram@gmail.com','1234567890','12345','KKKK','Female','321','321','What is your favorite movie?','Patna'),(7,'Raju','Kumar','Raman','2021-10-22','Bihar','Purnia','New Town','ram@gmail.com','9931358761234567890','12345','Ram1234','Male','12345','12345','What was your first car?','Audi'),(8,'Rahul','Rajak','Ram Das','2021-10-14','Bihar','Gaya','New Town','rahul@gmail.com','1234565433','987654','RAHUL','Male','123','123','What was your first car?','nano'),(9,'Raju','Kumar','Raman Jha','2021-10-28','Bihar','Gaya','Hall town','raju@gamil.com','1234567890','805433','RAJU12','Male','123','123','What was your first car?','AUDI'),(10,'Amit','Raj','Rohan ','2021-10-26','West Bengal','Durgapur','Durgapur','amit@gmail.com','1234567890','12345','AMIT','Male','123','123','What is your favorite movie?','Sole'),(11,'Rakesh ','Kumar','Ramesh','2021-10-11','Bihar','Purnia','Bihar','rakesh@gmail.com','1234567890','343456','RAKESH12','Male','123','123','What was your first car?','Nano'),(12,'Rohan','Das','Rakesh','2021-10-26','Goa','Goa','Goa','Rohan@gmail.com','987654908','89765','rohan','Male','123','123','What is your favorite movie?','goa'),(13,'Randhir','Kumar','Rakesh','2021-10-18','Bihar','Gaya','Gaya','randhir@gmail.com','123456789','345678','Randhir','Male','123','123','What was your first car?','Nano');
UNLOCK TABLES;