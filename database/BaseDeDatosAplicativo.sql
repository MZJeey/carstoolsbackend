-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: carstoolscr
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bitacora`
--

DROP TABLE IF EXISTS `bitacora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bitacora` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario_id` int DEFAULT NULL,
  `accion` text,
  `ip_usuario` varchar(45) DEFAULT NULL,
  `fecha` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `bitacora_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitacora`
--

LOCK TABLES `bitacora` WRITE;
/*!40000 ALTER TABLE `bitacora` DISABLE KEYS */;
/*!40000 ALTER TABLE `bitacora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carrito`
--

DROP TABLE IF EXISTS `carrito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carrito` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario_id` int DEFAULT NULL,
  `producto_id` int DEFAULT NULL,
  `cantidad` int NOT NULL,
  `guardado_en` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `usuario_id` (`usuario_id`),
  KEY `producto_id` (`producto_id`),
  CONSTRAINT `carrito_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`),
  CONSTRAINT `carrito_ibfk_2` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrito`
--

LOCK TABLES `carrito` WRITE;
/*!40000 ALTER TABLE `carrito` DISABLE KEYS */;
INSERT INTO `carrito` VALUES (2,1,4,2,'2025-08-10 04:41:40'),(6,6,6,2,'2025-08-17 00:53:22'),(7,6,91,1,'2025-08-17 04:39:32'),(8,6,91,1,'2025-08-17 04:42:23'),(9,6,6,1,'2025-08-17 04:43:54'),(10,4,8,1,'2025-08-17 15:53:16'),(11,4,6,1,'2025-08-17 21:45:26'),(12,4,8,1,'2025-08-17 21:45:26'),(13,4,89,1,'2025-08-18 01:58:48'),(14,4,91,1,'2025-08-18 01:58:48'),(15,4,91,1,'2025-08-18 02:07:05'),(16,4,91,1,'2025-08-18 02:11:30'),(17,4,91,1,'2025-08-18 02:12:32'),(18,4,90,1,'2025-08-18 02:14:53'),(19,4,89,1,'2025-08-18 02:16:17'),(20,4,89,1,'2025-08-18 02:20:01'),(21,4,89,2,'2025-08-18 02:22:44'),(22,1,5,2,'2025-08-24 23:24:37'),(23,1,5,2,'2025-08-24 23:25:43'),(24,7,91,1,'2025-08-25 03:15:34'),(25,7,8,1,'2025-08-25 03:15:34'),(26,7,3,1,'2025-08-25 03:15:34'),(27,7,91,1,'2025-08-25 03:21:48'),(28,7,3,1,'2025-08-25 03:21:48'),(29,7,8,1,'2025-08-25 03:21:48'),(30,7,8,1,'2025-08-25 03:22:49'),(31,7,3,1,'2025-08-25 03:22:49'),(32,7,91,1,'2025-08-25 03:22:49'),(33,7,91,1,'2025-08-25 03:28:16'),(34,7,8,1,'2025-08-25 03:28:16'),(35,7,3,1,'2025-08-25 03:28:16'),(36,7,91,1,'2025-08-25 03:36:20'),(37,7,3,1,'2025-08-25 03:36:20'),(38,4,7,1,'2025-08-26 19:10:37'),(39,4,91,1,'2025-08-26 20:12:01'),(40,4,91,1,'2025-08-26 20:23:58'),(41,4,91,2,'2025-08-26 20:26:05'),(42,4,91,2,'2025-08-26 20:33:48'),(43,4,91,2,'2025-08-26 20:34:09'),(44,4,91,2,'2025-08-26 20:34:27'),(45,4,91,2,'2025-08-26 20:39:47'),(46,4,91,2,'2025-08-26 20:44:28'),(47,4,91,2,'2025-08-26 20:47:15'),(48,4,91,2,'2025-08-26 20:52:45'),(49,4,89,1,'2025-08-26 23:38:36'),(50,7,90,1,'2025-08-27 01:25:49');
/*!40000 ALTER TABLE `carrito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (6,'Accesorios de Motor'),(4,'Aceleración'),(8,'Coolant'),(11,'Electronica'),(7,'Empaques'),(10,'Escobillas'),(1,'Fajas'),(3,'Frenos'),(5,'Inyectores'),(9,'Luces'),(12,'Suspension'),(2,'Turbos');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comparacion`
--

DROP TABLE IF EXISTS `comparacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comparacion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario_id` int NOT NULL,
  `producto_original_id` int NOT NULL,
  `producto_generico_id` int NOT NULL,
  `precio_diferencia` decimal(10,2) DEFAULT NULL,
  `fecha` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `usuario_id` (`usuario_id`),
  KEY `producto_original_id` (`producto_original_id`),
  KEY `producto_generico_id` (`producto_generico_id`),
  CONSTRAINT `comparacion_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`),
  CONSTRAINT `comparacion_ibfk_2` FOREIGN KEY (`producto_original_id`) REFERENCES `producto` (`id`),
  CONSTRAINT `comparacion_ibfk_3` FOREIGN KEY (`producto_generico_id`) REFERENCES `producto` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comparacion`
--

LOCK TABLES `comparacion` WRITE;
/*!40000 ALTER TABLE `comparacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `comparacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compatibilidadvin`
--

DROP TABLE IF EXISTS `compatibilidadvin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compatibilidadvin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `producto_id` int NOT NULL,
  `vin_pattern` varchar(17) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `producto_id` (`producto_id`),
  CONSTRAINT `compatibilidadvin_ibfk_1` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compatibilidadvin`
--

LOCK TABLES `compatibilidadvin` WRITE;
/*!40000 ALTER TABLE `compatibilidadvin` DISABLE KEYS */;
/*!40000 ALTER TABLE `compatibilidadvin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_factura`
--

DROP TABLE IF EXISTS `detalle_factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_factura` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `factura_id` int NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `cantidad` int NOT NULL,
  `precio_unitario` decimal(12,2) NOT NULL,
  `subtotal` decimal(12,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `factura_id` (`factura_id`),
  CONSTRAINT `detalle_factura_ibfk_1` FOREIGN KEY (`factura_id`) REFERENCES `factura` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_factura`
--

LOCK TABLES `detalle_factura` WRITE;
/*!40000 ALTER TABLE `detalle_factura` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_factura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detallepedido`
--

DROP TABLE IF EXISTS `detallepedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detallepedido` (
  `pedido_id` int NOT NULL,
  `producto_id` int NOT NULL,
  `cantidad` int NOT NULL,
  `precio_unitario` decimal(10,2) NOT NULL,
  PRIMARY KEY (`pedido_id`,`producto_id`),
  KEY `producto_id` (`producto_id`),
  CONSTRAINT `detallepedido_ibfk_1` FOREIGN KEY (`pedido_id`) REFERENCES `pedido` (`id`),
  CONSTRAINT `detallepedido_ibfk_2` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detallepedido`
--

LOCK TABLES `detallepedido` WRITE;
/*!40000 ALTER TABLE `detallepedido` DISABLE KEYS */;
INSERT INTO `detallepedido` VALUES (1,2,2,300.00),(2,1,2,15.99),(2,3,1,120.50),(3,1,2,15.99),(3,3,1,120.50),(4,6,4,350.00),(5,1,1,5000.00),(6,3,2,4000.00),(8,91,1,2000.00),(9,6,1,350.00),(10,6,1,350.00),(24,6,1,350.00),(25,6,1,350.00),(36,6,1,80000.00);
/*!40000 ALTER TABLE `detallepedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direccion`
--

DROP TABLE IF EXISTS `direccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `direccion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario_id` int NOT NULL,
  `provincia` varchar(100) DEFAULT NULL,
  `canton` varchar(100) DEFAULT NULL,
  `distrito` varchar(100) DEFAULT NULL,
  `detalle` text,
  PRIMARY KEY (`id`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `direccion_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direccion`
--

LOCK TABLES `direccion` WRITE;
/*!40000 ALTER TABLE `direccion` DISABLE KEYS */;
/*!40000 ALTER TABLE `direccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estadistica_producto`
--

DROP TABLE IF EXISTS `estadistica_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estadistica_producto` (
  `producto_id` int NOT NULL,
  `visitas` int DEFAULT '0',
  `ventas` int DEFAULT '0',
  `promedio_estrellas` decimal(3,2) DEFAULT '0.00',
  PRIMARY KEY (`producto_id`),
  CONSTRAINT `estadistica_producto_ibfk_1` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estadistica_producto`
--

LOCK TABLES `estadistica_producto` WRITE;
/*!40000 ALTER TABLE `estadistica_producto` DISABLE KEYS */;
/*!40000 ALTER TABLE `estadistica_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `etiqueta`
--

DROP TABLE IF EXISTS `etiqueta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `etiqueta` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `etiqueta`
--

LOCK TABLES `etiqueta` WRITE;
/*!40000 ALTER TABLE `etiqueta` DISABLE KEYS */;
INSERT INTO `etiqueta` VALUES (8,'Accesorios'),(5,'Aceites y Lubricantes'),(7,'Baterías'),(15,'Carrocería'),(14,'Eléctrico'),(6,'Filtros'),(2,'Frenos'),(16,'Genericos'),(9,'Herramientas'),(4,'Luces'),(1,'Motor'),(13,'Neumáticos'),(11,'Nuevos'),(10,'Ofertas'),(12,'Popular'),(3,'Suspensión');
/*!40000 ALTER TABLE `etiqueta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factura`
--

DROP TABLE IF EXISTS `factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `factura` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pedido_id` int DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `total` decimal(12,2) NOT NULL DEFAULT '0.00',
  `xml_factura` longtext NOT NULL,
  `metodo_pago` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pedido_id` (`pedido_id`),
  CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`pedido_id`) REFERENCES `pedido` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura`
--

LOCK TABLES `factura` WRITE;
/*!40000 ALTER TABLE `factura` DISABLE KEYS */;
INSERT INTO `factura` VALUES (1,NULL,'2025-08-17 04:18:31',2260.00,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<Factura>\r\n  <Encabezado>\r\n    <PedidoId/>\r\n    <Fecha>2025-08-17T06:18:31+02:00</Fecha>\r\n    <MetodoPago>tarjeta_credito</MetodoPago>\r\n    <Moneda>CRC</Moneda>\r\n    <Total>2260.00</Total>\r\n  </Encabezado>\r\n  <Detalle>\r\n    <LineaDetalle>\r\n      <Numero>1</Numero>\r\n      <ProductoId>91</ProductoId>\r\n      <Descripcion>Pruebas</Descripcion>\r\n      <Cantidad>1.00</Cantidad>\r\n      <PrecioUnitario>2260.00</PrecioUnitario>\r\n      <Subtotal>2260.00</Subtotal>\r\n    </LineaDetalle>\r\n  </Detalle>\r\n</Factura>','tarjeta_credito'),(2,NULL,'2025-08-17 04:43:03',2260.00,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<Factura>\r\n  <Encabezado>\r\n    <PedidoId/>\r\n    <Fecha>2025-08-17T06:43:03+02:00</Fecha>\r\n    <MetodoPago>tarjeta_credito</MetodoPago>\r\n    <Moneda>CRC</Moneda>\r\n    <Total>2260.00</Total>\r\n  </Encabezado>\r\n  <Detalle>\r\n    <LineaDetalle>\r\n      <Numero>1</Numero>\r\n      <ProductoId>91</ProductoId>\r\n      <Descripcion>Pruebas</Descripcion>\r\n      <Cantidad>1.00</Cantidad>\r\n      <PrecioUnitario>2260.00</PrecioUnitario>\r\n      <Subtotal>2260.00</Subtotal>\r\n    </LineaDetalle>\r\n  </Detalle>\r\n</Factura>','tarjeta_credito'),(3,NULL,'2025-08-17 04:49:27',395.50,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<Factura>\r\n  <Encabezado>\r\n    <PedidoId/>\r\n    <Fecha>2025-08-17T06:49:27+02:00</Fecha>\r\n    <MetodoPago>tarjeta_credito</MetodoPago>\r\n    <Moneda>CRC</Moneda>\r\n    <Total>395.50</Total>\r\n  </Encabezado>\r\n  <Detalle>\r\n    <LineaDetalle>\r\n      <Numero>1</Numero>\r\n      <ProductoId>6</ProductoId>\r\n      <Descripcion>Bomba de aceite</Descripcion>\r\n      <Cantidad>1.00</Cantidad>\r\n      <PrecioUnitario>395.50</PrecioUnitario>\r\n      <Subtotal>395.50</Subtotal>\r\n    </LineaDetalle>\r\n  </Detalle>\r\n</Factura>','tarjeta_credito'),(4,NULL,'2025-08-17 15:57:17',13559.99,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<Factura>\n  <Encabezado>\n    <PedidoId/>\n    <Fecha>2025-08-17T17:57:17+02:00</Fecha>\n    <MetodoPago>tarjeta_credito</MetodoPago>\n    <Moneda>CRC</Moneda>\n    <Total>13559.99</Total>\n  </Encabezado>\n  <Detalle>\n    <LineaDetalle>\n      <Numero>1</Numero>\n      <ProductoId>8</ProductoId>\n      <Descripcion>Calipers de freno delanteros</Descripcion>\n      <Cantidad>1.00</Cantidad>\n      <PrecioUnitario>13559.99</PrecioUnitario>\n      <Subtotal>13559.99</Subtotal>\n    </LineaDetalle>\n  </Detalle>\n</Factura>','tarjeta_credito'),(5,NULL,'2025-08-17 21:46:39',13955.49,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<Factura>\n  <Encabezado>\n    <PedidoId/>\n    <Fecha>2025-08-17T23:46:39+02:00</Fecha>\n    <MetodoPago>tarjeta_credito</MetodoPago>\n    <Moneda>CRC</Moneda>\n    <Total>13955.49</Total>\n  </Encabezado>\n  <Detalle>\n    <LineaDetalle>\n      <Numero>1</Numero>\n      <ProductoId>8</ProductoId>\n      <Descripcion>Calipers de freno delanteros</Descripcion>\n      <Cantidad>1.00</Cantidad>\n      <PrecioUnitario>13559.99</PrecioUnitario>\n      <Subtotal>13559.99</Subtotal>\n    </LineaDetalle>\n    <LineaDetalle>\n      <Numero>2</Numero>\n      <ProductoId>6</ProductoId>\n      <Descripcion>Bomba de aceite</Descripcion>\n      <Cantidad>1.00</Cantidad>\n      <PrecioUnitario>395.50</PrecioUnitario>\n      <Subtotal>395.50</Subtotal>\n    </LineaDetalle>\n  </Detalle>\n</Factura>','tarjeta_credito'),(6,NULL,'2025-08-18 01:59:30',44070.00,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<Factura>\n  <Encabezado>\n    <PedidoId/>\n    <Fecha>2025-08-18T03:59:30+02:00</Fecha>\n    <MetodoPago>efectivo</MetodoPago>\n    <Moneda>CRC</Moneda>\n    <Total>44070.00</Total>\n  </Encabezado>\n  <Detalle>\n    <LineaDetalle>\n      <Numero>1</Numero>\n      <ProductoId>91</ProductoId>\n      <Descripcion>Luces Led</Descripcion>\n      <Cantidad>1.00</Cantidad>\n      <PrecioUnitario>15820.00</PrecioUnitario>\n      <Subtotal>15820.00</Subtotal>\n    </LineaDetalle>\n    <LineaDetalle>\n      <Numero>2</Numero>\n      <ProductoId>89</ProductoId>\n      <Descripcion>Soporte de motor</Descripcion>\n      <Cantidad>1.00</Cantidad>\n      <PrecioUnitario>28250.00</PrecioUnitario>\n      <Subtotal>28250.00</Subtotal>\n    </LineaDetalle>\n  </Detalle>\n</Factura>','efectivo'),(7,NULL,'2025-08-18 02:07:12',15820.00,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<Factura>\n  <Encabezado>\n    <PedidoId/>\n    <Fecha>2025-08-18T04:07:12+02:00</Fecha>\n    <MetodoPago>efectivo</MetodoPago>\n    <Moneda>CRC</Moneda>\n    <Total>15820.00</Total>\n  </Encabezado>\n  <Detalle>\n    <LineaDetalle>\n      <Numero>1</Numero>\n      <ProductoId>91</ProductoId>\n      <Descripcion>Luces Led</Descripcion>\n      <Cantidad>1.00</Cantidad>\n      <PrecioUnitario>15820.00</PrecioUnitario>\n      <Subtotal>15820.00</Subtotal>\n    </LineaDetalle>\n  </Detalle>\n</Factura>','efectivo'),(8,NULL,'2025-08-18 02:12:42',15820.00,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<Factura>\n  <Encabezado>\n    <PedidoId/>\n    <Fecha>2025-08-18T04:12:42+02:00</Fecha>\n    <MetodoPago>efectivo</MetodoPago>\n    <Moneda>CRC</Moneda>\n    <Total>15820.00</Total>\n  </Encabezado>\n  <Detalle>\n    <LineaDetalle>\n      <Numero>1</Numero>\n      <ProductoId>91</ProductoId>\n      <Descripcion>Luces Led</Descripcion>\n      <Cantidad>1.00</Cantidad>\n      <PrecioUnitario>15820.00</PrecioUnitario>\n      <Subtotal>15820.00</Subtotal>\n    </LineaDetalle>\n  </Detalle>\n</Factura>','efectivo'),(9,NULL,'2025-08-18 02:15:06',1276900.00,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<Factura>\n  <Encabezado>\n    <PedidoId/>\n    <Fecha>2025-08-18T04:15:05+02:00</Fecha>\n    <MetodoPago>efectivo</MetodoPago>\n    <Moneda>CRC</Moneda>\n    <Total>1276900.00</Total>\n  </Encabezado>\n  <Detalle>\n    <LineaDetalle>\n      <Numero>1</Numero>\n      <ProductoId>90</ProductoId>\n      <Descripcion>Computadora</Descripcion>\n      <Cantidad>1.00</Cantidad>\n      <PrecioUnitario>1276900.00</PrecioUnitario>\n      <Subtotal>1276900.00</Subtotal>\n    </LineaDetalle>\n  </Detalle>\n</Factura>','efectivo'),(10,NULL,'2025-08-18 02:16:27',28250.00,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<Factura>\n  <Encabezado>\n    <PedidoId/>\n    <Fecha>2025-08-18T04:16:27+02:00</Fecha>\n    <MetodoPago>efectivo</MetodoPago>\n    <Moneda>CRC</Moneda>\n    <Total>28250.00</Total>\n  </Encabezado>\n  <Detalle>\n    <LineaDetalle>\n      <Numero>1</Numero>\n      <ProductoId>89</ProductoId>\n      <Descripcion>Soporte de motor</Descripcion>\n      <Cantidad>1.00</Cantidad>\n      <PrecioUnitario>28250.00</PrecioUnitario>\n      <Subtotal>28250.00</Subtotal>\n    </LineaDetalle>\n  </Detalle>\n</Factura>','efectivo'),(11,NULL,'2025-08-18 02:20:11',28250.00,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<Factura>\n  <Encabezado>\n    <PedidoId/>\n    <Fecha>2025-08-18T04:20:11+02:00</Fecha>\n    <MetodoPago>efectivo</MetodoPago>\n    <Moneda>CRC</Moneda>\n    <Total>28250.00</Total>\n  </Encabezado>\n  <Detalle>\n    <LineaDetalle>\n      <Numero>1</Numero>\n      <ProductoId>89</ProductoId>\n      <Descripcion>Soporte de motor</Descripcion>\n      <Cantidad>1.00</Cantidad>\n      <PrecioUnitario>28250.00</PrecioUnitario>\n      <Subtotal>28250.00</Subtotal>\n    </LineaDetalle>\n  </Detalle>\n</Factura>','efectivo'),(12,NULL,'2025-08-18 02:23:01',56500.00,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<Factura>\n  <Encabezado>\n    <PedidoId/>\n    <Fecha>2025-08-18T04:23:01+02:00</Fecha>\n    <MetodoPago>efectivo</MetodoPago>\n    <Moneda>CRC</Moneda>\n    <Total>56500.00</Total>\n  </Encabezado>\n  <Detalle>\n    <LineaDetalle>\n      <Numero>1</Numero>\n      <ProductoId>89</ProductoId>\n      <Descripcion>Soporte de motor</Descripcion>\n      <Cantidad>2.00</Cantidad>\n      <PrecioUnitario>28250.00</PrecioUnitario>\n      <Subtotal>56500.00</Subtotal>\n    </LineaDetalle>\n  </Detalle>\n</Factura>','efectivo'),(13,NULL,'2025-08-25 03:15:43',59686.59,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<Factura>\n  <Encabezado>\n    <PedidoId/>\n    <Fecha>2025-08-25T05:15:43+02:00</Fecha>\n    <MetodoPago>efectivo</MetodoPago>\n    <Moneda>CRC</Moneda>\n    <Total>59686.59</Total>\n  </Encabezado>\n  <Detalle>\n    <LineaDetalle>\n      <Numero>1</Numero>\n      <ProductoId>91</ProductoId>\n      <Descripcion>Luces Led</Descripcion>\n      <Cantidad>1.00</Cantidad>\n      <PrecioUnitario>17876.60</PrecioUnitario>\n      <Subtotal>17876.60</Subtotal>\n    </LineaDetalle>\n    <LineaDetalle>\n      <Numero>2</Numero>\n      <ProductoId>8</ProductoId>\n      <Descripcion>Calipers de freno delanteros</Descripcion>\n      <Cantidad>1.00</Cantidad>\n      <PrecioUnitario>13559.99</PrecioUnitario>\n      <Subtotal>13559.99</Subtotal>\n    </LineaDetalle>\n    <LineaDetalle>\n      <Numero>3</Numero>\n      <ProductoId>3</ProductoId>\n      <Descripcion>Pastillas delanteras</Descripcion>\n      <Cantidad>1.00</Cantidad>\n      <PrecioUnitario>28250.00</PrecioUnitario>\n      <Subtotal>28250.00</Subtotal>\n    </LineaDetalle>\n  </Detalle>\n</Factura>','efectivo'),(14,NULL,'2025-08-25 03:15:53',59686.59,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<Factura>\n  <Encabezado>\n    <PedidoId/>\n    <Fecha>2025-08-25T05:15:53+02:00</Fecha>\n    <MetodoPago>efectivo</MetodoPago>\n    <Moneda>CRC</Moneda>\n    <Total>59686.59</Total>\n  </Encabezado>\n  <Detalle>\n    <LineaDetalle>\n      <Numero>1</Numero>\n      <ProductoId>91</ProductoId>\n      <Descripcion>Luces Led</Descripcion>\n      <Cantidad>1.00</Cantidad>\n      <PrecioUnitario>17876.60</PrecioUnitario>\n      <Subtotal>17876.60</Subtotal>\n    </LineaDetalle>\n    <LineaDetalle>\n      <Numero>2</Numero>\n      <ProductoId>8</ProductoId>\n      <Descripcion>Calipers de freno delanteros</Descripcion>\n      <Cantidad>1.00</Cantidad>\n      <PrecioUnitario>13559.99</PrecioUnitario>\n      <Subtotal>13559.99</Subtotal>\n    </LineaDetalle>\n    <LineaDetalle>\n      <Numero>3</Numero>\n      <ProductoId>3</ProductoId>\n      <Descripcion>Pastillas delanteras</Descripcion>\n      <Cantidad>1.00</Cantidad>\n      <PrecioUnitario>28250.00</PrecioUnitario>\n      <Subtotal>28250.00</Subtotal>\n    </LineaDetalle>\n  </Detalle>\n</Factura>','efectivo'),(15,NULL,'2025-08-25 03:16:26',59686.59,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<Factura>\n  <Encabezado>\n    <PedidoId/>\n    <Fecha>2025-08-25T05:16:26+02:00</Fecha>\n    <MetodoPago>efectivo</MetodoPago>\n    <Moneda>CRC</Moneda>\n    <Total>59686.59</Total>\n  </Encabezado>\n  <Detalle>\n    <LineaDetalle>\n      <Numero>1</Numero>\n      <ProductoId>91</ProductoId>\n      <Descripcion>Luces Led</Descripcion>\n      <Cantidad>1.00</Cantidad>\n      <PrecioUnitario>17876.60</PrecioUnitario>\n      <Subtotal>17876.60</Subtotal>\n    </LineaDetalle>\n    <LineaDetalle>\n      <Numero>2</Numero>\n      <ProductoId>8</ProductoId>\n      <Descripcion>Calipers de freno delanteros</Descripcion>\n      <Cantidad>1.00</Cantidad>\n      <PrecioUnitario>13559.99</PrecioUnitario>\n      <Subtotal>13559.99</Subtotal>\n    </LineaDetalle>\n    <LineaDetalle>\n      <Numero>3</Numero>\n      <ProductoId>3</ProductoId>\n      <Descripcion>Pastillas delanteras</Descripcion>\n      <Cantidad>1.00</Cantidad>\n      <PrecioUnitario>28250.00</PrecioUnitario>\n      <Subtotal>28250.00</Subtotal>\n    </LineaDetalle>\n  </Detalle>\n</Factura>','efectivo'),(16,NULL,'2025-08-25 03:21:58',59686.59,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<Factura>\n  <Encabezado>\n    <PedidoId/>\n    <Fecha>2025-08-25T05:21:58+02:00</Fecha>\n    <MetodoPago>efectivo</MetodoPago>\n    <Moneda>CRC</Moneda>\n    <Total>59686.59</Total>\n  </Encabezado>\n  <Detalle>\n    <LineaDetalle>\n      <Numero>1</Numero>\n      <ProductoId>91</ProductoId>\n      <Descripcion>Luces Led</Descripcion>\n      <Cantidad>1.00</Cantidad>\n      <PrecioUnitario>17876.60</PrecioUnitario>\n      <Subtotal>17876.60</Subtotal>\n    </LineaDetalle>\n    <LineaDetalle>\n      <Numero>2</Numero>\n      <ProductoId>8</ProductoId>\n      <Descripcion>Calipers de freno delanteros</Descripcion>\n      <Cantidad>1.00</Cantidad>\n      <PrecioUnitario>13559.99</PrecioUnitario>\n      <Subtotal>13559.99</Subtotal>\n    </LineaDetalle>\n    <LineaDetalle>\n      <Numero>3</Numero>\n      <ProductoId>3</ProductoId>\n      <Descripcion>Pastillas delanteras</Descripcion>\n      <Cantidad>1.00</Cantidad>\n      <PrecioUnitario>28250.00</PrecioUnitario>\n      <Subtotal>28250.00</Subtotal>\n    </LineaDetalle>\n  </Detalle>\n</Factura>','efectivo'),(17,NULL,'2025-08-25 03:22:56',59686.59,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<Factura>\n  <Encabezado>\n    <PedidoId/>\n    <Fecha>2025-08-25T05:22:56+02:00</Fecha>\n    <MetodoPago>efectivo</MetodoPago>\n    <Moneda>CRC</Moneda>\n    <Total>59686.59</Total>\n  </Encabezado>\n  <Detalle>\n    <LineaDetalle>\n      <Numero>1</Numero>\n      <ProductoId>91</ProductoId>\n      <Descripcion>Luces Led</Descripcion>\n      <Cantidad>1.00</Cantidad>\n      <PrecioUnitario>17876.60</PrecioUnitario>\n      <Subtotal>17876.60</Subtotal>\n    </LineaDetalle>\n    <LineaDetalle>\n      <Numero>2</Numero>\n      <ProductoId>8</ProductoId>\n      <Descripcion>Calipers de freno delanteros</Descripcion>\n      <Cantidad>1.00</Cantidad>\n      <PrecioUnitario>13559.99</PrecioUnitario>\n      <Subtotal>13559.99</Subtotal>\n    </LineaDetalle>\n    <LineaDetalle>\n      <Numero>3</Numero>\n      <ProductoId>3</ProductoId>\n      <Descripcion>Pastillas delanteras</Descripcion>\n      <Cantidad>1.00</Cantidad>\n      <PrecioUnitario>28250.00</PrecioUnitario>\n      <Subtotal>28250.00</Subtotal>\n    </LineaDetalle>\n  </Detalle>\n</Factura>','efectivo'),(18,NULL,'2025-08-25 03:27:58',59686.59,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<Factura>\n  <Encabezado>\n    <PedidoId/>\n    <Fecha>2025-08-25T05:27:58+02:00</Fecha>\n    <MetodoPago>efectivo</MetodoPago>\n    <Moneda>CRC</Moneda>\n    <Total>59686.59</Total>\n  </Encabezado>\n  <Detalle>\n    <LineaDetalle>\n      <Numero>1</Numero>\n      <ProductoId>91</ProductoId>\n      <Descripcion>Luces Led</Descripcion>\n      <Cantidad>1.00</Cantidad>\n      <PrecioUnitario>17876.60</PrecioUnitario>\n      <Subtotal>17876.60</Subtotal>\n    </LineaDetalle>\n    <LineaDetalle>\n      <Numero>2</Numero>\n      <ProductoId>8</ProductoId>\n      <Descripcion>Calipers de freno delanteros</Descripcion>\n      <Cantidad>1.00</Cantidad>\n      <PrecioUnitario>13559.99</PrecioUnitario>\n      <Subtotal>13559.99</Subtotal>\n    </LineaDetalle>\n    <LineaDetalle>\n      <Numero>3</Numero>\n      <ProductoId>3</ProductoId>\n      <Descripcion>Pastillas delanteras</Descripcion>\n      <Cantidad>1.00</Cantidad>\n      <PrecioUnitario>28250.00</PrecioUnitario>\n      <Subtotal>28250.00</Subtotal>\n    </LineaDetalle>\n  </Detalle>\n</Factura>','efectivo'),(19,NULL,'2025-08-25 03:29:50',59686.59,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<Factura>\n  <Encabezado>\n    <PedidoId/>\n    <Fecha>2025-08-25T05:29:50+02:00</Fecha>\n    <MetodoPago>efectivo</MetodoPago>\n    <Moneda>CRC</Moneda>\n    <Total>59686.59</Total>\n  </Encabezado>\n  <Detalle>\n    <LineaDetalle>\n      <Numero>1</Numero>\n      <ProductoId>91</ProductoId>\n      <Descripcion>Luces Led</Descripcion>\n      <Cantidad>1.00</Cantidad>\n      <PrecioUnitario>17876.60</PrecioUnitario>\n      <Subtotal>17876.60</Subtotal>\n    </LineaDetalle>\n    <LineaDetalle>\n      <Numero>2</Numero>\n      <ProductoId>8</ProductoId>\n      <Descripcion>Calipers de freno delanteros</Descripcion>\n      <Cantidad>1.00</Cantidad>\n      <PrecioUnitario>13559.99</PrecioUnitario>\n      <Subtotal>13559.99</Subtotal>\n    </LineaDetalle>\n    <LineaDetalle>\n      <Numero>3</Numero>\n      <ProductoId>3</ProductoId>\n      <Descripcion>Pastillas delanteras</Descripcion>\n      <Cantidad>1.00</Cantidad>\n      <PrecioUnitario>28250.00</PrecioUnitario>\n      <Subtotal>28250.00</Subtotal>\n    </LineaDetalle>\n  </Detalle>\n</Factura>','efectivo'),(20,NULL,'2025-08-25 03:36:29',46126.60,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<Factura>\n  <Encabezado>\n    <PedidoId/>\n    <Fecha>2025-08-25T05:36:29+02:00</Fecha>\n    <MetodoPago>efectivo</MetodoPago>\n    <Moneda>CRC</Moneda>\n    <Total>46126.60</Total>\n  </Encabezado>\n  <Detalle>\n    <LineaDetalle>\n      <Numero>1</Numero>\n      <ProductoId>91</ProductoId>\n      <Descripcion>Luces Led</Descripcion>\n      <Cantidad>1.00</Cantidad>\n      <PrecioUnitario>17876.60</PrecioUnitario>\n      <Subtotal>17876.60</Subtotal>\n    </LineaDetalle>\n    <LineaDetalle>\n      <Numero>2</Numero>\n      <ProductoId>3</ProductoId>\n      <Descripcion>Pastillas delanteras</Descripcion>\n      <Cantidad>1.00</Cantidad>\n      <PrecioUnitario>28250.00</PrecioUnitario>\n      <Subtotal>28250.00</Subtotal>\n    </LineaDetalle>\n  </Detalle>\n</Factura>','efectivo'),(21,NULL,'2025-08-26 19:11:26',63845.00,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<Factura>\n  <Encabezado>\n    <PedidoId/>\n    <Fecha>2025-08-26T21:11:26+02:00</Fecha>\n    <MetodoPago>efectivo</MetodoPago>\n    <Moneda>CRC</Moneda>\n    <Total>63845.00</Total>\n  </Encabezado>\n  <Detalle>\n    <LineaDetalle>\n      <Numero>1</Numero>\n      <ProductoId>7</ProductoId>\n      <Descripcion>Juego de empaques de motor</Descripcion>\n      <Cantidad>1.00</Cantidad>\n      <PrecioUnitario>63845.00</PrecioUnitario>\n      <Subtotal>63845.00</Subtotal>\n    </LineaDetalle>\n  </Detalle>\n</Factura>','efectivo'),(22,NULL,'2025-08-26 20:12:15',17876.60,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<Factura>\n  <Encabezado>\n    <PedidoId/>\n    <Fecha>2025-08-26T22:12:15+02:00</Fecha>\n    <MetodoPago>efectivo</MetodoPago>\n    <Moneda>CRC</Moneda>\n    <Total>17876.60</Total>\n  </Encabezado>\n  <Detalle>\n    <LineaDetalle>\n      <Numero>1</Numero>\n      <ProductoId>91</ProductoId>\n      <Descripcion>Luces Led</Descripcion>\n      <Cantidad>1.00</Cantidad>\n      <PrecioUnitario>17876.60</PrecioUnitario>\n      <Subtotal>17876.60</Subtotal>\n    </LineaDetalle>\n  </Detalle>\n</Factura>','efectivo'),(23,NULL,'2025-08-26 20:24:11',17876.60,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<Factura>\n  <Encabezado>\n    <PedidoId/>\n    <Fecha>2025-08-26T22:24:11+02:00</Fecha>\n    <MetodoPago>efectivo</MetodoPago>\n    <Moneda>CRC</Moneda>\n    <Total>17876.60</Total>\n  </Encabezado>\n  <Detalle>\n    <LineaDetalle>\n      <Numero>1</Numero>\n      <ProductoId>91</ProductoId>\n      <Descripcion>Luces Led</Descripcion>\n      <Cantidad>1.00</Cantidad>\n      <PrecioUnitario>17876.60</PrecioUnitario>\n      <Subtotal>17876.60</Subtotal>\n    </LineaDetalle>\n  </Detalle>\n</Factura>','efectivo'),(24,NULL,'2025-08-26 20:34:39',35753.20,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<Factura>\n  <Encabezado>\n    <PedidoId/>\n    <Fecha>2025-08-26T22:34:39+02:00</Fecha>\n    <MetodoPago>efectivo</MetodoPago>\n    <Moneda>CRC</Moneda>\n    <Total>35753.20</Total>\n  </Encabezado>\n  <Detalle>\n    <LineaDetalle>\n      <Numero>1</Numero>\n      <ProductoId>91</ProductoId>\n      <Descripcion>Luces Led</Descripcion>\n      <Cantidad>2.00</Cantidad>\n      <PrecioUnitario>17876.60</PrecioUnitario>\n      <Subtotal>35753.20</Subtotal>\n    </LineaDetalle>\n  </Detalle>\n</Factura>','efectivo'),(25,NULL,'2025-08-26 20:40:01',35753.20,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<Factura>\n  <Encabezado>\n    <PedidoId/>\n    <Fecha>2025-08-26T22:40:01+02:00</Fecha>\n    <MetodoPago>efectivo</MetodoPago>\n    <Moneda>CRC</Moneda>\n    <Total>35753.20</Total>\n  </Encabezado>\n  <Detalle>\n    <LineaDetalle>\n      <Numero>1</Numero>\n      <ProductoId>91</ProductoId>\n      <Descripcion>Luces Led</Descripcion>\n      <Cantidad>2.00</Cantidad>\n      <PrecioUnitario>17876.60</PrecioUnitario>\n      <Subtotal>35753.20</Subtotal>\n    </LineaDetalle>\n  </Detalle>\n</Factura>','efectivo'),(26,NULL,'2025-08-26 20:44:36',35753.20,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<Factura>\n  <Encabezado>\n    <PedidoId/>\n    <Fecha>2025-08-26T22:44:36+02:00</Fecha>\n    <MetodoPago>efectivo</MetodoPago>\n    <Moneda>CRC</Moneda>\n    <Total>35753.20</Total>\n  </Encabezado>\n  <Detalle>\n    <LineaDetalle>\n      <Numero>1</Numero>\n      <ProductoId>91</ProductoId>\n      <Descripcion>Luces Led</Descripcion>\n      <Cantidad>2.00</Cantidad>\n      <PrecioUnitario>17876.60</PrecioUnitario>\n      <Subtotal>35753.20</Subtotal>\n    </LineaDetalle>\n  </Detalle>\n</Factura>','efectivo'),(27,NULL,'2025-08-26 20:47:24',35753.20,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<Factura>\n  <Encabezado>\n    <PedidoId/>\n    <Fecha>2025-08-26T22:47:24+02:00</Fecha>\n    <MetodoPago>efectivo</MetodoPago>\n    <Moneda>CRC</Moneda>\n    <Total>35753.20</Total>\n  </Encabezado>\n  <Detalle>\n    <LineaDetalle>\n      <Numero>1</Numero>\n      <ProductoId>91</ProductoId>\n      <Descripcion>Luces Led</Descripcion>\n      <Cantidad>2.00</Cantidad>\n      <PrecioUnitario>17876.60</PrecioUnitario>\n      <Subtotal>35753.20</Subtotal>\n    </LineaDetalle>\n  </Detalle>\n</Factura>','efectivo'),(28,NULL,'2025-08-26 20:52:53',35753.20,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<Factura>\n  <Encabezado>\n    <PedidoId/>\n    <Fecha>2025-08-26T22:52:53+02:00</Fecha>\n    <MetodoPago>efectivo</MetodoPago>\n    <Moneda>CRC</Moneda>\n    <Total>35753.20</Total>\n  </Encabezado>\n  <Detalle>\n    <LineaDetalle>\n      <Numero>1</Numero>\n      <ProductoId>91</ProductoId>\n      <Descripcion>Luces Led</Descripcion>\n      <Cantidad>2.00</Cantidad>\n      <PrecioUnitario>17876.60</PrecioUnitario>\n      <Subtotal>35753.20</Subtotal>\n    </LineaDetalle>\n  </Detalle>\n</Factura>','efectivo'),(29,NULL,'2025-08-26 23:38:51',28250.00,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<Factura>\n  <Encabezado>\n    <PedidoId/>\n    <Fecha>2025-08-27T01:38:51+02:00</Fecha>\n    <MetodoPago>efectivo</MetodoPago>\n    <Moneda>CRC</Moneda>\n    <Total>28250.00</Total>\n  </Encabezado>\n  <Detalle>\n    <LineaDetalle>\n      <Numero>1</Numero>\n      <ProductoId>89</ProductoId>\n      <Descripcion>Soporte de motor</Descripcion>\n      <Cantidad>1.00</Cantidad>\n      <PrecioUnitario>28250.00</PrecioUnitario>\n      <Subtotal>28250.00</Subtotal>\n    </LineaDetalle>\n  </Detalle>\n</Factura>','efectivo'),(30,NULL,'2025-08-27 01:26:05',1442897.00,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<Factura>\n  <Encabezado>\n    <PedidoId/>\n    <Fecha>2025-08-27T03:26:05+02:00</Fecha>\n    <MetodoPago>efectivo</MetodoPago>\n    <Moneda>CRC</Moneda>\n    <Total>1442897.00</Total>\n  </Encabezado>\n  <Detalle>\n    <LineaDetalle>\n      <Numero>1</Numero>\n      <ProductoId>90</ProductoId>\n      <Descripcion>Computadora</Descripcion>\n      <Cantidad>1.00</Cantidad>\n      <PrecioUnitario>1442897.00</PrecioUnitario>\n      <Subtotal>1442897.00</Subtotal>\n    </LineaDetalle>\n  </Detalle>\n</Factura>','efectivo');
/*!40000 ALTER TABLE `factura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imagenproducto`
--

DROP TABLE IF EXISTS `imagenproducto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `imagenproducto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `producto_id` int NOT NULL,
  `imagen` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `producto_id` (`producto_id`),
  CONSTRAINT `imagenproducto_ibfk_1` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagenproducto`
--

LOCK TABLES `imagenproducto` WRITE;
/*!40000 ALTER TABLE `imagenproducto` DISABLE KEYS */;
INSERT INTO `imagenproducto` VALUES (1,3,'frenos1.jpg'),(11,4,'cuerpo aceleracion2.jpg'),(13,1,'Faja-3.jpeg'),(14,2,'Turbo1.jpg'),(15,2,'Turbo2.jpg'),(16,2,'Turbo3.jpg'),(18,3,'frenos3.jpg'),(19,4,'cuerpo aceleracion3.jpg'),(21,5,'inyectores3.jpg'),(22,6,'bombaaceite3.jpg'),(26,8,'caliper3.jpg'),(67,89,'producto-689691c9375c9.jpg'),(78,90,'producto-68a8d194ec6ad.jpg'),(79,91,'producto-68a8d1dc59a98.jpg'),(80,10,'producto-68aa78e30c0ce.jpg'),(81,7,'producto-68aa7c7628e4d.jpg'),(82,7,'producto-68aa7c7628fc5.jpg'),(83,7,'producto-68aa7c762971a.jpg'),(84,92,'producto-68b12f905675e.jpg'),(85,92,'producto-68b12f905ff1d.jpg'),(86,92,'producto-68b12f906076e.jpg'),(87,93,'producto-68b130645c3a1.jpg'),(88,93,'producto-68b130645e673.jpg'),(89,94,'producto-68b131c60d3e7.jpg'),(90,94,'producto-68b131c6107d8.jpg'),(91,95,'producto-68b1323c50cb5.jpg'),(92,95,'producto-68b1323c50e1b.jpg'),(93,96,'producto-68b133141a101.jpg'),(94,96,'producto-68b1331418fd6.jpg'),(95,97,'producto-68b133810e8a5.jpg'),(96,97,'producto-68b133810ea0a.jpg'),(97,91,'producto-68b13485e0885.jpg'),(98,91,'producto-68b13485e0a35.jpg');
/*!40000 ALTER TABLE `imagenproducto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `impuesto`
--

DROP TABLE IF EXISTS `impuesto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `impuesto` (
  `IdImpuesto` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  `Porcentaje` decimal(5,2) NOT NULL,
  PRIMARY KEY (`IdImpuesto`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `impuesto`
--

LOCK TABLES `impuesto` WRITE;
/*!40000 ALTER TABLE `impuesto` DISABLE KEYS */;
INSERT INTO `impuesto` VALUES (1,'IVA',13.00);
/*!40000 ALTER TABLE `impuesto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventarioproveedor`
--

DROP TABLE IF EXISTS `inventarioproveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventarioproveedor` (
  `producto_id` int NOT NULL,
  `proveedor_id` int NOT NULL,
  `stock_disponible` int DEFAULT NULL,
  PRIMARY KEY (`producto_id`,`proveedor_id`),
  KEY `proveedor_id` (`proveedor_id`),
  CONSTRAINT `inventarioproveedor_ibfk_1` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`),
  CONSTRAINT `inventarioproveedor_ibfk_2` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventarioproveedor`
--

LOCK TABLES `inventarioproveedor` WRITE;
/*!40000 ALTER TABLE `inventarioproveedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventarioproveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metodopago`
--

DROP TABLE IF EXISTS `metodopago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `metodopago` (
  `idMetodoPago` int NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idMetodoPago`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metodopago`
--

LOCK TABLES `metodopago` WRITE;
/*!40000 ALTER TABLE `metodopago` DISABLE KEYS */;
INSERT INTO `metodopago` VALUES (1,'Tarjeta'),(2,'Efectivo'),(3,'Sinpe');
/*!40000 ALTER TABLE `metodopago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modelocarro`
--

DROP TABLE IF EXISTS `modelocarro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modelocarro` (
  `id` int NOT NULL AUTO_INCREMENT,
  `marca` varchar(50) NOT NULL,
  `modelo` varchar(50) NOT NULL,
  `año` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modelocarro`
--

LOCK TABLES `modelocarro` WRITE;
/*!40000 ALTER TABLE `modelocarro` DISABLE KEYS */;
/*!40000 ALTER TABLE `modelocarro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario_id` int NOT NULL,
  `fecha_pedido` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `direccion_envio` text NOT NULL,
  `estado` enum('en_proceso','pagado','entregado') DEFAULT 'en_proceso',
  PRIMARY KEY (`id`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (1,2,'2025-06-24 19:22:01','San José, Costa Rica','en_proceso'),(2,2,'2025-06-24 19:25:41','San José, Costa Rica','pagado'),(3,2,'2025-06-24 19:36:42','Santa fe, Bolivia','en_proceso'),(4,2,'2025-07-04 15:24:39','Alajuela, la garita','entregado'),(5,1,'2025-07-04 20:25:19','Puntarenas,El roble','pagado'),(6,3,'2025-07-04 20:25:19','Heredia,Belen','entregado'),(8,4,'2025-07-17 16:48:38','Rio frio,la trocha berny','en_proceso'),(9,4,'2025-08-17 17:40:13','Nuevas Pruebas','en_proceso'),(10,4,'2025-08-17 17:45:29','Frio frio','en_proceso'),(24,4,'2025-08-17 20:45:30','Alajuelas','en_proceso'),(25,4,'2025-08-17 20:47:21','San Jose','en_proceso'),(36,10,'2025-08-29 00:54:20','Puriscal','en_proceso');
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text,
  `precio` decimal(10,2) NOT NULL,
  `categoria_id` int NOT NULL,
  `stock` int DEFAULT '0',
  `estado` tinyint(1) DEFAULT '1',
  `ano_compatible` int DEFAULT NULL,
  `marca_compatible` varchar(50) DEFAULT NULL,
  `modelo_compatible` varchar(50) DEFAULT NULL,
  `motor_compatible` varchar(50) DEFAULT NULL,
  `certificaciones` text,
  `IdImpuesto` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categoria_id` (`categoria_id`),
  KEY `Impuesto_idx` (`IdImpuesto`),
  CONSTRAINT `Impuesto` FOREIGN KEY (`IdImpuesto`) REFERENCES `impuesto` (`IdImpuesto`),
  CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'Faja de distribución','Faja de distribución para Toyota Corolla 2007-2013',25000.00,1,20,1,2021,'AISIN','Corolla','1.8L','ISO 14001',1),(2,'Turbocompresor','Turbocompresor CT26',1130.00,2,18,1,1997,'Motor Toyota 13bt/14bt','2001','2','ISSO',1),(3,'Pastillas delanteras','Pastillas delanteras para Nissan Frontier 2015-2023',25000.00,3,5,1,2020,'Toyota','Nissan Frontier','1.8L','ISO9001',1),(4,'Cuerpo de aceleración','Cuerpo de aceleración para honda SI 2009-2013, para motores k20z3',250.00,4,10,1,2020,'Skunk2','Honda','1.8L','ISO9001',1),(5,'Inyectores de combustible','Inyectores de combustible para Toyota Land Cruiser 1FZ-FE 1995-2000',49998.99,5,6,1,2020,'Injector Dynamics','Toyota Land Cruiser','1.8L','ISO9001',1),(6,'Bomba de aceite','Bomba de aceite para Jeep Wrangler JK, JL, JLU',80000.00,6,10,1,2020,'Mopar','Jeep Wrangler','1.8L','ISO9001',1),(7,'Juego de empaques de motor','Juego de empaques de motor, contiene empaque de cabezotes, empaque de tapa de válvulas, empaque de header, cellos de agua, tornillería y sellos de válvulas',56500.00,7,9,1,2020,'AISIN','Toyota 4runner, Toyota Tacoma y Toyota T100 5VZ-FE','1.8L','ISO9001',1),(8,'Calipers de freno delanteros','Calipers de freno delanteros contienen las arandelas y pinzas',11999.99,3,3,0,2020,'CarBrake','Toyota Corolla, Toyota Yaris y Toyota Raize','1.8L','ISO9001',1),(10,'Refrigerante','Coolant para cualquier tipo de motores de alto rendimiento',45200.00,8,20,1,1997,'VP Racing','Cualquier vehículo','2.8l','ISSO',1),(89,'Soporte de motor','Soporte de motor de dureza blanda, para evitar vibraciones.',28250.00,6,3,1,2008,'Toyota','Corolla','1zz','ISSO',1),(90,'Computadora','Computadora programable para distintos vehiculos y motores.',1630473.61,11,8,1,2025,'Full','Todos','Todos','ISSO',1),(91,'Luces Led','Luces de alta calidad',15820.00,9,1,1,2000,'Toyota','200','2.8','Isso',1),(92,'Compensadores delanteros','Compensadores delanteros para Toyota Yaris 2008-2011',800000.00,12,20,1,2008,'Toyota ','Yaris','','ISSO',1),(93,'Compensadores','Compensadores delanteros para Toyota Yaris 2008-2011',60000.00,12,15,1,2008,'Toyota','Yaris','','ISSO',1),(94,'Coilover ajustable ','Conjunto de coilovers para Honda civic SI 2006-2010 ',499999.97,12,3,1,2006,'Honda','Civic','','ISSO',1),(95,'Coilover','Conjunto de coilovers para Honda civic SI 2006-2010',900000.00,12,19,1,2006,'Honda','Civic','','ISSO',1),(96,'Filtro de aire ','Filtro de aire alto flujo para Toyota, Nissan, Ford, Mazda, honda',65000.00,6,8,1,2000,'IS','','','ISSO',1),(97,'Filtro de aire alto flujo','Filtro de aire alto flujo Universal para distintas marcas.',30000.00,6,17,1,2000,'','','','ISSO',1);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto_personalizado`
--

DROP TABLE IF EXISTS `producto_personalizado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto_personalizado` (
  `id_personalizado` int NOT NULL AUTO_INCREMENT,
  `pedido_id` int NOT NULL,
  `producto_id` int NOT NULL,
  `nombre_personalizado` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `costo_base` decimal(10,2) NOT NULL,
  `opciones_personalizacion` json NOT NULL,
  `cantidad` int NOT NULL DEFAULT '1',
  `costo_adicional` decimal(10,2) DEFAULT NULL,
  `precio_unitario` decimal(10,2) DEFAULT NULL,
  `subtotal` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id_personalizado`),
  KEY `pedido_id` (`pedido_id`),
  KEY `producto_id` (`producto_id`),
  CONSTRAINT `producto_personalizado_ibfk_1` FOREIGN KEY (`pedido_id`) REFERENCES `pedido` (`id`),
  CONSTRAINT `producto_personalizado_ibfk_2` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto_personalizado`
--

LOCK TABLES `producto_personalizado` WRITE;
/*!40000 ALTER TABLE `producto_personalizado` DISABLE KEYS */;
INSERT INTO `producto_personalizado` VALUES (1,2,3,'Alto rendimiento',25000.00,'{\"color\": {\"costo\": 2000, \"opcion\": \"Negro Mate\"}, \"estilo\": {\"costo\": 3500, \"opcion\": \"Deportivo\"}}',1,NULL,NULL,NULL),(2,2,3,'Sensor de desgaste integrado',25000.00,'[{\"costo\": 2000, \"opcion\": \"Negro Mate\", \"criterio\": \"Color\"}, {\"costo\": 3500, \"opcion\": \"Deportivo\", \"criterio\": \"Estilo\"}]',1,5500.00,30500.00,30500.00),(3,2,4,'Logo grabado o personalizado',15000.00,'[{\"costo\": 1000, \"opcion\": \"Toyota\", \"criterio\": \"Logo\"}, {\"costo\": 500, \"opcion\": \"Rojo\", \"criterio\": \"Color\"}]',2,1500.00,16500.00,33000.00),(4,1,2,'Turbocompresor - Personalizado',1000.00,'[{\"id\": \"negro_mate\", \"costo\": 15000, \"opcion\": \"Negro Mate\", \"criterio\": \"Color de Pintura\"}, {\"id\": \"plastico_reforzado\", \"costo\": 10000, \"opcion\": \"Plástico reforzado\", \"criterio\": \"Material / Acabado\"}, {\"id\": \"sin\", \"costo\": 0, \"opcion\": \"Sin grabado\", \"criterio\": \"Grabado o Logotipo\"}]',1,25000.00,26000.00,26000.00),(5,1,3,'Pastillas delanteras - Personalizado',45.00,'[{\"id\": \"negro_mate\", \"costo\": 15000, \"opcion\": \"Negro Mate\", \"criterio\": \"Color de Pintura\"}, {\"id\": \"plastico_reforzado\", \"costo\": 10000, \"opcion\": \"Plástico reforzado\", \"criterio\": \"Material / Acabado\"}, {\"id\": \"logo\", \"costo\": 5000, \"opcion\": \"Logotipo de marca\", \"criterio\": \"Grabado o Logotipo\"}]',1,30000.00,30045.00,30045.00),(6,1,1,'Faja de distribución - Personalizado',25.00,'[{\"id\": \"gris_metalico\", \"costo\": 20000, \"opcion\": \"Gris Metálico\", \"criterio\": \"Color de Pintura\"}, {\"id\": \"plastico_estandar\", \"costo\": 0, \"opcion\": \"Plástico estándar\", \"criterio\": \"Material / Acabado\"}, {\"id\": \"logo\", \"costo\": 5000, \"opcion\": \"Logotipo de marca\", \"criterio\": \"Grabado o Logotipo\"}]',1,25000.00,25025.00,25025.00),(7,1,3,'Pastillas delanteras - Personalizado',45.00,'[{\"id\": \"blanco_perla\", \"costo\": 22000, \"opcion\": \"Blanco Perla\", \"criterio\": \"Color de Pintura\"}, {\"id\": \"plastico_estandar\", \"costo\": 0, \"opcion\": \"Plástico estándar\", \"criterio\": \"Material / Acabado\"}, {\"id\": \"protector\", \"costo\": 5000, \"opcion\": \"Protector antirrayas\", \"criterio\": \"Accesorio\"}, {\"id\": \"sin\", \"costo\": 0, \"opcion\": \"Sin grabado\", \"criterio\": \"Grabado o Logotipo\"}]',1,27000.00,27045.00,27045.00),(8,1,4,'Cuerpo de aceleración - Personalizado',250.00,'[{\"id\": \"gris_metalico\", \"costo\": 20000, \"grupo\": \"color\", \"label\": \"Gris Metálico\"}, {\"id\": \"plastico_estandar\", \"costo\": 0, \"grupo\": \"material\", \"label\": \"Plástico estándar\"}, {\"id\": \"sin\", \"costo\": 0, \"grupo\": \"grabado\", \"label\": \"Sin grabado\", \"texto\": null}]',1,20000.00,20250.00,20250.00),(9,1,2,'Turbocompresor - Personalizado',1000.00,'[{\"id\": \"negro_mate\", \"costo\": 15000, \"grupo\": \"color\", \"label\": \"Negro Mate\"}, {\"id\": \"fibra_carbono\", \"costo\": 35000, \"grupo\": \"material\", \"label\": \"Fibra de carbono\"}, {\"id\": \"texto\", \"costo\": 8000, \"grupo\": \"grabado\", \"label\": \"Texto personalizado\", \"texto\": \"aaa\"}]',1,58000.00,59000.00,59000.00),(10,1,2,'Turbocompresor - Personalizado',1000.00,'[{\"id\": \"blanco_perla\", \"costo\": 22000, \"grupo\": \"color\", \"label\": \"Blanco Perla\"}, {\"id\": \"fibra_carbono\", \"costo\": 35000, \"grupo\": \"material\", \"label\": \"Fibra de carbono\"}, {\"id\": \"protector\", \"costo\": 5000, \"grupo\": \"accesorio\", \"label\": \"Protector antirrayas\"}, {\"id\": \"texto\", \"costo\": 8000, \"grupo\": \"grabado\", \"label\": \"Texto personalizado\", \"texto\": \"ahhh\"}]',1,70000.00,71000.00,71000.00);
/*!40000 ALTER TABLE `producto_personalizado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productoetiqueta`
--

DROP TABLE IF EXISTS `productoetiqueta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productoetiqueta` (
  `producto_id` int NOT NULL,
  `etiqueta_id` int NOT NULL,
  PRIMARY KEY (`producto_id`,`etiqueta_id`),
  KEY `etiqueta_id` (`etiqueta_id`),
  CONSTRAINT `productoetiqueta_ibfk_1` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`) ON DELETE CASCADE,
  CONSTRAINT `productoetiqueta_ibfk_2` FOREIGN KEY (`etiqueta_id`) REFERENCES `etiqueta` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productoetiqueta`
--

LOCK TABLES `productoetiqueta` WRITE;
/*!40000 ALTER TABLE `productoetiqueta` DISABLE KEYS */;
INSERT INTO `productoetiqueta` VALUES (89,1),(1,2),(3,2),(4,2),(7,3),(92,3),(93,3),(94,3),(95,3),(3,6),(90,8),(96,8),(97,8),(5,10),(7,10),(8,10),(10,10),(91,10),(5,11),(89,11),(91,11),(5,12),(7,12),(8,12),(10,12),(2,13),(3,14),(90,14),(93,16),(94,16),(97,16);
/*!40000 ALTER TABLE `productoetiqueta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productomodelo`
--

DROP TABLE IF EXISTS `productomodelo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productomodelo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `producto_id` int NOT NULL,
  `modelo_carro_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `producto_id` (`producto_id`,`modelo_carro_id`),
  KEY `modelo_carro_id` (`modelo_carro_id`),
  CONSTRAINT `productomodelo_ibfk_1` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`),
  CONSTRAINT `productomodelo_ibfk_2` FOREIGN KEY (`modelo_carro_id`) REFERENCES `modelocarro` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productomodelo`
--

LOCK TABLES `productomodelo` WRITE;
/*!40000 ALTER TABLE `productomodelo` DISABLE KEYS */;
/*!40000 ALTER TABLE `productomodelo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productossimilares`
--

DROP TABLE IF EXISTS `productossimilares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productossimilares` (
  `id` int NOT NULL AUTO_INCREMENT,
  `producto_id` int NOT NULL,
  `producto_similar_id` int NOT NULL,
  `tipo_relacion` enum('generico','homologado','similar') DEFAULT 'similar',
  PRIMARY KEY (`id`),
  UNIQUE KEY `producto_id` (`producto_id`,`producto_similar_id`),
  KEY `producto_similar_id` (`producto_similar_id`),
  CONSTRAINT `productossimilares_ibfk_1` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`),
  CONSTRAINT `productossimilares_ibfk_2` FOREIGN KEY (`producto_similar_id`) REFERENCES `producto` (`id`),
  CONSTRAINT `chk_producto_diferente` CHECK ((`producto_id` <> `producto_similar_id`))
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productossimilares`
--

LOCK TABLES `productossimilares` WRITE;
/*!40000 ALTER TABLE `productossimilares` DISABLE KEYS */;
INSERT INTO `productossimilares` VALUES (6,7,8,'generico'),(8,8,10,'generico'),(11,96,97,'generico'),(12,95,94,'generico'),(13,92,93,'generico');
/*!40000 ALTER TABLE `productossimilares` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promocioncategoria`
--

DROP TABLE IF EXISTS `promocioncategoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promocioncategoria` (
  `IdPromocion` int NOT NULL,
  `IdCategoria` int NOT NULL,
  PRIMARY KEY (`IdPromocion`,`IdCategoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promocioncategoria`
--

LOCK TABLES `promocioncategoria` WRITE;
/*!40000 ALTER TABLE `promocioncategoria` DISABLE KEYS */;
INSERT INTO `promocioncategoria` VALUES (4,1),(6,8),(7,5);
/*!40000 ALTER TABLE `promocioncategoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promociones`
--

DROP TABLE IF EXISTS `promociones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promociones` (
  `IdPromocion` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Descripcion` text,
  `Descuento` decimal(5,2) DEFAULT NULL,
  `FechaInicio` date DEFAULT NULL,
  `FechaFin` date DEFAULT NULL,
  PRIMARY KEY (`IdPromocion`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promociones`
--

LOCK TABLES `promociones` WRITE;
/*!40000 ALTER TABLE `promociones` DISABLE KEYS */;
INSERT INTO `promociones` VALUES (1,'Promoción de Verano Frenos','20% de descuento en repuestos para frenos durante todo julio',20.00,'2025-06-01','2025-07-31'),(2,'Promoción Mitad de Año','15% de descuento aceites',15.00,'2025-06-15','2025-07-15'),(3,'Promoción Mitad de Año','15% de descuento aceites',15.00,'2025-06-15','2025-07-15'),(4,'Promocion ','15% de descuento en Bomba de aceite',10.00,'2025-06-01','2025-07-31'),(5,'Promocion Inyectores','10 % de descuento ',10.00,'2025-07-02','2025-07-20'),(6,'Promoción Refrigerante','15 % en refrigerantes',15.00,'2025-07-04','2025-07-15'),(7,'Día de la madre','Promocion día de la madre',10.00,'2025-08-01','2025-08-31'),(8,'Agosto','Promocion para agosto',10.00,'2025-07-26','2025-08-27'),(9,'Libertad','Por el mes de la independencia',10.00,'2025-08-24','2025-09-30'),(10,'Día Expo','Día expo',10.00,'2025-08-29','2025-09-29'),(11,'Temporada invierno','Para andar seguros en las carreteras',10.00,'2025-08-29','2025-09-26');
/*!40000 ALTER TABLE `promociones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promocionrepuestos`
--

DROP TABLE IF EXISTS `promocionrepuestos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promocionrepuestos` (
  `IdPromocion` int NOT NULL,
  `IdProducto` int NOT NULL,
  PRIMARY KEY (`IdPromocion`,`IdProducto`),
  KEY `IdProducto` (`IdProducto`),
  CONSTRAINT `promocionrepuestos_ibfk_1` FOREIGN KEY (`IdPromocion`) REFERENCES `promociones` (`IdPromocion`),
  CONSTRAINT `promocionrepuestos_ibfk_2` FOREIGN KEY (`IdProducto`) REFERENCES `producto` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promocionrepuestos`
--

LOCK TABLES `promocionrepuestos` WRITE;
/*!40000 ALTER TABLE `promocionrepuestos` DISABLE KEYS */;
INSERT INTO `promocionrepuestos` VALUES (9,2),(1,3),(11,3),(5,5),(2,8),(8,90),(10,95);
/*!40000 ALTER TABLE `promocionrepuestos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `contacto` varchar(100) DEFAULT NULL,
  `api_endpoint` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resena`
--

DROP TABLE IF EXISTS `resena`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resena` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario_id` int NOT NULL,
  `producto_id` int NOT NULL,
  `comentario` text,
  `valoracion` tinyint DEFAULT NULL,
  `fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `moderado` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `usuario_id` (`usuario_id`),
  KEY `producto_id` (`producto_id`),
  CONSTRAINT `resena_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`),
  CONSTRAINT `resena_ibfk_2` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`),
  CONSTRAINT `resena_chk_1` CHECK ((`valoracion` between 1 and 5))
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resena`
--

LOCK TABLES `resena` WRITE;
/*!40000 ALTER TABLE `resena` DISABLE KEYS */;
INSERT INTO `resena` VALUES (1,1,1,'Muy Buena calidad',5,'2025-07-04 20:17:19',1),(2,3,4,'Muy malo el producto',1,'2025-07-04 20:20:21',0),(3,1,8,'Defectuoso, pero me devolvieron el dinero.',2,'2025-06-16 19:48:07',1),(5,2,6,'No era compatible con mi modelo de auto.',2,'2025-06-16 19:48:32',0),(6,2,5,'Buen producto, aunque el envío fue lento.',4,'2025-06-16 19:48:48',0),(7,2,3,'Muy buen repuesto.',5,'2025-06-16 19:52:21',0),(8,1,8,'Muy defectuoso',1,'2025-06-17 21:38:39',0),(9,4,5,'Muy buen producto',4,'2025-07-26 01:52:10',0),(10,5,90,'Es un producto que sirve para distintos vehiculos',5,'2025-07-27 19:31:09',0),(11,5,90,'Excellente producto',4,'2025-07-27 19:31:36',0),(12,7,91,'Producto de muy buena calidad',5,'2025-08-27 01:26:44',0),(13,4,91,'Muy buenas luces',5,'2025-08-28 17:08:59',0),(14,7,10,'Funciona bien',5,'2025-08-29 02:28:14',0);
/*!40000 ALTER TABLE `resena` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rol`
--

DROP TABLE IF EXISTS `rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rol` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol`
--

LOCK TABLES `rol` WRITE;
/*!40000 ALTER TABLE `rol` DISABLE KEYS */;
INSERT INTO `rol` VALUES (1,'administrador'),(2,'usuario');
/*!40000 ALTER TABLE `rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suscripcion`
--

DROP TABLE IF EXISTS `suscripcion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suscripcion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario_id` int NOT NULL,
  `tipo` enum('Básica','Premium','Pro') NOT NULL,
  `fecha_inicio` date NOT NULL,
  `estado` enum('Activa','Cancelada','Vencida') DEFAULT 'Activa',
  PRIMARY KEY (`id`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `suscripcion_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suscripcion`
--

LOCK TABLES `suscripcion` WRITE;
/*!40000 ALTER TABLE `suscripcion` DISABLE KEYS */;
/*!40000 ALTER TABLE `suscripcion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rol_id` int NOT NULL,
  `nombre_usuario` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contraseña_hash` varchar(255) NOT NULL,
  `estado` tinyint(1) DEFAULT '1',
  `creado_en` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `actualizado_en` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre_usuario` (`nombre_usuario`),
  UNIQUE KEY `email` (`email`),
  KEY `rol_id` (`rol_id`),
  KEY `email_2` (`email`),
  KEY `nombre_usuario_2` (`nombre_usuario`),
  CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`rol_id`) REFERENCES `rol` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,2,'Adrian','cliente01@email.com','$2y$10$EjemploHashCliente01',1,'2025-06-16 19:46:48','2025-07-04 03:41:47'),(2,2,'José','juan.perez@email.com','$2y$10$OtroHashParaJuan',1,'2025-06-16 19:46:48','2025-07-04 03:41:47'),(3,2,'Felipe','felipemxCubillo@gmail.com','$2y$10$Feli',1,'2025-07-04 20:18:48','2025-07-04 20:18:48'),(4,2,'Jeeyson','jasonezezel@gmail.com','$2y$10$qQxDx9ikZzsHCZ/12rdHXOpbq2XeiUiKfMsBUhQCiKGIwRzU0CanC',1,'2025-07-26 01:50:54','2025-07-26 01:53:20'),(5,2,'José Lopez','jose@gmail.com','$2y$10$lChhpsrDmSY9DzSBSn8JZ.L46ZTCkyus4q/n2jJJEmXABPviJ6H/K',1,'2025-07-27 19:24:40','2025-07-27 19:24:40'),(6,2,'Berny Davila ','bernyd760@gmail.com','$2y$10$C2fL.pH6Dm5J68L9RGwpEuqVKkrVyMHjro15d/PNFpoHNu4bpAUy.',1,'2025-08-17 00:52:52','2025-08-17 00:52:52'),(7,1,'admin','zeledonjeey@gmail.com','$2y$10$zWrmuMpogNARowuW81YUOOwgEixPP8tq3nu.rtCS7xGzNVZ9EL/O.',1,'2025-08-22 00:39:03','2025-08-22 20:40:00'),(10,2,'Felipe Cubillo','felipecubillo@gmail.com','$2y$10$IAjZYwT9wu5gL.TCtqBuNeQ4z26CEP4jPMlNH1OkIo/mtP3EZp9BS',1,'2025-08-29 00:52:30','2025-08-29 00:52:30');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vin_compatibilidad_log`
--

DROP TABLE IF EXISTS `vin_compatibilidad_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vin_compatibilidad_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario_id` int NOT NULL,
  `vin` varchar(17) DEFAULT NULL,
  `producto_sugerido_id` int DEFAULT NULL,
  `fecha_busqueda` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `usuario_id` (`usuario_id`),
  KEY `producto_sugerido_id` (`producto_sugerido_id`),
  CONSTRAINT `vin_compatibilidad_log_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`),
  CONSTRAINT `vin_compatibilidad_log_ibfk_2` FOREIGN KEY (`producto_sugerido_id`) REFERENCES `producto` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vin_compatibilidad_log`
--

LOCK TABLES `vin_compatibilidad_log` WRITE;
/*!40000 ALTER TABLE `vin_compatibilidad_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `vin_compatibilidad_log` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-28 23:27:29
