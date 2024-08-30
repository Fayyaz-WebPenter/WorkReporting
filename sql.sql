-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for workreporting
DROP DATABASE IF EXISTS `workreporting`;
CREATE DATABASE IF NOT EXISTS `workreporting` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `workreporting`;

-- Dumping structure for table workreporting.user_tbl
DROP TABLE IF EXISTS `user_tbl`;
CREATE TABLE IF NOT EXISTS `user_tbl` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fullname` varchar(50) DEFAULT NULL,
  `user_des` varchar(50) DEFAULT NULL,
  `user_scale` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `user_res` text,
  `user_id` varchar(50) DEFAULT NULL,
  `user_pass` varchar(50) DEFAULT NULL,
  `user_role` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table workreporting.user_tbl: ~5 rows (approximately)
REPLACE INTO `user_tbl` (`id`, `fullname`, `user_des`, `user_scale`, `user_res`, `user_id`, `user_pass`, `user_role`) VALUES
	(1, 'Fayyaz', 'Web Devolper', 'BPS-14', 'Powerful, extensible, and feature-packed frontend toolkit. Build and customize with Sass, utilize prebuilt grid system and components, and bring projects to life with powerful JavaScript plugins.\r\n\r\n\r\n', 'ahmad', 'Khan@201', '0'),
	(2, 'ali', 'Manager', 'BS_12', 'Powerful, extensible, and feature-packed frontend toolkit. Build and customize with Sass, utilize prebuilt grid system and components, and bring projects to life with powerful JavaScript plugins.\r\n\r\n\r\n', 'ali', '123456', '1'),
	(24, 'shafqat', 'Develpor', 'BPS-11', '\r\nIn the mPDF library, the Output() method is used to generate and output a PDF file. The Output() method has two parameters: the first one is the filename, and the second one specifies the destination.\r\n\r\nThe "I" parameter stands for "Inline" and it tells mPDF to display the PDF file directly in the b', 'shafqat', 'Khan@201', '0'),
	(25, 'sajid', 'Manager', 'BPS-14', 'Use Output Buffering: If you need to include files or generate output before sending headers, you can use output buffering. Start buffering at the beginning of your script:', 'sajid', '123456', '0'),
	(26, 'zahid', 'Web Devolper', 'BPS-09', 'Use Output Buffering: If you need to include files or generate output before sending headers, you can use output buffering. Start buffering at the beginning of your script:', 'zahid', 'Khan@201', '1');

-- Dumping structure for table workreporting.work_tbl
DROP TABLE IF EXISTS `work_tbl`;
CREATE TABLE IF NOT EXISTS `work_tbl` (
  `employe_id` int NOT NULL AUTO_INCREMENT,
  `work_desc` varchar(50) DEFAULT NULL,
  `work_date` date DEFAULT NULL,
  PRIMARY KEY (`employe_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table workreporting.work_tbl: ~2 rows (approximately)
REPLACE INTO `work_tbl` (`employe_id`, `work_desc`, `work_date`) VALUES
	(1, 'qqqqqqqqqqqqqqqq', '2024-08-30'),
	(2, 'my work store dear', '2024-08-30');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
