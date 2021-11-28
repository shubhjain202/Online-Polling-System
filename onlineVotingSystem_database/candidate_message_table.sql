--
-- Table structure for table `candidate_message`
--

DROP TABLE IF EXISTS `candidate_message`;
CREATE TABLE `candidate_message` (
  `candiadte_id` bigint NOT NULL,
  `message` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`candiadte_id`)
);

--
-- Dumping data for table `candidate_message`
--

LOCK TABLES `candidate_message` WRITE;
INSERT INTO `candidate_message` VALUES (3,' ssfds'),(114,' What is place of metting'),(120,' What is the date of election?'),(121,' what is revised date of election?'),(123,' What is my sign?'),(124,' GAGGHSGS  JHSHHA');
UNLOCK TABLES;