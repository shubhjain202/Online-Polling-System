--
-- Table structure for table `promise`
--

DROP TABLE IF EXISTS `promise`;
CREATE TABLE `promise` (
  `candidate_id` bigint NOT NULL,
  `promises` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`candidate_id`)
) ;

--
-- Dumping data for table `promise`
--

LOCK TABLES `promise` WRITE;
INSERT INTO `promise` VALUES (3,' Free water'),(4,' 1.Free Electricity \r\n2.Youth Job\r\n3.Free wifi (Life time tik tok dekho or dance karo)'),(114,' Free electricity'),(120,' Free water Supply'),(121,' Free electricity\r\nWater supply'),(123,' Free wifi in whole city'),(124,' Free land for poor');
UNLOCK TABLES;