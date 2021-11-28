--
-- Table structure for table `signup`
--

DROP TABLE IF EXISTS `signup`;
CREATE TABLE `signup` (
  `First_name` varchar(30) DEFAULT NULL,
  `Last_Name` varchar(20) DEFAULT NULL,
  `Email` varchar(40) DEFAULT NULL,
  `Password` varchar(20) DEFAULT NULL,
  `D_O_B` varchar(20) DEFAULT NULL,
  `M_o_b` bigint DEFAULT NULL,
  `Fathers_name` varchar(30) DEFAULT NULL,
  `Gender` varchar(2) DEFAULT NULL,
  `Blood_group` varchar(2) DEFAULT NULL,
  `Board10` varchar(5) DEFAULT NULL,
  `Marks10` int DEFAULT NULL,
  `Year10` int DEFAULT NULL,
  `Board12` varchar(5) DEFAULT NULL,
  `Marks12` int DEFAULT NULL,
  `Year12` int DEFAULT NULL,
  `Courses` varchar(20) DEFAULT NULL,
  `College_name` varchar(30) DEFAULT NULL
) ;

--
-- Dumping data for table `signup`
--

LOCK TABLES `signup` WRITE;

UNLOCK TABLES;