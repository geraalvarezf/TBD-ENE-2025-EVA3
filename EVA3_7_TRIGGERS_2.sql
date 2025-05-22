CREATE DEFINER=`root`@`localhost` TRIGGER `clientes_AFTER_INSERT` AFTER INSERT ON `clientes` FOR EACH ROW BEGIN
	insert into bitacora(nombre) value(new.nombre);
END