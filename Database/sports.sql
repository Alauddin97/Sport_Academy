-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2019 at 05:07 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sports`
--

-- --------------------------------------------------------

--
-- Table structure for table `candidate_details`
--

CREATE TABLE IF NOT EXISTS `candidate_details` (
`sno` int(4) NOT NULL,
  `name` char(25) NOT NULL,
  `father_name` text NOT NULL,
  `dob` text NOT NULL,
  `gender` text NOT NULL,
  `blood_group` text NOT NULL,
  `pno` text NOT NULL,
  `father_no` text NOT NULL,
  `field` text NOT NULL,
  `email` text NOT NULL,
  `address` text NOT NULL,
  `fee` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidate_details`
--

INSERT INTO `candidate_details` (`sno`, `name`, `father_name`, `dob`, `gender`, `blood_group`, `pno`, `father_no`, `field`, `email`, `address`, `fee`) VALUES
(1, 'Asadul Haque', 'Shahudul Haque', '28/06/1997', 'Male', 'AB+', ' 7899735920', '8660928768', 'Football', 'asad.haque788@gmail.com', 'Patna', '1500'),
(2, 'Avinash', 'anil kumar', '31/05/1997', 'Male', 'B+', ' 1236548791', '3218959865', 'Cricket', 'avi01@gmail.com', 'Patna', '1000'),
(3, 'Anuj', 'ankit', '01/02/1994', 'Male', 'B+', ' 5621457889', '1239658745', 'Cricket', 'anuj02@gmail.com', 'Patna', '1200'),
(4, 'Anirudh', 'Anil J.', '31/12/1998', 'Male', 'AB+', ' 2561458796', '3258741963', 'Cricket', 'ani09@gmail.com', 'rajasthan', '5000'),
(5, 'kaustav', 'jay mehta', '05/08/1999', 'Male', 'B-', ' 7854126932', '1502654789', 'Cricket', 'kastav76@gmail.com', 'Bangalore', '1600'),
(6, 'Adnan', 'Sayed Aslam', '21/05/1998', 'Male', 'AB+', ' 8670192562', '3218959878', 'Football', 'adnan2105@gmail.com', 'mangalore', '1200'),
(7, 'Manish', 'Manoj k.', '22/08/1997', 'Male', 'B+', ' 5236418596', '145368596', 'Football', 'mani45@gmail.com', 'Assam', '2000'),
(8, 'Mansi', 'Manoj singh', '31/01/1998', 'Female', 'AB+', ' 8596742010', '3256897410', 'Football', 'mansi09@yahoo.com', 'kolkata', '2000'),
(9, 'Ashish', 'xavier', '15/03/1996', 'Male', 'B+', ' 7854968574', '1254789630', 'Football', 'ashish654@gmail.com', 'Patna', '1300'),
(10, 'Arjun', 'Aarav singh', '05/05/1992', 'Male', 'AB-', ' 2012301450', '2012012385', 'Football', 'arjun10@yahoo.com', 'indore', '1400'),
(11, 'Aditya', 'sooraj kumar', '03/03/1995', 'Male', 'B-', ' 2145638596', '5412896325', 'Football', 'adi07@gmail.com', 'Mumbai', '6500'),
(12, 'Arnav', 'Anil R.', '06/07/1998', 'Male', 'B+', ' 2012365412', '2689547123', 'Football', 'arnav01@outlook.com', 'Ranchi', '1000'),
(13, 'Shaurya', 'Ranvir singh', '02/08/1992', 'Male', 'O+', ' 5263985263', '1569874569', 'Football', 'Shaurya23@gmail.com', 'Jaipur', '1600'),
(14, 'Ankita', 'Aadi singh', '06/08/1997', 'Female', 'AB+', ' 1201235650', '3012563251', 'Football', 'Ankita56@gmail.com', 'Chennai', '1800'),
(15, 'Anadi', 'Jai kumar', '06/07/1997', 'Male', 'B+', ' 2036985741', '8088459876', 'Cricket', 'Adi67@yahoo.com', 'Delhi', '1900'),
(16, 'Yusuf', 'Asif S.', '30/01/1992', 'Male', 'AB+', ' 1265897458', '3012589745', 'Cricket', 'yusuf45@gmail.com', 'Patna', '3200'),
(17, 'Hamza', 'S. Huzaifa ', '05/06/1997', 'Male', 'B+', ' 1298658951', '1256897458', 'Cricket', 'Hamza89@gmail.com', 'Manipur', '1000'),
(18, 'Asif ali', 'Sarfaraz Khan', '01/01/1990', 'Male', 'AB-', ' 8032568974', '9032145698', 'Cricket', 'Ali786@gmal.com', 'Haryana', '2500'),
(19, 'Kamran', 'Shahid M.', '06/12/1995', 'Male', 'B+', ' 9099784562', '7458968574', 'Cricket', 'kamran67@yahoo.com', 'Patna', '1100'),
(20, 'Ali ahmad', 'mohammad khan', '09/03/1998', 'Male', 'O+', ' 9685741020', '9878965456', 'Cricket', 'Ahmad21@yahoo.com', 'Assam', '1500'),
(21, 'Muhammad', 'Abbas khan', '20/05/1997', 'Male', 'B+', ' 9865322875', '7894561230', 'Tennis', 'muha01@gmail.com', 'Haryana', '1200'),
(22, 'Ayaan', 'Ayub S.', '02/02/1994', 'Male', 'AB+', ' 9856748596', '8596748576', 'Tennis', 'Ayaan21@gmail.com', 'lucknow', '1500'),
(23, 'Sania', 'Adam K.', '03/07/1998', 'Female', 'B+', ' 8596748596', '7496859674', 'Tennis', 'Sania@yahoo.com', 'Bangalore', '1600'),
(24, 'Roger Federer', 'novak D.', '02/05/1992', 'Male', 'AB+', ' 7485962536', '8514258596', 'Tennis', 'Roger32@gmail.com', 'Switzerland', '2500'),
(25, 'Roberto', 'Agenor', '02/06/1988', 'Male', 'B+', ' 8596251485', '7414010265', 'Tennis', 'Roberto21@gmail.com', 'Spain', '3600'),
(26, 'john', 'alexander', '06/06/1991', 'Male', 'B+', ' 8596789874', '8547698565', 'Tennis', 'john32@yahoo.com', 'Australia', '4200'),
(27, 'vijay', 'amrit raj', '06/04/1993', 'Male', 'B+', ' 7485962514', '6589748596', 'Tennis', 'vijay2105@gmail.com', 'Delhi', '2540'),
(28, 'Kristina', 'Dwayne', '01/05/1990', 'Female', 'O+', ' 2563418596', '1453696851', 'Tennis', 'kristina21@gmail.com', 'France', '5500'),
(29, 'Margaret', 'Molesworth', '15/09/1990', 'Female', 'B+', ' 1474852596', '5478965874', 'Tennis', 'Margaret2@gmail.com', 'Australia', '5000'),
(30, 'Alicia Molik', 'Tim Suivan ', '27/01/1981', 'Female', 'B+', ' 8596256788', '8536964574', 'Tennis', 'alicia23@yahoo.com', 'Perth', '3600'),
(31, 'Sardar Singh', 'Gurnam Singh', '15/07/1986', 'Male', 'B+', ' 9685257496', '7485968574', 'Hockey', 'SardarS32@gmail.com', 'Haryana', '6000'),
(32, 'Dhyan Chand', 'Sameshwar Singh', '29/08/1982', 'Male', 'B+', ' 7896587496', '8565459878', 'Hockey', 'Dhyan21@gmail.com', 'Allahabad', '3500'),
(33, 'Manpreet Singh', 'Rupinder S.', '29/06/1992', 'Male', 'B+', ' 9696852541', '7485962563', 'Hockey', 'manpreet@gmail.com', 'Punjab', '2600'),
(34, 'Sunil vital', 'Dhanraj R.', '16/11/1984', 'Male', 'B+', ' 7487986585', '8574968596', 'Hockey', 'Sunil24@gmai.com', 'Bangalore', '1600'),
(35, 'Dhanraj pillay', 'Nagalingam', '16/07/1968', 'Male', 'B+', ' 9878546585', '7485968975', 'Hockey', 'Dhanraj78@gmail.com', 'Pune', '4500'),
(36, 'harpreet singh', 'manpret singh', '03/08/1982', 'Male', 'B+', ' 6578987485', '7485968956', 'Hockey', 'harpreet@gmail.com', 'Punjab', '4500'),
(37, 'Bharat chetri', 'S.K. Uthappa', '12/08/1992', 'Male', 'A+', ' 7800256410', '9820123652', 'Hockey', 'bharat@gmail.com', 'Haryana', '3000'),
(38, 'Kothajit singh', 'Neeraj singh', '17/08/1992', 'Male', 'B+', ' 7854968596', '1254896325', 'Hockey', 'kothajit2@yahoo.com', 'Imphal', '5400'),
(39, 'K. D. singh', 'Dhanraj R.', '02/02/1991', 'Male', 'B+', ' 7812654896', '7658958569', 'Hockey', 'kdsingh@gmail.com', 'lucknow', '5200'),
(40, 'Ravi', 'Ram Prakash', '14/04/1997', 'Male', 'A-', ' 64656565568', '65656448722', 'Hockey', 'raviprakash@hotmail.com', 'Bihar', '500'),
(41, '9998', 'Reo', '2019-11-01', 'Male', 'B-', ' 123567891', '4851259685', 'Hockey', 'alen.maxx17@gmail.com', 'TIPPU SULTAN HOSTEL', '1200'),
(42, 'Rajeshwari', 'maya', '2019-11-05', 'Female', 'A-', ' 4556667', '65765657', 'Cricket', 'rajeshwari_maya@gmail.com', 'jp nagar', '56676'),
(43, 'Priya', 'Uttam', '1994-08-13', 'Female', 'AB+', ' 8956356565', '9865312123', 'Tennis', 'priya@gmail.com', 'Bihar', '1200'),
(46, 'ALAUDDIN AHMED', 'A.G.Ahmed', '2019-12-05', 'Male', 'B-', ' 09611270985', '231321323', 'Football', 'alen.maxx17@gmail.com', 'HOUSE NO.117,', '1233');

-- --------------------------------------------------------

--
-- Table structure for table `coach_details`
--

CREATE TABLE IF NOT EXISTS `coach_details` (
  `name` varchar(25) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `role` varchar(25) NOT NULL,
  `sal` varchar(10) NOT NULL,
  `doj` varchar(10) NOT NULL,
  `pno` varchar(10) NOT NULL,
  `ssn` varchar(10) NOT NULL,
  `field` varchar(10) NOT NULL,
  `email` varchar(25) NOT NULL,
  `address` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coach_details`
--

INSERT INTO `coach_details` (`name`, `dob`, `gender`, `role`, `sal`, `doj`, `pno`, `ssn`, `field`, `email`, `address`) VALUES
('Adnan', '03/06/1997', 'Male', 'Head Coach', '20000', '02/10/2006', '8929319292', '001', 'Football', 'adnan@gmail.com', 'manglore'),
('Rashidul', '17/10/1990', 'Male', 'Mentor', '15000', '31/11/2009', '9239393192', '002', 'Cricket', 'rashidul12@yahoo.com', 'Punjab'),
('Alauddin', '02/11/1997', 'Male', 'Head Coach', '20000', '09/03/2010', '9611270985', '003', 'Cricket', 'alauddin.ahmed93@yahoo.in', 'Assam'),
('Zartab', '31/10/1991', 'Male', 'Manager', '25000', '20/11/2010', '6363628137', '004', 'Cricket', 'dadada@hotmail.com', 'Patna'),
('farhan', '19/12/1994', 'Male', 'Manager', '25000', '18/01/2012', '9302930293', '005', 'Football', 'hajdhj@gmail.com', 'Lucknow'),
('Hasif', '29/02/1998', 'Male', 'Mentor', '15000', '25/10/2013', '929933132', '006', 'Hockey', 'idsdsui@gmail.com', 'Kashmir'),
('Farida', '23/10/1985', 'Female', 'Head Coach', '20000', '01/10/2010', '98398392', '007', 'Tennis', 'mystic@gmail.com', 'Assam'),
('Pawan', '13/12/1992', 'Male', 'Head Coach', '20000', '18/01/2012', '892389283', '008', 'Hockey', 'apap@gmail.com', 'Bangalore'),
('Yasmin', '27/03/1983', 'Female', 'Mentor', '15000', '09/07/2008', '7327392739', '009', 'Tennis', 'yasmin@yahoo.in', 'Mysore'),
('Khurshid', '03/06/1991', 'Male', 'Mentor', '15000', '09/07/2010', '934939439', '010', 'Football', 'kajdkjd@yahoo.in', 'Manipur'),
('Sarah', '09/10/1980', 'Female', 'Manager', '25000', '23/01/2009', '739239289', '011', 'Tennis', 'iliyas@hotmail.com', 'Mysore'),
('Ibrahim', '02/11/1996', 'Male', 'Manager', '25000', '09/11/1991', '749324934', '012', 'Hockey', 'saiudi@yahoo.in', 'Bihar');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('user', 'pass');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidate_details`
--
ALTER TABLE `candidate_details`
 ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `coach_details`
--
ALTER TABLE `coach_details`
 ADD PRIMARY KEY (`ssn`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `candidate_details`
--
ALTER TABLE `candidate_details`
MODIFY `sno` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=48;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
