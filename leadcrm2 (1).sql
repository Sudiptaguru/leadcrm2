-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2021 at 04:43 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `leadcrm2`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts_form_elements`
--

CREATE TABLE `accounts_form_elements` (
  `accounts_form_element_id` int(11) NOT NULL,
  `form_element` varchar(191) NOT NULL,
  `form_element_name` varchar(191) NOT NULL,
  `element_type` varchar(191) NOT NULL,
  `rank` int(11) NOT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accounts_form_elements`
--

INSERT INTO `accounts_form_elements` (`accounts_form_element_id`, `form_element`, `form_element_name`, `element_type`, `rank`, `status`, `created_at`) VALUES
(1, 'Name', 'name', 'text', 1, 1, '2020-12-29 11:30:32'),
(2, 'Website', 'website', 'text', 2, 1, '2020-12-29 11:30:32'),
(3, 'Phone', 'phone', 'text', 3, 1, '2020-12-29 11:37:09'),
(4, 'Sales Owner', 'sales-owner', 'text', 4, 1, '2020-12-29 11:37:09');

-- --------------------------------------------------------

--
-- Table structure for table `assign_project`
--

CREATE TABLE `assign_project` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `assign_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assign_project`
--

INSERT INTO `assign_project` (`id`, `project_id`, `user_id`, `assign_date`) VALUES
(3, 10, 8, '2020-06-11'),
(4, 14, 8, '2020-07-14'),
(5, 16, 8, '2020-07-21'),
(6, 17, 8, '2020-07-30'),
(7, 28, 8, '2020-09-14');

-- --------------------------------------------------------

--
-- Table structure for table `assign_project1_1108`
--

CREATE TABLE `assign_project1_1108` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `assign_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assign_project1_1108`
--

INSERT INTO `assign_project1_1108` (`id`, `project_id`, `user_id`, `assign_date`) VALUES
(1, 8, 8, '2020-06-08'),
(2, 1, 8, '2020-06-08'),
(3, 10, 8, '2020-06-11'),
(4, 14, 8, '2020-07-14'),
(5, 16, 8, '2020-07-21'),
(6, 17, 8, '2020-07-30');

-- --------------------------------------------------------

--
-- Table structure for table `assign_project_old`
--

CREATE TABLE `assign_project_old` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `assign_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assign_project_old`
--

INSERT INTO `assign_project_old` (`id`, `project_id`, `user_id`, `assign_date`) VALUES
(1, 22, 6, '2018-10-30'),
(2, 1, 6, '2020-01-06'),
(3, 11, 7, '2020-06-02'),
(4, 20, 4, '2020-06-10'),
(5, 36, 34, '2020-07-29'),
(6, 35, 18, '2020-07-29'),
(7, 25, 21, '2020-07-29'),
(8, 37, 39, '2020-08-04'),
(9, 23, 20, '2020-08-05'),
(10, 38, 19, '2020-08-06'),
(11, 43, 7, '2020-08-07'),
(12, 47, 6, '2020-08-10'),
(13, 48, 4, '2020-08-10'),
(14, 51, 7, '2020-08-10'),
(15, 45, 6, '2020-08-10'),
(16, 44, 39, '2020-08-10');

-- --------------------------------------------------------

--
-- Table structure for table `campaign_master`
--

CREATE TABLE `campaign_master` (
  `campaign_id` int(11) NOT NULL,
  `campaign_generated_no` varchar(255) NOT NULL,
  `campaign_name` varchar(255) NOT NULL,
  `company_id` int(255) NOT NULL,
  `campaign_start_date` varchar(255) NOT NULL,
  `campaign_end_date` varchar(255) NOT NULL,
  `campaign_source_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_by` int(11) NOT NULL COMMENT 'user_id',
  `date_of_crateion` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_of_update` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `campaign_master`
--

INSERT INTO `campaign_master` (`campaign_id`, `campaign_generated_no`, `campaign_name`, `company_id`, `campaign_start_date`, `campaign_end_date`, `campaign_source_id`, `status`, `created_by`, `date_of_crateion`, `date_of_update`) VALUES
(1, 'fitser-ppc-01', 'Fiser PPC1', 1, '02-06-2020', '01-07-2020', 1, 1, 0, '2020-06-11 11:15:32', '2020-08-10 02:08:46'),
(2, 'def-test-ppc-01', 'DEF Test PPC', 2, '02-06-2020', '01-07-2020', 0, 1, 0, '2020-06-11 11:15:32', '2020-08-04 04:38:31'),
(3, 'abc-test-fb-02', 'ABC Test FB', 2, '19-06-2020', '25-06-2020', 0, 1, 0, '2020-06-12 12:47:50', ''),
(4, 'ghi-test-ppc-01', 'GHI Test PPC', 6, '13-06-2020', '30-06-2020', 0, 1, 0, '2020-06-13 12:21:23', ''),
(5, 'Test12345', 'test camp', 12, '11-08-2020', '15-08-2020', 0, 1, 0, '2020-08-06 09:27:42', '2020-08-06 09:27:58'),
(6, 'fitser-ppc-02', 'Fitser PPC2', 1, '02-06-2020', '01-07-2021', 1, 1, 0, '2020-06-11 11:15:32', '2020-08-10 02:08:25'),
(7, 'Camp 1234', 'Winter camp', 0, '12-08-2020', '26-08-2020', 2, 1, 0, '2020-08-10 12:20:07', ''),
(8, 'Camp 1234', 'Winter camp', 0, '19-08-2020', '26-08-2020', 2, 1, 0, '2020-08-10 12:36:03', ''),
(9, 'Camp 1234', 'Winter camp', 1, '18-08-2020', '20-08-2020', 2, 3, 0, '2020-08-10 12:48:17', '2020-08-10 06:23:04'),
(10, 'Summer Camp 001', 'Kolkata Festive ', 1, '15-08-2020', '21-08-2020', 1, 3, 0, '2020-08-10 13:31:03', ''),
(11, 'fitser-ppc-03', 'Fitser PPC 3', 1, '01-09-2020', '31-07-2021', 1, 1, 0, '2020-09-01 13:45:37', '');

-- --------------------------------------------------------

--
-- Table structure for table `campaign_master_bkp`
--

CREATE TABLE `campaign_master_bkp` (
  `campaign_id` int(11) NOT NULL,
  `campaign_generated_no` varchar(255) NOT NULL,
  `campaign_name` varchar(255) NOT NULL,
  `company_id` int(255) NOT NULL,
  `campaign_start_date` varchar(255) NOT NULL,
  `campaign_end_date` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_by` int(11) NOT NULL COMMENT 'user_id',
  `date_of_crateion` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_of_update` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `campaign_master_bkp`
--

INSERT INTO `campaign_master_bkp` (`campaign_id`, `campaign_generated_no`, `campaign_name`, `company_id`, `campaign_start_date`, `campaign_end_date`, `status`, `created_by`, `date_of_crateion`, `date_of_update`) VALUES
(1, 'fitser-ppc-01', 'Fiser PPC1', 1, '02-06-2020', '01-07-2020', 1, 0, '2020-06-11 11:15:32', '2020-08-10 02:08:46'),
(2, 'def-test-ppc-01', 'DEF Test PPC', 2, '02-06-2020', '01-07-2020', 1, 0, '2020-06-11 11:15:32', '2020-08-04 04:38:31'),
(3, 'abc-test-fb-02', 'ABC Test FB', 2, '19-06-2020', '25-06-2020', 1, 0, '2020-06-12 12:47:50', ''),
(4, 'ghi-test-ppc-01', 'GHI Test PPC', 6, '13-06-2020', '30-06-2020', 1, 0, '2020-06-13 12:21:23', ''),
(5, 'Test12345', 'test camp', 12, '11-08-2020', '15-08-2020', 1, 0, '2020-08-06 09:27:42', '2020-08-06 09:27:58'),
(6, 'fitser-ppc-02', 'Fitser PPC2', 1, '02-06-2020', '01-07-2021', 1, 0, '2020-06-11 11:15:32', '2020-08-10 02:08:25');

-- --------------------------------------------------------

--
-- Table structure for table `campaign_source`
--

CREATE TABLE `campaign_source` (
  `campaign_source_id` int(11) NOT NULL,
  `source` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `date_of_creation` datetime NOT NULL DEFAULT current_timestamp(),
  `date_of_update` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `campaign_source`
--

INSERT INTO `campaign_source` (`campaign_source_id`, `source`, `status`, `date_of_creation`, `date_of_update`) VALUES
(1, 'PPC', 1, '2020-08-10 08:07:07', NULL),
(2, 'FB', 1, '2020-08-10 08:07:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `company_accounts_form_elements`
--

CREATE TABLE `company_accounts_form_elements` (
  `company_accounts_form_element_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `accounts_form_element_id` int(11) NOT NULL,
  `is_required` tinyint(4) NOT NULL,
  `quick_add` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `company_accounts_form_elements`
--

INSERT INTO `company_accounts_form_elements` (`company_accounts_form_element_id`, `user_id`, `accounts_form_element_id`, `is_required`, `quick_add`, `status`, `created_at`) VALUES
(9, 1, 1, 1, 1, 1, '2020-12-29 20:44:43'),
(10, 1, 2, 1, 1, 1, '2020-12-29 20:44:43'),
(11, 1, 3, 1, 1, 1, '2020-12-29 20:44:43'),
(12, 1, 4, 0, 1, 1, '2020-12-29 20:44:43');

-- --------------------------------------------------------

--
-- Table structure for table `company_contact_form_elements`
--

CREATE TABLE `company_contact_form_elements` (
  `company_contact_form_element` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `contact_form_element_id` int(11) NOT NULL,
  `is_required` tinyint(4) NOT NULL,
  `quick_add` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `company_contact_form_elements`
--

INSERT INTO `company_contact_form_elements` (`company_contact_form_element`, `user_id`, `contact_form_element_id`, `is_required`, `quick_add`, `status`, `created_at`) VALUES
(1, 0, 0, 0, 0, 1, '2020-12-29 14:22:33'),
(2, 0, 0, 0, 0, 1, '2020-12-29 14:22:33'),
(3, 0, 0, 0, 0, 1, '2020-12-29 14:22:33'),
(4, 0, 0, 0, 0, 1, '2020-12-29 14:22:33'),
(98, 1, 1, 1, 1, 1, '2020-12-30 12:35:54'),
(99, 1, 2, 1, 1, 1, '2020-12-30 12:35:54'),
(100, 1, 3, 0, 0, 1, '2020-12-30 12:35:54'),
(101, 1, 4, 1, 1, 1, '2020-12-30 12:35:54'),
(102, 1, 5, 1, 1, 1, '2020-12-30 12:35:54'),
(103, 1, 6, 0, 1, 1, '2020-12-30 12:35:54'),
(104, 1, 7, 0, 1, 1, '2020-12-30 12:35:54'),
(105, 1, 8, 1, 1, 1, '2020-12-30 12:35:54'),
(106, 1, 9, 0, 1, 1, '2020-12-30 12:35:54'),
(107, 1, 10, 0, 1, 1, '2020-12-30 12:35:54'),
(108, 1, 11, 1, 1, 1, '2020-12-30 12:35:54'),
(109, 1, 13, 0, 0, 1, '2020-12-30 12:35:54'),
(110, 1, 14, 0, 1, 1, '2020-12-30 12:35:54');

-- --------------------------------------------------------

--
-- Table structure for table `company_deal_form_elements`
--

CREATE TABLE `company_deal_form_elements` (
  `company_contact_form_element` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `deal_form_element_id` int(11) NOT NULL,
  `is_required` tinyint(4) NOT NULL,
  `quick_add` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `company_deal_form_elements`
--

INSERT INTO `company_deal_form_elements` (`company_contact_form_element`, `user_id`, `deal_form_element_id`, `is_required`, `quick_add`, `status`, `created_at`) VALUES
(26, 1, 1, 1, 1, 1, '2021-01-14 14:26:18'),
(27, 1, 2, 1, 1, 1, '2021-01-14 14:26:18'),
(28, 1, 15, 1, 1, 1, '2021-01-14 14:26:18'),
(29, 1, 3, 0, 0, 1, '2021-01-14 14:26:18'),
(30, 1, 4, 1, 1, 1, '2021-01-14 14:26:18'),
(31, 1, 5, 1, 1, 1, '2021-01-14 14:26:18'),
(32, 1, 6, 0, 0, 1, '2021-01-14 14:26:18'),
(33, 1, 7, 0, 1, 1, '2021-01-14 14:26:18'),
(34, 1, 8, 1, 1, 1, '2021-01-14 14:26:18');

-- --------------------------------------------------------

--
-- Table structure for table `company_master`
--

CREATE TABLE `company_master` (
  `company_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `company_phone` varchar(255) NOT NULL,
  `company_email` varchar(255) NOT NULL,
  `status` int(11) DEFAULT 1,
  `date_of_creation` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_of_update` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company_master`
--

INSERT INTO `company_master` (`company_id`, `name`, `company_phone`, `company_email`, `status`, `date_of_creation`, `date_of_update`) VALUES
(1, 'Fitser', '1211111112', 'fitser@gmail.com', 1, '2020-06-12 07:09:52', '2020-08-11 08:16:24'),
(2, 'Ecreation', '2222222221', 'ecreation@gmail.com', 3, '2020-06-12 07:11:18', '2020-07-17 03:05:58'),
(6, 'Acropetal', '1231231231', 'acropetal@test.com', 3, '2020-06-12 08:16:05', '2020-06-12 10:36:56'),
(7, 'xyz', '8795463125', 'sett@sfd.rty', 3, '2020-07-29 16:01:36', ''),
(8, 'fitser', '1234567861', 'fitser@met-technologies.com', 3, '2020-07-31 10:15:24', ''),
(9, 'fitsernew', '1234567890', 'fitsernew@gmail.com', 3, '2020-07-31 10:19:11', ''),
(10, 'xyz', '1234567890', 'xyz@sfd.rty', 3, '2020-08-04 15:57:38', ''),
(11, 'TestD', '1234567889', 'testd@yopmail.com', 3, '2020-08-04 16:17:23', ''),
(12, 'Abcd test', '9874563210', 'prity.jha@met-technologies.com', 3, '2020-08-05 10:57:22', '');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `contact_id` int(11) NOT NULL,
  `contact_name` varchar(191) NOT NULL,
  `score` varchar(191) NOT NULL,
  `open_deal_amount` varchar(191) NOT NULL,
  `last_contact_time` datetime NOT NULL,
  `sale_owner` int(11) NOT NULL,
  `email` varchar(191) NOT NULL,
  `work` varchar(191) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`contact_id`, `contact_name`, `score`, `open_deal_amount`, `last_contact_time`, `sale_owner`, `email`, `work`, `status`, `created_at`) VALUES
(1, 'Test User', '5', '1000', '2020-12-18 19:04:00', 10, 'test@gmail.com', 'Sales', 1, '2020-12-18 17:53:57'),
(2, 'Test User', '10', '900', '2020-12-18 19:03:00', 10, 'test@gmail.com', 'Sales by Team', 1, '2020-12-18 17:54:28'),
(3, 'Demo', '8', '550', '2020-12-18 19:03:00', 10, 'demo@gmail.com', 'Business', 1, '2020-12-18 18:52:08');

-- --------------------------------------------------------

--
-- Table structure for table `contact_form_elements`
--

CREATE TABLE `contact_form_elements` (
  `contact_form_element_id` int(11) NOT NULL,
  `form_element` varchar(191) NOT NULL,
  `form_element_name` varchar(191) NOT NULL,
  `element_type` varchar(191) NOT NULL,
  `rank` int(11) NOT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact_form_elements`
--

INSERT INTO `contact_form_elements` (`contact_form_element_id`, `form_element`, `form_element_name`, `element_type`, `rank`, `status`, `created_at`) VALUES
(1, 'First Name', 'first_name', 'text', 1, 1, '2020-12-29 11:30:32'),
(2, 'Last Name', 'last_name', 'text', 2, 1, '2020-12-29 11:30:32'),
(3, 'Accounts', 'accounts', 'text', 3, 1, '2020-12-29 11:37:09'),
(4, 'Email', 'email[]', 'text', 4, 1, '2020-12-29 11:37:09'),
(5, 'Mobile', 'mobile', 'text', 5, 1, '2020-12-29 11:37:09'),
(6, 'Work Phone', 'work', 'text', 6, 1, '2020-12-29 11:37:09'),
(7, 'External Id', 'external_id', 'text', 7, 1, '2020-12-29 11:37:09'),
(8, 'Sales Owner', 'sales_owner', 'select', 8, 1, '2020-12-29 11:37:09'),
(9, 'Subscription Status', 'subscription_status', 'select', 9, 0, '2020-12-29 11:39:46'),
(10, 'Subscription Type', 'subscription_type', 'select', 10, 0, '2020-12-29 11:39:46'),
(11, 'Lifecycle Stage', 'lifecycle_stage', 'select', 11, 1, '2020-12-29 11:39:46'),
(12, 'Status', 'status', 'select', 12, 0, '2020-12-29 11:39:46'),
(13, 'Lost Reason', 'lost_reason', 'select', 13, 1, '2020-12-29 11:39:46'),
(14, 'Company Name', 'company_name', 'select', 14, 1, '2020-12-29 11:39:46');

-- --------------------------------------------------------

--
-- Table structure for table `deals_company_pipelines`
--

CREATE TABLE `deals_company_pipelines` (
  `deals_company_pipeline_id` int(11) NOT NULL,
  `deals_pipeline_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pipeline_stage` varchar(191) NOT NULL,
  `probability` varchar(20) DEFAULT NULL,
  `rank` int(11) NOT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `deals_company_pipelines`
--

INSERT INTO `deals_company_pipelines` (`deals_company_pipeline_id`, `deals_pipeline_id`, `user_id`, `pipeline_stage`, `probability`, `rank`, `is_default`, `status`, `created_at`) VALUES
(15, 1, 1, 'New', '100', 1, 1, 1, '2021-01-12 20:05:44'),
(16, 1, 1, 'Follow-up', '80', 2, 0, 1, '2021-01-12 20:05:44'),
(17, 1, 1, 'Under review', '90', 3, 0, 1, '2021-01-12 20:05:44'),
(18, 1, 1, 'Demo', '100', 4, 0, 1, '2021-01-12 20:05:44'),
(19, 1, 1, 'Negotiation', '70', 5, 0, 1, '2021-01-12 20:05:44'),
(20, 1, 1, 'Won / Discussion', '100', 6, 1, 1, '2021-01-12 20:05:44'),
(21, 1, 1, 'Lost', '100', 7, 1, 1, '2021-01-12 20:05:44');

-- --------------------------------------------------------

--
-- Table structure for table `deals_pipelines`
--

CREATE TABLE `deals_pipelines` (
  `deals_pipeline_id` int(11) NOT NULL,
  `pipeline_stage` varchar(191) NOT NULL,
  `probability` varchar(20) NOT NULL,
  `rank` int(11) NOT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `deals_pipelines`
--

INSERT INTO `deals_pipelines` (`deals_pipeline_id`, `pipeline_stage`, `probability`, `rank`, `is_default`, `status`, `created_at`) VALUES
(1, 'New', '100', 1, 1, 1, '2021-01-07 17:26:27'),
(2, 'Follow-up', '100', 2, 0, 1, '2021-01-07 17:26:27'),
(3, 'Under review', '100', 3, 0, 1, '2021-01-07 17:28:55'),
(4, 'Demo', '100', 4, 0, 1, '2021-01-07 17:28:55'),
(5, 'Negotiation', '100', 5, 0, 1, '2021-01-07 17:28:55'),
(6, 'Won', '100', 6, 1, 1, '2021-01-07 17:28:55'),
(7, 'Lost', '100', 7, 1, 1, '2021-01-07 17:28:55');

-- --------------------------------------------------------

--
-- Table structure for table `deal_form_elements`
--

CREATE TABLE `deal_form_elements` (
  `deal_form_element_id` int(11) NOT NULL,
  `form_element` varchar(191) NOT NULL,
  `form_element_name` varchar(191) NOT NULL,
  `element_type` varchar(191) NOT NULL,
  `rank` int(11) NOT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `deal_form_elements`
--

INSERT INTO `deal_form_elements` (`deal_form_element_id`, `form_element`, `form_element_name`, `element_type`, `rank`, `status`, `created_at`) VALUES
(1, 'Full Name', 'full_name', 'text', 1, 1, '2020-12-29 11:30:32'),
(2, 'Account Name', 'account_name', 'text', 2, 1, '2020-12-29 11:30:32'),
(3, 'Related Contact', 'related_contact', 'text', 3, 1, '2020-12-29 11:37:09'),
(4, 'Deal Pipeline', 'deal_pipeline', 'select', 4, 1, '2020-12-29 11:37:09'),
(5, 'Deal Stage', 'deal_stage', 'select', 5, 1, '2020-12-29 11:37:09'),
(6, 'Lost Reason', 'lost_reason', 'text', 6, 1, '2020-12-29 11:37:09'),
(7, 'Closed Date', 'closed_date', 'datepicker', 7, 1, '2020-12-29 11:37:09'),
(8, 'Sales Owner', 'sales_owner', 'select', 8, 1, '2020-12-29 11:37:09'),
(15, 'Deal Value', 'deal_value', 'text', 2, 1, '2020-12-29 11:37:09');

-- --------------------------------------------------------

--
-- Table structure for table `deal_logs`
--

CREATE TABLE `deal_logs` (
  `id` int(11) NOT NULL,
  `deal_id` int(11) NOT NULL,
  `action` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `deal_logs`
--

INSERT INTO `deal_logs` (`id`, `deal_id`, `action`, `message`, `user_id`, `created_at`) VALUES
(1, 6, 'Add note', 'Add a note for ', 1, '2020-12-31 03:04:00'),
(2, 6, 'Add note', 'Add a note for ', 1, '2020-12-31 04:00:00'),
(3, 6, 'Add note', 'Add a note for ', 1, '2020-12-31 04:01:00'),
(4, 6, 'Add note', 'Add a note for ', 1, '2020-12-31 04:02:00'),
(5, 6, 'Add Task', 'Add a task ( Test Task )', 1, '2020-12-31 08:07:00'),
(6, 6, 'Add Task', 'Add a task ( This is new task to me )', 1, '2021-01-04 06:31:00'),
(7, 6, 'Update Lead', 'Update lead information', 1, '2021-01-04 07:47:00'),
(8, 6, 'Update note', 'Update note for lead', 1, '2021-01-04 07:54:00'),
(9, 6, 'Task updated', 'Task updated for a lead', 1, '2021-01-04 08:14:00'),
(10, 10, 'Add Lead', 'Add a new lead ', 1, '2021-01-05 12:03:00'),
(11, 10, 'Update Lead', 'Update lead information', 1, '2021-01-05 12:03:00'),
(12, 8, 'Task added', 'Task added for a lead', 1, '2021-01-06 12:03:00'),
(13, 10, 'Add new deal', 'Add a new deal ', 1, '2021-01-14 02:23:00'),
(14, 11, 'Add Lead', 'Add a new lead ', 1, '2021-01-19 05:42:00'),
(15, 12, 'Add Lead', 'Add a new lead ', 1, '2021-01-19 05:43:00'),
(16, 13, 'Add Lead', 'Add a new lead ', 1, '2021-01-19 05:43:00'),
(17, 14, 'Add Lead', 'Add a new lead ', 1, '2021-01-19 05:43:00'),
(18, 14, 'Add note', 'Add note for lead', 1, '2021-01-19 05:55:00'),
(19, 14, 'Update note', 'Update note for lead', 1, '2021-01-19 05:56:00'),
(20, 14, 'Add Lead file', 'Add a lead file ( Demo Sheet )', 1, '2021-01-19 05:57:00'),
(21, 14, 'Update Lead', 'Update lead information', 1, '2021-01-19 05:57:00'),
(22, 14, 'Task added', 'Task added for a lead', 1, '2021-07-08 07:48:00'),
(23, 14, 'Task updated', 'Task updated for a lead', 1, '2021-07-09 10:15:00'),
(24, 14, 'Task added', 'Task added for a lead', 1, '2021-07-09 10:24:00');

-- --------------------------------------------------------

--
-- Table structure for table `deal_tasks`
--

CREATE TABLE `deal_tasks` (
  `deal_task_id` int(11) NOT NULL,
  `deal_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(191) NOT NULL,
  `description` text NOT NULL,
  `type` varchar(191) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) DEFAULT NULL,
  `outcome` varchar(191) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `deal_tasks`
--

INSERT INTO `deal_tasks` (`deal_task_id`, `deal_id`, `user_id`, `title`, `description`, `type`, `date`, `time`, `outcome`, `status`, `created_at`) VALUES
(1, 1, 1, 'Sudipta', 'hhh', 'follow-up', '2021-07-19', '12:00 PM', 'interrested', 1, '2021-07-12 19:08:08'),
(2, 1, 1, 'Sudipta', 'hhh', 'follow-up', '2021-07-19', '12:00 PM', 'interrested', 1, '2021-07-12 19:09:55'),
(3, 1, 1, 'Sudipta', 'Test', 'call-reminder', '2021-07-20', '12:00 PM', 'left-message', 1, '2021-07-12 19:11:52'),
(4, 1, 1, 'Sudipta', 'dcscddsc', 'follow-up', '2021-07-22', '12:00 PM', 'left-message', 1, '2021-07-12 19:17:12'),
(5, 1, 1, 'Sudipta', 'dcscddsc', 'follow-up', '2021-07-22', '12:00 PM', 'left-message', 1, '2021-07-12 19:17:20'),
(6, 1, 1, 'Sudipta', 'dcscddsc', 'follow-up', '2021-07-22', '12:00 PM', 'left-message', 1, '2021-07-12 19:17:51'),
(7, 1, 1, 'Sudipta sdsf', 'dfdffcdf', 'follow-up', '2021-07-13', '12:00 PM', 'left-message', 1, '2021-07-12 19:19:16');

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

CREATE TABLE `leads` (
  `lead_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `company_id` int(11) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `work` varchar(255) NOT NULL,
  `sale_owner` int(11) NOT NULL,
  `accounts` varchar(191) DEFAULT NULL,
  `subscription_type` varchar(191) DEFAULT NULL,
  `lifecycle_stage` varchar(191) DEFAULT NULL,
  `external_id` varchar(191) DEFAULT NULL,
  `subscription_status` int(11) NOT NULL,
  `stage` varchar(191) DEFAULT NULL,
  `lost_reason` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `leads`
--

INSERT INTO `leads` (`lead_id`, `name`, `lname`, `company_id`, `mobile`, `work`, `sale_owner`, `accounts`, `subscription_type`, `lifecycle_stage`, `external_id`, `subscription_status`, `stage`, `lost_reason`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Lead Clone', 'LDemo', 1, '8927278789', '9876543276', 10, NULL, NULL, NULL, NULL, 1, 'new', NULL, 1, '2020-09-20 12:43:11', '2020-09-20 17:44:03'),
(2, 'Lead 2', 'Demo', 1, '8927279789', '9876532198', 10, NULL, NULL, NULL, NULL, 3, '', NULL, 1, '2020-09-20 12:44:18', '2020-09-20 17:44:03'),
(3, 'Lead  3 Update', 'Demo 3', 1, '8927279779', '9876543209', 10, NULL, NULL, NULL, NULL, 2, 'contacted', NULL, 1, '2020-09-20 20:33:17', '2020-09-20 20:33:17'),
(4, 'Lead', 'LDemo', 1, '8927278789', '9876543998', 10, NULL, NULL, NULL, NULL, 1, 'new', NULL, 3, '2020-09-20 21:11:11', '2020-09-20 21:11:11'),
(5, 'Demo', 'Lead - 202', 1, '9087654321', '9087654321', 10, NULL, '', '1', NULL, 0, 'New', NULL, 1, '2020-12-30 13:52:03', '2020-12-30 15:31:00'),
(6, 'Test', 'Account', 1, '1234567890', '98765432', 10, NULL, '', '2', NULL, 0, 'Negotiation', NULL, 1, '2020-12-30 13:59:17', '2021-01-04 07:47:31'),
(7, 'Mic', 'Jo', 1, '8927279789', '8927279789', 10, NULL, NULL, '1', NULL, 0, 'New', NULL, 1, '2021-01-05 12:01:53', '2021-01-05 12:01:53'),
(8, 'Mic', 'Jo', 1, '8927279789', '8927279789', 10, NULL, NULL, '1', NULL, 0, 'New', NULL, 1, '2021-01-05 12:02:21', '2021-01-05 12:02:21'),
(9, 'Mic', 'Jo', 1, '8927279789', '8927279789', 10, NULL, NULL, '1', NULL, 0, 'New', NULL, 1, '2021-01-05 12:02:42', '2021-01-05 12:02:42'),
(10, 'Mic', 'Joo', 1, '8927279789', '8927279789', 10, NULL, NULL, '1', NULL, 0, 'New', NULL, 1, '2021-01-05 12:03:41', '2021-01-05 12:03:59'),
(11, 'Fitser', 'Log', 1, '9632587410', '', 10, NULL, NULL, '1', NULL, 0, 'Interested for lead', NULL, 1, '2021-01-19 17:42:52', '2021-01-19 05:42:52'),
(12, 'Fitser', 'Log', 1, '9632587410', '9632587410', 10, NULL, NULL, '1', NULL, 0, 'Interested for lead', NULL, 1, '2021-01-19 17:43:02', '2021-01-19 05:43:02'),
(13, 'Fitser', 'Log', 1, '9632587410', '9632587410', 10, NULL, NULL, '1', NULL, 0, 'Interested for lead', NULL, 1, '2021-01-19 17:43:13', '2021-01-19 05:43:13'),
(14, 'Demo', 'Lead', 1, '9632587410', '9874563210', 10, NULL, NULL, '1', NULL, 0, 'Interested for lead', NULL, 1, '2021-01-19 17:43:51', '2021-01-19 05:57:51');

-- --------------------------------------------------------

--
-- Table structure for table `leads_percentage`
--

CREATE TABLE `leads_percentage` (
  `lead_percentage_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `leads` int(11) NOT NULL,
  `MQL` int(11) NOT NULL,
  `SAL` int(11) NOT NULL,
  `conversion` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leads_percentage`
--

INSERT INTO `leads_percentage` (`lead_percentage_id`, `company_id`, `leads`, `MQL`, `SAL`, `conversion`, `created_on`) VALUES
(1, 2, 7, 7, 0, 0, '2020-06-13 02:05:00'),
(2, 1, 113, 113, 17, 4, '2020-06-13 14:55:00'),
(3, 6, 0, 0, 0, 0, '2020-07-17 09:34:34'),
(4, 0, 4, 4, -4, 0, '2020-07-17 09:34:51'),
(5, 9, 0, 0, 0, 0, '2020-07-31 10:25:31'),
(6, 12, 0, 0, 0, 0, '2020-08-06 09:04:47');

-- --------------------------------------------------------

--
-- Table structure for table `lead_company_lifecycle_stages`
--

CREATE TABLE `lead_company_lifecycle_stages` (
  `lead_lifecycle_stage_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `lead_lifecycle_id` int(11) NOT NULL,
  `stage` varchar(191) NOT NULL,
  `rank` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lead_company_lifecycle_stages`
--

INSERT INTO `lead_company_lifecycle_stages` (`lead_lifecycle_stage_id`, `user_id`, `lead_lifecycle_id`, `stage`, `rank`, `status`, `created_at`) VALUES
(17, 1, 1, 'New', 1, 1, '2021-01-19 17:38:37'),
(18, 1, 1, 'Interested for lead', 2, 1, '2021-01-19 17:38:37'),
(19, 1, 1, 'Unqualified', 3, 1, '2021-01-19 17:38:37'),
(20, 1, 1, 'Lost', 4, 1, '2021-01-19 17:38:37');

-- --------------------------------------------------------

--
-- Table structure for table `lead_deals`
--

CREATE TABLE `lead_deals` (
  `lead_deal_id` int(11) NOT NULL,
  `lead_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `deal_value` int(11) DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `account` varchar(191) NOT NULL,
  `pipeline` int(11) NOT NULL,
  `pipeline_stage` varchar(191) NOT NULL,
  `closed_date` datetime NOT NULL,
  `sales_owner` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lead_deals`
--

INSERT INTO `lead_deals` (`lead_deal_id`, `lead_id`, `user_id`, `company_id`, `deal_value`, `name`, `account`, `pipeline`, `pipeline_stage`, `closed_date`, `sales_owner`, `status`, `created_at`) VALUES
(1, 7, 1, 1, 12000, 'Test User', 'Lead One', 1, 'New', '2021-01-20 00:00:00', 10, 1, '2021-01-14 12:04:03'),
(2, 10, 1, 1, NULL, 'Lead Deal 1', 'Silver', 1, 'Follow-up', '2021-01-16 00:00:00', 10, 1, '2021-01-14 14:23:04');

-- --------------------------------------------------------

--
-- Table structure for table `lead_details`
--

CREATE TABLE `lead_details` (
  `lead_detail_id` int(11) NOT NULL,
  `lead_id` int(11) NOT NULL,
  `lead_stage_deny_reason` varchar(255) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `time_zone` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `zip` varchar(20) DEFAULT NULL,
  `company_address` varchar(255) DEFAULT NULL,
  `other_phone` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lead_details`
--

INSERT INTO `lead_details` (`lead_detail_id`, `lead_id`, `lead_stage_deny_reason`, `country`, `time_zone`, `address`, `zip`, `company_address`, `other_phone`) VALUES
(1, 3, NULL, NULL, NULL, NULL, '98767', 'Do Test', '9878767687');

-- --------------------------------------------------------

--
-- Table structure for table `lead_emails`
--

CREATE TABLE `lead_emails` (
  `lead_email_id` int(11) NOT NULL,
  `lead_id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `label_for` varchar(50) NOT NULL,
  `is_default` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lead_emails`
--

INSERT INTO `lead_emails` (`lead_email_id`, `lead_id`, `email`, `label_for`, `is_default`, `status`) VALUES
(1, 1, 'test@gmail.com', 'work', 1, 1),
(2, 2, 'test2@gmail.com', 'work', 1, 1),
(3, 2, 'demo@gmail.com', 'personal', 0, 1),
(4, 3, 'test2@gmail.com', 'work', 1, 1),
(5, 3, 'demo@gmail.com', 'work', 0, 1),
(6, 3, 'test3@gmail.com', 'work', 1, 1),
(7, 1, 'test-met@gmail.com', 'personal', 1, 1),
(8, 1, 'test-met-clone@gmail.com', 'work', 1, 1),
(9, 4, 'test-met-clone@gmail.com', 'personal', 1, 1),
(10, 4, 'demo@gmail.com', 'work', 0, 1),
(11, 4, 'demo@gmail.com', 'work', 0, 1),
(12, 5, 'demolead@gmail.com', 'work', 1, 1),
(13, 6, 'chayan.samanta+876@met-technologies.com', 'work', 1, 1),
(14, 6, 'test@gmail.com', 'work', 0, 1),
(15, 7, 'micjo@gmail.com', 'work', 1, 1),
(16, 8, 'micjo@gmail.com', 'work', 1, 1),
(17, 9, 'micjo@gmail.com', 'work', 1, 1),
(18, 10, 'micjo@gmail.com', 'work', 1, 1),
(19, 11, 'test.fitser@gmail.com', 'work', 1, 1),
(20, 12, 'test.fitser@gmail.com', 'work', 1, 1),
(21, 13, 'testfitser@gmail.com', 'work', 1, 1),
(22, 14, 'test@gmail.com', 'personal', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `lead_files`
--

CREATE TABLE `lead_files` (
  `lead_file_id` int(11) NOT NULL,
  `lead_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `file_name` varchar(191) NOT NULL,
  `file` varchar(191) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lead_files`
--

INSERT INTO `lead_files` (`lead_file_id`, `lead_id`, `user_id`, `file_name`, `file`, `created_at`) VALUES
(3, 6, 1, 'Demo', '1609427592_demo.jpg', '2020-12-31 20:43:12'),
(4, 14, 1, 'Demo Sheet', '1611059225_demo~sheet.xlsx', '2021-01-19 17:57:05');

-- --------------------------------------------------------

--
-- Table structure for table `lead_lifecycle`
--

CREATE TABLE `lead_lifecycle` (
  `lead_lifecycle_id` int(11) NOT NULL,
  `lifecycle` varchar(191) NOT NULL,
  `rank` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lead_lifecycle`
--

INSERT INTO `lead_lifecycle` (`lead_lifecycle_id`, `lifecycle`, `rank`, `status`, `created_at`) VALUES
(1, 'Lead', 1, 1, '2020-12-29 17:32:58'),
(2, 'Sales Qualified Lead', 2, 1, '2020-12-29 17:32:58'),
(3, 'Customer', 3, 1, '2020-12-29 17:33:19');

-- --------------------------------------------------------

--
-- Table structure for table `lead_lifecycle_stages`
--

CREATE TABLE `lead_lifecycle_stages` (
  `lead_lifecycle_stage_id` int(11) NOT NULL,
  `lead_lifecycle_id` int(11) NOT NULL,
  `stage` varchar(191) NOT NULL,
  `rank` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lead_lifecycle_stages`
--

INSERT INTO `lead_lifecycle_stages` (`lead_lifecycle_stage_id`, `lead_lifecycle_id`, `stage`, `rank`, `status`, `created_at`) VALUES
(1, 1, 'New', 1, 1, '2020-12-29 17:39:14'),
(2, 1, 'Contracted', 2, 1, '2020-12-29 17:39:14'),
(3, 1, 'Interested', 3, 1, '2020-12-29 17:39:35'),
(4, 1, 'Unqualified', 4, 1, '2020-12-29 17:39:35'),
(5, 2, 'Qualified', 1, 1, '2020-12-29 17:40:28'),
(6, 2, 'Negotiation', 2, 1, '2020-12-29 17:40:28'),
(7, 2, 'Lost', 3, 1, '2020-12-29 17:40:44'),
(8, 3, 'Won', 1, 1, '2020-12-29 17:41:16'),
(9, 3, 'Churned', 2, 1, '2020-12-29 17:41:16');

-- --------------------------------------------------------

--
-- Table structure for table `lead_logs`
--

CREATE TABLE `lead_logs` (
  `id` int(11) NOT NULL,
  `lead_id` int(11) NOT NULL,
  `action` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lead_logs`
--

INSERT INTO `lead_logs` (`id`, `lead_id`, `action`, `message`, `user_id`, `created_at`) VALUES
(1, 6, 'Add note', 'Add a note for ', 1, '2020-12-31 03:04:00'),
(2, 6, 'Add note', 'Add a note for ', 1, '2020-12-31 04:00:00'),
(3, 6, 'Add note', 'Add a note for ', 1, '2020-12-31 04:01:00'),
(4, 6, 'Add note', 'Add a note for ', 1, '2020-12-31 04:02:00'),
(5, 6, 'Add Task', 'Add a task ( Test Task )', 1, '2020-12-31 08:07:00'),
(6, 6, 'Add Task', 'Add a task ( This is new task to me )', 1, '2021-01-04 06:31:00'),
(7, 6, 'Update Lead', 'Update lead information', 1, '2021-01-04 07:47:00'),
(8, 6, 'Update note', 'Update note for lead', 1, '2021-01-04 07:54:00'),
(9, 6, 'Task updated', 'Task updated for a lead', 1, '2021-01-04 08:14:00'),
(10, 10, 'Add Lead', 'Add a new lead ', 1, '2021-01-05 12:03:00'),
(11, 10, 'Update Lead', 'Update lead information', 1, '2021-01-05 12:03:00'),
(12, 8, 'Task added', 'Task added for a lead', 1, '2021-01-06 12:03:00'),
(13, 10, 'Add new deal', 'Add a new deal ', 1, '2021-01-14 02:23:00'),
(14, 11, 'Add Lead', 'Add a new lead ', 1, '2021-01-19 05:42:00'),
(15, 12, 'Add Lead', 'Add a new lead ', 1, '2021-01-19 05:43:00'),
(16, 13, 'Add Lead', 'Add a new lead ', 1, '2021-01-19 05:43:00'),
(17, 14, 'Add Lead', 'Add a new lead ', 1, '2021-01-19 05:43:00'),
(18, 14, 'Add note', 'Add note for lead', 1, '2021-01-19 05:55:00'),
(19, 14, 'Update note', 'Update note for lead', 1, '2021-01-19 05:56:00'),
(20, 14, 'Add Lead file', 'Add a lead file ( Demo Sheet )', 1, '2021-01-19 05:57:00'),
(21, 14, 'Update Lead', 'Update lead information', 1, '2021-01-19 05:57:00'),
(22, 14, 'Task added', 'Task added for a lead', 1, '2021-07-08 07:48:00'),
(23, 14, 'Task updated', 'Task updated for a lead', 1, '2021-07-09 10:15:00'),
(24, 14, 'Task added', 'Task added for a lead', 1, '2021-07-09 10:24:00'),
(25, 14, 'Task added', 'Task added for a lead', 1, '2021-07-12 03:36:00'),
(26, 14, 'Task updated', 'Task updated for a lead', 1, '2021-07-12 03:54:00'),
(27, 14, 'Task updated', 'Task updated for a lead', 1, '2021-07-12 04:14:00'),
(28, 14, 'Task added', 'Task added for a lead', 1, '2021-07-12 04:40:00');

-- --------------------------------------------------------

--
-- Table structure for table `lead_message`
--

CREATE TABLE `lead_message` (
  `id` int(11) NOT NULL,
  `lead_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `post_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lead_message`
--

INSERT INTO `lead_message` (`id`, `lead_id`, `message`, `post_date`, `user_id`) VALUES
(6, 15, 'update 1', '2020-07-24 04:43:57', 1),
(7, 15, 'another msg lead 15', '2020-07-24 04:44:37', 6),
(32, 43, 'client communication started', '2020-08-07 14:43:13', 7),
(33, 43, 'Where is lead now?', '2020-08-07 14:43:53', 9),
(34, 47, 'Please start taking care of this lead', '2020-08-10 12:42:18', 9);

-- --------------------------------------------------------

--
-- Table structure for table `lead_notes`
--

CREATE TABLE `lead_notes` (
  `lead_note_id` int(11) NOT NULL,
  `lead_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `note` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lead_notes`
--

INSERT INTO `lead_notes` (`lead_note_id`, `lead_id`, `user_id`, `note`, `status`, `created_at`) VALUES
(1, 14, 1, 'Test Note', 3, '2020-12-31 15:04:54'),
(2, 14, 1, 'Test Note', 1, '2020-12-31 15:55:52'),
(3, 14, 1, 'Test Note', 1, '2020-12-31 15:56:12'),
(4, 14, 1, 'Test Note', 1, '2020-12-31 16:00:27'),
(5, 14, 1, 'Test Note', 3, '2020-12-31 16:01:30'),
(6, 14, 1, 'Test Note', 3, '2020-12-31 16:02:36'),
(7, 14, 1, 'Test Note', 1, '2021-01-04 19:54:31'),
(8, 14, 1, 'Test Note update', 1, '2021-01-19 17:56:17');

-- --------------------------------------------------------

--
-- Table structure for table `lead_stages`
--

CREATE TABLE `lead_stages` (
  `id` int(11) NOT NULL,
  `stage` varchar(50) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lead_stages`
--

INSERT INTO `lead_stages` (`id`, `stage`, `status`, `created_at`) VALUES
(1, 'New', 1, '2020-09-21 12:11:41'),
(2, 'Contacted', 1, '2020-09-21 12:11:41'),
(3, 'Interested', 1, '2020-09-21 12:13:35'),
(4, 'Under review', 1, '2020-09-21 12:13:35'),
(5, 'Demo', 1, '2020-09-21 12:13:35'),
(6, 'Qualified', 1, '2020-09-21 12:13:35'),
(7, 'Unqualified', 1, '2020-09-21 12:13:35');

-- --------------------------------------------------------

--
-- Table structure for table `lead_tasks`
--

CREATE TABLE `lead_tasks` (
  `lead_task_id` int(11) NOT NULL,
  `lead_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(191) NOT NULL,
  `description` text NOT NULL,
  `type` varchar(191) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) DEFAULT NULL,
  `outcome` varchar(191) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lead_tasks`
--

INSERT INTO `lead_tasks` (`lead_task_id`, `lead_id`, `user_id`, `title`, `description`, `type`, `date`, `time`, `outcome`, `status`, `created_at`) VALUES
(1, 6, 1, 'Test Task', 'New task for a lead', 'follow-up', '2021-01-06', NULL, 'left-message', 3, '2020-12-31 19:51:16'),
(2, 6, 1, 'Test Task', 'Test Task', 'follow-up', '2020-12-15', NULL, 'no-response', 1, '2020-12-31 20:07:19'),
(3, 6, 1, 'This is new task to me updated', 'This is new task to me', 'follow-up', '2021-01-13', NULL, 'interrested', 1, '2021-01-04 18:31:00'),
(4, 8, 1, 'Demo Task', 'Demo task to take test', 'call-reminder', '2021-01-07', NULL, 'interrested', 1, '2021-01-06 12:03:15'),
(5, 14, 1, 'Sudipta', 'php', 'follow-up', '2021-07-14', '12:00 PM', 'left-message', 3, '2021-07-08 19:48:31'),
(6, 14, 1, 'Sudipta', 'php', 'follow-up', '2021-07-08', '12:00 PM', 'left-message', 3, '2021-07-09 10:24:22'),
(7, 14, 1, 'Sudipta', 'xccscds', 'follow-up', '2021-07-14', NULL, 'left-message', 1, '2021-07-12 15:36:17'),
(8, 14, 1, 'test', 'test', 'call-reminder', '2021-07-15', '12:00 PM', 'left-message', 1, '2021-07-12 16:40:03');

-- --------------------------------------------------------

--
-- Table structure for table `menu_master`
--

CREATE TABLE `menu_master` (
  `menu_id` int(11) NOT NULL,
  `menu_name` varchar(255) NOT NULL,
  `url_action` varchar(255) NOT NULL,
  `status` int(255) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu_master`
--

INSERT INTO `menu_master` (`menu_id`, `menu_name`, `url_action`, `status`) VALUES
(1, 'Dashboard', 'dashboard', 1),
(2, 'User Management', 'user', 1),
(3, 'Role Management', 'role', 1),
(4, 'All Leads', 'leads', 1),
(5, 'Assigned Project', 'assignedproject', 1),
(6, 'User Commission', 'commission', 1),
(8, 'Campaign', 'campaign', 1),
(9, 'Company', 'company', 1);

-- --------------------------------------------------------

--
-- Table structure for table `new_project`
--

CREATE TABLE `new_project` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `campaign_id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `email_id` varchar(255) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `schedule_for_contact` datetime DEFAULT NULL,
  `time_zone` varchar(255) DEFAULT NULL,
  `from_time` varchar(255) DEFAULT NULL,
  `to_time` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `domain_website` varchar(255) DEFAULT NULL,
  `requirement` varchar(255) NOT NULL,
  `requirement_other` varchar(255) DEFAULT NULL,
  `project_name` varchar(255) DEFAULT NULL,
  `project_description` text DEFAULT NULL,
  `status` varchar(255) DEFAULT 'open',
  `assign_status` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `quotation_price` decimal(10,2) DEFAULT NULL,
  `closing_price` decimal(10,2) DEFAULT NULL,
  `commission` float(10,2) DEFAULT NULL,
  `post_date` datetime DEFAULT current_timestamp(),
  `state` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `source_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `new_project`
--

INSERT INTO `new_project` (`id`, `company_id`, `campaign_id`, `title`, `name`, `lname`, `email_id`, `phone`, `schedule_for_contact`, `time_zone`, `from_time`, `to_time`, `message`, `domain_website`, `requirement`, `requirement_other`, `project_name`, `project_description`, `status`, `assign_status`, `currency`, `quotation_price`, `closing_price`, `commission`, `post_date`, `state`, `source`, `source_type`) VALUES
(0, 0, 0, NULL, 'Sudipta Guru', NULL, 'sudipta@mail.com', 1111111111, NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, NULL, 'open', 'unassigned', NULL, NULL, NULL, NULL, '2021-07-08 17:49:13', NULL, NULL, ''),
(10, 1, 1, 'Miss.', 'Sara', 'Spears', 'sara@designedconviction.com', 2538780990, NULL, NULL, NULL, NULL, NULL, 'www.designedconviction.com', 'Full Digital', NULL, 'Designed Conviction', 'Digimix. Also inquired about Basic Ecommerce website (1200 USD) \r\n\r\nLost: Went with a local provider at a cheaper cost.', 'lost', 'assigned', 'usd', '249.00', '0.00', NULL, '2020-06-11 15:40:22', 'Washington', 'google', 'ppc'),
(14, 1, 1, 'Miss.', 'Grace', 'Michallet', 'grace@resiliencesportswear.com', 5712550871, NULL, NULL, NULL, NULL, NULL, 'www.resiliencesportswear.com', 'Full Digital', NULL, 'Resilience Sportswear', 'She is looking for both traffic and conversion on her website.\r\nDetailed marketing proposal sent with 3 different packages as follow: 249 USD, 349 USD, 499 USD per month.\r\n\r\n21.07.2020: Client is neither receiving call nor responding to emails.\r\n\r\n22.07.2020: The client is not keen to proceed at this stage. Not responding to calls and emails.', 'lost', 'assigned', 'usd', '249.00', '0.00', NULL, '2020-07-13 15:56:31', 'Florida', 'google', 'ppc'),
(15, 1, 1, 'Mr.', 'Michael ', 'Harper ', 'mikeharper.359@gmail.com', 5857437137, NULL, NULL, NULL, NULL, NULL, 'YaeXantana@youtube.com', 'Full Digital', NULL, NULL, NULL, 'open', NULL, NULL, NULL, NULL, NULL, '2020-07-21 10:56:13', 'New York', 'google', 'ppc'),
(16, 1, 1, 'Mr.', 'Michael ', 'Harper ', 'mikeharper.359@gmail.com', 5857437137, NULL, NULL, NULL, NULL, NULL, 'YaeXantana@youtube.com', 'Full Digital', NULL, '', '21.07.2020: Called the client twice but no response.\r\n\r\n22.07.2020: Called the client twice but no response. Sent an email for introduction.\r\n\r\n24.07.2020: Called twice but no response.\r\n\r\n29.07.2020: Called him thrice but no response. Follow up email sent as well.\r\n\r\n03.08.2020: Called twice but no response.\r\n\r\n07.08.2020: Called twice but no response. Sent text message as well.', 'open', 'assigned', 'aud', '0.00', '0.00', NULL, '2020-07-21 10:56:13', 'New York', 'google', 'ppc'),
(17, 1, 1, 'Mr.', 'Harsh ', 'Brahmabhatt', 'harshb@cleanerscorp.com', 5166159598, NULL, NULL, NULL, NULL, NULL, 'https://countycleanerscorp.com/', 'Social', NULL, '', '03.08.2020: Called thrice but no response. Sent an email as well.\r\n\r\n06.08.2020: Called twice but no response.\r\n\r\n07.08.2020: Called twice but no response. Sent Text message as well.', 'open', 'assigned', 'aud', '0.00', '0.00', NULL, '2020-07-29 15:22:26', 'New York', 'google', 'ppc'),
(19, 0, 0, 'Mr.', 'test', 'sham', 'testestest12346@gmail.com', 9999999996, NULL, NULL, NULL, NULL, NULL, 'www.gggggg.com', 'SEO', NULL, NULL, NULL, 'open', NULL, NULL, NULL, NULL, NULL, '2020-08-11 10:44:45', 'Louisiana', '', ''),
(25, 1, 1, 'Mr.', 'Souvik', 'Roy', 'rsouvik850@gmail.com', 8910096186, NULL, NULL, NULL, NULL, NULL, '85/86, Basudevpur Road, Baba Loknath Apartment', 'Full Digital', NULL, NULL, NULL, 'open', NULL, NULL, NULL, NULL, NULL, '2020-08-31 07:24:33', 'California', '', ''),
(26, 1, 11, 'Mr.', 'TEST', 'TEST', 'testestest12345@gmail.com', 9999999996, NULL, NULL, NULL, NULL, NULL, 'www.gggggg.com', 'SEO', NULL, NULL, NULL, 'open', NULL, NULL, NULL, NULL, NULL, '2020-09-01 09:48:11', 'Kentucky', '', ''),
(27, 1, 11, 'Mr.', 'Souvik', 'Roy', 'rsouvik850@gmail.com', 8910096186, NULL, NULL, NULL, NULL, NULL, '85/86, Basudevpur Road, Baba Loknath Apartment', 'SEO', NULL, NULL, NULL, 'open', NULL, NULL, NULL, NULL, NULL, '2020-09-01 09:48:15', 'Arizona', 'google', ''),
(28, 1, 11, 'Miss.', 'Diana', 'Diaz', 'diana.diaz@rickyjoy.com', 573183627, NULL, NULL, NULL, NULL, NULL, 'www.rickyjoy.com', 'Social', NULL, NULL, NULL, 'open', 'assigned', NULL, NULL, NULL, NULL, '2020-09-14 13:04:41', 'Georgia', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `new_project1_1108`
--

CREATE TABLE `new_project1_1108` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `email_id` varchar(255) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `schedule_for_contact` datetime DEFAULT NULL,
  `time_zone` varchar(255) DEFAULT NULL,
  `from_time` varchar(255) DEFAULT NULL,
  `to_time` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `domain_website` varchar(255) DEFAULT NULL,
  `requirement` varchar(255) NOT NULL,
  `requirement_other` varchar(255) DEFAULT NULL,
  `project_name` varchar(255) DEFAULT NULL,
  `project_description` text DEFAULT NULL,
  `status` varchar(255) DEFAULT 'open',
  `assign_status` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `quotation_price` decimal(10,2) DEFAULT NULL,
  `closing_price` decimal(10,2) DEFAULT NULL,
  `post_date` datetime DEFAULT current_timestamp(),
  `state` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `new_project1_1108`
--

INSERT INTO `new_project1_1108` (`id`, `title`, `name`, `lname`, `email_id`, `phone`, `schedule_for_contact`, `time_zone`, `from_time`, `to_time`, `message`, `domain_website`, `requirement`, `requirement_other`, `project_name`, `project_description`, `status`, `assign_status`, `currency`, `quotation_price`, `closing_price`, `post_date`, `state`, `source`) VALUES
(10, 'Miss.', 'Sara', 'Spears', 'sara@designedconviction.com', 2538780990, NULL, NULL, NULL, NULL, NULL, 'www.designedconviction.com', 'Full Digital', NULL, 'Designed Conviction', 'Digimix. Also inquired about Basic Ecommerce website (1200 USD) \r\n\r\nLost: Went with a local provider at a cheaper cost.', 'lost', 'assigned', 'usd', '249.00', '0.00', '2020-06-11 15:40:22', 'Washington', 'google'),
(14, 'Miss.', 'Grace', 'Michallet', 'grace@resiliencesportswear.com', 5712550871, NULL, NULL, NULL, NULL, NULL, 'www.resiliencesportswear.com', 'Full Digital', NULL, 'Resilience Sportswear', 'She is looking for both traffic and conversion on her website.\r\nDetailed marketing proposal sent with 3 different packages as follow: 249 USD, 349 USD, 499 USD per month.\r\n\r\n21.07.2020: Client is neither receiving call nor responding to emails.\r\n\r\n22.07.2020: The client is not keen to proceed at this stage. Not responding to calls and emails.', 'lost', 'assigned', 'usd', '249.00', '0.00', '2020-07-13 15:56:31', 'Florida', 'google'),
(15, 'Mr.', 'Michael ', 'Harper ', 'mikeharper.359@gmail.com', 5857437137, NULL, NULL, NULL, NULL, NULL, 'YaeXantana@youtube.com', 'Full Digital', NULL, NULL, NULL, 'open', NULL, NULL, NULL, NULL, '2020-07-21 10:56:13', 'New York', 'google'),
(16, 'Mr.', 'Michael ', 'Harper ', 'mikeharper.359@gmail.com', 5857437137, NULL, NULL, NULL, NULL, NULL, 'YaeXantana@youtube.com', 'Full Digital', NULL, '', '21.07.2020: Called the client twice but no response.\r\n\r\n22.07.2020: Called the client twice but no response. Sent an email for introduction.\r\n\r\n24.07.2020: Called twice but no response.\r\n\r\n29.07.2020: Called him thrice but no response. Follow up email sent as well.\r\n\r\n03.08.2020: Called twice but no response.\r\n\r\n07.08.2020: Called twice but no response. Sent text message as well.', 'open', 'assigned', 'aud', '0.00', '0.00', '2020-07-21 10:56:13', 'New York', 'google'),
(17, 'Mr.', 'Harsh ', 'Brahmabhatt', 'harshb@cleanerscorp.com', 5166159598, NULL, NULL, NULL, NULL, NULL, 'https://countycleanerscorp.com/', 'Social', NULL, '', '03.08.2020: Called thrice but no response. Sent an email as well.\r\n\r\n06.08.2020: Called twice but no response.\r\n\r\n07.08.2020: Called twice but no response. Sent Text message as well.', 'open', 'assigned', 'aud', '0.00', '0.00', '2020-07-29 15:22:26', 'New York', 'google'),
(18, 'Mr.', 'Test', 'Test', 'test@gmail.com', 7894561236, NULL, NULL, NULL, NULL, NULL, 'https://www.fitser.com/', 'Full Digital', NULL, NULL, NULL, 'open', NULL, NULL, NULL, NULL, '2020-08-07 03:25:28', 'Wisconsin', '');

-- --------------------------------------------------------

--
-- Table structure for table `new_project_bkp`
--

CREATE TABLE `new_project_bkp` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `email_id` varchar(255) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `schedule_for_contact` datetime DEFAULT NULL,
  `time_zone` varchar(255) DEFAULT NULL,
  `from_time` varchar(255) DEFAULT NULL,
  `to_time` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `domain_website` varchar(255) DEFAULT NULL,
  `requirement` varchar(255) NOT NULL,
  `requirement_other` varchar(255) DEFAULT NULL,
  `project_name` varchar(255) DEFAULT NULL,
  `project_description` text DEFAULT NULL,
  `status` varchar(255) DEFAULT 'open',
  `assign_status` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `quotation_price` decimal(10,2) DEFAULT NULL,
  `closing_price` decimal(10,2) DEFAULT NULL,
  `post_date` datetime DEFAULT current_timestamp(),
  `state` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `new_project_bkp`
--

INSERT INTO `new_project_bkp` (`id`, `title`, `name`, `lname`, `email_id`, `phone`, `schedule_for_contact`, `time_zone`, `from_time`, `to_time`, `message`, `domain_website`, `requirement`, `requirement_other`, `project_name`, `project_description`, `status`, `assign_status`, `currency`, `quotation_price`, `closing_price`, `post_date`, `state`, `source`) VALUES
(10, 'Miss.', 'Sara', 'Spears', 'sara@designedconviction.com', 2538780990, NULL, NULL, NULL, NULL, NULL, 'www.designedconviction.com', 'Full Digital', NULL, 'Designed Conviction', 'Digimix. Also inquired about Basic Ecommerce website (1200 USD) \r\n\r\nLost: Went with a local provider at a cheaper cost.', 'lost', 'assigned', 'usd', '249.00', '0.00', '2020-06-11 15:40:22', 'Washington', 'google'),
(14, 'Miss.', 'Grace', 'Michallet', 'grace@resiliencesportswear.com', 5712550871, NULL, NULL, NULL, NULL, NULL, 'www.resiliencesportswear.com', 'Full Digital', NULL, 'Resilience Sportswear', 'She is looking for both traffic and conversion on her website.\r\nDetailed marketing proposal sent with 3 different packages as follow: 249 USD, 349 USD, 499 USD per month.\r\n\r\n21.07.2020: Client is neither receiving call nor responding to emails.\r\n\r\n22.07.2020: The client is not keen to proceed at this stage. Not responding to calls and emails.', 'lost', 'assigned', 'usd', '249.00', '0.00', '2020-07-13 15:56:31', 'Florida', 'google'),
(15, 'Mr.', 'Michael ', 'Harper ', 'mikeharper.359@gmail.com', 5857437137, NULL, NULL, NULL, NULL, NULL, 'YaeXantana@youtube.com', 'Full Digital', NULL, NULL, NULL, 'open', NULL, NULL, NULL, NULL, '2020-07-21 10:56:13', 'New York', 'google'),
(16, 'Mr.', 'Michael ', 'Harper ', 'mikeharper.359@gmail.com', 5857437137, NULL, NULL, NULL, NULL, NULL, 'YaeXantana@youtube.com', 'Full Digital', NULL, '', '21.07.2020: Called the client twice but no response.\r\n\r\n22.07.2020: Called the client twice but no response. Sent an email for introduction.\r\n\r\n24.07.2020: Called twice but no response.\r\n\r\n29.07.2020: Called him thrice but no response. Follow up email sent as well.\r\n\r\n03.08.2020: Called twice but no response.\r\n\r\n07.08.2020: Called twice but no response. Sent text message as well.', 'open', 'assigned', 'aud', '0.00', '0.00', '2020-07-21 10:56:13', 'New York', 'google'),
(17, 'Mr.', 'Harsh ', 'Brahmabhatt', 'harshb@cleanerscorp.com', 5166159598, NULL, NULL, NULL, NULL, NULL, 'https://countycleanerscorp.com/', 'Social', NULL, '', '03.08.2020: Called thrice but no response. Sent an email as well.\r\n\r\n06.08.2020: Called twice but no response.\r\n\r\n07.08.2020: Called twice but no response. Sent Text message as well.', 'open', 'assigned', 'aud', '0.00', '0.00', '2020-07-29 15:22:26', 'New York', 'google'),
(18, 'Mr.', 'Test', 'Test', 'test@gmail.com', 7894561236, NULL, NULL, NULL, NULL, NULL, 'https://www.fitser.com/', 'Full Digital', NULL, NULL, NULL, 'open', NULL, NULL, NULL, NULL, '2020-08-07 03:25:28', 'Wisconsin', ''),
(1, NULL, 'Fitser', NULL, 'rajan.kumar2@met-technologies.com', 9876260477, '0000-00-00 00:00:00', '', '07:00 am', '06:00 am', 'xczcxzc', '0', '', '', '', '', 'open', 'assigned', '', '0.00', '0.00', '2020-01-03 09:49:31', NULL, NULL),
(2, NULL, 'Fitser', NULL, 'rajan.kumar2@met-technologies.com', 9876260477, '0000-00-00 00:00:00', '', '05:30 am', '06:00 am', 'Test', 'test.com', 'others', 'Other', '', '', 'open', 'unassigned', '', '0.00', '0.00', '2020-01-03 11:42:17', NULL, NULL),
(3, NULL, 'TEST TEST', NULL, 'testtest123@nmail.com', 123456789, '0000-00-00 00:00:00', '', '07:00 am', '09:30 am', 'TEST Test web development', '', 'Web Development', '', '', '', 'open', 'unassigned', '', '0.00', '0.00', '2020-01-06 05:19:53', NULL, NULL),
(4, NULL, 'TEST TEST', NULL, 'testtest123@nmail.com', 123456789, '0000-00-00 00:00:00', '', '09:30 am', '02:00 am', 'Test Web Design Services', 'www.testtestnowhere.com', 'Web Design', '', '', '', 'open', 'unassigned', '', '0.00', '0.00', '2020-01-06 05:23:35', NULL, NULL),
(5, NULL, 'Fitser', NULL, 'rajan.kumar2@met-technologies.com', 9876260477, '0000-00-00 00:00:00', '', '01:00 am', '01:00 am', 'Test', 'test.com', 'Web Design', '', '', '', 'open', 'unassigned', '', '0.00', '0.00', '2020-01-06 05:41:41', NULL, NULL),
(6, NULL, 'Fitser', NULL, 'rajan.kumar2@met-technologies.com', 9876260477, '0000-00-00 00:00:00', '', '05:30 am', '06:00 am', 'Test', 'test.com', 'Web Design', 'Test', '', '', 'open', 'unassigned', '', '0.00', '0.00', '2020-01-06 07:50:44', NULL, NULL),
(7, NULL, 'Fitser', NULL, 'rajan.kumar2@met-technologies.com', 9876260477, '0000-00-00 00:00:00', '', '07:00 am', '06:00 am', 'Fxdfdsfd', 'test.com', 'Web Design', 'Other', '', '', 'open', 'unassigned', '', '0.00', '0.00', '2020-01-06 07:51:42', NULL, NULL),
(8, NULL, 'Fitser_final', NULL, 'rajan.kumar2@met-technologies.com', 9876260477, '0000-00-00 00:00:00', '', '06:30 am', '05:30 am', 'testing', 'test.com', 'Web Design', 'Other', '', '', 'open', 'unassigned', '', '0.00', '0.00', '2020-01-06 08:01:01', NULL, NULL),
(9, NULL, 'Fitser_final', NULL, 'rajan.kumar2@met-technologies.com', 9876260477, '0000-00-00 00:00:00', '', '06:00 am', '06:30 am', 'Test', 'test.com', 'Web Design', 'Other', '', '', 'open', 'unassigned', '', '0.00', '0.00', '2020-01-06 08:03:59', NULL, NULL),
(10, NULL, 'TEST TEST', NULL, 'testtest123@nmail.com', 123456789, '0000-00-00 00:00:00', 'Central, IN, USA (GMT-5)', '12:00 am', '12:00 am', 'Test', 'www.testtestnowhere.com', 'Web Design', 'Test', '', '', 'open', 'unassigned', '', '0.00', '0.00', '2020-02-21 04:27:24', NULL, NULL),
(11, NULL, 'Souvik Roy', NULL, 'souvikroy377@gmail.com', 8910096186, '0000-00-00 00:00:00', 'Central, IN, USA (GMT-5)', '12:30 am', '12:00 am', 'dgdsh', 'ACB', 'Web Design', '', '', 'test ', 'open', 'assigned', 'aud', '0.00', '0.00', '2020-06-01 09:19:18', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `new_project_old`
--

CREATE TABLE `new_project_old` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `campaign_id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `email_id` varchar(255) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `schedule_for_contact` datetime DEFAULT NULL,
  `time_zone` varchar(255) DEFAULT NULL,
  `from_time` varchar(255) DEFAULT NULL,
  `to_time` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `domain_website` varchar(255) DEFAULT NULL,
  `requirement` varchar(255) NOT NULL,
  `requirement_other` varchar(255) DEFAULT NULL,
  `project_name` varchar(255) DEFAULT NULL,
  `project_description` text DEFAULT NULL,
  `status` varchar(255) DEFAULT 'open',
  `assign_status` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `quotation_price` decimal(10,2) DEFAULT NULL,
  `closing_price` decimal(10,2) DEFAULT NULL,
  `commission` float(10,2) DEFAULT NULL,
  `post_date` datetime DEFAULT current_timestamp(),
  `state` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `source_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `new_project_old`
--

INSERT INTO `new_project_old` (`id`, `company_id`, `campaign_id`, `title`, `name`, `lname`, `email_id`, `phone`, `schedule_for_contact`, `time_zone`, `from_time`, `to_time`, `message`, `domain_website`, `requirement`, `requirement_other`, `project_name`, `project_description`, `status`, `assign_status`, `currency`, `quotation_price`, `closing_price`, `commission`, `post_date`, `state`, `source`, `source_type`) VALUES
(15, 2, 2, 'Mr.', 'Jeckov', 'jems', 'jeckov@gmail.com', 12345644444, NULL, NULL, NULL, NULL, NULL, 'test', 'Full Digital', NULL, NULL, NULL, '	\r\nopen', NULL, NULL, NULL, NULL, 0.00, '2020-02-17 00:00:00', 'Arizona', 'https://mufasabiltong.fitser.com/test/', 'ppc'),
(40, 1, 1, 'Mr.', 'Test', 'Roy', 'test@gmail.com', 8910096186, NULL, NULL, NULL, NULL, NULL, 'https://www.fitser.com/', 'SEO', NULL, NULL, NULL, 'open', NULL, NULL, NULL, NULL, NULL, '2020-08-07 06:58:39', 'Arkansas', 'google', 'ppc'),
(41, 1, 1, 'Mr.', 'Developer', 'Roy', 'test@gmail.com', 3689745214, NULL, NULL, NULL, NULL, NULL, 'https://amazon.in', 'PPC', NULL, NULL, NULL, 'open', NULL, NULL, NULL, NULL, NULL, '2020-08-07 07:03:55', 'Maine', 'google', 'ppc'),
(42, 1, 6, 'Mr.', 'Rana', 'Test', 'test66@gmail.com', 6321458796, NULL, NULL, NULL, NULL, NULL, 'https://www.google.com/', 'SEO', NULL, NULL, NULL, 'open', NULL, NULL, NULL, NULL, NULL, '2020-08-07 07:06:13', 'Illinois', 'facebook', 'fb'),
(43, 1, 1, 'Mr.', 'Test', 'Roy', 'test@gmail.com', 8910096186, NULL, NULL, NULL, NULL, NULL, 'https://www.fitser.com/', 'SEO', NULL, NULL, NULL, 'awarded', 'assigned', NULL, NULL, NULL, NULL, '2020-08-07 07:50:30', 'Arkansas', 'google', 'ppc'),
(44, 0, 0, 'Mr.', 'Sham', 'Saha', 'testestest12346@gmail.com', 9999999996, NULL, NULL, NULL, NULL, NULL, 'www.wfwfwfw.com', 'Full Digital', NULL, '', '', 'open', 'assigned', 'aud', '10.00', '0.00', 0.00, '2020-08-10 03:24:37', 'Indiana', '', 'ppc'),
(45, 1, 6, 'Mr.', 'Sham', 'Sah', 'shamimfsfvsfsfgtest@gmail.com', 9999999996, NULL, NULL, NULL, NULL, NULL, 'www.wfwfwfw.com', 'Content', NULL, 'DEvelopment Project', 'DEvelopment Project', 'awarded', 'assigned', 'aud', '1200.00', '1000.00', 800.00, '2020-08-10 03:37:06', 'Georgia', '', 'fb'),
(46, 0, 0, 'Mr.', 'Sham', 'SS', 'testestest12346@gmail.com', 9999999996, NULL, NULL, NULL, NULL, NULL, 'www.gggggg.com', 'PPC', NULL, NULL, NULL, 'open', NULL, NULL, NULL, NULL, NULL, '2020-08-10 03:38:43', 'California', '', 'ppc'),
(47, 1, 1, 'Mr.', 'Souvik', 'Test', 'test@gmail.com', 8910096186, NULL, NULL, NULL, NULL, NULL, 'https://amazon.in', 'SEO', NULL, 'Amazon API', 'Amazon API', 'open', 'assigned', 'aud', '1000.00', '900.00', 100.00, '2020-08-10 04:21:33', 'Colorado', '', 'fb'),
(48, 1, 1, 'Mr.', 'Souvik', 'Test', 'test@gmail.com', 8910096186, NULL, NULL, NULL, NULL, NULL, 'https://amazon.in', 'Full Digital', NULL, 'Amazon API', 'Amazon API', 'innegotiation', 'assigned', 'aud', '1100.00', '900.00', 100.00, '2020-08-10 04:21:51', 'Colorado', '', 'ppc'),
(49, 1, 1, 'Mr.', 'Souvik', 'Roy', 'rsouvik850@gmail.com', 8910096186, NULL, NULL, NULL, NULL, NULL, 'https://amazon.in', 'PPC', NULL, NULL, NULL, 'open', NULL, NULL, NULL, NULL, NULL, '2020-07-10 04:23:05', 'Arizona', '', 'fb'),
(50, 1, 1, 'Mrs.', 'Ishani', 'Test', 'rsouvik850@gmail.com', 8910096186, NULL, NULL, NULL, NULL, NULL, 'https://amazon.in', 'PPC', NULL, NULL, NULL, 'open', NULL, NULL, NULL, NULL, NULL, '2020-06-10 04:56:24', 'Florida', 'google', 'ppc'),
(51, 1, 6, 'Mrs.', 'Arindam ', 'Test', 'rsouvik850@gmail.com', 8910096186, NULL, NULL, NULL, NULL, NULL, 'https://www.fitser.com/', 'SEO', NULL, 'Demo Project', 'Demo Project', 'lost', 'assigned', 'aud', '2000.00', '1800.00', 199.98, '2020-03-10 04:57:18', 'Wyoming', 'facebook', 'fb'),
(52, 0, 0, 'Mr.', 'TEST', 'TEST', 'testestsew123@gmail.com', 9999999996, NULL, NULL, NULL, NULL, NULL, 'www.gggggg.com', 'PPC', NULL, NULL, NULL, 'open', NULL, NULL, NULL, NULL, NULL, '2020-02-10 06:52:08', 'Alabama', '', 'ppc'),
(53, 1, 1, 'Mr.', 'Sham', 'Test', 'shamtest76543@gmail.com', 9999999999, NULL, NULL, NULL, NULL, NULL, 'www.yyyyyyyy.com', 'Full Digital', NULL, NULL, NULL, 'open', NULL, NULL, NULL, NULL, NULL, '2020-01-10 06:54:28', 'Maine', '', 'fb'),
(54, 0, 0, 'Miss.', 'MetFitser', 'Developer', 'ishani@gmail.com', 8945125478, NULL, NULL, NULL, NULL, NULL, 'https://amazon.in', 'Full Digital', NULL, NULL, NULL, 'open', NULL, NULL, NULL, NULL, NULL, '2020-08-11 06:00:08', 'Colorado', 'google', '');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1->active,0->inactive,3->delete',
  `date_of_creation` datetime NOT NULL DEFAULT current_timestamp(),
  `date_of_update` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `company_id`, `role_name`, `status`, `date_of_creation`, `date_of_update`) VALUES
(1, 0, 'Company Administrator', 1, '2017-01-19 00:00:00', '2020-06-12 11:13:33'),
(2, 0, 'Super Administrator', 3, '2017-01-19 00:00:00', '2020-06-12 11:04:04'),
(3, 1, 'AM', 1, '2020-06-12 14:56:56', '2020-08-11 06:59:04'),
(4, 1, 'Sales Person', 1, '2020-08-04 15:00:45', '2020-08-11 08:17:16'),
(5, 1, 'sales', 1, '2020-08-06 18:27:10', ''),
(6, 1, 'manager', 1, '2020-08-06 18:28:37', ''),
(7, 1, 'Assistant', 1, '2020-08-06 18:53:31', '');

-- --------------------------------------------------------

--
-- Table structure for table `roles_bkp1`
--

CREATE TABLE `roles_bkp1` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `date_of_creation` datetime NOT NULL,
  `date_of_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles_bkp1`
--

INSERT INTO `roles_bkp1` (`role_id`, `role_name`, `status`, `date_of_creation`, `date_of_update`) VALUES
(2, 'ADMINISTRATOR', 1, '2017-01-19 00:00:00', '2017-01-19 00:00:00'),
(3, 'Employee', 1, '2017-01-19 00:00:00', '2017-01-19 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `subscription_types`
--

CREATE TABLE `subscription_types` (
  `subscription_type_id` int(11) NOT NULL,
  `type_name` varchar(100) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subscription_types`
--

INSERT INTO `subscription_types` (`subscription_type_id`, `type_name`, `status`, `created_at`) VALUES
(1, 'Unsubscribed', 1, '2020-09-20 12:01:17'),
(2, 'Subscribed', 1, '2020-09-20 12:01:17'),
(3, 'Not subscribed', 1, '2020-09-20 12:02:36'),
(4, 'Reported as spam', 1, '2020-09-20 12:02:36'),
(5, 'Bounced', 1, '2020-09-20 12:02:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL,
  `emp_id` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `login_status` int(11) NOT NULL COMMENT '1->Active,0->Inactive',
  `date_of_lastlogin` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `company_id`, `name`, `email`, `password`, `role_id`, `emp_id`, `status`, `login_status`, `date_of_lastlogin`) VALUES
(1, 0, 'Admin', 'admin@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, '', 1, 1, '2021-07-12 09:59:26'),
(8, 1, 'Sourya Ghosh', 'sourya.ghosh@fitser.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 3, '', 1, 1, '2020-08-11 15:03:45'),
(9, 1, 'Fitser', 'fitser@gmail.com', 'de7c40974d2e4295a6a14a3123c671b5cf96ce5e', 1, '', 1, 1, '2020-07-27 05:13:31'),
(10, 1, 'Shamim', 'shamim.sahariar@met-technologies.com', 'f33647da6193fd3ba989a4054760ad7102248cd7', 4, '', 1, 0, '2020-09-16 11:25:00'),
(11, 1, 'Fitser', 'fitser@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1, '', 1, 1, '2020-09-16 16:07:03'),
(12, 1, 'Fitser', 'fitser@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1, '', 1, 0, '2020-08-11 19:08:28'),
(13, 1, 'Sk Alauddin', 'skalauddin@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 4, '', 1, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users_bkp`
--

CREATE TABLE `users_bkp` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL,
  `emp_id` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `login_status` int(11) NOT NULL COMMENT '1->Active,0->Inactive',
  `date_of_lastlogin` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_bkp`
--

INSERT INTO `users_bkp` (`id`, `name`, `email`, `password`, `role_id`, `emp_id`, `status`, `login_status`, `date_of_lastlogin`) VALUES
(1, 'Admin', 'admin@gmail.com', '8512d1c4f51e8829671a6b4aff58442f1724e424', 2, '', 1, 1, '2020-06-04 06:01:16'),
(4, 'Adrian', 'adrian.daniels@met-technologies.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 3, '', 1, 0, '0000-00-00 00:00:00'),
(5, 'Aaron', 'aaron.dass@met-technologies.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 3, '', 1, 0, '2018-11-09 06:15:41'),
(6, 'Soumo Pratihar', 'soumo.pratihar@fitser.com', '7288edd0fc3ffcbe93a0cf06e3568e28521687bc', 3, '', 1, 0, '0000-00-00 00:00:00'),
(7, 'Arshad', 'arshad.iqbal@fitser.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 3, '', 1, 1, '2020-01-06 02:34:07');

-- --------------------------------------------------------

--
-- Table structure for table `users_bkp!_1108`
--

CREATE TABLE `users_bkp!_1108` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL,
  `emp_id` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `login_status` int(11) NOT NULL COMMENT '1->Active,0->Inactive',
  `date_of_lastlogin` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_bkp!_1108`
--

INSERT INTO `users_bkp!_1108` (`id`, `title`, `name`, `lname`, `email`, `password`, `role_id`, `emp_id`, `status`, `login_status`, `date_of_lastlogin`) VALUES
(1, NULL, 'Admin', NULL, 'admin@gmail.com', '601f1889667efaebb33b8c12572835da3f027f78', 2, '', 1, 1, '2020-08-03 04:45:13'),
(8, NULL, 'Sourya Ghosh', NULL, 'sourya.ghosh@fitser.com', 'f6ba8d3bd01de95fa82eaac3f048ab7bd36dba36', 3, '', 1, 1, '2020-08-07 03:28:26'),
(9, NULL, 'KG', NULL, 'connect@kunalgupta.info', 'de7c40974d2e4295a6a14a3123c671b5cf96ce5e', 2, '', 1, 1, '2020-07-27 05:13:31'),
(10, NULL, 'Shamim', NULL, 'Shamim.Sahariar@met-technologies.com', 'f33647da6193fd3ba989a4054760ad7102248cd7', 2, '', 1, 1, '2020-08-04 06:19:25');

-- --------------------------------------------------------

--
-- Table structure for table `users_old`
--

CREATE TABLE `users_old` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL,
  `emp_id` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `login_status` int(11) NOT NULL COMMENT '1->Active,0->Inactive',
  `date_of_lastlogin` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_old`
--

INSERT INTO `users_old` (`id`, `company_id`, `name`, `email`, `password`, `role_id`, `emp_id`, `status`, `login_status`, `date_of_lastlogin`) VALUES
(1, 0, 'Super Admin', 'admin@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, '', 1, 1, '2020-08-11 17:39:53'),
(5, 1, 'Aaron', 'aaron.dass@met-technologies.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 3, '', 1, 0, '2018-11-09 06:15:41'),
(6, 1, 'Soumo Pratihar', 'soumo.pratihar@fitser.com', '7288edd0fc3ffcbe93a0cf06e3568e28521687bc', 3, '', 1, 0, '0000-00-00 00:00:00'),
(7, 1, 'Arshad', 'arshad.iqbal@fitser.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 3, '', 1, 0, '2020-08-11 07:18:19'),
(8, 1, 'Jenny Steves', 'jenny@test.com', '601f1889667efaebb33b8c12572835da3f027f78', 7, '', 1, 0, '2020-06-05 17:13:34'),
(9, 1, 'Fitser', 'fitser@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1, '', 1, 0, '2020-08-11 07:18:45'),
(15, 6, 'user_acr_01', 'user_acr_01@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 3, '', 1, 0, '0000-00-00 00:00:00'),
(16, 6, 'user_acr_02', 'user_acr_02@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 3, '', 1, 0, '0000-00-00 00:00:00'),
(17, 2, 'user_ecre_01', 'user_ecre_01@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 3, '', 1, 0, '0000-00-00 00:00:00'),
(18, 2, 'user_ecre_02', 'user_ecre_02@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 3, '', 1, 0, '0000-00-00 00:00:00'),
(20, 1, 'test_user01', 'fitser_user01@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 3, '', 1, 0, '0000-00-00 00:00:00'),
(22, 0, 'Test', 'blue@yopmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1, '', 1, 0, '2020-07-31 10:21:40'),
(28, 7, 'xyz', 'sett@sfd.rty', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1, '', 1, 0, '0000-00-00 00:00:00'),
(33, 10, 'Parth', 'blue4@yopmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 3, '', 1, 0, '0000-00-00 00:00:00'),
(35, 11, 'TestD', 'testd@yopmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1, '', 1, 0, '0000-00-00 00:00:00'),
(37, 1, 'headfitser', 'fitserhead@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 4, '', 1, 0, '0000-00-00 00:00:00'),
(41, 12, 'Test', 'prity.jha@met-technologies.com', '719855e8f4ebd94341277b0b0d50b75c5187133f', 3, '', 1, 0, '2020-08-06 15:56:55'),
(42, 1, 'Sourya Ghosh', 'admin@gmail.com', '601f1889667efaebb33b8c12572835da3f027f78', 4, '', 1, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_commission`
--

CREATE TABLE `user_commission` (
  `user_commission_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `lead_id` int(11) NOT NULL,
  `commission_ratio` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_on` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_commission`
--

INSERT INTO `user_commission` (`user_commission_id`, `user_id`, `lead_id`, `commission_ratio`, `created_on`, `updated_on`) VALUES
(1, 7, 11, 1, '2020-06-10 09:25:00', ''),
(2, 7, 1, 5, '2020-06-10 09:25:00', ''),
(3, 7, 13, 10, '2020-06-10 09:25:00', ''),
(4, 4, 20, 8, '2020-06-10 12:19:49', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_permission`
--

CREATE TABLE `user_permission` (
  `menu_permission_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_ts` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_ts` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_permission`
--

INSERT INTO `user_permission` (`menu_permission_id`, `menu_id`, `role_id`, `status`, `created_ts`, `updated_ts`) VALUES
(4, 1, 0, 1, '2020-06-05 01:03:25', ''),
(5, 1, 6, 1, '2020-06-05 01:13:30', ''),
(6, 4, 6, 1, '2020-06-05 01:13:30', ''),
(9, 1, 8, 1, '2020-06-05 01:14:10', ''),
(10, 2, 8, 1, '2020-06-05 01:14:10', ''),
(11, 4, 8, 1, '2020-06-05 01:14:10', ''),
(16, 1, 7, 1, '2020-06-05 20:41:43', ''),
(17, 2, 7, 1, '2020-06-05 20:41:43', ''),
(18, 4, 7, 1, '2020-06-05 20:41:43', ''),
(22, 1, 9, 1, '2020-06-11 20:02:16', ''),
(23, 2, 9, 1, '2020-06-11 20:02:16', ''),
(24, 3, 9, 1, '2020-06-11 20:02:16', ''),
(25, 4, 9, 1, '2020-06-11 20:02:16', ''),
(26, 5, 9, 1, '2020-06-11 20:02:17', ''),
(27, 6, 9, 1, '2020-06-11 20:02:17', ''),
(28, 5, 10, 1, '2020-06-11 20:03:32', ''),
(29, 5, 11, 1, '2020-06-11 20:04:34', ''),
(30, 1, 12, 1, '2020-06-11 20:24:15', ''),
(31, 2, 12, 1, '2020-06-11 20:24:15', ''),
(32, 3, 12, 1, '2020-06-11 20:24:15', ''),
(33, 4, 12, 1, '2020-06-11 20:24:15', ''),
(34, 5, 12, 1, '2020-06-11 20:24:15', ''),
(35, 6, 12, 1, '2020-06-11 20:24:15', ''),
(42, 1, 13, 1, '2020-06-11 20:32:16', ''),
(43, 2, 13, 1, '2020-06-11 20:32:16', ''),
(44, 3, 13, 1, '2020-06-11 20:32:16', ''),
(45, 4, 13, 1, '2020-06-11 20:32:16', ''),
(46, 5, 13, 1, '2020-06-11 20:32:16', ''),
(47, 6, 13, 1, '2020-06-11 20:32:16', ''),
(48, 5, 14, 1, '2020-06-11 20:32:32', ''),
(49, 1, 2, 1, '2020-06-12 14:34:04', ''),
(50, 2, 2, 1, '2020-06-12 14:34:04', ''),
(51, 3, 2, 1, '2020-06-12 14:34:04', ''),
(52, 4, 2, 1, '2020-06-12 14:34:04', ''),
(53, 5, 2, 0, '2020-06-12 14:34:04', ''),
(54, 6, 2, 1, '2020-06-12 14:34:04', ''),
(62, 1, 1, 1, '2020-06-12 14:43:33', ''),
(63, 2, 1, 1, '2020-06-12 14:43:33', ''),
(64, 3, 1, 1, '2020-06-12 14:43:33', ''),
(65, 4, 1, 1, '2020-06-12 14:43:33', ''),
(66, 5, 1, 0, '2020-06-12 14:43:33', ''),
(67, 6, 1, 1, '2020-06-12 14:43:33', ''),
(68, 8, 1, 1, '2020-06-12 14:43:33', ''),
(69, 9, 1, 1, '2020-06-12 14:43:33', ''),
(70, 1, 17, 1, '2020-06-12 14:56:56', ''),
(71, 4, 17, 1, '2020-06-12 14:56:56', ''),
(72, 5, 17, 1, '2020-06-12 14:56:56', ''),
(77, 4, 5, 1, '2020-08-06 18:27:10', ''),
(78, 2, 6, 1, '2020-08-06 18:28:37', ''),
(79, 3, 6, 1, '2020-08-06 18:28:38', ''),
(80, 1, 7, 1, '2020-08-06 18:53:31', ''),
(81, 3, 7, 1, '2020-08-06 18:53:31', ''),
(82, 4, 7, 1, '2020-08-06 18:53:31', ''),
(83, 6, 7, 1, '2020-08-06 18:53:31', ''),
(84, 4, 3, 1, '2020-08-11 09:29:05', ''),
(85, 5, 3, 1, '2020-08-11 09:29:05', ''),
(86, 8, 3, 1, '2020-08-11 09:29:05', ''),
(93, 1, 4, 1, '2020-08-11 10:47:16', ''),
(94, 2, 4, 1, '2020-08-11 10:47:16', ''),
(95, 4, 4, 1, '2020-08-11 10:47:16', ''),
(96, 5, 4, 1, '2020-08-11 10:47:16', ''),
(97, 8, 4, 1, '2020-08-11 10:47:16', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts_form_elements`
--
ALTER TABLE `accounts_form_elements`
  ADD PRIMARY KEY (`accounts_form_element_id`);

--
-- Indexes for table `assign_project`
--
ALTER TABLE `assign_project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assign_project1_1108`
--
ALTER TABLE `assign_project1_1108`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assign_project_old`
--
ALTER TABLE `assign_project_old`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaign_master`
--
ALTER TABLE `campaign_master`
  ADD PRIMARY KEY (`campaign_id`);

--
-- Indexes for table `campaign_master_bkp`
--
ALTER TABLE `campaign_master_bkp`
  ADD PRIMARY KEY (`campaign_id`);

--
-- Indexes for table `campaign_source`
--
ALTER TABLE `campaign_source`
  ADD PRIMARY KEY (`campaign_source_id`);

--
-- Indexes for table `company_accounts_form_elements`
--
ALTER TABLE `company_accounts_form_elements`
  ADD PRIMARY KEY (`company_accounts_form_element_id`);

--
-- Indexes for table `company_contact_form_elements`
--
ALTER TABLE `company_contact_form_elements`
  ADD PRIMARY KEY (`company_contact_form_element`);

--
-- Indexes for table `company_deal_form_elements`
--
ALTER TABLE `company_deal_form_elements`
  ADD PRIMARY KEY (`company_contact_form_element`);

--
-- Indexes for table `company_master`
--
ALTER TABLE `company_master`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `contact_form_elements`
--
ALTER TABLE `contact_form_elements`
  ADD PRIMARY KEY (`contact_form_element_id`);

--
-- Indexes for table `deals_company_pipelines`
--
ALTER TABLE `deals_company_pipelines`
  ADD PRIMARY KEY (`deals_company_pipeline_id`);

--
-- Indexes for table `deals_pipelines`
--
ALTER TABLE `deals_pipelines`
  ADD PRIMARY KEY (`deals_pipeline_id`);

--
-- Indexes for table `deal_form_elements`
--
ALTER TABLE `deal_form_elements`
  ADD PRIMARY KEY (`deal_form_element_id`);

--
-- Indexes for table `deal_logs`
--
ALTER TABLE `deal_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deal_tasks`
--
ALTER TABLE `deal_tasks`
  ADD PRIMARY KEY (`deal_task_id`);

--
-- Indexes for table `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`lead_id`);

--
-- Indexes for table `leads_percentage`
--
ALTER TABLE `leads_percentage`
  ADD PRIMARY KEY (`lead_percentage_id`);

--
-- Indexes for table `lead_company_lifecycle_stages`
--
ALTER TABLE `lead_company_lifecycle_stages`
  ADD PRIMARY KEY (`lead_lifecycle_stage_id`);

--
-- Indexes for table `lead_deals`
--
ALTER TABLE `lead_deals`
  ADD PRIMARY KEY (`lead_deal_id`);

--
-- Indexes for table `lead_details`
--
ALTER TABLE `lead_details`
  ADD PRIMARY KEY (`lead_detail_id`);

--
-- Indexes for table `lead_emails`
--
ALTER TABLE `lead_emails`
  ADD PRIMARY KEY (`lead_email_id`);

--
-- Indexes for table `lead_files`
--
ALTER TABLE `lead_files`
  ADD PRIMARY KEY (`lead_file_id`);

--
-- Indexes for table `lead_lifecycle`
--
ALTER TABLE `lead_lifecycle`
  ADD PRIMARY KEY (`lead_lifecycle_id`);

--
-- Indexes for table `lead_lifecycle_stages`
--
ALTER TABLE `lead_lifecycle_stages`
  ADD PRIMARY KEY (`lead_lifecycle_stage_id`);

--
-- Indexes for table `lead_logs`
--
ALTER TABLE `lead_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `lead_message`
--
ALTER TABLE `lead_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lead_notes`
--
ALTER TABLE `lead_notes`
  ADD PRIMARY KEY (`lead_note_id`);

--
-- Indexes for table `lead_stages`
--
ALTER TABLE `lead_stages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lead_tasks`
--
ALTER TABLE `lead_tasks`
  ADD PRIMARY KEY (`lead_task_id`);

--
-- Indexes for table `menu_master`
--
ALTER TABLE `menu_master`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `new_project`
--
ALTER TABLE `new_project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_project1_1108`
--
ALTER TABLE `new_project1_1108`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscription_types`
--
ALTER TABLE `subscription_types`
  ADD PRIMARY KEY (`subscription_type_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts_form_elements`
--
ALTER TABLE `accounts_form_elements`
  MODIFY `accounts_form_element_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `company_accounts_form_elements`
--
ALTER TABLE `company_accounts_form_elements`
  MODIFY `company_accounts_form_element_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `company_contact_form_elements`
--
ALTER TABLE `company_contact_form_elements`
  MODIFY `company_contact_form_element` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `company_deal_form_elements`
--
ALTER TABLE `company_deal_form_elements`
  MODIFY `company_contact_form_element` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contact_form_elements`
--
ALTER TABLE `contact_form_elements`
  MODIFY `contact_form_element_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `deals_company_pipelines`
--
ALTER TABLE `deals_company_pipelines`
  MODIFY `deals_company_pipeline_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `deals_pipelines`
--
ALTER TABLE `deals_pipelines`
  MODIFY `deals_pipeline_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `deal_form_elements`
--
ALTER TABLE `deal_form_elements`
  MODIFY `deal_form_element_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `deal_logs`
--
ALTER TABLE `deal_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `deal_tasks`
--
ALTER TABLE `deal_tasks`
  MODIFY `deal_task_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `leads`
--
ALTER TABLE `leads`
  MODIFY `lead_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `lead_company_lifecycle_stages`
--
ALTER TABLE `lead_company_lifecycle_stages`
  MODIFY `lead_lifecycle_stage_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `lead_deals`
--
ALTER TABLE `lead_deals`
  MODIFY `lead_deal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lead_details`
--
ALTER TABLE `lead_details`
  MODIFY `lead_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lead_emails`
--
ALTER TABLE `lead_emails`
  MODIFY `lead_email_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `lead_files`
--
ALTER TABLE `lead_files`
  MODIFY `lead_file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `lead_lifecycle`
--
ALTER TABLE `lead_lifecycle`
  MODIFY `lead_lifecycle_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lead_lifecycle_stages`
--
ALTER TABLE `lead_lifecycle_stages`
  MODIFY `lead_lifecycle_stage_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `lead_logs`
--
ALTER TABLE `lead_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `lead_notes`
--
ALTER TABLE `lead_notes`
  MODIFY `lead_note_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `lead_stages`
--
ALTER TABLE `lead_stages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `lead_tasks`
--
ALTER TABLE `lead_tasks`
  MODIFY `lead_task_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `subscription_types`
--
ALTER TABLE `subscription_types`
  MODIFY `subscription_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
