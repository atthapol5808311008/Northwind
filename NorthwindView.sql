-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2017 at 06:41 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perlphpasp`
--

-- --------------------------------------------------------

--
-- Table structure for table `categorys`
--

CREATE TABLE `categorys` (
  `categoryid` int(4) DEFAULT NULL,
  `categoryname` varchar(40) DEFAULT NULL,
  `description` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categorys`
--

INSERT INTO `categorys` (`categoryid`, `categoryname`, `description`) VALUES
(1001, 'view', 'Smart'),
(1002, 'Pit', 'Fit'),
(1003, 'Tax', 'Big');

-- --------------------------------------------------------

--
-- Table structure for table `costomers`
--

CREATE TABLE `costomers` (
  `customerid` int(4) DEFAULT NULL,
  `companyname` varchar(40) DEFAULT NULL,
  `contactname` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `costomers`
--

INSERT INTO `costomers` (`customerid`, `companyname`, `contactname`) VALUES
(1001, 'View', 'nation'),
(1002, 'Pit', 'nation'),
(1003, 'Tax', 'nation');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `employeeid` int(4) DEFAULT NULL,
  `firstname` varchar(40) DEFAULT NULL,
  `lastname` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employeeid`, `firstname`, `lastname`) VALUES
(3001, 'Games', 'Key'),
(3002, 'Pet', 'Save'),
(3003, 'Nam', 'Staf');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `orderid` int(4) DEFAULT NULL,
  `productid` int(4) DEFAULT NULL,
  `unitprice` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`orderid`, `productid`, `unitprice`) VALUES
(5808, 311, 1),
(5808, 311, 2),
(5808, 311, 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderid` int(4) DEFAULT NULL,
  `customerid` int(4) DEFAULT NULL,
  `employeeid` int(4) DEFAULT NULL,
  `orderdate` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderid`, `customerid`, `employeeid`, `orderdate`) VALUES
(6001, 1001, 3001, '2017-09-20'),
(6002, 1002, 3002, '2017-09-20'),
(6003, 1003, 3003, '2017-09-20');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productid` int(4) DEFAULT NULL,
  `productname` varchar(40) DEFAULT NULL,
  `supplierid` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productid`, `productname`, `supplierid`) VALUES
(2001, 'Iphone', 1001),
(2002, 'Samsung', 1002),
(2003, 'Asus', 1003);

-- --------------------------------------------------------

--
-- Table structure for table `shippers`
--

CREATE TABLE `shippers` (
  `shipperid` int(4) DEFAULT NULL,
  `companyname` varchar(40) DEFAULT NULL,
  `phone` int(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shippers`
--

INSERT INTO `shippers` (`shipperid`, `companyname`, `phone`) VALUES
(6001, 'Fin', 821111111),
(6002, 'Thai', 832222222),
(6003, 'Dog', 843333333);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `supplierid` int(4) DEFAULT NULL,
  `companyname` varchar(40) DEFAULT NULL,
  `contactname` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`supplierid`, `companyname`, `contactname`) VALUES
(5001, 'Osas', 'som'),
(5002, 'Alun', 'Lamon'),
(5003, 'Smit', 'Banana');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
