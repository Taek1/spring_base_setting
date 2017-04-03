

CREATE DATABASE IF NOT EXISTS `base` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `base`;


CREATE TABLE IF NOT EXISTS `users` (
  `u_id` int(11) NOT NULL,
  `u_userid` varchar(50) NOT NULL,
  `u_pass` varchar(100) NOT NULL,
  `u_permission` varchar(50) NOT NULL,
  `u_enabled` int(3) NOT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`u_id`, `u_userid`, `u_pass`, `u_permission`, `u_enabled`) VALUES
	(0, 'test', '$2a$10$RDNlNax466SZYijBcCzqRekpuR4Aj5YQNVIAHLAM7TVAP6omYERp2', 'ROLE_MASTER', 1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
