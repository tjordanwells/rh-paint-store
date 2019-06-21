-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 14, 2019 at 03:15 PM
-- Server version: 5.7.25-0ubuntu0.18.04.2
-- PHP Version: 7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `anewgo_anewgo`
--

-- --------------------------------------------------------

--
-- Table structure for table `ColorLibVendor`
--

CREATE TABLE `ColorLibVendor` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ColorLibVendor`
--

INSERT INTO `ColorLibVendor` (`id`, `name`) VALUES
(1, 'PPG/Porter Paints'),
(2, 'Benjamin Moore'),
(3, 'Restoration Hardware'),
(4, 'Sherwin Williams'),
(5, 'Alside'),
(6, 'Cabot'),
(7, 'Certainteed'),
(8, 'CIL'),
(9, 'Dinesol'),
(10, 'Duron'),
(11, 'Frazee Paint'),
(12, 'ICI/Glidden/Devoe'),
(13, 'James Hardie'),
(14, 'Ply Gem - Mastic'),
(15, 'Mid American Shutters'),
(16, 'Ply Gem - Napco'),
(17, 'Parker Paints'),
(19, 'Revere Siding'),
(20, 'RMC Siding'),
(21, 'SW Deck Stains'),
(22, 'SW Wood Scapes'),
(23, 'Valspar'),
(25, 'Ply Gem - Shutters & Accents'),
(26, 'Ply Gem - Variform'),
(27, 'Foundry'),
(28, 'Piedmont Garage'),
(29, 'Color Wheel'),
(30, 'User-Defined'),
(31, 'Metal Roofing Systems'),
(32, 'Sentrigard'),
(33, 'Trademark Roofing & Gutters'),
(34, 'Minwax'),
(35, 'Olympic'),
(36, 'Sawmill'),
(37, 'Home Accents'),
(38, 'Norandex'),
(39, 'Southern Woodcraft'),
(40, 'Georgia Pacific'),
(41, 'Kelly-Moore'),
(42, 'Eagle Roofing'),
(43, 'Royal'),
(44, 'Exteria'),
(45, 'Kwal'),
(46, 'DuraSeal'),
(47, 'Ply Gem - Windows'),
(48, 'Wayne Dalton'),
(49, 'Kaycan'),
(50, 'Jeld-Wen'),
(51, 'BP'),
(52, 'Amsco'),
(53, 'Farrell-Calhoun'),
(54, 'McKee Colors'),
(55, 'LP SmartSide'),
(56, 'Pella'),
(57, 'SW Wood Classics'),
(58, 'KP Building Products'),
(59, 'MIWD'),
(60, 'Certainteed Roofing'),
(61, 'Clopay'),
(62, 'River City Door'),
(63, 'Englert'),
(64, 'Tamko'),
(65, 'Therma-Tru'),
(66, 'Amarr'),
(67, 'Lansing Windows and Doors'),
(68, 'Ply Gem - Mitten'),
(69, 'Midland Garages'),
(70, 'Simonton'),
(71, 'Alsco'),
(72, 'Timberland GAF'),
(73, 'Atrium Windows and Doors'),
(74, 'CHI Overhead Doors'),
(75, 'Metal Sales'),
(76, 'Parex'),
(77, 'AEP Span'),
(78, 'Florida Paints'),
(79, 'Wathen Stucco '),
(80, 'Omega'),
(81, 'Spectra - Gutters'),
(82, 'Delden Garage Doors'),
(83, 'Overhead Garage Doors'),
(84, 'IKO Shingles'),
(85, 'Owens Corning'),
(86, 'Diamond Vogel'),
(87, 'Mid America Garage'),
(88, 'Edge Custom Colors'),
(89, 'Hearttech/Heartland/Provia Siding'),
(90, 'DoorLink (Garage Doors)'),
(91, 'Berridge - Metal Roof'),
(92, 'StyleView Windows'),
(93, 'Anderson Windows'),
(94, 'ACM - Metals'),
(95, 'Millennium Metals'),
(96, 'Atlantic Premium Shutters'),
(97, 'Rollex'),
(98, 'McCormick'),
(99, 'Alliance Steel Building Systems'),
(100, 'Allura'),
(101, 'Weather Barr'),
(102, 'Firestone-Metal Roof'),
(103, 'Atlas Roofing'),
(104, 'Angelus Block'),
(105, 'Sierra Pacific Windows'),
(106, 'Pac-Clad Metal Roof'),
(108, 'Cedar Spectrum'),
(109, 'Vytec Siding'),
(110, 'Aleris Rolled Products'),
(111, 'WD Door'),
(112, 'Spectra - Metal Roof'),
(113, 'Dryvit'),
(114, 'Senergy'),
(115, 'Behr'),
(116, 'CMP'),
(117, 'Ply Gem - Performance'),
(118, 'Windsor Windows'),
(119, 'Gulf Coast Supply'),
(120, 'Eastern Metal Supply - Tiger Coating'),
(121, 'StoColor'),
(122, 'All Metal Works'),
(123, 'Mcelroy Metal'),
(124, 'Kitsap Garage Door'),
(125, 'SW RAL Color Card'),
(126, 'SW Powdura Powder Coatings - Epoxies'),
(127, 'SW Powdura Powder Coatings - Specialties'),
(128, 'SW Powdura Powder Coatings - Urethanes'),
(129, 'SW Powdura Powder Coatings - Hybrid'),
(130, 'SW Powdura Powder Coatings - TGIC Free'),
(131, 'SW Powdura Powder Coatings - Primers'),
(132, 'SW Powdura Powder Coatings - Polyester'),
(133, 'SW Kem Niso Primer & Topcoat System'),
(134, 'SW Standard Powdura Colors 5000'),
(135, 'SW Standard Powdura Colors 4000'),
(136, 'SW Vinyl Safe Siding'),
(137, 'Selkirk - Cut Stone'),
(138, 'Novik'),
(139, 'Home-Rail'),
(140, 'Royal - Exterior Portfolio'),
(141, 'Krestmark'),
(142, 'Main Street Colors'),
(143, 'Gentek'),
(144, 'Ply Gem - Cut Stone'),
(145, 'AZEK - Rail'),
(146, 'Argos Concrete and Grout'),
(147, 'Brixment Grout'),
(148, 'Jagoe Custom Colors'),
(149, 'Advanced Window Products'),
(150, 'JD Metals'),
(151, 'ABC Metal Roof'),
(152, 'Union Corrugating'),
(153, 'Mapei Grout'),
(154, 'Glasscraft Door Company'),
(155, 'Master Wall - Stucco'),
(156, 'Haas Doors'),
(157, 'Sentriclad'),
(158, 'Montana Ghost Wood');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ColorLibVendor`
--
ALTER TABLE `ColorLibVendor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ColorLibVendor`
--
ALTER TABLE `ColorLibVendor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
