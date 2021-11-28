--
-- Table structure for table `voter_message`
--

DROP TABLE IF EXISTS `voter_message`;
CREATE TABLE `voter_message` (
  `voter_id` bigint NOT NULL,
  `message` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`voter_id`)
) ;

--
-- Dumping data for table `voter_message`
--

LOCK TABLES `voter_message` WRITE;
INSERT INTO `voter_message` VALUES (1,' What is my name'),(2,' What is your name'),(3,' sdsdsd'),(4,' Ashutosh'),(8,' Which is date of election?'),(9,' WHAT IS DATE OF ELLECTION'),(10,'  What is region of election?'),(11,'jasbjbs'),(12,' What is name of upcoming election?'),(13,' What is name of elction????'),(114,' Ashutosh Kumar Choudhary'),(121,' What is my name');
UNLOCK TABLES;