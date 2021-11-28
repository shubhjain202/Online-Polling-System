--
-- Table structure for table `result`
--

DROP TABLE IF EXISTS `result`;

CREATE TABLE `result` (
  `voter_id` bigint NOT NULL,
  `candidate_id` bigint DEFAULT NULL,
  PRIMARY KEY (`voter_id`),
  CONSTRAINT `result_ibfk_1` FOREIGN KEY (`voter_id`) REFERENCES `voter` (`voter_id`)
) ;

--
-- Dumping data for table `result`
--

LOCK TABLES `result` WRITE;
INSERT INTO `result` VALUES (1,114),(2,114),(4,114),(13,116);
UNLOCK TABLES;
