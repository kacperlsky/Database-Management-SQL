-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: sophia
-- Czas generowania: 03 Paź 2019, 09:23
-- Wersja serwera: 5.7.27-0ubuntu0.18.04.1
-- Wersja PHP: 7.2.19-0ubuntu0.18.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `odzinski`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `Addtofavo`
--

CREATE TABLE `Addtofavo` (
  `user_id` varchar(10) NOT NULL,
  `material_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `Addtofavo`
--

INSERT INTO `Addtofavo` (`user_id`, `material_id`) VALUES
('1111111111', '1010101010'),
('1111111112', '1010101011'),
('1111111113', '1010101012'),
('1111111114', '1010101013'),
('1111111115', '1010101014');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `Authors`
--

CREATE TABLE `Authors` (
  `material_id` varchar(10) NOT NULL,
  `author` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `Authors`
--

INSERT INTO `Authors` (`material_id`, `author`) VALUES
('1010101010', 'author1'),
('1010101011', 'author2'),
('1010101012', 'author3'),
('1010101013', 'author4'),
('1010101014', 'author5');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `Borrow`
--

CREATE TABLE `Borrow` (
  `user_id` varchar(10) NOT NULL,
  `material_id` varchar(10) NOT NULL,
  `due_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `Borrow`
--

INSERT INTO `Borrow` (`user_id`, `material_id`, `due_date`) VALUES
('1111111111', '1010101010', '2019-08-07'),
('1111111112', '1010101011', '2019-08-08'),
('1111111113', '1010101012', '2019-08-09'),
('1111111114', '1010101013', '2019-08-11'),
('1111111115', '1010101014', '2019-08-17');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `Create_label`
--

CREATE TABLE `Create_label` (
  `user_id` varchar(10) NOT NULL,
  `material_id` varchar(10) NOT NULL,
  `label_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `Create_label`
--

INSERT INTO `Create_label` (`user_id`, `material_id`, `label_id`) VALUES
('1111111111', '1010101010', '1'),
('1111111112', '1010101011', '2'),
('1111111113', '1010101012', '3'),
('1111111114', '1010101013', '4'),
('1111111115', '1010101014', '5');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `email_library`
--

CREATE TABLE `email_library` (
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `email_library`
--

INSERT INTO `email_library` (`name`, `email`) VALUES
('computer science library', 'cslib@hku.hk'),
('law library', 'lawlib@hku.hk'),
('literature library', 'litlib@hku.hk'),
('medicine library', 'medlib@hku.hk'),
('music library', 'muslib@hku.hk');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `employees`
--

CREATE TABLE `employees` (
  `name` varchar(30) NOT NULL,
  `emplo_name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `employees`
--

INSERT INTO `employees` (`name`, `emplo_name`) VALUES
('computer science library', 'employee2'),
('law library', 'employee1'),
('law library', 'employee5'),
('literature library', 'employee4'),
('music library', 'employee3');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `Fine_Fee`
--

CREATE TABLE `Fine_Fee` (
  `ID` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `currency` decimal(3,2) NOT NULL,
  `amount` decimal(5,2) NOT NULL,
  `the_overdue_book` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `Fine_Fee`
--

INSERT INTO `Fine_Fee` (`ID`, `date`, `currency`, `amount`, `the_overdue_book`) VALUES
('11', '2017-06-15', '4.32', '23.42', 'book1'),
('12', '2018-09-11', '4.32', '21.42', 'book2'),
('13', '2019-11-10', '4.20', '2.10', 'book3'),
('14', '2018-11-10', '4.21', '20.10', 'book4'),
('15', '2019-01-10', '9.20', '25.10', 'book5');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `Item`
--

CREATE TABLE `Item` (
  `item_id` varchar(10) NOT NULL,
  `status` varchar(15) NOT NULL,
  `title` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `Item`
--

INSERT INTO `Item` (`item_id`, `status`, `title`) VALUES
('1', 'available', 'title1'),
('2', 'available', 'title2'),
('3', 'not available', 'title3'),
('4', 'available', 'title4'),
('5', 'not available', 'title5');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `Label`
--

CREATE TABLE `Label` (
  `label_id` varchar(10) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `Label`
--

INSERT INTO `Label` (`label_id`, `text`) VALUES
('1', 'label1'),
('2', 'label2'),
('3', 'label3'),
('4', 'label4'),
('5', 'label5');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `Library`
--

CREATE TABLE `Library` (
  `name` varchar(30) NOT NULL,
  `address_city` varchar(40) NOT NULL,
  `address_street_name` varchar(40) NOT NULL,
  `address_street_number` int(11) NOT NULL,
  `address_postcode` varchar(10) NOT NULL,
  `type` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `Library`
--

INSERT INTO `Library` (`name`, `address_city`, `address_street_name`, `address_street_number`, `address_postcode`, `type`) VALUES
('computer science library', 'Honkg Kong', 'West Road', 14, '143021', 'department'),
('law library', 'Honkg Kong', 'West Road', 12, '143021', 'department'),
('literature library', 'Honkg Kong', 'Down Road', 15, '143021', 'department'),
('medicine library', 'Honkg Kong', 'West Road', 13, '143021', 'department'),
('music library', 'Honkg Kong', 'Down Road', 2, '143091', 'department');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `Material`
--

CREATE TABLE `Material` (
  `material_id` varchar(10) NOT NULL,
  `type` varchar(15) NOT NULL,
  `language` varchar(15) DEFAULT NULL,
  `volume` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `date_publ` date DEFAULT NULL,
  `abstr_resoruce` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `Material`
--

INSERT INTO `Material` (`material_id`, `type`, `language`, `volume`, `title`, `date_publ`, `abstr_resoruce`) VALUES
('1010101010', 'book', 'en', 3, 'title1', '2019-10-10', 'abstr1'),
('1010101011', 'book', 'en', 1, 'title2', '2019-10-11', 'abstr2'),
('1010101012', 'book', 'en', 78, 'title3', '2019-12-10', 'abstr3'),
('1010101013', 'newspaper', 'en', 300, 'title4', '2019-10-16', 'abstr4'),
('1010101014', 'paper', 'en', 31, 'title5', '2016-02-10', 'abstr5');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `Paid`
--

CREATE TABLE `Paid` (
  `user_id` varchar(10) NOT NULL,
  `material_id` varchar(10) NOT NULL,
  `bool` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `Paid`
--

INSERT INTO `Paid` (`user_id`, `material_id`, `bool`) VALUES
('1111111111', '1010101010', 'True'),
('1111111112', '1010101011', 'False'),
('1111111113', '1010101012', 'True'),
('1111111114', '1010101013', 'False'),
('1111111115', '1010101014', 'True');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `Request`
--

CREATE TABLE `Request` (
  `user_id` varchar(10) NOT NULL,
  `material_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `Request`
--

INSERT INTO `Request` (`user_id`, `material_id`) VALUES
('1111111111', '1010101010'),
('1111111114', '1010101010'),
('1111111113', '1010101013'),
('1111111115', '1010101013'),
('1111111112', '1010101014');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `Search`
--

CREATE TABLE `Search` (
  `user_id` varchar(10) NOT NULL,
  `material_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `Search`
--

INSERT INTO `Search` (`user_id`, `material_id`) VALUES
('1111111115', '1010101010'),
('1111111112', '1010101011'),
('1111111113', '1010101012'),
('1111111114', '1010101012'),
('1111111111', '1010101014');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `Tele_number`
--

CREATE TABLE `Tele_number` (
  `name` varchar(30) NOT NULL,
  `tele` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `Tele_number`
--

INSERT INTO `Tele_number` (`name`, `tele`) VALUES
('computer science library', '661661663'),
('law library', '661661661'),
('literature library', '661661664'),
('medicine library', '661661662'),
('music library', '661661665');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `Users`
--

CREATE TABLE `Users` (
  `user_id` varchar(10) NOT NULL,
  `email_address` varchar(40) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `given_names` varchar(30) DEFAULT NULL,
  `surname` varchar(30) DEFAULT NULL,
  `type` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `Users`
--

INSERT INTO `Users` (`user_id`, `email_address`, `pass`, `given_names`, `surname`, `type`) VALUES
('1111111111', 'us12@gmail.com', '1234', 'name1', 'surname1', 'student'),
('1111111112', 'us123@gmail.com', '1234', 'name2', 'surname2', 'staff'),
('1111111113', 'us1@gmail.com', '123421', 'name3', 'surname3', 'student'),
('1111111114', 'us1244@gmail.com', '1234', 'name4', 'surname4', 'student'),
('1111111115', 'prof121@gmail.com', '12211234', 'name5', 'surname5', 'professor');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `Addtofavo`
--
ALTER TABLE `Addtofavo`
  ADD PRIMARY KEY (`user_id`,`material_id`),
  ADD UNIQUE KEY `user_id` (`user_id`,`material_id`),
  ADD KEY `material_id` (`material_id`);

--
-- Indexes for table `Authors`
--
ALTER TABLE `Authors`
  ADD PRIMARY KEY (`material_id`,`author`),
  ADD UNIQUE KEY `material_id` (`material_id`,`author`);

--
-- Indexes for table `Borrow`
--
ALTER TABLE `Borrow`
  ADD PRIMARY KEY (`user_id`,`material_id`),
  ADD UNIQUE KEY `user_id` (`user_id`,`material_id`),
  ADD KEY `material_id` (`material_id`);

--
-- Indexes for table `Create_label`
--
ALTER TABLE `Create_label`
  ADD PRIMARY KEY (`user_id`,`material_id`,`label_id`),
  ADD UNIQUE KEY `user_id` (`user_id`,`material_id`,`label_id`),
  ADD KEY `material_id` (`material_id`),
  ADD KEY `label_id` (`label_id`);

--
-- Indexes for table `email_library`
--
ALTER TABLE `email_library`
  ADD PRIMARY KEY (`name`,`email`),
  ADD UNIQUE KEY `name` (`name`,`email`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`name`,`emplo_name`),
  ADD UNIQUE KEY `name` (`name`,`emplo_name`);

--
-- Indexes for table `Fine_Fee`
--
ALTER TABLE `Fine_Fee`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indexes for table `Item`
--
ALTER TABLE `Item`
  ADD PRIMARY KEY (`item_id`),
  ADD UNIQUE KEY `item_id` (`item_id`);

--
-- Indexes for table `Label`
--
ALTER TABLE `Label`
  ADD PRIMARY KEY (`label_id`),
  ADD UNIQUE KEY `label_id` (`label_id`);

--
-- Indexes for table `Library`
--
ALTER TABLE `Library`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `Material`
--
ALTER TABLE `Material`
  ADD PRIMARY KEY (`material_id`),
  ADD UNIQUE KEY `material_id` (`material_id`);

--
-- Indexes for table `Paid`
--
ALTER TABLE `Paid`
  ADD PRIMARY KEY (`user_id`,`material_id`),
  ADD UNIQUE KEY `user_id` (`user_id`,`material_id`),
  ADD KEY `material_id` (`material_id`);

--
-- Indexes for table `Request`
--
ALTER TABLE `Request`
  ADD PRIMARY KEY (`user_id`,`material_id`),
  ADD UNIQUE KEY `user_id` (`user_id`,`material_id`),
  ADD KEY `material_id` (`material_id`);

--
-- Indexes for table `Search`
--
ALTER TABLE `Search`
  ADD PRIMARY KEY (`user_id`,`material_id`),
  ADD UNIQUE KEY `user_id` (`user_id`,`material_id`),
  ADD KEY `material_id` (`material_id`);

--
-- Indexes for table `Tele_number`
--
ALTER TABLE `Tele_number`
  ADD PRIMARY KEY (`name`,`tele`),
  ADD UNIQUE KEY `name` (`name`,`tele`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`user_id`,`email_address`),
  ADD UNIQUE KEY `user_id` (`user_id`,`email_address`);

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `Addtofavo`
--
ALTER TABLE `Addtofavo`
  ADD CONSTRAINT `Addtofavo_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `Users` (`user_id`),
  ADD CONSTRAINT `Addtofavo_ibfk_2` FOREIGN KEY (`material_id`) REFERENCES `Material` (`material_id`);

--
-- Ograniczenia dla tabeli `Authors`
--
ALTER TABLE `Authors`
  ADD CONSTRAINT `Authors_ibfk_1` FOREIGN KEY (`material_id`) REFERENCES `Material` (`material_id`);

--
-- Ograniczenia dla tabeli `Borrow`
--
ALTER TABLE `Borrow`
  ADD CONSTRAINT `Borrow_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `Users` (`user_id`),
  ADD CONSTRAINT `Borrow_ibfk_2` FOREIGN KEY (`material_id`) REFERENCES `Material` (`material_id`);

--
-- Ograniczenia dla tabeli `Create_label`
--
ALTER TABLE `Create_label`
  ADD CONSTRAINT `Create_label_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `Users` (`user_id`),
  ADD CONSTRAINT `Create_label_ibfk_2` FOREIGN KEY (`material_id`) REFERENCES `Material` (`material_id`),
  ADD CONSTRAINT `Create_label_ibfk_3` FOREIGN KEY (`label_id`) REFERENCES `Label` (`label_id`);

--
-- Ograniczenia dla tabeli `email_library`
--
ALTER TABLE `email_library`
  ADD CONSTRAINT `email_library_ibfk_1` FOREIGN KEY (`name`) REFERENCES `Library` (`name`);

--
-- Ograniczenia dla tabeli `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`name`) REFERENCES `Library` (`name`);

--
-- Ograniczenia dla tabeli `Paid`
--
ALTER TABLE `Paid`
  ADD CONSTRAINT `Paid_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `Users` (`user_id`),
  ADD CONSTRAINT `Paid_ibfk_2` FOREIGN KEY (`material_id`) REFERENCES `Material` (`material_id`);

--
-- Ograniczenia dla tabeli `Request`
--
ALTER TABLE `Request`
  ADD CONSTRAINT `Request_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `Users` (`user_id`),
  ADD CONSTRAINT `Request_ibfk_2` FOREIGN KEY (`material_id`) REFERENCES `Material` (`material_id`);

--
-- Ograniczenia dla tabeli `Search`
--
ALTER TABLE `Search`
  ADD CONSTRAINT `Search_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `Users` (`user_id`),
  ADD CONSTRAINT `Search_ibfk_2` FOREIGN KEY (`material_id`) REFERENCES `Material` (`material_id`);

--
-- Ograniczenia dla tabeli `Tele_number`
--
ALTER TABLE `Tele_number`
  ADD CONSTRAINT `Tele_number_ibfk_1` FOREIGN KEY (`name`) REFERENCES `Library` (`name`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
