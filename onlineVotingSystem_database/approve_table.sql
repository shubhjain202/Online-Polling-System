--
-- Table structure for table `approve`
--

DROP TABLE IF EXISTS `approve`;
CREATE TABLE `approve` (
  `candidate_id` int NOT NULL,
  PRIMARY KEY (`candidate_id`),
  CONSTRAINT `approve_ibfk_1` FOREIGN KEY (`candidate_id`) REFERENCES `candidate` (`candidate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `approve`
--

LOCK TABLES `approve` WRITE;
INSERT INTO `approve` VALUES (116);
UNLOCK TABLES;