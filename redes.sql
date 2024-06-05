-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: db:3306
-- Tiempo de generación: 05-06-2024 a las 16:10:35
-- Versión del servidor: 8.1.0
-- Versión de PHP: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `redes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Fortinets`
--

CREATE TABLE `Fortinets` (
  `Id` int NOT NULL,
  `Nombre` varchar(100) DEFAULT NULL,
  `Vpn_cantidad_de_túneles` int DEFAULT NULL,
  `Ethernet_LAN_RJ45_cantidad_de_puertos` int DEFAULT NULL,
  `Números_de_puertos_de_la_consola` int DEFAULT NULL,
  `Precio` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `Fortinets`
--

INSERT INTO `Fortinets` (`Id`, `Nombre`, `Vpn_cantidad_de_túneles`, `Ethernet_LAN_RJ45_cantidad_de_puertos`, `Números_de_puertos_de_la_consola`, `Precio`) VALUES
(1, 'Fortinet FortiGate 40F Firewall 5000 Mbits', 250, 4, 1, '489,32€'),
(2, 'Fortinet Fortigate 601F Network Security/Firewall Appliance', 400, 18, 1, '11.136€'),
(3, 'Fortinet Fortigate-900G ', 2500, 24, 1, '30.000€');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Hubs`
--

CREATE TABLE `Hubs` (
  `Id` int NOT NULL,
  `Nombre` varchar(100) DEFAULT NULL,
  `Voltaje_de_entrada` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Soporte_VLAN` varchar(50) DEFAULT NULL,
  `Puertos` int NOT NULL,
  `Algoritmos_de_seguridad_soportados` varchar(100) DEFAULT NULL,
  `Estándares_de_red` varchar(100) DEFAULT NULL,
  `Color_del_producto` varchar(50) DEFAULT NULL,
  `Precio` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `Hubs`
--

INSERT INTO `Hubs` (`Id`, `Nombre`, `Voltaje_de_entrada`, `Soporte_VLAN`, `Puertos`, `Algoritmos_de_seguridad_soportados`, `Estándares_de_red`, `Color_del_producto`, `Precio`) VALUES
(1, 'Cudy GS108D Switch Gigabit de Escritorio de 8 Puertos', '5 V', '', 8, '', '802.3/ab/az/u/x', 'Negro', '18,98€'),
(2, 'TP-Link LS105G Switch Gigabit 10/100/1000 Metálico No Administrado', '220 V', '', 5, '', '802.1p, 802.3ab/i/u/x', 'Azul', '17.99€'),
(3, 'TP-Link TTL-SG1428PE Switch Gigabit PoE', '100 - 240 V', '', 24, '', '802.1Q/p, 802.3/ab/af/at/u/x', 'Negro', '268.00€'),
(4, 'Aruba Instant On 1930 Switch 24G Class 4 PoE 4SFP+370W', '100 - 240 V', '', 24, '', '802.1Q/p/x, 803/ab/u/x', 'Blanco', '509.00€'),
(5, 'LevelOne WAC-200 Controlador Wireless LAN', '12 V', '', 5, '', '802.3/u/ab', 'Negro', '38,95€');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Routers`
--

CREATE TABLE `Routers` (
  `Id` int NOT NULL,
  `Nombre` varchar(100) DEFAULT NULL,
  `Wifi_Estándares` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Frecuencia_del_procesador` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Estándar_Wifi` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Tipo_de_interfaz` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Procesador_incorporado` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Seguridad_inalámbrica` varchar(100) DEFAULT NULL,
  `Precio` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `Routers`
--

INSERT INTO `Routers` (`Id`, `Nombre`, `Wifi_Estándares`, `Frecuencia_del_procesador`, `Estándar_Wifi`, `Tipo_de_interfaz`, `Procesador_incorporado`, `Seguridad_inalámbrica`, `Precio`) VALUES
(1, 'Acer Predatos Connect W6D Router Gaming Wifi 6 AX6000', '802.11a, 802.11b, 802.11g, 802.11n, 802.11ac,802.11ax', '2000 MHz', 'Wifi 6(802.11ax)', 'Gigabit Ethernet', 'Si', 'WPS', '177,99€'),
(2, 'TP-Link-MR100 Router Wi-fi N 4G LTE', '802.11b/g/n', '2,4 GHz', '802.11b/g/n', '', '', 'WEP, WPA/WPA2, WPA-PSK/WPA2-PSK', '58,84€'),
(3, 'TP-Link TL-WR841 Wireless Router Neutro 11n', '802.11b/g,n, 802.3/u', '300 MHz', '802.11b/g/n', 'Ethernet rápido', 'No', 'WEP, SSID, WPA, WPA-PSK, WPA2, WPA2-PSK, WPS,', '19.89€'),
(4, 'Asus 4G-AX56 Router WiFi 6 LTE', '802.11a/b/g/n', '2.4 GHz/5 GHz', '802.11a/b/g/n/ac/ax', 'Gigabit Ethernet', 'No', 'IPSec, SIPS', '188.26€'),
(5, 'Cudy LY700 Router 4G LTE Cat 6 Wifi AC1200 Gigabit', '802.11a/g/n/ac', '2,4 GHz/5 GHz', '802.11ac', 'Gigabit Ethernet', 'Si', 'Mac Filter, IP Filter, Domain Filter, WPS', '105.48€'),
(6, 'Mikrotik L009UiGS-2HaxD-IN Router WiFi 6', '802.11a/b/g/n/ax', '2,4 GHz', '802.11ax', 'Gigabit Ethernet', 'Si', 'WPS', '131,99€'),
(7, 'TP-Link Archer MR400 Router WiFi/4G AC1200', '802.11a/ac/b/g/n', '2,4 GHz/5 GHz', '802.11a/ac/b/g/n', 'Ethernet Rápido', '', 'WEP, WPA, WPA-PSK, WPA2, WPA2-PSK', '94,50€'),
(8, 'Cudy WR1300 Router Wifi Doble Banda AC1200', '802.11a/b/n/ac', '2,4 GHz/5 GHz', '802.11ac', 'Gigabit Ethernet', '', 'WEP, WPA, WPA-PSK, WPA2, WPA2-PSK', '35,99€'),
(9, 'Tenda AC7 Router Wifi Inteligente de Dual Band AC1200', '802.11a/g/n/ac', '2,4 GHz/5 GHz', '802.11ac', 'Ethernet Rápido', '', 'WEP, WPA, WPA-PSK, WPA2, WPA2-PSK, WPS', '105,64€'),
(10, 'MSI RadiX AXE6600 WiFi 6E Tri-Band Router Gaming', '802.11a/b/g/n/ac/ax', '2,4 GHz/5 GHz', '802.11ax', 'Gigabit Ethernet', 'Si', 'WPA, WPA2, WPA3', '383,23€');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Switches`
--

CREATE TABLE `Switches` (
  `Id` int NOT NULL,
  `Nombre` varchar(100) DEFAULT NULL,
  `Puertos` int DEFAULT NULL,
  `Tasa_de_reenvío` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Montaje_en_rack` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Fuente_de_energía` varchar(100) NOT NULL,
  `Color_del_producto` varchar(100) DEFAULT NULL,
  `Precio` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `Switches`
--

INSERT INTO `Switches` (`Id`, `Nombre`, `Puertos`, `Tasa_de_reenvío`, `Montaje_en_rack`, `Fuente_de_energía`, `Color_del_producto`, `Precio`) VALUES
(1, 'Vertiv AV116-400 Switch KVM', 16, '', 'Si', 'Corriente Alterna', 'Negro', '249,00€'),
(2, 'Netgear GS305PP Switch', 5, '144800 Mpps', 'No', '', 'Negro', '125,25€'),
(3, 'Mercusys MS108GP Switch Gestionado Gigabit', 8, '', 'No', 'Corriente Alterna', 'Negro', '39,99€'),
(4, 'TP-Link LS108G Switch Metálico No administrado', 8, '11.9 Mpps', 'No', 'Corriente Alterna', 'Azúl', '23,99€'),
(5, 'Aruba Instant On 1830 Gestionado L2 Gigabit Ethernet 1U', 48, '', 'Si', 'Corriente Alterna', 'Blanco', '379,33€'),
(6, 'TP-Link TL-SG1005P Switch Sobremesa Gigabit', 4, '', 'No', 'Corriente Alterna', 'Negro', '47,99€'),
(7, 'TP-Link TL-SG1218MP Switch Gigabit PoE', 16, '', 'Si', 'Corriente Alterna', 'Negro', '217,20€'),
(8, 'D-Link DGS-1008MP Switch Gigabit POE+', 8, '', 'Si', 'Corriente Alterna', 'Negro', '108,04€'),
(9, 'D-Link DGS-1210-26/E Smart+Switch Gestionado Ethernet Gigabit', 24, '', 'Si', 'Corriente Alterna', 'Blanco', '174.99€'),
(10, 'D-Link DGS-1100-08PV2/E Switch Gigabit PoE', 8, '11.9 Mpps', '', 'Corriente Alterna', 'Negro', '101.99€');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Fortinets`
--
ALTER TABLE `Fortinets`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `Hubs`
--
ALTER TABLE `Hubs`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `Routers`
--
ALTER TABLE `Routers`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `Switches`
--
ALTER TABLE `Switches`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Fortinets`
--
ALTER TABLE `Fortinets`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `Hubs`
--
ALTER TABLE `Hubs`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `Routers`
--
ALTER TABLE `Routers`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `Switches`
--
ALTER TABLE `Switches`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
