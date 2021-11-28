--
-- Table structure for table `candidate`
--

DROP TABLE IF EXISTS `candidate`;

CREATE TABLE `candidate` (
  `candidate_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `father_name` varchar(50) DEFAULT NULL,
  `dob` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `party_name` varchar(50) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `contact_no` bigint DEFAULT NULL,
  `pin_code` bigint DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `confirmpassword` varchar(50) DEFAULT NULL,
  `election_region` varchar(100) DEFAULT NULL,
  `securityQuestion` varchar(500) DEFAULT NULL,
  `securityAnswer` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`candidate_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=125 ;


--
-- Dumping data for table `candidate`
--

LOCK TABLES `candidate` WRITE;

INSERT INTO `candidate` VALUES (114,'Santosh','Kumar','Panchanand Choudhary','2021-09-23','Bihar','Purnia','BJP','Mahakal Chowk','ashu@gmail.com',9931358763,12345,'Ashu','M','178766','12345','Bihar','What is your favorite movie?','Sole'),(116,'Narendra','Modi','Mahesh','2021-05-25','Gujrat','Gandhinagar','BJP','Gujrat','narendramodi@gmail.com',9876543210,453289,'Narendr12','Male','123','123','Gujrat','What was your first car?','Audi'),(120,'Aman','Thakur','Rajak','2021-10-27','West Bengal','Durgapur','AAP','Durgapur','aman@gmail.com',5653425251,12345,'AMAN','Male','987','987','West Bengal','What is your favorite movie?','Durgapur'),(121,'Saurabh','Kumar','Ramanad kumar','2021-10-13','West Bengal','Durgapur','HUM','Durgapur','saurabh@gmail.com',9876543210,12345,'SAURABH12','Male','123','123','West Benagl','What was your first car?','Nano'),(122,'Aman','Raj','Amit','2021-10-21','Bihar','Purnia','CON','Bihar','aman@gmail.com',5653425243,565656,'Aman12','Male','123','123','Bihar','What was your favorite school teachers name?','Anil'),(123,'Manitosh','Paul','Rakesh','2021-10-20','Jharkhand','Jharkhand','CONG','Jharkhand','manitosh@gmail.com',7519982567,896552,'manitosh','Male','123','123','Jharkhand','What was your first car?','Nano'),(124,'Amit','Thakur','Rohan','2021-10-26','Bihar','Purnia','AAK','Gaya','amit@gmail.com',1234567890,343536,'Amit','Male','123','123','GAYA','What was your first car?','Nano');

UNLOCK TABLES;
