-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2020 at 11:27 AM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `timetablemanagementsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `consecutivesessions`
--

CREATE TABLE `consecutivesessions` (
  `ConsecutiveSessionId` int(11) NOT NULL,
  `Tag` varchar(20) NOT NULL,
  `StudentGroups` varchar(30) NOT NULL,
  `Subject` varchar(30) NOT NULL,
  `NoOfStudents` int(11) NOT NULL,
  `SessionDuration` int(11) NOT NULL,
  `Session1Id` int(11) NOT NULL,
  `Session2Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `consecutivesessions`
--

INSERT INTO `consecutivesessions` (`ConsecutiveSessionId`, `Tag`, `StudentGroups`, `Subject`, `NoOfStudents`, `SessionDuration`, `Session1Id`, `Session2Id`) VALUES
(1, 'Lecture , Tute', 'Y1.S1.10', 'HCI(IT3050)', 240, 3, 1, 2),
(2, 'Lecture , Tute', 'Y2.S2.11', 'IWT(IT1010)', 240, 3, 4, 5),
(4, 'Lecture , Tute', 'Y2.S2.11', 'HCI(IT3050)', 300, 3, 6, 7),
(10, 'Lecture , Tute', 'Y1.S1.10', 'HCI(IT3050)', 220, 3, 1, 11),
(11, 'Lecture , Lecture', 'Y1.S1.10', 'HCI(IT3050)', 240, 4, 24, 28);

-- --------------------------------------------------------

--
-- Table structure for table `lecturers`
--

CREATE TABLE `lecturers` (
  `LecturerTableID` int(11) NOT NULL,
  `LecturerID` int(11) NOT NULL,
  `LecturerName` varchar(50) NOT NULL,
  `Title` varchar(20) NOT NULL,
  `Faculty` varchar(50) NOT NULL,
  `Department` varchar(50) NOT NULL,
  `Center` varchar(50) NOT NULL,
  `Building` varchar(50) NOT NULL,
  `Category` varchar(50) NOT NULL,
  `Level` int(11) NOT NULL,
  `Rank` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lecturers`
--

INSERT INTO `lecturers` (`LecturerTableID`, `LecturerID`, `LecturerName`, `Title`, `Faculty`, `Department`, `Center`, `Building`, `Category`, `Level`, `Rank`) VALUES
(79, 100000, 'Rashmi Samindra', 'Miss', 'Computing', 'CSSE', 'Malabe', 'Main building', 'Assistant Lecturer (Level 6) ', 6, '6.100000'),
(80, 100079, 'Saman Perera', 'Prof', 'Engineering', 'ET', 'Malabe', 'Engineering Building', 'Professor (Level 1)', 1, '1.100079'),
(81, 100080, 'Maleesha Perera', 'Mrs', 'Business', 'BM', 'Metro', 'New building', 'Lecturer (Level 5) ', 5, '5.100080');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `LocationID` int(11) NOT NULL,
  `BuildingName` varchar(20) NOT NULL,
  `RoomName` varchar(20) NOT NULL,
  `RoomType` varchar(15) NOT NULL,
  `FloorNo` int(11) DEFAULT NULL,
  `RoomNo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`LocationID`, `BuildingName`, `RoomName`, `RoomType`, `FloorNo`, `RoomNo`) VALUES
(1, 'Main Building', 'A502', 'Lecture Hall', 5, 2),
(2, 'New Building ', 'F501', 'Lecture Hall', 5, 1),
(3, 'New Building', 'N3C', 'Lecture Hall', 3, 3),
(5, 'Main Building ', 'B401-Pclab', 'Laboratory', 4, 1),
(6, 'Main Building ', 'A307', 'Lecture Hall', 3, 1),
(15, 'Main Building ', 'B509', 'Lecture Hall', 5, 1),
(16, 'New Building ', 'N3A-lab', 'Laboratory', 3, 2),
(20, 'Main building', 'B401-Pclab', 'Laboratory', 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `notavailable`
--

CREATE TABLE `notavailable` (
  `id` int(11) NOT NULL,
  `lecturer` varchar(500) NOT NULL,
  `room` varchar(500) NOT NULL,
  `groupName` varchar(500) NOT NULL,
  `session` varchar(400) NOT NULL,
  `day` varchar(250) NOT NULL,
  `str_hours` int(11) NOT NULL,
  `str_min` int(11) NOT NULL,
  `end_hours` int(11) NOT NULL,
  `end_min` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notavailable`
--

INSERT INTO `notavailable` (`id`, `lecturer`, `room`, `groupName`, `session`, `day`, `str_hours`, `str_min`, `end_hours`, `end_min`) VALUES
(1, 'Miss.Rashmi Samindra', 'A502', 'Y1.S1.10.1', 'HCI(IT3050) Lab', 'Monday', 8, 0, 9, 0),
(2, 'Miss.Rashmi Samindra', 'A502', 'Y1.S1.10.1', 'HCI(IT3050) Lab', 'Thursday', 8, 0, 9, 0),
(3, 'Prof.Saman Perera', 'N3C', 'Y1.S1.10.1', 'HCI(IT3050) Lab', 'Wednesday', 8, 0, 9, 0),
(4, 'Dr.Nuwan Sumathipala', 'N3C', 'Y1.S1.10.1', 'HCI(IT3050) Lab', 'Friday', 13, 0, 14, 0);

-- --------------------------------------------------------

--
-- Table structure for table `notavailabletime`
--

CREATE TABLE `notavailabletime` (
  `RecordID` int(11) NOT NULL,
  `Type` varchar(30) NOT NULL,
  `NotAvailableFor` varchar(30) NOT NULL,
  `NotAvailableDay` varchar(20) NOT NULL,
  `NotAvailableFrom` varchar(20) NOT NULL,
  `NotAvailableTo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notavailabletime`
--

INSERT INTO `notavailabletime` (`RecordID`, `Type`, `NotAvailableFor`, `NotAvailableDay`, `NotAvailableFrom`, `NotAvailableTo`) VALUES
(1, 'Sub Groups', 'Y1.S1.CSSE.12.1', 'Thursday', '08.30', '10.00'),
(2, 'Groups', 'Y1.S1.IT.15', 'Saturday', '10.30', '11.00'),
(5, 'Sessions', '8', 'Tuesday', '09.00', '11.00'),
(9, 'Groups', 'Y1.S1.IM.12', 'Monday', '08.00', '08.00'),
(10, 'Sub Groups', 'Y1.S1.CS.19.1', 'Tuesday', '08.00', '17.30'),
(14, 'Lecturers', 'Sadun  -  2.100000', 'Monday', '08.00', '11.30'),
(16, 'Lecturers', 'Maleesha  -  2.100075', 'Thursday', '09.30', '11.30'),
(17, 'Lecturers', 'Hasini  -  3.100071', 'Friday', '08.00', '11.00'),
(18, 'Groups', 'Y3.S2.CSSE.12', 'Wednessday', '10.00', '10.30'),
(19, 'Lecturers', 'Maleesha  -  2.100075', 'Friday', '09.00', '10.00'),
(20, 'Groups', 'Y4.S1.IT.20', 'Thursday', '10.00', '13.30');

-- --------------------------------------------------------

--
-- Table structure for table `notoverlappingsessions`
--

CREATE TABLE `notoverlappingsessions` (
  `TableId` int(11) NOT NULL,
  `NotOverlappingSessionId` int(11) NOT NULL,
  `SessionId` int(11) NOT NULL,
  `Subject` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notoverlappingsessions`
--

INSERT INTO `notoverlappingsessions` (`TableId`, `NotOverlappingSessionId`, `SessionId`, `Subject`) VALUES
(12, 111, 4, 'IWT(IT1010)'),
(17, 113, 13, 'SPM(SE3020)'),
(19, 113, 9, 'ISDM(SE3019)'),
(20, 119, 12, 'SPM(SE3020)'),
(22, 119, 6, 'HCI(IT3050)'),
(23, 119, 4, 'IWT(IT1010)');

-- --------------------------------------------------------

--
-- Table structure for table `parallelsessiondetails`
--

CREATE TABLE `parallelsessiondetails` (
  `parallelSessionDetailsID` int(11) NOT NULL,
  `startingTime` varchar(20) NOT NULL,
  `day` varchar(20) NOT NULL,
  `duration` varchar(20) NOT NULL,
  `endTime` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parallelsessiondetails`
--

INSERT INTO `parallelsessiondetails` (`parallelSessionDetailsID`, `startingTime`, `day`, `duration`, `endTime`) VALUES
(1, '08.00', 'Monday', '2', '10.0'),
(3, '08.00', 'Monday', '5', '13.0'),
(25, '08.00', 'Monday', '1', '9.0'),
(26, '09.00', 'Saturday', '1', '10.0'),
(27, '11.00', 'Sunday', '2', '13.0'),
(28, '09.30', 'Sunday', '1', '10.3'),
(33, '15.00', 'Sunday', '2', '17.0'),
(34, '15.00', 'Sunday', '3', '18.0'),
(35, '14.00', 'Saturday', '2', '16.0');

-- --------------------------------------------------------

--
-- Table structure for table `parallelsessions`
--

CREATE TABLE `parallelsessions` (
  `TableId` int(11) NOT NULL,
  `parallelSessionId` int(11) NOT NULL,
  `SessionId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parallelsessions`
--

INSERT INTO `parallelsessions` (`TableId`, `parallelSessionId`, `SessionId`) VALUES
(1, 25, 6),
(2, 25, 1),
(3, 26, 1),
(4, 26, 2),
(5, 25, 9),
(6, 27, 4),
(7, 27, 6),
(8, 28, 1),
(9, 28, 11),
(10, 28, 10),
(11, 34, 10),
(12, 34, 9),
(13, 35, 1),
(14, 35, 11),
(15, 35, 10);

-- --------------------------------------------------------

--
-- Table structure for table `programms`
--

CREATE TABLE `programms` (
  `ProgrammeID` int(11) NOT NULL,
  `ProgrammeName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `programms`
--

INSERT INTO `programms` (`ProgrammeID`, `ProgrammeName`) VALUES
(1, 'Computing');

-- --------------------------------------------------------

--
-- Table structure for table `roomsforconsecutivesessions`
--

CREATE TABLE `roomsforconsecutivesessions` (
  `ConSessionLocId` int(11) NOT NULL,
  `ConSessionId` int(11) NOT NULL,
  `ConTag` varchar(25) NOT NULL,
  `BuildingId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roomsforconsecutivesessions`
--

INSERT INTO `roomsforconsecutivesessions` (`ConSessionLocId`, `ConSessionId`, `ConTag`, `BuildingId`) VALUES
(1, 2, 'Lecture , Tute', 1),
(3, 1, 'Lecture , Tute', 1),
(4, 5, 'Lecture , Lecture', 2),
(5, 4, 'Lecture , Tute', 3);

-- --------------------------------------------------------

--
-- Table structure for table `roomsforlecturers`
--

CREATE TABLE `roomsforlecturers` (
  `LecLocationId` int(11) NOT NULL,
  `LecturerId` int(11) NOT NULL,
  `BuildingName` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roomsforlecturers`
--

INSERT INTO `roomsforlecturers` (`LecLocationId`, `LecturerId`, `BuildingName`) VALUES
(3, 1, 'Main Building'),
(5, 2, 'New Building');

-- --------------------------------------------------------

--
-- Table structure for table `roomsforsessions`
--

CREATE TABLE `roomsforsessions` (
  `sessionlocationId` int(11) NOT NULL,
  `sessionId` int(11) NOT NULL,
  `tag` varchar(10) NOT NULL,
  `buildingId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roomsforsessions`
--

INSERT INTO `roomsforsessions` (`sessionlocationId`, `sessionId`, `tag`, `buildingId`) VALUES
(2, 14, 'Lecture', 1),
(3, 15, 'Tute', 2),
(5, 16, 'Lab', 20);

-- --------------------------------------------------------

--
-- Table structure for table `roomsforstudentgroups`
--

CREATE TABLE `roomsforstudentgroups` (
  `GroupLocationId` int(11) NOT NULL,
  `GroupId` int(11) NOT NULL,
  `BuildingName` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roomsforstudentgroups`
--

INSERT INTO `roomsforstudentgroups` (`GroupLocationId`, `GroupId`, `BuildingName`) VALUES
(1, 1, 'Main Building'),
(2, 2, 'New Building '),
(3, 4, 'Main Building '),
(9, 3, 'Main Building');

-- --------------------------------------------------------

--
-- Table structure for table `roomsforstudentsubgroups`
--

CREATE TABLE `roomsforstudentsubgroups` (
  `SubGroupLocationId` int(11) NOT NULL,
  `SubGroupId` int(11) NOT NULL,
  `BuildingName` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roomsforstudentsubgroups`
--

INSERT INTO `roomsforstudentsubgroups` (`SubGroupLocationId`, `SubGroupId`, `BuildingName`) VALUES
(1, 1, 'New Building '),
(2, 2, 'Main Building'),
(4, 3, 'New Building '),
(5, 5, 'Main Building'),
(6, 4, 'New Building ');

-- --------------------------------------------------------

--
-- Table structure for table `roomsforsubjects`
--

CREATE TABLE `roomsforsubjects` (
  `id` int(11) NOT NULL,
  `SubjectID` int(11) NOT NULL,
  `BuildingID` int(11) NOT NULL,
  `RoomType` varchar(15) NOT NULL,
  `SubjectTag` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roomsforsubjects`
--

INSERT INTO `roomsforsubjects` (`id`, `SubjectID`, `BuildingID`, `RoomType`, `SubjectTag`) VALUES
(12, 1, 1, 'Lecture Hall', 'Lecture'),
(13, 4, 16, 'Laboratory', 'Lecture');

-- --------------------------------------------------------

--
-- Table structure for table `roomsfortags`
--

CREATE TABLE `roomsfortags` (
  `TagRoomId` int(11) NOT NULL,
  `TagName` varchar(15) NOT NULL,
  `BuildingId` int(11) NOT NULL,
  `RoomType` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roomsfortags`
--

INSERT INTO `roomsfortags` (`TagRoomId`, `TagName`, `BuildingId`, `RoomType`) VALUES
(9, 'Lecture', 2, 'Lecture Hall'),
(10, 'Lab', 16, 'Laboratory'),
(11, 'Lab', 20, 'Laboratory'),
(13, 'Tutorial', 3, 'Lecture Hall'),
(14, 'Tute', 2, 'Lecture Hall');

-- --------------------------------------------------------

--
-- Table structure for table `roomsnotavailable`
--

CREATE TABLE `roomsnotavailable` (
  `NARoomId` int(11) NOT NULL,
  `NARoomName` varchar(25) NOT NULL,
  `NARoomType` varchar(25) NOT NULL,
  `NADay` varchar(25) NOT NULL,
  `NATimeFrom` varchar(25) NOT NULL,
  `NATimeTo` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roomsnotavailable`
--

INSERT INTO `roomsnotavailable` (`NARoomId`, `NARoomName`, `NARoomType`, `NADay`, `NATimeFrom`, `NATimeTo`) VALUES
(1, 'B509', 'Lecture Hall', 'Monday', '08.30', '10.30'),
(2, 'B401-Pclab', 'Lab', 'Friday', '3.30', '4.30');

-- --------------------------------------------------------

--
-- Table structure for table `sessionlecturers`
--

CREATE TABLE `sessionlecturers` (
  `SessionLecturerTableID` int(11) NOT NULL,
  `SessionId` int(11) NOT NULL,
  `LecturerName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sessionlecturers`
--

INSERT INTO `sessionlecturers` (`SessionLecturerTableID`, `SessionId`, `LecturerName`) VALUES
(38, 24, 'Prof.Saman Perera'),
(39, 24, 'Miss.Rashmi Samindra'),
(40, 24, 'Mrs.Maleesha Perera'),
(41, 25, 'Miss.Rashmi Samindra'),
(42, 25, 'Mrs.Maleesha Perera'),
(43, 26, 'Miss.Rashmi Samindra'),
(44, 26, 'Mrs.Maleesha Perera'),
(47, 28, 'Dr.Nuwan Sumathipala'),
(48, 28, 'Mrs.Maleesha Perera'),
(49, 29, 'Mrs.Maleesha Perera'),
(50, 30, 'Miss.Rashmi Samindra'),
(51, 30, 'Prof.Saman Perera'),
(52, 31, 'Prof.Saman Perera'),
(53, 31, 'Mrs.Maleesha Perera'),
(54, 32, 'Miss.Rashmi Samindra'),
(55, 32, 'Prof.Saman Perera');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `SessionId` int(11) NOT NULL,
  `Tag` varchar(20) NOT NULL,
  `StudentGroup` varchar(20) NOT NULL,
  `Subject` varchar(50) NOT NULL,
  `NoOfStudents` int(11) NOT NULL,
  `SessionDuration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`SessionId`, `Tag`, `StudentGroup`, `Subject`, `NoOfStudents`, `SessionDuration`) VALUES
(24, 'Lecture', 'Y1.S1.10', 'HCI(IT3050)', 120, 2),
(25, 'Tute', 'Y1.S1.10', 'HCI(IT3050)', 120, 1),
(26, 'Lab', 'Y1.S1.10.1', 'HCI(IT3050)', 60, 2),
(28, 'Lecture', 'Y1.S1.10', 'SPM(SE3020)', 120, 2),
(29, 'Lab', 'Y2.S2.11.2', 'HCI(IT3050)', 70, 2),
(30, 'Lecture', 'Y1.S1.10', 'HCI(IT3050)', 120, 2),
(31, 'Lab', 'Y1.S1.10', 'ISDM(SE3019)', 40, 2),
(32, 'Lecture', 'Y1.S1.10', 'HCI(IT3050)', 43, 5);

-- --------------------------------------------------------

--
-- Table structure for table `studentgroups`
--

CREATE TABLE `studentgroups` (
  `GroupNoID` int(11) NOT NULL,
  `GroupNo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentgroups`
--

INSERT INTO `studentgroups` (`GroupNoID`, `GroupNo`) VALUES
(1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `BatchID` int(11) NOT NULL,
  `AcademicYearAndSem` varchar(10) NOT NULL,
  `ProgrammeName` varchar(10) NOT NULL,
  `GroupNo` int(11) NOT NULL,
  `SubGroupNo` int(11) NOT NULL,
  `GroupId` varchar(20) NOT NULL,
  `SubGroupId` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`BatchID`, `AcademicYearAndSem`, `ProgrammeName`, `GroupNo`, `SubGroupNo`, `GroupId`, `SubGroupId`) VALUES
(1, 'Y1.S1', 'CS', 10, 1, 'Y1.S1.10', 'Y1.S1.10.1'),
(2, 'Y2.S2', 'ITP', 11, 2, 'Y2.S2.11', 'Y2.S2.11.2'),
(3, 'Y1.S1', 'Computing', 10, 3, 'Y1.S1.Computing.10', 'Y1.S1.Computing.10.3');

-- --------------------------------------------------------

--
-- Table structure for table `studentsubgroups`
--

CREATE TABLE `studentsubgroups` (
  `SubGroupNoId` int(11) NOT NULL,
  `SubGroupNo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentsubgroups`
--

INSERT INTO `studentsubgroups` (`SubGroupNoId`, `SubGroupNo`) VALUES
(1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `SubjectID` int(11) NOT NULL,
  `SubjectName` varchar(50) NOT NULL,
  `SubjectCode` varchar(10) NOT NULL,
  `OfferedYear` varchar(10) NOT NULL,
  `OfferedSem` varchar(10) NOT NULL,
  `NoOfLecHours` int(11) NOT NULL,
  `NoOfTuteHours` int(11) NOT NULL,
  `NoOfLabHours` int(11) NOT NULL,
  `NoOfEvaluationHours` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`SubjectID`, `SubjectName`, `SubjectCode`, `OfferedYear`, `OfferedSem`, `NoOfLecHours`, `NoOfTuteHours`, `NoOfLabHours`, `NoOfEvaluationHours`) VALUES
(1, 'HCI', 'IT3050', 'Y3', 'S2', 24, 14, 23, 2),
(4, 'IWT', 'IT1010', 'Y1', 'S1', 24, 14, 30, 5),
(14, 'Accounting', 'BM3070', 'Y3', 'S2', 24, 12, 24, 1),
(46, 'ISDM', 'SE3019', 'Y2', 'S1', 24, 12, 13, 1),
(47, 'SPM', 'SE3020', 'Y3', 'S1', 29, 12, 12, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `TagID` int(11) NOT NULL,
  `TagName` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`TagID`, `TagName`) VALUES
(1, 'Lecture'),
(2, 'Tute'),
(3, 'Lab');

-- --------------------------------------------------------

--
-- Table structure for table `timeslot`
--

CREATE TABLE `timeslot` (
  `timeslotId` int(11) NOT NULL,
  `TimetableID` int(11) NOT NULL,
  `timeslots` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `timeslot`
--

INSERT INTO `timeslot` (`timeslotId`, `TimetableID`, `timeslots`) VALUES
(1, 46, '8.30_9.30_10.30_11.00_11.30_12.00_13.00_14.00'),
(2, 49, '8.30_9.30_10.30_11.00_11.30_12.30_13.30'),
(3, 50, '8.30_9.30_10.30_11.30_12.00'),
(4, 51, '8.30_9.30_10.00_11.00_11.30_12.30_13.30_14.30_15.00_16.00_17.00_18.00_19.00_19.30'),
(5, 52, '8.30_9.30_10.30_11.00_12.00_13.00_13.30_14.30_15.30_16.00'),
(6, 52, '8.30_9.30_10.30_11.00_12.00_13.00_13.30_14.30_15.30_16.00_9.30_10.30_11.30'),
(7, 54, '8.30_9.30_10.30_11.30_12.30'),
(8, 55, '8.30_9.30_10.00_11.00_12.00_12.30_13.30_14.30'),
(9, 56, '8.30_9.30_10.00_11.00_12.00_12.30_13.30_14.00_15.00_16.00'),
(10, 58, '8.30_9.30_10.00_11.00_12.00_12.30_13.00_13.30_14.30_15.30_16.30_17.30'),
(11, 62, '8.30_9.30_10.00_11.00_12.00_13.00_14.00_15.00_15.30_16.30_17.00_18.00_18.30'),
(12, 63, '8.30_9.30'),
(13, 65, '8.30_9.30_10.00_11.00_12.00_13.00_13.30_14.30_15.00_16.00_17.00_17.30_18.30_19.00'),
(14, 66, '8.30_9.30_10.30_11.30_12.30_13.00_13.30_14.30_15.30_16.30'),
(15, 67, '8.30_9.30_10.00_11.00_12.00_13.00_14.00_15.00_16.00_16.30'),
(16, 68, '8.30_9.30_10.30_11.00_12.00_13.00_14.00_15.00'),
(17, 69, '8.30_9.30_10.30_11.00_12.00'),
(18, 70, '8.30_9.30_10.00_11.00_12.00_13.00_14.00_15.00_16.00'),
(19, 70, '8.30_9.30_10.00_11.00_12.00_13.00_14.00_15.00_16.00'),
(20, 72, '8.30_9.30_10.30_11.00_12.00_13.00_14.00_15.00_16.00_17.00_18.00'),
(21, 73, '8.30_9.30_10.30_11.30_12.30_13.30_14.00_14.30_15.30_16.30_17.30'),
(22, 74, '8.30_9.30_10.30_11.00_12.00_13.00_14.00_15.00_16.00_17.00_18.00'),
(23, 75, '8.30_9.30_10.30_11.30_12.00_12.30_13.30_14.30'),
(24, 76, '8.30_9.30_10.30_11.30_12.00_12.30_13.30_14.30_15.30_16.30_17.30'),
(25, 79, '8.30_9.30_10.00_11.00_12.00_13.00_14.00_15.00_16.00_17.00_18.00_19.00_20.00_21.00'),
(26, 80, '8.30_9.30_10.30_11.30_12.00_13.00_14.00_14.30'),
(27, 82, '8.30_9.30_10.00_11.00_12.00_12.30_13.30_14.30_15.00_16.00'),
(28, 83, '8.30_9.30_10.30_11.00_12.00_13.00_13.30_14.30'),
(29, 85, '8.30_9.30_10.30_11.00_12.00_13.00_14.00_15.00'),
(30, 86, '8.30_9.30_10.30_11.30_12.00_12.30_13.00'),
(31, 87, '8.30_9.30_10.30_11.30_12.30_13.30_14.00_15.00'),
(32, 88, '8.30_9.30_10.30_11.30_12.00_13.00_14.00_15.00'),
(33, 89, '8.30_9.30_10.00_11.00_12.00_13.00_14.00_15.00_16.00'),
(34, 90, '8.30_9.30_10.30'),
(35, 91, '8.30_9.30_10.30'),
(36, 92, '8.30_9.30'),
(37, 94, '8.30_9.30_10.30_11.00_12.00');

-- --------------------------------------------------------

--
-- Table structure for table `workingdays`
--

CREATE TABLE `workingdays` (
  `TimetableID` int(11) NOT NULL,
  `UserType` varchar(300) NOT NULL,
  `NoOfWorkingDays` int(11) NOT NULL,
  `WDMonday` tinyint(1) NOT NULL,
  `WDTuesday` tinyint(1) NOT NULL,
  `WDWednesday` tinyint(1) NOT NULL,
  `WDThursday` tinyint(1) NOT NULL,
  `WDFriday` tinyint(1) NOT NULL,
  `WDSaturday` tinyint(1) NOT NULL,
  `WDSunday` tinyint(1) NOT NULL,
  `WorkingHours` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `workingdays`
--

INSERT INTO `workingdays` (`TimetableID`, `UserType`, `NoOfWorkingDays`, `WDMonday`, `WDTuesday`, `WDWednesday`, `WDThursday`, `WDFriday`, `WDSaturday`, `WDSunday`, `WorkingHours`) VALUES
(1, 'Batch 16 - 2020 sem 5', 3, 1, 1, 1, 0, 0, 0, 0, '2.5'),
(2, 'Prashani Wijekon - Computing', 6, 1, 1, 1, 1, 1, 1, 0, '4.5'),
(3, 'Batch 18 - 2020', 2, 0, 0, 0, 0, 0, 1, 1, '3.5');

-- --------------------------------------------------------

--
-- Table structure for table `yearsandsem`
--

CREATE TABLE `yearsandsem` (
  `YearAndSemID` int(11) NOT NULL,
  `YearAndSem` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `yearsandsem`
--

INSERT INTO `yearsandsem` (`YearAndSemID`, `YearAndSem`) VALUES
(1, 'Y1.S1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `consecutivesessions`
--
ALTER TABLE `consecutivesessions`
  ADD PRIMARY KEY (`ConsecutiveSessionId`);

--
-- Indexes for table `lecturers`
--
ALTER TABLE `lecturers`
  ADD PRIMARY KEY (`LecturerTableID`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`LocationID`);

--
-- Indexes for table `notavailable`
--
ALTER TABLE `notavailable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notavailabletime`
--
ALTER TABLE `notavailabletime`
  ADD PRIMARY KEY (`RecordID`);

--
-- Indexes for table `notoverlappingsessions`
--
ALTER TABLE `notoverlappingsessions`
  ADD PRIMARY KEY (`TableId`);

--
-- Indexes for table `parallelsessiondetails`
--
ALTER TABLE `parallelsessiondetails`
  ADD PRIMARY KEY (`parallelSessionDetailsID`);

--
-- Indexes for table `parallelsessions`
--
ALTER TABLE `parallelsessions`
  ADD PRIMARY KEY (`TableId`),
  ADD KEY `parallel_sessions_fk` (`SessionId`),
  ADD KEY `parallel_sessionsId_fk` (`parallelSessionId`);

--
-- Indexes for table `programms`
--
ALTER TABLE `programms`
  ADD PRIMARY KEY (`ProgrammeID`);

--
-- Indexes for table `roomsforconsecutivesessions`
--
ALTER TABLE `roomsforconsecutivesessions`
  ADD PRIMARY KEY (`ConSessionLocId`),
  ADD KEY `ConSessionId` (`ConSessionId`),
  ADD KEY `BuildingId` (`BuildingId`);

--
-- Indexes for table `roomsforlecturers`
--
ALTER TABLE `roomsforlecturers`
  ADD PRIMARY KEY (`LecLocationId`),
  ADD KEY `LecturerId` (`LecturerId`);

--
-- Indexes for table `roomsforsessions`
--
ALTER TABLE `roomsforsessions`
  ADD PRIMARY KEY (`sessionlocationId`),
  ADD KEY `sessionId` (`sessionId`),
  ADD KEY `BuildingId` (`buildingId`);

--
-- Indexes for table `roomsforstudentgroups`
--
ALTER TABLE `roomsforstudentgroups`
  ADD PRIMARY KEY (`GroupLocationId`),
  ADD KEY `GroupId` (`GroupId`);

--
-- Indexes for table `roomsforstudentsubgroups`
--
ALTER TABLE `roomsforstudentsubgroups`
  ADD PRIMARY KEY (`SubGroupLocationId`),
  ADD KEY `SubGroupId` (`SubGroupId`);

--
-- Indexes for table `roomsforsubjects`
--
ALTER TABLE `roomsforsubjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `SubjectID` (`SubjectID`),
  ADD KEY `BuildingID` (`BuildingID`);

--
-- Indexes for table `roomsfortags`
--
ALTER TABLE `roomsfortags`
  ADD PRIMARY KEY (`TagRoomId`),
  ADD KEY `BuildingId` (`BuildingId`);

--
-- Indexes for table `roomsnotavailable`
--
ALTER TABLE `roomsnotavailable`
  ADD PRIMARY KEY (`NARoomId`);

--
-- Indexes for table `sessionlecturers`
--
ALTER TABLE `sessionlecturers`
  ADD PRIMARY KEY (`SessionLecturerTableID`),
  ADD KEY `SessionId` (`SessionId`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`SessionId`);

--
-- Indexes for table `studentgroups`
--
ALTER TABLE `studentgroups`
  ADD PRIMARY KEY (`GroupNoID`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`BatchID`);

--
-- Indexes for table `studentsubgroups`
--
ALTER TABLE `studentsubgroups`
  ADD PRIMARY KEY (`SubGroupNoId`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`SubjectID`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`TagID`);

--
-- Indexes for table `timeslot`
--
ALTER TABLE `timeslot`
  ADD PRIMARY KEY (`timeslotId`);

--
-- Indexes for table `workingdays`
--
ALTER TABLE `workingdays`
  ADD PRIMARY KEY (`TimetableID`);

--
-- Indexes for table `yearsandsem`
--
ALTER TABLE `yearsandsem`
  ADD PRIMARY KEY (`YearAndSemID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `consecutivesessions`
--
ALTER TABLE `consecutivesessions`
  MODIFY `ConsecutiveSessionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `lecturers`
--
ALTER TABLE `lecturers`
  MODIFY `LecturerTableID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `LocationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `notavailable`
--
ALTER TABLE `notavailable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `notavailabletime`
--
ALTER TABLE `notavailabletime`
  MODIFY `RecordID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `notoverlappingsessions`
--
ALTER TABLE `notoverlappingsessions`
  MODIFY `TableId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `parallelsessiondetails`
--
ALTER TABLE `parallelsessiondetails`
  MODIFY `parallelSessionDetailsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `parallelsessions`
--
ALTER TABLE `parallelsessions`
  MODIFY `TableId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `programms`
--
ALTER TABLE `programms`
  MODIFY `ProgrammeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roomsforconsecutivesessions`
--
ALTER TABLE `roomsforconsecutivesessions`
  MODIFY `ConSessionLocId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roomsforlecturers`
--
ALTER TABLE `roomsforlecturers`
  MODIFY `LecLocationId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roomsforsessions`
--
ALTER TABLE `roomsforsessions`
  MODIFY `sessionlocationId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roomsforstudentgroups`
--
ALTER TABLE `roomsforstudentgroups`
  MODIFY `GroupLocationId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `roomsforstudentsubgroups`
--
ALTER TABLE `roomsforstudentsubgroups`
  MODIFY `SubGroupLocationId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roomsforsubjects`
--
ALTER TABLE `roomsforsubjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `roomsfortags`
--
ALTER TABLE `roomsfortags`
  MODIFY `TagRoomId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `roomsnotavailable`
--
ALTER TABLE `roomsnotavailable`
  MODIFY `NARoomId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sessionlecturers`
--
ALTER TABLE `sessionlecturers`
  MODIFY `SessionLecturerTableID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `SessionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `studentgroups`
--
ALTER TABLE `studentgroups`
  MODIFY `GroupNoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `BatchID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `studentsubgroups`
--
ALTER TABLE `studentsubgroups`
  MODIFY `SubGroupNoId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `SubjectID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `TagID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `timeslot`
--
ALTER TABLE `timeslot`
  MODIFY `timeslotId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `workingdays`
--
ALTER TABLE `workingdays`
  MODIFY `TimetableID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `yearsandsem`
--
ALTER TABLE `yearsandsem`
  MODIFY `YearAndSemID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `roomsforsubjects`
--
ALTER TABLE `roomsforsubjects`
  ADD CONSTRAINT `roomsforsubjects_ibfk_1` FOREIGN KEY (`SubjectID`) REFERENCES `subjects` (`SubjectID`),
  ADD CONSTRAINT `roomsforsubjects_ibfk_2` FOREIGN KEY (`BuildingID`) REFERENCES `location` (`LocationID`);

--
-- Constraints for table `roomsfortags`
--
ALTER TABLE `roomsfortags`
  ADD CONSTRAINT `roomsfortags_ibfk_1` FOREIGN KEY (`BuildingId`) REFERENCES `location` (`LocationID`);

--
-- Constraints for table `sessionlecturers`
--
ALTER TABLE `sessionlecturers`
  ADD CONSTRAINT `sessionlecturers_ibfk_1` FOREIGN KEY (`SessionId`) REFERENCES `sessions` (`SessionId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
