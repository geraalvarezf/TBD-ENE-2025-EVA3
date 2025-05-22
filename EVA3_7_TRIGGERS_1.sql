CREATE DEFINER=`root`@`localhost` TRIGGER `clientes_BEFORE_INSERT` BEFORE INSERT ON `clientes` FOR EACH ROW BEGIN
	set new.rfc = crear_rfc();
END