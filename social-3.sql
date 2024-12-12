-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 09, 2024 at 03:39 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social`
--

-- --------------------------------------------------------

--
-- Table structure for table `azampays`
--

CREATE TABLE `azampays` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `response` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`response`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `clientId` varchar(255) DEFAULT NULL,
  `transactionstatus` varchar(255) DEFAULT NULL,
  `operator` varchar(255) DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `externalreference` varchar(255) DEFAULT NULL,
  `utilityref` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `transid` varchar(255) DEFAULT NULL,
  `msisdn` varchar(255) DEFAULT NULL,
  `mnoreference` varchar(255) DEFAULT NULL,
  `submerchantAcc` varchar(255) DEFAULT NULL,
  `type` varchar(250) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `azampays`
--

INSERT INTO `azampays` (`id`, `response`, `created_at`, `updated_at`, `message`, `user`, `password`, `clientId`, `transactionstatus`, `operator`, `reference`, `externalreference`, `utilityref`, `amount`, `transid`, `msisdn`, `mnoreference`, `submerchantAcc`, `type`, `user_id`, `post_id`) VALUES
(1, '{\"body\": \"this is the caption of the videoss\", \"post_id\": \"60\", \"user_id\": \"6\", \"comment_id\": \"20\"}', '2024-03-08 08:15:56', '2024-03-08 08:15:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'post', NULL, NULL),
(2, '{\"user\": null, \"amount\": \"1000\", \"msisdn\": \"0717161736\", \"message\": \"Dear customer, your payment is successfully completed\", \"transid\": \"AZMbe391bac090d4a279f57758d67cd6c06\", \"clientId\": null, \"operator\": \"Tigo\", \"password\": null, \"reference\": \"AZMbe391bac090d4a279f57758d67cd6c06\", \"utilityref\": \"123\", \"mnoreference\": \"694967113687\", \"submerchantAcc\": null, \"externalreference\": \"AZMbe391bac090d4a279f57758d67cd6c06\", \"transactionstatus\": \"success\", \"additionalProperties\": {\"property1\": null, \"property2\": null}}', '2024-03-08 08:18:13', '2024-03-08 08:18:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'post', NULL, NULL),
(3, '{\"user\": null, \"amount\": \"1000.00\", \"msisdn\": \"0717161736\", \"message\": \"Dear customer, your payment is successfully completed\", \"transid\": \"AZMc44b83b96ecb4e30b583bcdef54062dc\", \"clientId\": null, \"operator\": \"Tigo\", \"password\": null, \"reference\": \"AZMc44b83b96ecb4e30b583bcdef54062dc\", \"utilityref\": \"123\", \"mnoreference\": \"896776367868\", \"submerchantAcc\": null, \"externalreference\": \"AZMc44b83b96ecb4e30b583bcdef54062dc\", \"transactionstatus\": \"success\", \"additionalProperties\": {\"postId\": \"875\", \"userId\": \"13\"}}', '2024-03-11 08:33:51', '2024-03-11 08:33:51', 'Dear customer, your payment is successfully completed', NULL, NULL, NULL, 'success', 'Tigo', 'AZMc44b83b96ecb4e30b583bcdef54062dc', 'AZMc44b83b96ecb4e30b583bcdef54062dc', '123', '1000.00', 'AZMc44b83b96ecb4e30b583bcdef54062dc', '0717161736', '896776367868', NULL, 'post', NULL, NULL),
(4, '{\"user\": null, \"amount\": \"1000.00\", \"msisdn\": \"0717161736\", \"message\": \"Dear customer, your payment is successfully completed\", \"transid\": \"AZM55fbfcf255394da5a5fe00e073093fa7\", \"clientId\": null, \"operator\": \"Tigo\", \"password\": null, \"reference\": \"AZM55fbfcf255394da5a5fe00e073093fa7\", \"utilityref\": \"123\", \"mnoreference\": \"888343443474\", \"submerchantAcc\": null, \"externalreference\": \"AZM55fbfcf255394da5a5fe00e073093fa7\", \"transactionstatus\": \"success\", \"additionalProperties\": {\"postId\": \"875\", \"userId\": \"13\"}}', '2024-03-11 09:18:33', '2024-03-11 09:18:33', 'Dear customer, your payment is successfully completed', NULL, NULL, NULL, 'success', 'Tigo', 'AZM55fbfcf255394da5a5fe00e073093fa7', 'AZM55fbfcf255394da5a5fe00e073093fa7', '123', '1000.00', 'AZM55fbfcf255394da5a5fe00e073093fa7', '0717161736', '888343443474', NULL, 'post', 13, 875),
(13, '{\"user\": null, \"amount\": \"1000\", \"msisdn\": \"0717161736\", \"message\": \"Dear customer, your payment is successfully completed\", \"transid\": \"AZMa3bc0a2909ea4f408893d04230263eba\", \"clientId\": null, \"operator\": \"Tigo\", \"password\": null, \"reference\": \"AZMa3bc0a2909ea4f408893d04230263eba\", \"utilityref\": \"123\", \"mnoreference\": \"10437249153\", \"submerchantAcc\": null, \"externalreference\": \"AZMa3bc0a2909ea4f408893d04230263eba\", \"transactionstatus\": \"success\", \"additionalProperties\": {\"postId\": \"3\", \"userId\": \"13\"}}', '2024-03-12 18:47:07', '2024-03-12 18:47:07', 'Dear customer, your payment is successfully completed', NULL, NULL, NULL, 'success', 'Tigo', 'AZMa3bc0a2909ea4f408893d04230263eba', 'AZMa3bc0a2909ea4f408893d04230263eba', '123', '1000', 'AZMa3bc0a2909ea4f408893d04230263eba', '0717161736', '10437249153', NULL, 'post', 13, 3),
(14, '{\"user\": null, \"amount\": \"1000\", \"msisdn\": \"0717161736\", \"message\": \"Dear customer, your payment is successfully completed\", \"transid\": \"AZMa3bc0a2909ea4f408893d04230263eba\", \"clientId\": null, \"operator\": \"Tigo\", \"password\": null, \"reference\": \"AZMa3bc0a2909ea4f408893d04230263eba\", \"utilityref\": \"123\", \"mnoreference\": \"10437249153\", \"submerchantAcc\": null, \"externalreference\": \"AZMa3bc0a2909ea4f408893d04230263eba\", \"transactionstatus\": \"success\", \"additionalProperties\": {\"postId\": \"3\", \"userId\": \"13\"}}', '2024-03-14 14:27:02', '2024-03-14 14:27:02', 'Dear customer, your payment is successfully completed', NULL, NULL, NULL, 'success', 'Tigo', 'AZMa3bc0a2909ea4f408893d04230263eba', 'AZMa3bc0a2909ea4f408893d04230263eba', '123', '1000', 'AZM6c1999dce12c48489d8badebca4ef071', '0717161736', '10437249153', NULL, 'post', 13, 3),
(15, '{\"user\": null, \"amount\": \"1000\", \"msisdn\": \"0717161736\", \"message\": \"Dear customer, your payment is successfully completed\", \"transid\": \"AZMa3bc0a2909ea4f408893d04230263eba\", \"clientId\": null, \"operator\": \"Tigo\", \"password\": null, \"reference\": \"AZMa3bc0a2909ea4f408893d04230263eba\", \"utilityref\": \"123\", \"mnoreference\": \"10437249153\", \"submerchantAcc\": null, \"externalreference\": \"AZMa3bc0a2909ea4f408893d04230263eba\", \"transactionstatus\": \"success\", \"additionalProperties\": {\"postId\": \"3\", \"userId\": \"13\"}}', '2024-03-14 14:35:16', '2024-03-14 14:35:16', 'Dear customer, your payment is successfully completed', NULL, NULL, NULL, 'success', 'Tigo', 'AZMa3bc0a2909ea4f408893d04230263eba', 'AZMa3bc0a2909ea4f408893d04230263eba', '123', '1000', 'AZM07c8736e9f2c421bbe12ff8e2712e86a', '0717161736', '10437249153', NULL, 'post', 13, 3),
(16, '{\"user\": null, \"amount\": \"1000\", \"msisdn\": \"0717161736\", \"message\": \"Dear customer, your payment is successfully completed\", \"transid\": \"AZMa3bc0a2909ea4f408893d04230263eba\", \"clientId\": null, \"operator\": \"Tigo\", \"password\": null, \"reference\": \"AZMa3bc0a2909ea4f408893d04230263eba\", \"utilityref\": \"123\", \"mnoreference\": \"10437249153\", \"submerchantAcc\": null, \"externalreference\": \"AZMa3bc0a2909ea4f408893d04230263eba\", \"transactionstatus\": \"success\", \"additionalProperties\": {\"postId\": \"3\", \"userId\": \"13\"}}', '2024-03-14 14:39:34', '2024-03-14 14:39:34', 'Dear customer, your payment is successfully completed', NULL, NULL, NULL, 'success', 'Tigo', 'AZMa3bc0a2909ea4f408893d04230263eba', 'AZMa3bc0a2909ea4f408893d04230263eba', '123', '1000', 'AZM5d4e12dc87c041cb9b1ba19124aef57e', '0717161736', '10437249153', NULL, 'post', 13, 3),
(17, '{\"user\": null, \"amount\": \"1000\", \"msisdn\": \"0717161736\", \"message\": \"Dear customer, your payment is successfully completed\", \"transid\": \"AZMa3bc0a2909ea4f408893d04230263eba\", \"clientId\": null, \"operator\": \"Tigo\", \"password\": null, \"reference\": \"AZMa3bc0a2909ea4f408893d04230263eba\", \"utilityref\": \"123\", \"mnoreference\": \"10437249153\", \"submerchantAcc\": null, \"externalreference\": \"AZMa3bc0a2909ea4f408893d04230263eba\", \"transactionstatus\": \"success\", \"additionalProperties\": {\"postId\": \"3\", \"userId\": \"13\"}}', '2024-03-14 14:42:20', '2024-03-14 14:42:20', 'Dear customer, your payment is successfully completed', NULL, NULL, NULL, 'success', 'Tigo', 'AZMa3bc0a2909ea4f408893d04230263eba', 'AZMa3bc0a2909ea4f408893d04230263eba', '123', '1000', 'AZM6f1468d1dfb7455081e8d3d5c197fb1d', '0717161736', '10437249153', NULL, 'post', 13, 3),
(18, '{\"user\": null, \"amount\": \"1000\", \"msisdn\": \"0717161736\", \"message\": \"Dear customer, your payment is successfully completed\", \"transid\": \"AZMa3bc0a2909ea4f408893d04230263eba\", \"clientId\": null, \"operator\": \"Tigo\", \"password\": null, \"reference\": \"AZMa3bc0a2909ea4f408893d04230263eba\", \"utilityref\": \"123\", \"mnoreference\": \"10437249153\", \"submerchantAcc\": null, \"externalreference\": \"AZMa3bc0a2909ea4f408893d04230263eba\", \"transactionstatus\": \"success\", \"additionalProperties\": {\"postId\": \"3\", \"userId\": \"13\"}}', '2024-03-14 14:44:07', '2024-03-14 14:44:07', 'Dear customer, your payment is successfully completed', NULL, NULL, NULL, 'success', 'Tigo', 'AZMa3bc0a2909ea4f408893d04230263eba', 'AZMa3bc0a2909ea4f408893d04230263eba', '123', '1000', 'AZM0df2fc4b71704b0c95dced04ef9052ba', '0717161736', '10437249153', NULL, 'post', 13, 3),
(19, '{\"user\": null, \"amount\": \"1000\", \"msisdn\": \"0717161736\", \"message\": \"Dear customer, your payment is successfully completed\", \"transid\": \"AZMa3bc0a2909ea4f408893d04230263eba\", \"clientId\": null, \"operator\": \"Tigo\", \"password\": null, \"reference\": \"AZMa3bc0a2909ea4f408893d04230263eba\", \"utilityref\": \"123\", \"mnoreference\": \"10437249153\", \"submerchantAcc\": null, \"externalreference\": \"AZMa3bc0a2909ea4f408893d04230263eba\", \"transactionstatus\": \"success\", \"additionalProperties\": {\"postId\": \"3\", \"userId\": \"13\"}}', '2024-03-14 14:46:15', '2024-03-14 14:46:15', 'Dear customer, your payment is successfully completed', NULL, NULL, NULL, 'success', 'Tigo', 'AZMa3bc0a2909ea4f408893d04230263eba', 'AZMa3bc0a2909ea4f408893d04230263eba', '123', '1000', 'AZM249d8052eba84512b8c2988546cdfb0e', '0717161736', '10437249153', NULL, 'post', 13, 3),
(20, '{\"user\": null, \"amount\": \"1000\", \"msisdn\": \"0717161736\", \"message\": \"Dear customer, your payment is successfully completed\", \"transid\": \"AZMa3bc0a2909ea4f408893d04230263eba\", \"clientId\": null, \"operator\": \"Tigo\", \"password\": null, \"reference\": \"AZMa3bc0a2909ea4f408893d04230263eba\", \"utilityref\": \"123\", \"mnoreference\": \"10437249153\", \"submerchantAcc\": null, \"externalreference\": \"AZMa3bc0a2909ea4f408893d04230263eba\", \"transactionstatus\": \"success\", \"additionalProperties\": {\"postId\": \"3\", \"userId\": \"13\"}}', '2024-03-14 14:53:48', '2024-03-14 14:53:48', 'Dear customer, your payment is successfully completed', NULL, NULL, NULL, 'success', 'Tigo', 'AZMa3bc0a2909ea4f408893d04230263eba', 'AZMa3bc0a2909ea4f408893d04230263eba', '123', '1000', 'AZMc7ccf4ac5ade4246a756c1f4766ac399', '0717161736', '10437249153', NULL, 'post', 13, 3),
(21, '{\"user\": null, \"amount\": \"1000\", \"msisdn\": \"0717161736\", \"message\": \"Dear customer, your payment is successfully completed\", \"transid\": \"AZMa3bc0a2909ea4f408893d04230263eba\", \"clientId\": null, \"operator\": \"Tigo\", \"password\": null, \"reference\": \"AZMa3bc0a2909ea4f408893d04230263eba\", \"utilityref\": \"123\", \"mnoreference\": \"10437249153\", \"submerchantAcc\": null, \"externalreference\": \"AZMa3bc0a2909ea4f408893d04230263eba\", \"transactionstatus\": \"success\", \"additionalProperties\": {\"postId\": \"3\", \"userId\": \"13\"}}', '2024-03-14 14:57:09', '2024-03-14 14:57:09', 'Dear customer, your payment is successfully completed', NULL, NULL, NULL, 'success', 'Tigo', 'AZMa3bc0a2909ea4f408893d04230263eba', 'AZMa3bc0a2909ea4f408893d04230263eba', '123', '1000', 'AZM0d062d8e183f45e7bf8c2a8c19cb3412', '0717161736', '10437249153', NULL, 'post', 13, 3),
(22, '{\"user\": null, \"amount\": \"1000\", \"msisdn\": \"0717161736\", \"message\": \"Dear customer, your payment is successfully completed\", \"transid\": \"AZMa3bc0a2909ea4f408893d04230263eba\", \"clientId\": null, \"operator\": \"Tigo\", \"password\": null, \"reference\": \"AZMa3bc0a2909ea4f408893d04230263eba\", \"utilityref\": \"123\", \"mnoreference\": \"10437249153\", \"submerchantAcc\": null, \"externalreference\": \"AZMa3bc0a2909ea4f408893d04230263eba\", \"transactionstatus\": \"success\", \"additionalProperties\": {\"postId\": \"3\", \"userId\": \"13\"}}', '2024-03-14 14:59:15', '2024-03-14 14:59:15', 'Dear customer, your payment is successfully completed', NULL, NULL, NULL, 'success', 'Tigo', 'AZMa3bc0a2909ea4f408893d04230263eba', 'AZMa3bc0a2909ea4f408893d04230263eba', '123', '1000', 'AZMfb954f33c5044583ac26021e8a6c1a8c', '0717161736', '10437249153', NULL, 'post', 13, 3),
(23, '{\"user\": null, \"amount\": \"1000\", \"msisdn\": \"0717161736\", \"message\": \"Dear customer, your payment is successfully completed\", \"transid\": \"AZMa3bc0a2909ea4f408893d04230263eba\", \"clientId\": null, \"operator\": \"Tigo\", \"password\": null, \"reference\": \"AZMa3bc0a2909ea4f408893d04230263eba\", \"utilityref\": \"123\", \"mnoreference\": \"10437249153\", \"submerchantAcc\": null, \"externalreference\": \"AZMa3bc0a2909ea4f408893d04230263eba\", \"transactionstatus\": \"success\", \"additionalProperties\": {\"postId\": \"3\", \"userId\": \"13\"}}', '2024-03-14 15:04:08', '2024-03-14 15:04:08', 'Dear customer, your payment is successfully completed', NULL, NULL, NULL, 'success', 'Tigo', 'AZMa3bc0a2909ea4f408893d04230263eba', 'AZMa3bc0a2909ea4f408893d04230263eba', '123', '1000', 'null', '0717161736', '10437249153', NULL, 'post', 13, 3),
(24, '{\"user\": null, \"amount\": \"1000\", \"msisdn\": \"0717161736\", \"message\": \"Dear customer, your payment is successfully completed\", \"transid\": \"AZMa3bc0a2909ea4f408893d04230263eba\", \"clientId\": null, \"operator\": \"Tigo\", \"password\": null, \"reference\": \"AZMa3bc0a2909ea4f408893d04230263eba\", \"utilityref\": \"123\", \"mnoreference\": \"10437249153\", \"submerchantAcc\": null, \"externalreference\": \"AZMa3bc0a2909ea4f408893d04230263eba\", \"transactionstatus\": \"success\", \"additionalProperties\": {\"postId\": \"3\", \"userId\": \"13\"}}', '2024-03-14 15:04:19', '2024-03-14 15:04:19', 'Dear customer, your payment is successfully completed', NULL, NULL, NULL, 'success', 'Tigo', 'AZMa3bc0a2909ea4f408893d04230263eba', 'AZMa3bc0a2909ea4f408893d04230263eba', '123', '1000', 'null', '0717161736', '10437249153', NULL, 'post', 13, 3),
(25, '{\"user\": null, \"amount\": \"1000\", \"msisdn\": \"0717161736\", \"message\": \"Dear customer, your payment is successfully completed\", \"transid\": \"AZMa3bc0a2909ea4f408893d04230263eba\", \"clientId\": null, \"operator\": \"Tigo\", \"password\": null, \"reference\": \"AZMa3bc0a2909ea4f408893d04230263eba\", \"utilityref\": \"123\", \"mnoreference\": \"10437249153\", \"submerchantAcc\": null, \"externalreference\": \"AZMa3bc0a2909ea4f408893d04230263eba\", \"transactionstatus\": \"success\", \"additionalProperties\": {\"postId\": \"3\", \"userId\": \"13\"}}', '2024-03-14 15:11:41', '2024-03-14 15:11:41', 'Dear customer, your payment is successfully completed', NULL, NULL, NULL, 'success', 'Tigo', 'AZMa3bc0a2909ea4f408893d04230263eba', 'AZMa3bc0a2909ea4f408893d04230263eba', '123', '1000', 'AZM22b6c2aa387141cfbdc26ad53891a5df', '0717161736', '10437249153', NULL, 'post', 13, 3),
(26, '{\"user\": null, \"amount\": \"1000\", \"msisdn\": \"0717161736\", \"message\": \"Dear customer, your payment is successfully completed\", \"transid\": \"AZMa3bc0a2909ea4f408893d04230263eba\", \"clientId\": null, \"operator\": \"Tigo\", \"password\": null, \"reference\": \"AZMa3bc0a2909ea4f408893d04230263eba\", \"utilityref\": \"123\", \"mnoreference\": \"10437249153\", \"submerchantAcc\": null, \"externalreference\": \"AZMa3bc0a2909ea4f408893d04230263eba\", \"transactionstatus\": \"success\", \"additionalProperties\": {\"postId\": \"3\", \"userId\": \"13\"}}', '2024-03-14 15:14:02', '2024-03-14 15:14:02', 'Dear customer, your payment is successfully completed', NULL, NULL, NULL, 'success', 'Tigo', 'AZMa3bc0a2909ea4f408893d04230263eba', 'AZMa3bc0a2909ea4f408893d04230263eba', '123', '1000', 'AZMb32e0681cb6e4d3e954bbef3eaa82dfa', '0717161736', '10437249153', NULL, 'post', 13, 3),
(27, '{\"user\": null, \"amount\": \"1000\", \"msisdn\": \"0717161736\", \"message\": \"Dear customer, your payment is successfully completed\", \"transid\": \"AZMa3bc0a2909ea4f408893d04230263eba\", \"clientId\": null, \"operator\": \"Tigo\", \"password\": null, \"reference\": \"AZMa3bc0a2909ea4f408893d04230263eba\", \"utilityref\": \"123\", \"mnoreference\": \"10437249153\", \"submerchantAcc\": null, \"externalreference\": \"AZMa3bc0a2909ea4f408893d04230263eba\", \"transactionstatus\": \"success\", \"additionalProperties\": {\"postId\": \"3\", \"userId\": \"13\"}}', '2024-03-14 15:16:26', '2024-03-14 15:16:26', 'Dear customer, your payment is successfully completed', NULL, NULL, NULL, 'success', 'Tigo', 'AZMa3bc0a2909ea4f408893d04230263eba', 'AZMa3bc0a2909ea4f408893d04230263eba', '123', '1000', 'AZM1df281bb53124e259ee5d053134d0f6c', '0717161736', '10437249153', NULL, 'post', 13, 3),
(28, '{\"user\": null, \"amount\": \"1000\", \"msisdn\": \"0717161736\", \"message\": \"Dear customer, your payment is successfully completed\", \"transid\": \"AZMa3bc0a2909ea4f408893d04230263eba\", \"clientId\": null, \"operator\": \"Tigo\", \"password\": null, \"reference\": \"AZMa3bc0a2909ea4f408893d04230263eba\", \"utilityref\": \"123\", \"mnoreference\": \"10437249153\", \"submerchantAcc\": null, \"externalreference\": \"AZMa3bc0a2909ea4f408893d04230263eba\", \"transactionstatus\": \"success\", \"additionalProperties\": {\"postId\": \"3\", \"userId\": \"13\"}}', '2024-03-14 15:19:53', '2024-03-14 15:19:53', 'Dear customer, your payment is successfully completed', NULL, NULL, NULL, 'success', 'Tigo', 'AZMa3bc0a2909ea4f408893d04230263eba', 'AZMa3bc0a2909ea4f408893d04230263eba', '123', '1000', 'AZM1243789f3fa4449da8acfdbb3191b839', '0717161736', '10437249153', NULL, 'post', 13, 3),
(29, '{\"user\": null, \"amount\": \"1000\", \"msisdn\": \"0717161736\", \"message\": \"Dear customer, your payment is successfully completed\", \"transid\": \"AZMa3bc0a2909ea4f408893d04230263eba\", \"clientId\": null, \"operator\": \"Tigo\", \"password\": null, \"reference\": \"AZMa3bc0a2909ea4f408893d04230263eba\", \"utilityref\": \"123\", \"mnoreference\": \"10437249153\", \"submerchantAcc\": null, \"externalreference\": \"AZMa3bc0a2909ea4f408893d04230263eba\", \"transactionstatus\": \"success\", \"additionalProperties\": {\"postId\": \"3\", \"userId\": \"13\"}}', '2024-03-14 15:21:39', '2024-03-14 15:21:39', 'Dear customer, your payment is successfully completed', NULL, NULL, NULL, 'success', 'Tigo', 'AZMa3bc0a2909ea4f408893d04230263eba', 'AZMa3bc0a2909ea4f408893d04230263eba', '123', '1000', 'AZM29087b02d28c4840b2f755c10a6d2d4f', '0717161736', '10437249153', NULL, 'post', 13, 3),
(30, '{\"user\": null, \"amount\": \"1000\", \"msisdn\": \"0717161736\", \"message\": \"Dear customer, your payment is successfully completed\", \"transid\": \"AZMa3bc0a2909ea4f408893d04230263eba\", \"clientId\": null, \"operator\": \"Tigo\", \"password\": null, \"reference\": \"AZMa3bc0a2909ea4f408893d04230263eba\", \"utilityref\": \"123\", \"mnoreference\": \"10437249153\", \"submerchantAcc\": null, \"externalreference\": \"AZMa3bc0a2909ea4f408893d04230263eba\", \"transactionstatus\": \"success\", \"additionalProperties\": {\"postId\": \"3\", \"userId\": \"13\"}}', '2024-03-19 10:00:25', '2024-03-19 10:00:25', 'Dear customer, your payment is successfully completed', NULL, NULL, NULL, 'success', 'Tigo', 'AZMa3bc0a2909ea4f408893d04230263eba', 'AZMa3bc0a2909ea4f408893d04230263eba', '123', '1000', 'AZM986d29821f314243a4c98556fde541d8', '0717161736', '10437249153', NULL, 'post', 13, 3),
(31, '{\"user\": null, \"amount\": \"1000\", \"msisdn\": \"0717161736\", \"message\": \"Dear customer, your payment is successfully completed\", \"transid\": \"AZMa3bc0a2909ea4f408893d04230263eba\", \"clientId\": null, \"operator\": \"Tigo\", \"password\": null, \"reference\": \"AZMa3bc0a2909ea4f408893d04230263eba\", \"utilityref\": \"123\", \"mnoreference\": \"10437249153\", \"submerchantAcc\": null, \"externalreference\": \"AZMa3bc0a2909ea4f408893d04230263eba\", \"transactionstatus\": \"success\", \"additionalProperties\": {\"postId\": \"3\", \"userId\": \"13\"}}', '2024-03-19 14:00:52', '2024-03-19 14:00:52', 'Dear customer, your payment is successfully completed', NULL, NULL, NULL, 'success', 'Tigo', 'AZMa3bc0a2909ea4f408893d04230263eba', 'AZMa3bc0a2909ea4f408893d04230263eba', '123', '1000', 'AZM05a01585d99d49828477cca6848e4b58', '0717161736', '10437249153', NULL, 'post', 13, 3),
(32, '{\"user\": null, \"amount\": \"1000\", \"msisdn\": \"0717161736\", \"message\": \"Dear customer, your payment is successfully completed\", \"transid\": \"AZMa3bc0a2909ea4f408893d04230263eba\", \"clientId\": null, \"operator\": \"Tigo\", \"password\": null, \"reference\": \"AZMa3bc0a2909ea4f408893d04230263eba\", \"utilityref\": \"123\", \"mnoreference\": \"10437249153\", \"submerchantAcc\": null, \"externalreference\": \"AZMa3bc0a2909ea4f408893d04230263eba\", \"transactionstatus\": \"success\", \"additionalProperties\": {\"postId\": \"3\", \"userId\": \"13\"}}', '2024-03-19 15:11:54', '2024-03-19 15:11:54', 'Dear customer, your payment is successfully completed', NULL, NULL, NULL, 'success', 'Tigo', 'AZMa3bc0a2909ea4f408893d04230263eba', 'AZMa3bc0a2909ea4f408893d04230263eba', '123', '1000', 'AZM7bb39419a45e466abe10d0cfcbb2b5c2', '0717161736', '10437249153', NULL, 'post', 13, 3),
(33, '{\"user\": null, \"amount\": \"1000.00\", \"msisdn\": \"0717161736\", \"message\": \"Dear customer, your payment is successfully completed\", \"transid\": \"AZMf052ced5bcf34e4fb678f24f56fd2660\", \"clientId\": null, \"operator\": \"Tigo\", \"password\": null, \"reference\": \"AZMf052ced5bcf34e4fb678f24f56fd2660\", \"utilityref\": \"123\", \"mnoreference\": \"10474857541\", \"submerchantAcc\": null, \"externalreference\": \"AZMf052ced5bcf34e4fb678f24f56fd2660\", \"transactionstatus\": \"success\", \"additionalProperties\": {\"postId\": \"893\", \"userId\": \"13\"}}', '2024-03-19 15:35:29', '2024-03-19 15:35:29', 'Dear customer, your payment is successfully completed', NULL, NULL, NULL, 'success', 'Tigo', 'AZMf052ced5bcf34e4fb678f24f56fd2660', 'AZMf052ced5bcf34e4fb678f24f56fd2660', '123', '1000.00', 'AZMf052ced5bcf34e4fb678f24f56fd2660', '0717161736', '10474857541', NULL, 'post', 13, 893),
(34, '{\"user\": null, \"amount\": \"1000.00\", \"msisdn\": \"0717161736\", \"message\": \"Dear customer, your payment is successfully completed\", \"transid\": \"AZM24489ec83a5440a092fe44fcaf2988c8\", \"clientId\": null, \"operator\": \"Tigo\", \"password\": null, \"reference\": \"AZM24489ec83a5440a092fe44fcaf2988c8\", \"utilityref\": \"123\", \"mnoreference\": \"996223398963\", \"submerchantAcc\": null, \"externalreference\": \"AZM24489ec83a5440a092fe44fcaf2988c8\", \"transactionstatus\": \"success\", \"additionalProperties\": {\"postId\": \"892\", \"userId\": \"13\"}}', '2024-03-19 15:39:31', '2024-03-19 15:39:31', 'Dear customer, your payment is successfully completed', NULL, NULL, NULL, 'success', 'Tigo', 'AZM24489ec83a5440a092fe44fcaf2988c8', 'AZM24489ec83a5440a092fe44fcaf2988c8', '123', '1000.00', 'AZM24489ec83a5440a092fe44fcaf2988c8', '0717161736', '996223398963', NULL, 'post', 13, 892),
(35, '{\"user\": null, \"amount\": \"1000.00\", \"msisdn\": \"0717161736\", \"message\": \"Dear customer, your payment is successfully completed\", \"transid\": \"AZM347c68c33f644b9bb5c03909be44390e\", \"clientId\": null, \"operator\": \"Tigo\", \"password\": null, \"reference\": \"AZM347c68c33f644b9bb5c03909be44390e\", \"utilityref\": \"123\", \"mnoreference\": \"10477419706\", \"submerchantAcc\": null, \"externalreference\": \"AZM347c68c33f644b9bb5c03909be44390e\", \"transactionstatus\": \"success\", \"additionalProperties\": {\"postId\": \"898\", \"userId\": \"13\"}}', '2024-03-20 07:22:10', '2024-03-20 07:22:10', 'Dear customer, your payment is successfully completed', NULL, NULL, NULL, 'success', 'Tigo', 'AZM347c68c33f644b9bb5c03909be44390e', 'AZM347c68c33f644b9bb5c03909be44390e', '123', '1000.00', 'AZM347c68c33f644b9bb5c03909be44390e', '0717161736', '10477419706', NULL, 'post', 13, 898),
(36, '{\"user\": null, \"amount\": \"1000.00\", \"msisdn\": \"0717161736\", \"message\": \"Dear customer, your payment is successfully completed\", \"transid\": \"AZM347c68c33f644b9bb5c03909be44390e\", \"clientId\": null, \"operator\": \"Tigo\", \"password\": null, \"reference\": \"AZM347c68c33f644b9bb5c03909be44390e\", \"utilityref\": \"123\", \"mnoreference\": \"10477419706\", \"submerchantAcc\": null, \"externalreference\": \"AZM347c68c33f644b9bb5c03909be44390e\", \"transactionstatus\": \"success\", \"additionalProperties\": {\"postId\": \"898\", \"userId\": \"13\"}}', '2024-03-20 07:49:45', '2024-03-20 07:49:45', 'Dear customer, your payment is successfully completed', NULL, NULL, NULL, 'success', 'Tigo', 'AZM347c68c33f644b9bb5c03909be44390e', 'AZM347c68c33f644b9bb5c03909be44390e', '123', '1000.00', 'AZM6c9abcdb20c946718ee0b9480097f649', '0717161736', '10477419706', NULL, 'post', 13, 898),
(37, '{\"user\": null, \"amount\": \"1000.00\", \"msisdn\": \"0717161736\", \"message\": \"Invalid PIN.\", \"transid\": \"AZMac7bd652991543e48aa60fb60f2cb6cc\", \"clientId\": null, \"operator\": \"Tigo\", \"password\": null, \"reference\": \"AZMac7bd652991543e48aa60fb60f2cb6cc\", \"utilityref\": \"123\", \"mnoreference\": null, \"submerchantAcc\": null, \"externalreference\": \"AZMac7bd652991543e48aa60fb60f2cb6cc\", \"transactionstatus\": \"failure\", \"additionalProperties\": {\"postId\": \"900\", \"userId\": \"13\"}}', '2024-03-20 07:52:41', '2024-03-20 07:52:41', 'Invalid PIN.', NULL, NULL, NULL, 'failure', 'Tigo', 'AZMac7bd652991543e48aa60fb60f2cb6cc', 'AZMac7bd652991543e48aa60fb60f2cb6cc', '123', '1000.00', 'AZMac7bd652991543e48aa60fb60f2cb6cc', '0717161736', NULL, NULL, 'post', 13, 900),
(38, '{\"user\": null, \"amount\": \"1000.00\", \"msisdn\": \"0717161736\", \"message\": \"Dear customer, your payment is successfully completed\", \"transid\": \"AZM1e244f42a659484294e9fabfcad46f3c\", \"clientId\": null, \"operator\": \"Tigo\", \"password\": null, \"reference\": \"AZM1e244f42a659484294e9fabfcad46f3c\", \"utilityref\": \"123\", \"mnoreference\": \"10477631587\", \"submerchantAcc\": null, \"externalreference\": \"AZM1e244f42a659484294e9fabfcad46f3c\", \"transactionstatus\": \"success\", \"additionalProperties\": {\"postId\": \"901\", \"userId\": \"13\"}}', '2024-03-20 08:03:19', '2024-03-20 08:03:19', 'Dear customer, your payment is successfully completed', NULL, NULL, NULL, 'success', 'Tigo', 'AZM1e244f42a659484294e9fabfcad46f3c', 'AZM1e244f42a659484294e9fabfcad46f3c', '123', '1000.00', 'AZM1e244f42a659484294e9fabfcad46f3c', '0717161736', '10477631587', NULL, 'post', 13, 901),
(39, '{\"user\": null, \"amount\": \"1000.00\", \"msisdn\": \"0659512993\", \"message\": \"Dear customer, your payment is successfully completed\", \"transid\": \"AZM8e95b401872445d3876afd76a6f47fa5\", \"clientId\": null, \"operator\": \"Tigo\", \"password\": null, \"reference\": \"AZM8e95b401872445d3876afd76a6f47fa5\", \"utilityref\": \"123\", \"mnoreference\": \"10477882883\", \"submerchantAcc\": null, \"externalreference\": \"AZM8e95b401872445d3876afd76a6f47fa5\", \"transactionstatus\": \"success\", \"additionalProperties\": {\"postId\": \"901\", \"userId\": \"14\"}}', '2024-03-20 08:51:29', '2024-03-20 08:51:29', 'Dear customer, your payment is successfully completed', NULL, NULL, NULL, 'success', 'Tigo', 'AZM8e95b401872445d3876afd76a6f47fa5', 'AZM8e95b401872445d3876afd76a6f47fa5', '123', '1000.00', 'AZM8e95b401872445d3876afd76a6f47fa5', '0659512993', '10477882883', NULL, 'post', 14, 901),
(40, '{\"user\": null, \"amount\": \"1000.00\", \"msisdn\": \"0717161736\", \"message\": \"Dear customer, your payment is successfully completed\", \"transid\": \"AZMf4b0f02b22304f829290223cc7433257\", \"clientId\": null, \"operator\": \"Tigo\", \"password\": null, \"reference\": \"AZMf4b0f02b22304f829290223cc7433257\", \"utilityref\": \"123\", \"mnoreference\": \"10480026386\", \"submerchantAcc\": null, \"externalreference\": \"AZMf4b0f02b22304f829290223cc7433257\", \"transactionstatus\": \"success\", \"additionalProperties\": {\"postId\": \"908\", \"userId\": \"13\"}}', '2024-03-20 15:34:45', '2024-03-20 15:34:45', 'Dear customer, your payment is successfully completed', NULL, NULL, NULL, 'success', 'Tigo', 'AZMf4b0f02b22304f829290223cc7433257', 'AZMf4b0f02b22304f829290223cc7433257', '123', '1000.00', 'AZMf4b0f02b22304f829290223cc7433257', '0717161736', '10480026386', NULL, 'post', 13, 908),
(41, '{\"user\": null, \"amount\": \"1000.00\", \"msisdn\": \"0717161736\", \"message\": \"Dear customer, your payment is successfully completed\", \"transid\": \"AZM790c050071bb4a42858acfbdb86ed440\", \"clientId\": null, \"operator\": \"Tigo\", \"password\": null, \"reference\": \"AZM790c050071bb4a42858acfbdb86ed440\", \"utilityref\": \"123\", \"mnoreference\": \"608906718035\", \"submerchantAcc\": null, \"externalreference\": \"AZM790c050071bb4a42858acfbdb86ed440\", \"transactionstatus\": \"success\", \"additionalProperties\": {\"type\": \"post\", \"postId\": \"935\", \"userId\": \"13\"}}', '2024-03-25 07:45:45', '2024-03-25 07:45:45', 'Dear customer, your payment is successfully completed', NULL, NULL, NULL, 'success', 'Tigo', 'AZM790c050071bb4a42858acfbdb86ed440', 'AZM790c050071bb4a42858acfbdb86ed440', '123', '1000.00', 'AZM790c050071bb4a42858acfbdb86ed440', '0717161736', '608906718035', NULL, 'post', 13, 935),
(42, '{\"user\": null, \"amount\": \"1000\", \"msisdn\": \"0717161736\", \"message\": \"Dear customer, your payment is successfully completed\", \"transid\": \"AZMd198957a6e2e4bc9a55c9ac69da96e6d\", \"clientId\": null, \"operator\": \"Tigo\", \"password\": null, \"reference\": \"AZMd198957a6e2e4bc9a55c9ac69da96e6d\", \"utilityref\": \"123\", \"mnoreference\": \"208006964030\", \"submerchantAcc\": null, \"externalreference\": \"AZMd198957a6e2e4bc9a55c9ac69da96e6d\", \"transactionstatus\": \"success\", \"additionalProperties\": {\"type\": \"message\", \"postId\": \"6\", \"userId\": \"13\"}}', '2024-03-25 08:30:13', '2024-03-25 08:30:13', 'Dear customer, your payment is successfully completed', NULL, NULL, NULL, 'success', 'Tigo', 'AZMd198957a6e2e4bc9a55c9ac69da96e6d', 'AZMd198957a6e2e4bc9a55c9ac69da96e6d', '123', '1000', 'AZMd198957a6e2e4bc9a55c9ac69da96e6d', '0717161736', '208006964030', NULL, 'message', 13, 6),
(43, '{\"user\": null, \"amount\": \"1000\", \"msisdn\": \"0717161736\", \"message\": \"Dear customer, your payment is successfully completed\", \"transid\": \"AZMd198957a6e2e4bc9a55c9ac69da96e6d\", \"clientId\": null, \"operator\": \"Tigo\", \"password\": null, \"reference\": \"AZMd198957a6e2e4bc9a55c9ac69da96e6d\", \"utilityref\": \"123\", \"mnoreference\": \"208006964030\", \"submerchantAcc\": null, \"externalreference\": \"AZMd198957a6e2e4bc9a55c9ac69da96e6d\", \"transactionstatus\": \"success\", \"additionalProperties\": {\"type\": \"message\", \"postId\": \"6\", \"userId\": \"13\"}}', '2024-03-25 09:21:59', '2024-03-25 09:21:59', 'Dear customer, your payment is successfully completed', NULL, NULL, NULL, 'success', 'Tigo', 'AZMd198957a6e2e4bc9a55c9ac69da96e6d', 'AZMd198957a6e2e4bc9a55c9ac69da96e6d', '123', '1000', 'AZMa6edfb73cab4434fa2ac29a29540d499', '0717161736', '208006964030', NULL, 'message', 13, 6),
(44, '{\"user\": null, \"amount\": \"1000\", \"msisdn\": \"0717161736\", \"message\": \"Dear customer, your payment is successfully completed\", \"transid\": \"AZMbcedb06cd0f544ddac006de7a1d21e66\", \"clientId\": null, \"operator\": \"Tigo\", \"password\": null, \"reference\": \"AZMbcedb06cd0f544ddac006de7a1d21e66\", \"utilityref\": \"123\", \"mnoreference\": \"708907484395\", \"submerchantAcc\": null, \"externalreference\": \"AZMbcedb06cd0f544ddac006de7a1d21e66\", \"transactionstatus\": \"success\", \"additionalProperties\": {\"type\": \"message\", \"postId\": \"11\", \"userId\": \"13\"}}', '2024-03-25 09:44:20', '2024-03-25 09:44:20', 'Dear customer, your payment is successfully completed', NULL, NULL, NULL, 'success', 'Tigo', 'AZMbcedb06cd0f544ddac006de7a1d21e66', 'AZMbcedb06cd0f544ddac006de7a1d21e66', '123', '1000', 'AZMbcedb06cd0f544ddac006de7a1d21e66', '0717161736', '708907484395', NULL, 'message', 13, 11),
(45, '{\"user\": null, \"amount\": \"1000\", \"msisdn\": \"0717161736\", \"message\": \"Dear customer, your payment is successfully completed\", \"transid\": \"AZMbcedb06cd0f544ddac006de7a1d21e66\", \"clientId\": null, \"operator\": \"Tigo\", \"password\": null, \"reference\": \"AZMbcedb06cd0f544ddac006de7a1d21e66\", \"utilityref\": \"123\", \"mnoreference\": \"708907484395\", \"submerchantAcc\": null, \"externalreference\": \"AZMbcedb06cd0f544ddac006de7a1d21e66\", \"transactionstatus\": \"success\", \"additionalProperties\": {\"type\": \"message\", \"postId\": \"11\", \"userId\": \"13\"}}', '2024-03-25 10:14:09', '2024-03-25 10:14:09', 'Dear customer, your payment is successfully completed', NULL, NULL, NULL, 'success', 'Tigo', 'AZMbcedb06cd0f544ddac006de7a1d21e66', 'AZMbcedb06cd0f544ddac006de7a1d21e66', '123', '1000', 'AZM00d7fc5201c7460daa2923ea826b98da', '0717161736', '708907484395', NULL, 'post', 13, 11),
(46, '{\"user\": null, \"amount\": \"1000.00\", \"msisdn\": \"0717161736\", \"message\": \"Dear customer, your payment is successfully completed\", \"transid\": \"AZMf13cbb0ebf7546cca6b8fe2225c484bd\", \"clientId\": null, \"operator\": \"Tigo\", \"password\": null, \"reference\": \"AZMf13cbb0ebf7546cca6b8fe2225c484bd\", \"utilityref\": \"123\", \"mnoreference\": \"388420752809\", \"submerchantAcc\": null, \"externalreference\": \"AZMf13cbb0ebf7546cca6b8fe2225c484bd\", \"transactionstatus\": \"success\", \"additionalProperties\": {\"type\": \"post\", \"postId\": \"938\", \"userId\": \"13\"}}', '2024-03-25 10:22:25', '2024-03-25 10:22:25', 'Dear customer, your payment is successfully completed', NULL, NULL, NULL, 'success', 'Tigo', 'AZMf13cbb0ebf7546cca6b8fe2225c484bd', 'AZMf13cbb0ebf7546cca6b8fe2225c484bd', '123', '1000.00', 'AZMf13cbb0ebf7546cca6b8fe2225c484bd', '0717161736', '388420752809', NULL, 'post', 13, 938),
(47, '{\"user\": null, \"amount\": \"1000\", \"msisdn\": \"0717161736\", \"message\": \"Dear customer, your payment is successfully completed\", \"transid\": \"AZMfc677301841849838476f807a99e2a85\", \"clientId\": null, \"operator\": \"Tigo\", \"password\": null, \"reference\": \"AZMfc677301841849838476f807a99e2a85\", \"utilityref\": \"123\", \"mnoreference\": \"496369720453\", \"submerchantAcc\": null, \"externalreference\": \"AZMfc677301841849838476f807a99e2a85\", \"transactionstatus\": \"success\", \"additionalProperties\": {\"type\": \"subscription\", \"postId\": \"6\", \"userId\": \"13\"}}', '2024-03-26 07:41:35', '2024-03-26 07:41:35', 'Dear customer, your payment is successfully completed', NULL, NULL, NULL, 'success', 'Tigo', 'AZMfc677301841849838476f807a99e2a85', 'AZMfc677301841849838476f807a99e2a85', '123', '1000', 'AZMfc677301841849838476f807a99e2a85', '0717161736', '496369720453', NULL, 'subscription', 13, 6),
(48, '{\"user\": null, \"amount\": \"1000\", \"msisdn\": \"0717161736\", \"message\": \"Dear customer, your payment is successfully completed\", \"transid\": \"AZMfc677301841849838476f807a99e2a85\", \"clientId\": null, \"operator\": \"Tigo\", \"password\": null, \"reference\": \"AZMfc677301841849838476f807a99e2a85\", \"utilityref\": \"123\", \"mnoreference\": \"496369720453\", \"submerchantAcc\": null, \"externalreference\": \"AZMfc677301841849838476f807a99e2a85\", \"transactionstatus\": \"success\", \"additionalProperties\": {\"type\": \"subscription\", \"postId\": \"6\", \"userId\": \"13\"}}', '2024-03-26 08:50:03', '2024-03-26 08:50:03', 'Dear customer, your payment is successfully completed', NULL, NULL, NULL, 'success', 'Tigo', 'AZMfc677301841849838476f807a99e2a85', 'AZMfc677301841849838476f807a99e2a85', '123', '1000', 'AZMc1c3ef5200cf48d8a2af58181f400f4c', '0717161736', '496369720453', NULL, 'subscription', 13, 6),
(49, '{\"user\": null, \"amount\": \"1000\", \"msisdn\": \"0717161736\", \"message\": \"Dear customer, your payment is successfully completed\", \"transid\": \"AZMfc677301841849838476f807a99e2a85\", \"clientId\": null, \"operator\": \"Tigo\", \"password\": null, \"reference\": \"AZMfc677301841849838476f807a99e2a85\", \"utilityref\": \"123\", \"mnoreference\": \"496369720453\", \"submerchantAcc\": null, \"externalreference\": \"AZMfc677301841849838476f807a99e2a85\", \"transactionstatus\": \"success\", \"additionalProperties\": {\"type\": \"subscription\", \"postId\": \"6\", \"userId\": \"13\"}}', '2024-03-26 08:52:19', '2024-03-26 08:52:19', 'Dear customer, your payment is successfully completed', NULL, NULL, NULL, 'success', 'Tigo', 'AZMfc677301841849838476f807a99e2a85', 'AZMfc677301841849838476f807a99e2a85', '123', '1000', 'AZM691f456845564de3a332faa5c8d90ec6', '0717161736', '496369720453', NULL, 'subscription', 13, 6),
(50, '{\"user\": null, \"amount\": \"1000\", \"msisdn\": \"0717161736\", \"message\": \"Dear customer, your payment is successfully completed\", \"transid\": \"AZMfc677301841849838476f807a99e2a85\", \"clientId\": null, \"operator\": \"Tigo\", \"password\": null, \"reference\": \"AZMfc677301841849838476f807a99e2a85\", \"utilityref\": \"123\", \"mnoreference\": \"496369720453\", \"submerchantAcc\": null, \"externalreference\": \"AZMfc677301841849838476f807a99e2a85\", \"transactionstatus\": \"success\", \"additionalProperties\": {\"type\": \"subscription\", \"postId\": \"6\", \"userId\": \"13\"}}', '2024-03-26 08:55:15', '2024-03-26 08:55:15', 'Dear customer, your payment is successfully completed', NULL, NULL, NULL, 'success', 'Tigo', 'AZMfc677301841849838476f807a99e2a85', 'AZMfc677301841849838476f807a99e2a85', '123', '1000', 'AZMece69d6b8a2c4027bef187bf9055c3a6', '0717161736', '496369720453', NULL, 'subscription', 13, 6),
(51, '{\"user\": null, \"amount\": \"1000\", \"msisdn\": \"0717161736\", \"message\": \"Dear customer, your payment is successfully completed\", \"transid\": \"AZMfc677301841849838476f807a99e2a85\", \"clientId\": null, \"operator\": \"Tigo\", \"password\": null, \"reference\": \"AZMfc677301841849838476f807a99e2a85\", \"utilityref\": \"123\", \"mnoreference\": \"496369720453\", \"submerchantAcc\": null, \"externalreference\": \"AZMfc677301841849838476f807a99e2a85\", \"transactionstatus\": \"success\", \"additionalProperties\": {\"type\": \"subscription\", \"postId\": \"6\", \"userId\": \"13\"}}', '2024-03-26 09:00:44', '2024-03-26 09:00:44', 'Dear customer, your payment is successfully completed', NULL, NULL, NULL, 'success', 'Tigo', 'AZMfc677301841849838476f807a99e2a85', 'AZMfc677301841849838476f807a99e2a85', '123', '1000', 'AZMd0b28cf1bebc438288a6b5556f700a40', '0717161736', '496369720453', NULL, 'subscription', 13, 6),
(52, '{\"user\": null, \"amount\": \"1000\", \"msisdn\": \"0717161736\", \"message\": \"Dear customer, your payment is successfully completed\", \"transid\": \"AZMfc677301841849838476f807a99e2a85\", \"clientId\": null, \"operator\": \"Tigo\", \"password\": null, \"reference\": \"AZMfc677301841849838476f807a99e2a85\", \"utilityref\": \"123\", \"mnoreference\": \"496369720453\", \"submerchantAcc\": null, \"externalreference\": \"AZMfc677301841849838476f807a99e2a85\", \"transactionstatus\": \"success\", \"additionalProperties\": {\"type\": \"subscription\", \"postId\": \"6\", \"userId\": \"13\"}}', '2024-03-26 09:05:25', '2024-03-26 09:05:25', 'Dear customer, your payment is successfully completed', NULL, NULL, NULL, 'success', 'Tigo', 'AZMfc677301841849838476f807a99e2a85', 'AZMfc677301841849838476f807a99e2a85', '123', '1000', 'AZMf045d758063f4f82b76bbbea8512252e', '0717161736', '496369720453', NULL, 'subscription', 13, 6),
(53, '{\"user\": null, \"amount\": \"1000\", \"msisdn\": \"0717161736\", \"message\": \"Dear customer, your payment is successfully completed\", \"transid\": \"AZM77731874836b44d698a4c97fbacf7e70\", \"clientId\": null, \"operator\": \"Tigo\", \"password\": null, \"reference\": \"AZM77731874836b44d698a4c97fbacf7e70\", \"utilityref\": \"123\", \"mnoreference\": \"588435264619\", \"submerchantAcc\": null, \"externalreference\": \"AZM77731874836b44d698a4c97fbacf7e70\", \"transactionstatus\": \"success\", \"additionalProperties\": {\"type\": \"subscription\", \"postId\": \"6\", \"userId\": \"13\"}}', '2024-03-26 09:52:41', '2024-03-26 09:52:41', 'Dear customer, your payment is successfully completed', NULL, NULL, NULL, 'success', 'Tigo', 'AZM77731874836b44d698a4c97fbacf7e70', 'AZM77731874836b44d698a4c97fbacf7e70', '123', '1000', 'AZM77731874836b44d698a4c97fbacf7e70', '0717161736', '588435264619', NULL, 'subscription', 13, 6),
(54, '{\"user\": null, \"amount\": \"1000\", \"msisdn\": \"0710426568\", \"message\": \"Dear customer, your payment is successfully completed\", \"transid\": \"AZM1b7dbf7e41494956a057bf36b05c4f72\", \"clientId\": null, \"operator\": \"Tigo\", \"password\": null, \"reference\": \"AZM1b7dbf7e41494956a057bf36b05c4f72\", \"utilityref\": \"123\", \"mnoreference\": \"596807601708\", \"submerchantAcc\": null, \"externalreference\": \"AZM1b7dbf7e41494956a057bf36b05c4f72\", \"transactionstatus\": \"success\", \"additionalProperties\": {\"type\": \"subscription\", \"postId\": \"13\", \"userId\": \"6\"}}', '2024-04-03 07:34:25', '2024-04-03 07:34:25', 'Dear customer, your payment is successfully completed', NULL, NULL, NULL, 'success', 'Tigo', 'AZM1b7dbf7e41494956a057bf36b05c4f72', 'AZM1b7dbf7e41494956a057bf36b05c4f72', '123', '1000', 'AZM1b7dbf7e41494956a057bf36b05c4f72', '0710426568', '596807601708', NULL, 'subscription', 6, 13),
(55, '{\"user\": null, \"amount\": \"1000\", \"msisdn\": \"0717161736\", \"message\": \"Dear customer, your payment is successfully completed\", \"transid\": \"AZM92b087cfebae44e7a3c2c3a79d097b4b\", \"clientId\": null, \"operator\": \"Tigo\", \"password\": null, \"reference\": \"AZM92b087cfebae44e7a3c2c3a79d097b4b\", \"utilityref\": \"123\", \"mnoreference\": \"208962133475\", \"submerchantAcc\": null, \"externalreference\": \"AZM92b087cfebae44e7a3c2c3a79d097b4b\", \"transactionstatus\": \"success\", \"additionalProperties\": {\"type\": \"subscription\", \"postId\": \"86\", \"userId\": \"13\"}}', '2024-04-03 15:16:57', '2024-04-03 15:16:57', 'Dear customer, your payment is successfully completed', NULL, NULL, NULL, 'success', 'Tigo', 'AZM92b087cfebae44e7a3c2c3a79d097b4b', 'AZM92b087cfebae44e7a3c2c3a79d097b4b', '123', '1000', 'AZM92b087cfebae44e7a3c2c3a79d097b4b', '0717161736', '208962133475', NULL, 'subscription', 13, 86),
(56, '{\"user\": null, \"amount\": \"1000\", \"msisdn\": \"0717161736\", \"message\": \"Dear customer, your payment is successfully completed\", \"transid\": \"AZM72b60a01051d40a2a02816f2e18dae6a\", \"clientId\": null, \"operator\": \"Tigo\", \"password\": null, \"reference\": \"AZM72b60a01051d40a2a02816f2e18dae6a\", \"utilityref\": \"123\", \"mnoreference\": \"753872256471\", \"submerchantAcc\": null, \"externalreference\": \"AZM72b60a01051d40a2a02816f2e18dae6a\", \"transactionstatus\": \"success\", \"additionalProperties\": {\"type\": \"message\", \"postId\": \"86\", \"userId\": \"13\"}}', '2024-04-03 15:18:27', '2024-04-03 15:18:27', 'Dear customer, your payment is successfully completed', NULL, NULL, NULL, 'success', 'Tigo', 'AZM72b60a01051d40a2a02816f2e18dae6a', 'AZM72b60a01051d40a2a02816f2e18dae6a', '123', '1000', 'AZM72b60a01051d40a2a02816f2e18dae6a', '0717161736', '753872256471', NULL, 'message', 13, 86),
(57, '{\"user\": null, \"amount\": \"1000\", \"msisdn\": \"0717161736\", \"message\": \"Dear customer, your payment is successfully completed\", \"transid\": \"AZM72b60a01051d40a2a02816f2e18dae6a\", \"clientId\": null, \"operator\": \"Tigo\", \"password\": null, \"reference\": \"AZM72b60a01051d40a2a02816f2e18dae6a\", \"utilityref\": \"123\", \"mnoreference\": \"753872256471\", \"submerchantAcc\": null, \"externalreference\": \"AZM72b60a01051d40a2a02816f2e18dae6a\", \"transactionstatus\": \"success\", \"additionalProperties\": {\"type\": \"message\", \"postId\": \"86\", \"userId\": \"13\"}}', '2024-04-08 11:52:08', '2024-04-08 11:52:08', 'Dear customer, your payment is successfully completed', NULL, NULL, NULL, 'success', 'Tigo', 'AZM72b60a01051d40a2a02816f2e18dae6a', 'AZM72b60a01051d40a2a02816f2e18dae6a', '123', '1000', 'AZMca473fcc270547ebb49f77389f564827', '0717161736', '753872256471', NULL, 'followers', 13, 86),
(58, '{\"user\": null, \"amount\": \"1000\", \"msisdn\": \"0717161736\", \"message\": \"Dear customer, your payment is successfully completed\", \"transid\": \"AZM72b60a01051d40a2a02816f2e18dae6a\", \"clientId\": null, \"operator\": \"Tigo\", \"password\": null, \"reference\": \"AZM72b60a01051d40a2a02816f2e18dae6a\", \"utilityref\": \"123\", \"mnoreference\": \"753872256471\", \"submerchantAcc\": null, \"externalreference\": \"AZM72b60a01051d40a2a02816f2e18dae6a\", \"transactionstatus\": \"success\", \"additionalProperties\": {\"type\": \"message\", \"postId\": \"86\", \"userId\": \"13\"}}', '2024-04-08 11:56:06', '2024-04-08 11:56:06', 'Dear customer, your payment is successfully completed', NULL, NULL, NULL, 'success', 'Tigo', 'AZM72b60a01051d40a2a02816f2e18dae6a', 'AZM72b60a01051d40a2a02816f2e18dae6a', '123', '1000', 'AZM4cd67e796b6d473398fda3d643ab0462', '0717161736', '753872256471', NULL, 'followers', 13, 86),
(59, '{\"user\": null, \"amount\": \"1000\", \"msisdn\": \"0717161736\", \"message\": \"Dear customer, your payment is successfully completed\", \"transid\": \"AZM72b60a01051d40a2a02816f2e18dae6a\", \"clientId\": null, \"operator\": \"Tigo\", \"password\": null, \"reference\": \"AZM72b60a01051d40a2a02816f2e18dae6a\", \"utilityref\": \"123\", \"mnoreference\": \"753872256471\", \"submerchantAcc\": null, \"externalreference\": \"AZM72b60a01051d40a2a02816f2e18dae6a\", \"transactionstatus\": \"success\", \"additionalProperties\": {\"type\": \"message\", \"postId\": \"86\", \"userId\": \"13\"}}', '2024-04-08 11:59:18', '2024-04-08 11:59:18', 'Dear customer, your payment is successfully completed', NULL, NULL, NULL, 'success', 'Tigo', 'AZM72b60a01051d40a2a02816f2e18dae6a', 'AZM72b60a01051d40a2a02816f2e18dae6a', '123', '1000', 'AZMdc43d5248b4f4783b85407b500d4a023', '0717161736', '753872256471', NULL, 'followers', 13, 86),
(60, '{\"user\": null, \"amount\": \"1000\", \"msisdn\": \"0717161736\", \"message\": \"Dear customer, your payment is successfully completed\", \"transid\": \"AZM72b60a01051d40a2a02816f2e18dae6a\", \"clientId\": null, \"operator\": \"Tigo\", \"password\": null, \"reference\": \"AZM72b60a01051d40a2a02816f2e18dae6a\", \"utilityref\": \"123\", \"mnoreference\": \"753872256471\", \"submerchantAcc\": null, \"externalreference\": \"AZM72b60a01051d40a2a02816f2e18dae6a\", \"transactionstatus\": \"success\", \"additionalProperties\": {\"type\": \"message\", \"postId\": \"86\", \"userId\": \"13\"}}', '2024-04-08 12:09:37', '2024-04-08 12:09:37', 'Dear customer, your payment is successfully completed', NULL, NULL, NULL, 'success', 'Tigo', 'AZM72b60a01051d40a2a02816f2e18dae6a', 'AZM72b60a01051d40a2a02816f2e18dae6a', '123', '1000', 'AZM536d871bbbc0433ba1f108c1a00e59af', '0717161736', '753872256471', NULL, 'followers', 13, 86),
(61, '{\"user\": null, \"amount\": \"1000\", \"msisdn\": \"0717161736\", \"message\": \"Dear customer, your payment is successfully completed\", \"transid\": \"AZM72b60a01051d40a2a02816f2e18dae6a\", \"clientId\": null, \"operator\": \"Tigo\", \"password\": null, \"reference\": \"AZM72b60a01051d40a2a02816f2e18dae6a\", \"utilityref\": \"123\", \"mnoreference\": \"753872256471\", \"submerchantAcc\": null, \"externalreference\": \"AZM72b60a01051d40a2a02816f2e18dae6a\", \"transactionstatus\": \"success\", \"additionalProperties\": {\"type\": \"message\", \"postId\": \"86\", \"userId\": \"13\"}}', '2024-04-09 14:45:33', '2024-04-09 14:45:33', 'Dear customer, your payment is successfully completed', NULL, NULL, NULL, 'success', 'Tigo', 'AZM72b60a01051d40a2a02816f2e18dae6a', 'AZM72b60a01051d40a2a02816f2e18dae6a', '123', '1000', 'AZM2060cac74eb04e3295cfc7e71c232f85', '0717161736', '753872256471', NULL, 'followers', 13, 86),
(62, '{\"user\": null, \"amount\": \"1000\", \"msisdn\": \"0717161736\", \"message\": \"Dear customer, your payment is successfully completed\", \"transid\": \"AZM2060cac74eb04e3295cfc7e71c232f85\", \"clientId\": null, \"operator\": \"Tigo\", \"password\": null, \"reference\": \"AZM2060cac74eb04e3295cfc7e71c232f85\", \"utilityref\": \"123\", \"mnoreference\": \"253807545556\", \"submerchantAcc\": null, \"externalreference\": \"AZM2060cac74eb04e3295cfc7e71c232f85\", \"transactionstatus\": \"success\", \"additionalProperties\": {\"type\": \"followers\", \"postId\": \"10\", \"userId\": \"13\"}}', '2024-04-09 14:45:44', '2024-04-09 14:45:44', 'Dear customer, your payment is successfully completed', NULL, NULL, NULL, 'success', 'Tigo', 'AZM2060cac74eb04e3295cfc7e71c232f85', 'AZM2060cac74eb04e3295cfc7e71c232f85', '123', '1000', 'AZM2060cac74eb04e3295cfc7e71c232f85', '0717161736', '253807545556', NULL, 'followers', 13, 10),
(63, '{\"user\": null, \"amount\": \"1000\", \"msisdn\": \"0717161736\", \"message\": \"Dear customer, your payment is successfully completed\", \"transid\": \"AZM7ab0c884c93641e0841014102a3863bf\", \"clientId\": null, \"operator\": \"Tigo\", \"password\": null, \"reference\": \"AZM7ab0c884c93641e0841014102a3863bf\", \"utilityref\": \"123\", \"mnoreference\": \"953807691136\", \"submerchantAcc\": null, \"externalreference\": \"AZM7ab0c884c93641e0841014102a3863bf\", \"transactionstatus\": \"success\", \"additionalProperties\": {\"type\": \"followers\", \"postId\": \"10\", \"userId\": \"13\"}}', '2024-04-09 14:53:32', '2024-04-09 14:53:32', 'Dear customer, your payment is successfully completed', NULL, NULL, NULL, 'success', 'Tigo', 'AZM7ab0c884c93641e0841014102a3863bf', 'AZM7ab0c884c93641e0841014102a3863bf', '123', '1000', 'AZM7ab0c884c93641e0841014102a3863bf', '0717161736', '953807691136', NULL, 'followers', 13, 10);
INSERT INTO `azampays` (`id`, `response`, `created_at`, `updated_at`, `message`, `user`, `password`, `clientId`, `transactionstatus`, `operator`, `reference`, `externalreference`, `utilityref`, `amount`, `transid`, `msisdn`, `mnoreference`, `submerchantAcc`, `type`, `user_id`, `post_id`) VALUES
(64, '{\"user\": null, \"amount\": \"1000\", \"msisdn\": \"0717161736\", \"message\": \"Dear customer, your payment is successfully completed\", \"transid\": \"AZM09217c2dca0a40729a1d0fd3c6653a86\", \"clientId\": null, \"operator\": \"Tigo\", \"password\": null, \"reference\": \"AZM09217c2dca0a40729a1d0fd3c6653a86\", \"utilityref\": \"123\", \"mnoreference\": \"353807817976\", \"submerchantAcc\": null, \"externalreference\": \"AZM09217c2dca0a40729a1d0fd3c6653a86\", \"transactionstatus\": \"success\", \"additionalProperties\": {\"type\": \"followers\", \"postId\": \"10\", \"userId\": \"13\"}}', '2024-04-09 15:28:00', '2024-04-09 15:28:00', 'Dear customer, your payment is successfully completed', NULL, NULL, NULL, 'success', 'Tigo', 'AZM09217c2dca0a40729a1d0fd3c6653a86', 'AZM09217c2dca0a40729a1d0fd3c6653a86', '123', '1000', 'AZM09217c2dca0a40729a1d0fd3c6653a86', '0717161736', '353807817976', NULL, 'followers', 13, 10),
(65, '{\"user\": null, \"amount\": \"1000\", \"msisdn\": \"0717161736\", \"message\": \"Dear customer, your payment is successfully completed\", \"transid\": \"AZM09217c2dca0a40729a1d0fd3c6653a86\", \"clientId\": null, \"operator\": \"Tigo\", \"password\": null, \"reference\": \"AZM09217c2dca0a40729a1d0fd3c6653a86\", \"utilityref\": \"123\", \"mnoreference\": \"353807817976\", \"submerchantAcc\": null, \"externalreference\": \"AZM09217c2dca0a40729a1d0fd3c6653a86\", \"transactionstatus\": \"success\", \"additionalProperties\": {\"type\": \"followers\", \"postId\": \"10\", \"userId\": \"13\"}}', '2024-04-09 15:50:06', '2024-04-09 15:50:06', 'Dear customer, your payment is successfully completed', NULL, NULL, NULL, 'success', 'Tigo', 'AZM09217c2dca0a40729a1d0fd3c6653a86', 'AZM09217c2dca0a40729a1d0fd3c6653a86', '123', '1000', 'AZM96674d94196a4a81baafbe0438860c50', '0717161736', '353807817976', NULL, 'followers', 13, 10),
(66, '{\"user\": null, \"amount\": \"1000\", \"msisdn\": \"0717161736\", \"message\": \"Dear customer, your payment is successfully completed\", \"transid\": \"AZM09217c2dca0a40729a1d0fd3c6653a86\", \"clientId\": null, \"operator\": \"Tigo\", \"password\": null, \"reference\": \"AZM09217c2dca0a40729a1d0fd3c6653a86\", \"utilityref\": \"123\", \"mnoreference\": \"353807817976\", \"submerchantAcc\": null, \"externalreference\": \"AZM09217c2dca0a40729a1d0fd3c6653a86\", \"transactionstatus\": \"success\", \"additionalProperties\": {\"type\": \"followers\", \"postId\": \"10\", \"userId\": \"13\"}}', '2024-04-09 15:56:55', '2024-04-09 15:56:55', 'Dear customer, your payment is successfully completed', NULL, NULL, NULL, 'success', 'Tigo', 'AZM09217c2dca0a40729a1d0fd3c6653a86', 'AZM09217c2dca0a40729a1d0fd3c6653a86', '123', '1000', 'AZM3ebcca1e1dea44acbfed4916264f3c86', '0717161736', '353807817976', NULL, 'followers', 13, 10),
(67, '{\"user\": null, \"amount\": \"1000\", \"msisdn\": \"0717161736\", \"message\": \"Dear customer, your payment is successfully completed\", \"transid\": \"AZM09217c2dca0a40729a1d0fd3c6653a86\", \"clientId\": null, \"operator\": \"Tigo\", \"password\": null, \"reference\": \"AZM09217c2dca0a40729a1d0fd3c6653a86\", \"utilityref\": \"123\", \"mnoreference\": \"353807817976\", \"submerchantAcc\": null, \"externalreference\": \"AZM09217c2dca0a40729a1d0fd3c6653a86\", \"transactionstatus\": \"success\", \"additionalProperties\": {\"type\": \"followers\", \"postId\": \"10\", \"userId\": \"13\"}}', '2024-04-09 16:12:14', '2024-04-09 16:12:14', 'Dear customer, your payment is successfully completed', NULL, NULL, NULL, 'success', 'Tigo', 'AZM09217c2dca0a40729a1d0fd3c6653a86', 'AZM09217c2dca0a40729a1d0fd3c6653a86', '123', '1000', 'AZMed4aa2f9245f4126a81efd05f6f946b3', '0717161736', '353807817976', NULL, 'followers', 13, 10),
(68, '{\"user\": null, \"amount\": \"1000\", \"msisdn\": \"0717161736\", \"message\": \"Dear customer, your payment is successfully completed\", \"transid\": \"AZM09217c2dca0a40729a1d0fd3c6653a86\", \"clientId\": null, \"operator\": \"Tigo\", \"password\": null, \"reference\": \"AZM09217c2dca0a40729a1d0fd3c6653a86\", \"utilityref\": \"123\", \"mnoreference\": \"353807817976\", \"submerchantAcc\": null, \"externalreference\": \"AZM09217c2dca0a40729a1d0fd3c6653a86\", \"transactionstatus\": \"success\", \"additionalProperties\": {\"type\": \"followers\", \"postId\": \"10\", \"userId\": \"13\"}}', '2024-04-09 16:14:19', '2024-04-09 16:14:19', 'Dear customer, your payment is successfully completed', NULL, NULL, NULL, 'success', 'Tigo', 'AZM09217c2dca0a40729a1d0fd3c6653a86', 'AZM09217c2dca0a40729a1d0fd3c6653a86', '123', '1000', 'AZMb6b613c9cc9c4eb3bac33828da067c11', '0717161736', '353807817976', NULL, 'followers', 13, 10),
(69, '{\"user\": null, \"amount\": \"1000\", \"msisdn\": \"0717161736\", \"message\": \"Dear customer, your payment is successfully completed\", \"transid\": \"AZMffcc1d3fc0304eda8af43760367ee9aa\", \"clientId\": null, \"operator\": \"Tigo\", \"password\": null, \"reference\": \"AZMffcc1d3fc0304eda8af43760367ee9aa\", \"utilityref\": \"123\", \"mnoreference\": \"253808005256\", \"submerchantAcc\": null, \"externalreference\": \"AZMffcc1d3fc0304eda8af43760367ee9aa\", \"transactionstatus\": \"success\", \"additionalProperties\": {\"type\": \"followers\", \"postId\": \"10\", \"userId\": \"13\"}}', '2024-04-09 17:39:58', '2024-04-09 17:39:58', 'Dear customer, your payment is successfully completed', NULL, NULL, NULL, 'success', 'Tigo', 'AZMffcc1d3fc0304eda8af43760367ee9aa', 'AZMffcc1d3fc0304eda8af43760367ee9aa', '123', '1000', 'AZMffcc1d3fc0304eda8af43760367ee9aa', '0717161736', '253808005256', NULL, 'followers', 13, 10),
(70, '{\"user\": null, \"amount\": \"1000\", \"msisdn\": \"0717161736\", \"message\": \"Dear customer, your payment is successfully completed\", \"transid\": \"AZM4701bcf32d254602a5a79d5daa21e371\", \"clientId\": null, \"operator\": \"Tigo\", \"password\": null, \"reference\": \"AZM4701bcf32d254602a5a79d5daa21e371\", \"utilityref\": \"123\", \"mnoreference\": \"696845270398\", \"submerchantAcc\": null, \"externalreference\": \"AZM4701bcf32d254602a5a79d5daa21e371\", \"transactionstatus\": \"success\", \"additionalProperties\": {\"type\": \"followers\", \"postId\": \"10\", \"userId\": \"13\"}}', '2024-04-09 17:42:52', '2024-04-09 17:42:52', 'Dear customer, your payment is successfully completed', NULL, NULL, NULL, 'success', 'Tigo', 'AZM4701bcf32d254602a5a79d5daa21e371', 'AZM4701bcf32d254602a5a79d5daa21e371', '123', '1000', 'AZM4701bcf32d254602a5a79d5daa21e371', '0717161736', '696845270398', NULL, 'followers', 13, 10),
(71, '{\"user\": null, \"amount\": \"1000\", \"msisdn\": \"0654680522\", \"message\": \"Dear customer, your payment is successfully completed\", \"transid\": \"AZMbb0936e06baf4f429fd997e583bb7cb9\", \"clientId\": null, \"operator\": \"Tigo\", \"password\": null, \"reference\": \"AZMbb0936e06baf4f429fd997e583bb7cb9\", \"utilityref\": \"123\", \"mnoreference\": \"353809369901\", \"submerchantAcc\": null, \"externalreference\": \"AZMbb0936e06baf4f429fd997e583bb7cb9\", \"transactionstatus\": \"success\", \"additionalProperties\": {\"type\": \"followers\", \"postId\": \"10\", \"userId\": \"86\"}}', '2024-04-09 18:18:44', '2024-04-09 18:18:44', 'Dear customer, your payment is successfully completed', NULL, NULL, NULL, 'success', 'Tigo', 'AZMbb0936e06baf4f429fd997e583bb7cb9', 'AZMbb0936e06baf4f429fd997e583bb7cb9', '123', '1000', 'AZMbb0936e06baf4f429fd997e583bb7cb9', '0654680522', '353809369901', NULL, 'followers', 86, 10),
(72, '{\"user\": null, \"amount\": \"1000\", \"msisdn\": \"0654680522\", \"message\": \"Dear customer, your payment is successfully completed\", \"transid\": \"AZMd5863e934d704e57ba9a8427960b7f59\", \"clientId\": null, \"operator\": \"Tigo\", \"password\": null, \"reference\": \"AZMd5863e934d704e57ba9a8427960b7f59\", \"utilityref\": \"123\", \"mnoreference\": \"188412484744\", \"submerchantAcc\": null, \"externalreference\": \"AZMd5863e934d704e57ba9a8427960b7f59\", \"transactionstatus\": \"success\", \"additionalProperties\": {\"type\": \"followers\", \"postId\": \"10\", \"userId\": \"86\"}}', '2024-04-09 18:24:22', '2024-04-09 18:24:22', 'Dear customer, your payment is successfully completed', NULL, NULL, NULL, 'success', 'Tigo', 'AZMd5863e934d704e57ba9a8427960b7f59', 'AZMd5863e934d704e57ba9a8427960b7f59', '123', '1000', 'AZMd5863e934d704e57ba9a8427960b7f59', '0654680522', '188412484744', NULL, 'followers', 86, 10),
(73, '{\"user\": null, \"amount\": \"1000\", \"msisdn\": \"0717161736\", \"message\": \"Dear customer, your payment is successfully completed\", \"transid\": \"AZMb1ea7505b0a444a088cf5c9d013c0d9c\", \"clientId\": null, \"operator\": \"Tigo\", \"password\": null, \"reference\": \"AZMb1ea7505b0a444a088cf5c9d013c0d9c\", \"utilityref\": \"123\", \"mnoreference\": \"794129391367\", \"submerchantAcc\": null, \"externalreference\": \"AZMb1ea7505b0a444a088cf5c9d013c0d9c\", \"transactionstatus\": \"success\", \"additionalProperties\": {\"type\": \"subscription\", \"postId\": \"99\", \"userId\": \"13\"}}', '2024-04-23 09:08:56', '2024-04-23 09:08:56', 'Dear customer, your payment is successfully completed', NULL, NULL, NULL, 'success', 'Tigo', 'AZMb1ea7505b0a444a088cf5c9d013c0d9c', 'AZMb1ea7505b0a444a088cf5c9d013c0d9c', '123', '1000', 'AZMb1ea7505b0a444a088cf5c9d013c0d9c', '0717161736', '794129391367', NULL, 'subscription', 13, 99),
(74, '{\"user\": null, \"amount\": \"1000\", \"msisdn\": \"0711925999\", \"message\": \"Dear customer, your payment is successfully completed\", \"transid\": \"AZM2f99c50dfe374714a08a4292d287adf5\", \"clientId\": null, \"operator\": \"Tigo\", \"password\": null, \"reference\": \"AZM2f99c50dfe374714a08a4292d287adf5\", \"utilityref\": \"123\", \"mnoreference\": \"453984423546\", \"submerchantAcc\": null, \"externalreference\": \"AZM2f99c50dfe374714a08a4292d287adf5\", \"transactionstatus\": \"success\", \"additionalProperties\": {\"type\": \"subscription\", \"postId\": \"13\", \"userId\": \"99\"}}', '2024-04-23 09:22:49', '2024-04-23 09:22:49', 'Dear customer, your payment is successfully completed', NULL, NULL, NULL, 'success', 'Tigo', 'AZM2f99c50dfe374714a08a4292d287adf5', 'AZM2f99c50dfe374714a08a4292d287adf5', '123', '1000', 'AZM2f99c50dfe374714a08a4292d287adf5', '0711925999', '453984423546', NULL, 'subscription', 99, 13);

-- --------------------------------------------------------

--
-- Table structure for table `bang_battles`
--

CREATE TABLE `bang_battles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `body` text DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `type` enum('image','video') NOT NULL,
  `battle1` varchar(191) DEFAULT NULL,
  `battle2` varchar(191) DEFAULT NULL,
  `cover_image` varchar(1000) DEFAULT NULL,
  `cover_image2` varchar(5000) DEFAULT NULL,
  `pinned` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bang_battles`
--

INSERT INTO `bang_battles` (`id`, `body`, `subtitle`, `price`, `type`, `battle1`, `battle2`, `cover_image`, `cover_image2`, `pinned`, `created_at`, `updated_at`) VALUES
(55, 'CHUO KIPI KINA PISI KALI A-IFM, B-CBE😜', 'Changia chuo chako', '1000', 'image', 'bangBattle/65d0fe7f9c79a_battle1.jpg', 'bangBattle/65d0fe7f9c79a_battle2.jpg', NULL, NULL, 1, '2024-02-17 18:44:15', '2024-03-12 08:30:54'),
(57, 'Nani mkali wa Vocal A-Marioo B-Rayvanny', 'Changia chama lako', '500', 'image', 'bangBattle/65d2277820ad9_battle1.jpg', 'bangBattle/65d2277820ad9_battle2.jpg', NULL, NULL, 0, '2024-02-18 15:51:20', '2024-02-18 15:51:20'),
(58, 'UZI UPI MKALI A-SIMBA B-YANGA?', 'Changia chama lako', '500', 'image', 'bangBattle/65d228941950e_battle1.jpg', 'bangBattle/65d228941950e_battle2.jpg', NULL, NULL, 1, '2024-02-18 15:56:04', '2024-03-17 20:01:36'),
(60, 'NANI CHAWA PRO-MAX HAPA?😆', 'Changia chama lako', '500', 'image', 'bangBattle/65d22ab9aa303_battle1.jpg', 'bangBattle/65d22ab9aa303_battle2.jpg', NULL, NULL, 0, '2024-02-18 16:05:13', '2024-02-18 16:05:13'),
(64, 'Kuwa mkweli Nani mwamba hapa??😜', 'Changia chama lako', '500', 'image', 'bangBattle/65d2320c6feda_battle1.jpg', 'bangBattle/65d2320c6feda_battle2.jpg', NULL, NULL, 0, '2024-02-18 16:36:28', '2024-02-18 16:36:28'),
(68, 'Tuwe wakweli!! A -Pacome or B -Chama 😜', 'Changia mchezaji wako', '1000', 'image', 'bangBattle/65e45005b3553_battle1.jpg', 'bangBattle/65e45005b3553_battle2.jpg', NULL, NULL, 1, '2024-03-03 10:25:09', '2024-03-17 20:02:35');

-- --------------------------------------------------------

--
-- Table structure for table `bang_inspirations`
--

CREATE TABLE `bang_inspirations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `thumbnail` varchar(191) NOT NULL,
  `tittle` varchar(191) NOT NULL,
  `view_count` varchar(191) NOT NULL,
  `video_url` varchar(191) NOT NULL,
  `creator` varchar(191) NOT NULL,
  `profile_url` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bang_inspirations`
--

INSERT INTO `bang_inspirations` (`id`, `thumbnail`, `tittle`, `view_count`, `video_url`, `creator`, `profile_url`, `created_at`, `updated_at`) VALUES
(6, '65d0dcd4ec759.JPG', 'this my story', '0', '65d0dcd4ec752.mp4', 'BangInspiration', 'bangInspiration/bang_logo.jpg', '2024-02-17 16:20:37', '2024-02-17 16:20:37');

-- --------------------------------------------------------

--
-- Table structure for table `bang_updates`
--

CREATE TABLE `bang_updates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `caption` text DEFAULT NULL,
  `filename` varchar(191) NOT NULL,
  `type` enum('video','image') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `cache_url` varchar(250) DEFAULT NULL,
  `aspect_ratio` varchar(250) DEFAULT NULL,
  `thumbnail_url` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bang_updates`
--

INSERT INTO `bang_updates` (`id`, `caption`, `filename`, `type`, `created_at`, `updated_at`, `user_id`, `cache_url`, `aspect_ratio`, `thumbnail_url`) VALUES
(1, 'pisika', '65a2a5aa0dbec.mp4', 'video', '2024-01-13 15:00:58', '2024-01-13 15:00:58', 6, NULL, '0.5625', NULL),
(2, '😭😭😭', '65a55db64a3ad.jpg', 'image', '2024-01-15 16:30:46', '2024-01-15 16:30:46', 13, NULL, '0.5625', NULL),
(3, 'etfffff', '65c7467816ace.jpg', 'image', '2024-02-10 09:48:40', '2024-02-10 09:48:40', 6, NULL, '0.5625', NULL),
(4, 'nimeenda chembe ya umbea', '65c7472670376.jpg', 'image', '2024-02-10 09:51:34', '2024-02-10 09:51:34', 6, NULL, '0.5625', NULL),
(5, 'video chemba ya umbea', '65c747e82ab1e.mp4', 'video', '2024-02-10 09:54:48', '2024-02-10 09:54:48', 6, NULL, '0.5625', NULL),
(6, 'chembaaaa', '65c74bcd9624b.jpg', 'image', '2024-02-10 10:11:25', '2024-02-10 10:11:25', 13, NULL, '0.5625', NULL),
(7, 'chemba', '65c7534ece48b.mp4', 'video', '2024-02-10 10:43:26', '2024-02-10 10:43:26', 6, NULL, '0.5625', NULL),
(8, 'Watoto wa mjini unaweza honga hadi hela ya kodi😀😀', '65c7547e1eb64.jpg', 'image', '2024-02-10 10:48:30', '2024-02-10 10:48:30', 6, NULL, '0.5625', NULL),
(9, '😳😳😲😲😲', '65c75d9ccca01.jpg', 'image', '2024-02-10 11:27:24', '2024-02-10 11:27:24', 13, NULL, '0.5625', NULL),
(10, 'Hili bifu nani mchawi hapa??', '65c7868a70eef.jpg', 'image', '2024-02-10 14:22:02', '2024-02-10 14:22:02', 13, NULL, '0.5625', NULL),
(11, 'Harmonize 😀😀😀', '65c7875908835.jpg', 'image', '2024-02-10 14:25:29', '2024-02-10 14:25:29', 13, NULL, '0.5625', NULL),
(12, 'Sema kajala anajua kuutunza mwili wake jamani😲😲🔥🔥', '65c79a1984f91.jpg', 'image', '2024-02-10 15:45:29', '2024-02-10 15:45:29', 13, NULL, '0.5625', NULL),
(13, 'Aiseee🥵😂', '65c79a640e4c1.jpg', 'image', '2024-02-10 15:46:44', '2024-02-10 15:46:44', 13, NULL, '0.5625', NULL),
(14, 'True👌🏿👌🏿', '65c79f4874270.jpg', 'image', '2024-02-10 16:07:36', '2024-02-10 16:07:36', 13, NULL, '0.5625', NULL),
(15, 'Hili Bifu 😆', '65c7a7f33c06b.jpg', 'image', '2024-02-10 16:44:35', '2024-02-10 16:44:35', 13, NULL, '0.5625', NULL),
(16, 'Hahahahaaaaaa watu bana😆😆', '65c7b7c15e565.jpg', 'image', '2024-02-10 17:52:01', '2024-02-10 17:52:01', 13, NULL, '0.5625', NULL),
(17, 'thissnce', '65db71f3b52b4.mp4', 'video', '2024-02-25 16:59:31', '2024-02-25 16:59:31', 6, NULL, '0.5625', NULL),
(18, 'Na nyama choma😀😀', '65db871f5cdc7.jpg', 'image', '2024-02-25 18:29:51', '2024-02-25 18:29:51', 13, NULL, '0.5625', NULL),
(19, '😀😀😀', '65db9b438cbb1.jpg', 'image', '2024-02-25 19:55:47', '2024-02-25 19:55:47', 13, NULL, '0.5625', NULL),
(20, 'Lokole bwana😀😀', '65dc2250bf943.jpg', 'image', '2024-02-26 05:32:00', '2024-02-26 05:32:00', 13, NULL, '0.5625', NULL),
(21, 'Heeee kumbe kuna Paula wa Moshi😳😳😀😀', '65dc236a5c606.jpg', 'image', '2024-02-26 05:36:42', '2024-02-26 05:36:42', 13, NULL, '0.5625', NULL),
(22, 'Picha mpya kutoka kwa dada yenu🔥🔥', '65dc26df0c8d8.jpg', 'image', '2024-02-26 05:51:27', '2024-02-26 05:51:27', 13, NULL, '0.5625', NULL),
(23, 'Mtaachana tu😀😀😀😀', '65dc2710f3296.jpg', 'image', '2024-02-26 05:52:16', '2024-02-26 05:52:16', 13, NULL, '0.5625', NULL),
(24, '😳😳😳😳', '65dc274af25b3.jpg', 'image', '2024-02-26 05:53:14', '2024-02-26 05:53:14', 13, NULL, '0.5625', NULL),
(25, 'Maneno ya Gigy kwa Sishkiki😜', '65dc27b89f518.jpg', 'image', '2024-02-26 05:55:04', '2024-02-26 05:55:04', 13, NULL, '0.5625', NULL),
(26, 'Wee Zuchu wewe weka maneno ya akiba🤠🤠🤠', '65dc286deb8b3.jpg', 'image', '2024-02-26 05:58:05', '2024-02-26 05:58:05', 13, NULL, '0.5625', NULL),
(27, 'Acha fix wewe😇😇', '65dc28c4838ea.jpg', 'image', '2024-02-26 05:59:32', '2024-02-26 05:59:32', 13, NULL, '0.5625', NULL),
(28, 'Bora umewaambia ukweli 👌🏿👌🏿', '65dc2919a23ac.jpg', 'image', '2024-02-26 06:00:57', '2024-02-26 06:00:57', 13, NULL, '0.5625', NULL),
(29, 'Piga apakati chembe kidevu pumbavu🤠🤠🤠', '65dc2971dcad3.jpg', 'image', '2024-02-26 06:02:25', '2024-02-26 06:02:25', 13, NULL, '0.5625', NULL),
(30, 'kibibigagula kitaweza kweli🤠🤠🤠', '65dc29bdbc116.jpg', 'image', '2024-02-26 06:03:41', '2024-02-26 06:03:41', 13, NULL, '0.5625', NULL),
(31, 'Mtoto kapata mtoto Hongera zako Paula 😜', '65dc2b1120362.jpg', 'image', '2024-02-26 06:09:21', '2024-02-26 06:09:21', 13, NULL, '0.5625', NULL),
(32, 'Selemani😎', '65dc2b7c116df.jpg', 'image', '2024-02-26 06:11:08', '2024-02-26 06:11:08', 13, NULL, '0.5625', NULL),
(33, 'Waambie watoto wadogo hao😀', '65dc2be626846.jpg', 'image', '2024-02-26 06:12:54', '2024-02-26 06:12:54', 13, NULL, '0.5625', NULL),
(34, 'Mzigo mpya kutoka kwa Zuchu huo unakuja🔥🔥🔥', '65dc2ee842738.jpg', 'image', '2024-02-26 06:25:44', '2024-02-26 06:25:44', 13, NULL, '0.5625', NULL),
(35, 'haya mambo haya😇😇', '65dc484916ce7.jpg', 'image', '2024-02-26 08:14:01', '2024-02-26 08:14:01', 13, NULL, '0.5625', NULL),
(36, 'Hii kali aisee kumbe anamkubali kiaina King!!', '65dc489524ae8.jpg', 'image', '2024-02-26 08:15:17', '2024-02-26 08:15:17', 13, NULL, '0.5625', NULL),
(37, 'Imekuaje tena waanze kumuita mwana upinde😳😳😳', '65dc48f8e499b.jpg', 'image', '2024-02-26 08:16:56', '2024-02-26 08:16:56', 13, NULL, '0.5625', NULL),
(38, 'Watu wengi unaowasaidia ndio huwa wanakuja kuwa maadui zako sijui kwanini!!!', '65dc495d71f39.jpg', 'image', '2024-02-26 08:18:37', '2024-02-26 08:18:37', 13, NULL, '0.5625', NULL),
(39, 'Hii ni kick au ni kweli washikaji🤔🤔', '65dc49d33b132.jpg', 'image', '2024-02-26 08:20:35', '2024-02-26 08:20:35', 13, NULL, '0.5625', NULL),
(40, 'Mpaka zifike buku dadadekii😀😀😀', '65dc4a26b3ac0.jpg', 'image', '2024-02-26 08:21:58', '2024-02-26 08:21:58', 13, NULL, '0.5625', NULL),
(41, 'Hii ni bahati au mkosi ndg zangu😆😆😆😆', '65dc4a8b94ee0.jpg', 'image', '2024-02-26 08:23:39', '2024-02-26 08:23:39', 13, NULL, '0.5625', NULL),
(42, 'Machawa wanamikwala jamani khaaaa😀😀', '65dc4bec8ecba.jpg', 'image', '2024-02-26 08:29:32', '2024-02-26 08:29:32', 13, NULL, '0.5625', NULL),
(43, 'Mchungaji kasema ukweli au kafuka😀', '65dc4c79b668d.jpg', 'image', '2024-02-26 08:31:53', '2024-02-26 08:31:53', 13, NULL, '0.5625', NULL),
(44, 'Shida ninini tena hapa???😳😳', '65dc4d75bc563.jpg', 'image', '2024-02-26 08:36:05', '2024-02-26 08:36:05', 13, NULL, '0.5625', NULL),
(45, 'Ni kweli au mbwembwe tu!!!!', '65dc6ed9e60bc.jpg', 'image', '2024-02-26 10:58:33', '2024-02-26 10:58:33', 13, NULL, '0.5625', NULL),
(46, 'heeeee mimba au!!😀😀😀', '65dccdeec84d8.jpg', 'image', '2024-02-26 17:44:14', '2024-02-26 17:44:14', 13, NULL, '0.5625', NULL),
(47, 'Ndio wakuchambe kwa pamoja hawa majamaa utahama nchi😆😆😆', '65dccf035e04a.jpg', 'image', '2024-02-26 17:48:51', '2024-02-26 17:48:51', 13, NULL, '0.5625', NULL),
(48, 'Hahahaha hii imekaaje wakulungwa??😀😀😀', '65dcde9c9af52.jpg', 'image', '2024-02-26 18:55:24', '2024-02-26 18:55:24', 13, NULL, '0.5625', NULL),
(49, 'mhhhh hii yataka moyo😇😇', '65dcdf26d8950.jpg', 'image', '2024-02-26 18:57:42', '2024-02-26 18:57:42', 13, NULL, '0.5625', NULL),
(50, 'Muna love Mutu ya Mungu', '65dce39dd2218.jpg', 'image', '2024-02-26 19:16:45', '2024-02-26 19:16:45', 13, NULL, '0.5625', NULL),
(51, 'Huyu Aristote hili si dongo kwa Mwijaku kabisa😆😆😆😆', '65dce8448dcd9.jpg', 'image', '2024-02-26 19:36:36', '2024-02-26 19:36:36', 13, NULL, '0.5625', NULL),
(52, 'Well said Wolper🔥🔥', '65dce9e498613.jpg', 'image', '2024-02-26 19:43:32', '2024-02-26 19:43:32', 13, NULL, '0.5625', NULL),
(53, 'hahahaha utadhani hawataachana😆😆😆', '65dceaf3d2884.jpg', 'image', '2024-02-26 19:48:03', '2024-02-26 19:48:03', 13, NULL, '0.5625', NULL),
(54, 'Jamaa kaharibu pua ya mtoto aisee hivi huyu mtoto anajua baba yake chawa kweli??😆😆😆', '65dceb6f916b5.jpg', 'image', '2024-02-26 19:50:07', '2024-02-26 19:50:07', 13, NULL, '0.5625', NULL),
(55, 'Bado wapo😀', '65dda99573579.jpg', 'image', '2024-02-27 09:21:25', '2024-02-27 09:21:25', 13, NULL, '0.5625', NULL),
(56, 'Utaachwa tu ukifika wakati wake😆😆😆', '65dda9ed7eb90.jpg', 'image', '2024-02-27 09:22:53', '2024-02-27 09:22:53', 13, NULL, '0.5625', NULL),
(57, 'Chimama kajitahidi aisee na haka kabenten😆😆😆😆', '65ddab69930ea.jpg', 'image', '2024-02-27 09:29:13', '2024-02-27 09:29:13', 13, NULL, '0.5625', NULL),
(58, 'Mmakonde😀', '65ddf394f048a.jpg', 'image', '2024-02-27 14:37:08', '2024-02-27 14:37:08', 13, NULL, '0.5625', NULL),
(59, 'Hiyo ni uongooo😆😆', '65de19d31c563.jpg', 'image', '2024-02-27 17:20:19', '2024-02-27 17:20:19', 13, NULL, '0.5625', NULL),
(60, NULL, '65de1a8d30318.jpg', 'image', '2024-02-27 17:23:25', '2024-02-27 17:23:25', 13, NULL, '0.5625', NULL),
(61, 'Hilo bifu!!!😆', '65de2278dc3d6.jpg', 'image', '2024-02-27 17:57:12', '2024-02-27 17:57:12', 13, NULL, '0.5625', NULL),
(62, NULL, '65de233e3b526.jpg', 'image', '2024-02-27 18:00:30', '2024-02-27 18:00:30', 13, NULL, '0.5625', NULL),
(63, 'Duuuuuuuu', '65de2398355e9.jpg', 'image', '2024-02-27 18:02:00', '2024-02-27 18:02:00', 13, NULL, '0.5625', NULL),
(64, 'Zaidi ya kupiga story unadhani walifanya nini😆😆😆', '65de24398f489.jpg', 'image', '2024-02-27 18:04:41', '2024-02-27 18:04:41', 13, NULL, '0.5625', NULL),
(65, '😲😲😲', '65de249dda9ad.jpg', 'image', '2024-02-27 18:06:21', '2024-02-27 18:06:21', 13, NULL, '0.5625', NULL),
(66, 'Sishikiki kamjibu Gigy patamu hapo🔥🔥🔥', '65de25838e6f2.jpg', 'image', '2024-02-27 18:10:11', '2024-02-27 18:10:11', 13, NULL, '0.5625', NULL),
(67, 'Hahahahaaa mambo ya kubemendana😆😆', '65de291af19bc.jpg', 'image', '2024-02-27 18:25:30', '2024-02-27 18:25:30', 13, NULL, '0.5625', NULL),
(68, 'Huu ndio ushemeji ambao Whozu anaukataa😆😆😆', '65de2cfe1b6bd.jpg', 'image', '2024-02-27 18:42:06', '2024-02-27 18:42:06', 13, NULL, '0.5625', NULL),
(69, NULL, '65de2d60a44de.jpg', 'image', '2024-02-27 18:43:44', '2024-02-27 18:43:44', 13, NULL, '0.5625', NULL),
(70, '😲😲😲', '65de2d9d87e42.jpg', 'image', '2024-02-27 18:44:45', '2024-02-27 18:44:45', 13, NULL, '0.5625', NULL),
(71, 'Hongera👍🏿', '65de2df9a7742.jpg', 'image', '2024-02-27 18:46:17', '2024-02-27 18:46:17', 13, NULL, '0.5625', NULL),
(72, 'Mpe neno huyu ng\'ombe😆😆😆', '65de2ed268914.jpg', 'image', '2024-02-27 18:49:54', '2024-02-27 18:49:54', 13, NULL, '0.5625', NULL),
(73, NULL, '65de381f067b7.jpg', 'image', '2024-02-27 19:29:35', '2024-02-27 19:29:35', 13, NULL, '0.5625', NULL),
(74, 'Mange kima...kamchefua Zari😆', '65dee4725bce5.jpg', 'image', '2024-02-28 07:44:50', '2024-02-28 07:44:50', 13, NULL, '0.5625', NULL),
(75, '🤠', '65df0d2292b6e.jpg', 'image', '2024-02-28 10:38:26', '2024-02-28 10:38:26', 13, NULL, '0.5625', NULL),
(76, 'Hahahaha bange mbaya aisee hutaki wenzio nao waimbe🤠', '65df0daaefb43.jpg', 'image', '2024-02-28 10:40:42', '2024-02-28 10:40:42', 13, NULL, '0.5625', NULL),
(77, '🤔🤔', '65df0f0ec7b8f.jpg', 'image', '2024-02-28 10:46:38', '2024-02-28 10:46:38', 13, NULL, '0.5625', NULL),
(78, 'Nani mkali hapo mimi wangu Wolper😜', '65df135745fd3.jpg', 'image', '2024-02-28 11:04:55', '2024-02-28 11:04:55', 13, NULL, '0.5625', NULL),
(79, 'kajala mbona ana busara sana siku hizi!!!😂', '65df3768a060f.jpg', 'image', '2024-02-28 13:38:48', '2024-02-28 13:38:48', 13, NULL, '0.5625', NULL),
(80, 'Hamisa😲😲', '65df3adc37157.jpg', 'image', '2024-02-28 13:53:32', '2024-02-28 13:53:32', 13, NULL, '0.5625', NULL),
(81, 'Hii ngozi ya mobeto ingekuwa kweli aisee dunia ingesimama😂', '65df3bbbf30c5.jpg', 'image', '2024-02-28 13:57:16', '2024-02-28 13:57:16', 13, NULL, '0.5625', NULL),
(82, 'Kila mtu anatokea mbali😂', '65df44c23f680.jpg', 'image', '2024-02-28 14:35:46', '2024-02-28 14:35:46', 13, NULL, '0.5625', NULL),
(83, 'Daaaaaa au basi😆😆', '65df4536c719d.jpg', 'image', '2024-02-28 14:37:42', '2024-02-28 14:37:42', 13, NULL, '0.5625', NULL),
(84, 'TBT', '65df4aa31c8f1.jpg', 'image', '2024-02-28 15:00:51', '2024-02-28 15:00:51', 13, NULL, '0.5625', NULL),
(85, 'Mbona wamepoa ghafra!!!😂😂🤠', '65df4aedb6ebe.jpg', 'image', '2024-02-28 15:02:05', '2024-02-28 15:02:05', 13, NULL, '0.5625', NULL),
(86, 'Mambo gani hayo????😂', '65e017457efa7.jpg', 'image', '2024-02-29 05:33:57', '2024-02-29 05:33:57', 13, NULL, '0.5625', NULL),
(87, 'Hii bange inaongea au kweli ndg zangu?😂😂😂😂', '65e06c43d7311.jpg', 'image', '2024-02-29 11:36:35', '2024-02-29 11:36:35', 13, NULL, '0.5625', NULL),
(88, 'Hivi huyu dada anafanya kazi gani!!??🤠🤠', '65e0d705c503c.jpg', 'image', '2024-02-29 19:12:05', '2024-02-29 19:12:05', 13, NULL, '0.5625', NULL),
(89, '🤠🤠🤠🤠', '65e0dc2cd609d.jpg', 'image', '2024-02-29 19:34:04', '2024-02-29 19:34:04', 13, NULL, '0.5625', NULL),
(90, NULL, '65e0de8e3f906.jpg', 'image', '2024-02-29 19:44:14', '2024-02-29 19:44:14', 13, NULL, '0.5625', NULL),
(91, NULL, '65e0deabbdd68.jpg', 'image', '2024-02-29 19:44:43', '2024-02-29 19:44:43', 13, NULL, '0.5625', NULL),
(92, 'Giggy🤠🤠🤠', '65e15d9a4f23c.jpg', 'image', '2024-03-01 04:46:18', '2024-03-01 04:46:18', 13, NULL, '0.5625', NULL),
(93, 'Huyu bibi Mange ni kweli mshenzi sana😡😡', '65e180cfdd732.jpg', 'image', '2024-03-01 07:16:31', '2024-03-01 07:16:31', 13, NULL, '0.5625', NULL),
(94, 'Hahahahaa mbona ndogo sana!!!!', '65e1882500b79.jpg', 'image', '2024-03-01 07:47:49', '2024-03-01 07:47:49', 13, NULL, '0.5625', NULL),
(95, NULL, '65e2041d9e374.jpg', 'image', '2024-03-01 16:36:45', '2024-03-01 16:36:45', 13, NULL, '0.5625', NULL),
(96, 'Eti bongo movie inalipa jichanganye uone😆😆😆', '65e2046fdff11.jpg', 'image', '2024-03-01 16:38:07', '2024-03-01 16:38:07', 13, NULL, '0.5625', NULL),
(97, '😆😆😆😆', '65e20d57c035c.jpg', 'image', '2024-03-01 17:16:07', '2024-03-01 17:16:07', 13, NULL, '0.5625', NULL),
(98, 'Kabisa🤠', '65e210a7b83a7.jpg', 'image', '2024-03-01 17:30:15', '2024-03-01 17:30:15', 13, NULL, '0.5625', NULL),
(99, NULL, '65e210c41b693.jpg', 'image', '2024-03-01 17:30:44', '2024-03-01 17:30:44', 13, NULL, '0.5625', NULL),
(100, NULL, '65e2118c56990.jpg', 'image', '2024-03-01 17:34:04', '2024-03-01 17:34:04', 13, NULL, '0.5625', NULL),
(101, 'Mmakonde katisha 🔥🔥🔥', '65e21285f212e.jpg', 'image', '2024-03-01 17:38:13', '2024-03-01 17:38:13', 13, NULL, '0.5625', NULL),
(102, 'Chino wanna man🔥🔥🔥', '65e212be3fb99.jpg', 'image', '2024-03-01 17:39:10', '2024-03-01 17:39:10', 13, NULL, '0.5625', NULL),
(103, NULL, '65e2154205624.jpg', 'image', '2024-03-01 17:49:54', '2024-03-01 17:49:54', 13, NULL, '0.5625', NULL),
(104, NULL, '65e2193ccae7b.jpg', 'image', '2024-03-01 18:06:52', '2024-03-01 18:06:52', 13, NULL, '0.5625', NULL),
(105, 'Acha uongo wewe 🤠', '65e21971be347.jpg', 'image', '2024-03-01 18:07:45', '2024-03-01 18:07:45', 13, NULL, '0.5625', NULL),
(106, 'Kabisa', '65e2199c67ebb.jpg', 'image', '2024-03-01 18:08:28', '2024-03-01 18:08:28', 13, NULL, '0.5625', NULL),
(107, NULL, '65e219ddba8cb.jpg', 'image', '2024-03-01 18:09:33', '2024-03-01 18:09:33', 13, NULL, '0.5625', NULL),
(108, 'Kabisa', '65e21a31586be.jpg', 'image', '2024-03-01 18:10:57', '2024-03-01 18:10:57', 13, NULL, '0.5625', NULL),
(109, '🔥🔥🔥', '65e21a8d42061.jpg', 'image', '2024-03-01 18:12:29', '2024-03-01 18:12:29', 13, NULL, '0.5625', NULL),
(110, NULL, '65e21eb461917.jpg', 'image', '2024-03-01 18:30:12', '2024-03-01 18:30:12', 13, NULL, '0.5625', NULL),
(111, 'Mtoto kabeba mtoto nice 🤠🔥🔥', '65e21ee451a5d.jpg', 'image', '2024-03-01 18:31:00', '2024-03-01 18:31:00', 13, NULL, '0.5625', NULL),
(112, 'Msechu kishafanya yake 😆😆😆', '65e21f47cbe49.jpg', 'image', '2024-03-01 18:32:39', '2024-03-01 18:32:39', 13, NULL, '0.5625', NULL),
(113, 'Caren Simba🔥🔥🔥', '65e21f7a57fc2.jpg', 'image', '2024-03-01 18:33:30', '2024-03-01 18:33:30', 13, NULL, '0.5625', NULL),
(114, NULL, '65e222cf52dde.jpg', 'image', '2024-03-01 18:47:43', '2024-03-01 18:47:43', 13, NULL, '0.5625', NULL),
(115, 'Wewe labda tukupe Zuchu😂', '65e2263ded622.jpg', 'image', '2024-03-01 19:02:21', '2024-03-01 19:02:21', 13, NULL, '0.5625', NULL),
(116, 'Tajiri😆', '65e2ac94b7ce8.jpg', 'image', '2024-03-02 04:35:32', '2024-03-02 04:35:32', 13, NULL, '0.5625', NULL),
(117, '😳😳', '65e2acc4b5c93.jpg', 'image', '2024-03-02 04:36:20', '2024-03-02 04:36:20', 13, NULL, '0.5625', NULL),
(118, 'Ni kweli hii???', '65e2ad0b13cea.jpg', 'image', '2024-03-02 04:37:31', '2024-03-02 04:37:31', 13, NULL, '0.5625', NULL),
(119, 'Tulia sasa mama', '65e2ad3e04a29.jpg', 'image', '2024-03-02 04:38:22', '2024-03-02 04:38:22', 13, NULL, '0.5625', NULL),
(120, NULL, '65e2ad6b3db0b.jpg', 'image', '2024-03-02 04:39:07', '2024-03-02 04:39:07', 13, NULL, '0.5625', NULL),
(121, NULL, '65e356fcb6d87.jpg', 'image', '2024-03-02 16:42:36', '2024-03-02 16:42:36', 13, NULL, '0.5625', NULL),
(122, '🔥🔥🔥', '65e3be47cfd09.jpg', 'image', '2024-03-03 00:03:19', '2024-03-03 00:03:19', 13, NULL, '0.5625', NULL),
(123, NULL, '65e40dd1c223d.mp4', 'video', '2024-03-03 05:42:41', '2024-03-03 05:42:41', 13, NULL, '0.5625', NULL),
(124, '😳😳😳😳', '65e41714a4019.jpg', 'image', '2024-03-03 06:22:12', '2024-03-03 06:22:12', 13, NULL, '0.5625', NULL),
(125, 'Hahahaha au basi🤠', '65e4175bded50.jpg', 'image', '2024-03-03 06:23:23', '2024-03-03 06:23:23', 13, NULL, '0.5625', NULL),
(126, NULL, '65e424cf93da5.jpg', 'image', '2024-03-03 07:20:47', '2024-03-03 07:20:47', 13, NULL, '0.5625', NULL),
(127, NULL, '65e4252716323.jpg', 'image', '2024-03-03 07:22:15', '2024-03-03 07:22:15', 13, NULL, '0.5625', NULL),
(128, NULL, '65e4457c362f2.jpg', 'image', '2024-03-03 09:40:12', '2024-03-03 09:40:12', 13, NULL, '0.5625', NULL),
(129, NULL, '65e45685b0205.jpg', 'image', '2024-03-03 10:52:53', '2024-03-03 10:52:53', 13, NULL, '0.5625', NULL),
(130, '😆😆😆', '65e4629459516.jpg', 'image', '2024-03-03 11:44:20', '2024-03-03 11:44:20', 13, NULL, '0.5625', NULL),
(131, 'Maneno ya Simba😂', '65e463e805db5.jpg', 'image', '2024-03-03 11:50:00', '2024-03-03 11:50:00', 13, NULL, '0.5625', NULL),
(132, 'Queen Nandi🔥🔥', '65e46605d99ee.jpg', 'image', '2024-03-03 11:59:01', '2024-03-03 11:59:01', 13, NULL, '0.5625', NULL),
(133, 'Bibi bado yumo 😂', '65e46647c3bbd.jpg', 'image', '2024-03-03 12:00:07', '2024-03-03 12:00:07', 13, NULL, '0.5625', NULL),
(134, NULL, '65e466978a814.jpg', 'image', '2024-03-03 12:01:27', '2024-03-03 12:01:27', 13, NULL, '0.5625', NULL),
(135, 'Aaaaa wapi hahahaha 😂😂😂', '65e466cebff7c.jpg', 'image', '2024-03-03 12:02:22', '2024-03-03 12:02:22', 13, NULL, '0.5625', NULL),
(136, 'Mama na mwana wamependeza🔥🔥', '65e466ff155aa.jpg', 'image', '2024-03-03 12:03:11', '2024-03-03 12:03:11', 13, NULL, '0.5625', NULL),
(137, 'Naiona Talaka kwa karibu kabisa 😂😂😂', '65e46c1b3b5a6.jpg', 'image', '2024-03-03 12:24:59', '2024-03-03 12:24:59', 13, NULL, '0.5625', NULL),
(138, 'Aisee😳', '65e46cafe74bd.jpg', 'image', '2024-03-03 12:27:27', '2024-03-03 12:27:27', 13, NULL, '0.5625', NULL),
(139, 'Sio kweli hii ni uongo hii😂😂😂', '65e46ce6ee4ac.jpg', 'image', '2024-03-03 12:28:22', '2024-03-03 12:28:22', 13, NULL, '0.5625', NULL),
(140, 'Sijaelewa hapa Yammy anatangaza nini!!?😳😂😂', '65e46d23438c5.jpg', 'image', '2024-03-03 12:29:23', '2024-03-03 12:29:23', 13, NULL, '0.5625', NULL),
(141, NULL, '65e47252406aa.jpg', 'image', '2024-03-03 12:51:30', '2024-03-03 12:51:30', 13, NULL, '0.5625', NULL),
(142, 'Tajiri 🔥🤠', '65e4739f148f1.jpg', 'image', '2024-03-03 12:57:03', '2024-03-03 12:57:03', 13, NULL, '0.5625', NULL),
(143, 'Mambo hadharani🤠🔥🔥🔥', '65e4995094beb.jpg', 'image', '2024-03-03 15:37:52', '2024-03-03 15:37:52', 13, NULL, '0.5625', NULL),
(144, 'Wamemuonea Diamond😂', '65e49983d0354.jpg', 'image', '2024-03-03 15:38:43', '2024-03-03 15:38:43', 13, NULL, '0.5625', NULL),
(145, '😆😆😆', '65e499b17397c.jpg', 'image', '2024-03-03 15:39:29', '2024-03-03 15:39:29', 13, NULL, '0.5625', NULL),
(146, 'kabisaa 🔥🔥', '65e499e6cad1b.jpg', 'image', '2024-03-03 15:40:22', '2024-03-03 15:40:22', 13, NULL, '0.5625', NULL),
(147, '😆😆', '65e49a521fed2.jpg', 'image', '2024-03-03 15:42:10', '2024-03-03 15:42:10', 13, NULL, '0.5625', NULL),
(148, NULL, '65e4b4f7742a1.jpg', 'image', '2024-03-03 17:35:51', '2024-03-03 17:35:51', 13, NULL, '0.5625', NULL),
(149, 'Hiyo mguuni ni irizi au nini!??😂', '65e4b534cdafe.jpg', 'image', '2024-03-03 17:36:52', '2024-03-03 17:36:52', 13, NULL, '0.5625', NULL),
(150, '😳😲😲😲', '65e4b56410e5d.jpg', 'image', '2024-03-03 17:37:40', '2024-03-03 17:37:40', 13, NULL, '0.5625', NULL),
(151, 'Safii🔥🔥', '65e4b58a04ef7.jpg', 'image', '2024-03-03 17:38:18', '2024-03-03 17:38:18', 13, NULL, '0.5625', NULL),
(152, NULL, '65e4b5b10e098.jpg', 'image', '2024-03-03 17:38:57', '2024-03-03 17:38:57', 13, NULL, '0.5625', NULL),
(153, 'Eti ni kweli hii wakulungwa??', '65e4b5db2f458.jpg', 'image', '2024-03-03 17:39:39', '2024-03-03 17:39:39', 13, NULL, '0.5625', NULL),
(154, '😂😂😂😂😂', '65e4b6267c5a6.jpg', 'image', '2024-03-03 17:40:54', '2024-03-03 17:40:54', 13, NULL, '0.5625', NULL),
(155, 'Maneno ya Ben Paul hayo😂', '65e4bd4e419f9.jpg', 'image', '2024-03-03 18:11:26', '2024-03-03 18:11:26', 13, NULL, '0.5625', NULL),
(156, '😂😂😂😂', '65e568bc334b3.jpg', 'image', '2024-03-04 06:22:52', '2024-03-04 06:22:52', 13, NULL, '0.5625', NULL),
(157, 'Aiseeee 🤠🤠', '65e61cf63f695.jpg', 'image', '2024-03-04 19:11:50', '2024-03-04 19:11:50', 13, NULL, '0.5625', NULL),
(158, NULL, '65e6bf6b3c36e.jpg', 'image', '2024-03-05 06:44:59', '2024-03-05 06:44:59', 13, NULL, '0.5625', NULL),
(159, 'Rugha mbovu zimemponza😩😩', '65e6e7a2427c3.jpg', 'image', '2024-03-05 09:36:34', '2024-03-05 09:36:34', 13, NULL, '0.5625', NULL),
(160, NULL, '65e7082152181.jpg', 'image', '2024-03-05 11:55:13', '2024-03-05 11:55:13', 13, NULL, '0.5625', NULL),
(161, 'Zuchu', '65e71245f0f66.jpg', 'image', '2024-03-05 12:38:30', '2024-03-05 12:38:30', 13, NULL, '0.5625', NULL),
(162, 'Dj Ally B', '65e71df62d785.jpg', 'image', '2024-03-05 13:28:22', '2024-03-05 13:28:22', 13, NULL, '0.5625', NULL),
(163, 'Mzee leo kaongea point au pumba tu??', '65e71e37027b3.jpg', 'image', '2024-03-05 13:29:27', '2024-03-05 13:29:27', 13, NULL, '0.5625', NULL),
(164, '😆😆😆😆', '65e7228251ce4.jpg', 'image', '2024-03-05 13:47:46', '2024-03-05 13:47:46', 13, NULL, '0.5625', NULL),
(165, 'Daaaa hii imekaaje hii aisee😆😆😆', '65e722cc88f7b.jpg', 'image', '2024-03-05 13:49:00', '2024-03-05 13:49:00', 13, NULL, '0.5625', NULL),
(166, NULL, '65e722f976a06.jpg', 'image', '2024-03-05 13:49:45', '2024-03-05 13:49:45', 13, NULL, '0.5625', NULL),
(167, '👌🏿👌🏿👌🏿', '65e7232b642d3.jpg', 'image', '2024-03-05 13:50:35', '2024-03-05 13:50:35', 13, NULL, '0.5625', NULL),
(168, 'Haka nako🤠', '65e72355906e0.jpg', 'image', '2024-03-05 13:51:17', '2024-03-05 13:51:17', 13, NULL, '0.5625', NULL),
(169, NULL, '65e76b64565d4.jpg', 'image', '2024-03-05 18:58:44', '2024-03-05 18:58:44', 13, NULL, '0.5625', NULL),
(170, 'Mange 😆😆', '65e76f448db27.jpg', 'image', '2024-03-05 19:15:16', '2024-03-05 19:15:16', 13, NULL, '0.5625', NULL),
(171, NULL, '65e76f7aa6c1e.jpg', 'image', '2024-03-05 19:16:10', '2024-03-05 19:16:10', 13, NULL, '0.5625', NULL),
(172, 'Pambana mama🤠', '65e7709ad022f.jpg', 'image', '2024-03-05 19:20:58', '2024-03-05 19:20:58', 13, NULL, '0.5625', NULL),
(173, 'Tuonjeshe kwanza ndio tukusifie🤠', '65e7711d38ee9.jpg', 'image', '2024-03-05 19:23:09', '2024-03-05 19:23:09', 13, NULL, '0.5625', NULL),
(174, 'watu wengine wanapenda kutukanwa waseme unaringa😂', '65e7718946c74.jpg', 'image', '2024-03-05 19:24:57', '2024-03-05 19:24:57', 13, NULL, '0.5625', NULL),
(175, '😀', '65e771d974f59.jpg', 'image', '2024-03-05 19:26:17', '2024-03-05 19:26:17', 13, NULL, '0.5625', NULL),
(176, NULL, '65e7723c9598f.jpg', 'image', '2024-03-05 19:27:56', '2024-03-05 19:27:56', 13, NULL, '0.5625', NULL),
(177, NULL, '65e7726e22e63.jpg', 'image', '2024-03-05 19:28:46', '2024-03-05 19:28:46', 13, NULL, '0.5625', NULL),
(178, 'Hili jamaa bana😂😂', '65e773446d54a.jpg', 'image', '2024-03-05 19:32:20', '2024-03-05 19:32:20', 13, NULL, '0.5625', NULL),
(179, NULL, '65e77398a6f26.jpg', 'image', '2024-03-05 19:33:44', '2024-03-05 19:33:44', 13, NULL, '0.5625', NULL),
(180, 'Giggy😂😂', '65e773ceeaeea.jpg', 'image', '2024-03-05 19:34:38', '2024-03-05 19:34:38', 13, NULL, '0.5625', NULL),
(181, 'Kweli au anazingua huyu manzi?😲😲', '65e77409429af.jpg', 'image', '2024-03-05 19:35:37', '2024-03-05 19:35:37', 13, NULL, '0.5625', NULL),
(182, 'Baba levo amemfanya Harmonize mtaji😂😂', '65e7f87ea31bf.jpg', 'image', '2024-03-06 05:00:46', '2024-03-06 05:00:46', 13, NULL, '0.5625', NULL),
(183, NULL, '65e7f8b39969f.jpg', 'image', '2024-03-06 05:01:39', '2024-03-06 05:01:39', 13, NULL, '0.5625', NULL),
(184, NULL, '65e809056dbb5.jpg', 'image', '2024-03-06 06:11:17', '2024-03-06 06:11:17', 13, NULL, '0.5625', NULL),
(185, NULL, '65e87cbedfeae.mp4', 'video', '2024-03-06 14:25:02', '2024-03-06 14:25:02', 6, NULL, '0.5625', NULL),
(186, 'Kweli kabisa.', '65e895d9e3c78.jpg', 'image', '2024-03-06 16:12:09', '2024-03-06 16:12:09', 13, NULL, '0.5625', NULL),
(187, 'Anakuja kucheza draft😆😆😆😆', '65e896901ea96.jpg', 'image', '2024-03-06 16:15:12', '2024-03-06 16:15:12', 13, NULL, '0.5625', NULL),
(188, NULL, '65e8a4c300ffc.jpg', 'image', '2024-03-06 17:15:47', '2024-03-06 17:15:47', 13, NULL, '0.5625', NULL),
(189, 'Hahahahahaaaa', '65e8a4fa3ffcb.jpg', 'image', '2024-03-06 17:16:42', '2024-03-06 17:16:42', 13, NULL, '0.5625', NULL),
(190, NULL, '65e8a567c96c6.jpg', 'image', '2024-03-06 17:18:31', '2024-03-06 17:18:31', 13, NULL, '0.5625', NULL),
(191, '😲😲', '65e8b8ffcf480.mp4', 'video', '2024-03-06 18:42:07', '2024-03-06 18:42:07', 13, NULL, '0.5625', NULL),
(192, NULL, '65e8b9ed83c96.mp4', 'video', '2024-03-06 18:46:05', '2024-03-06 18:46:05', 13, NULL, '0.5625', NULL),
(193, NULL, '65e8bc3abab51.mp4', 'video', '2024-03-06 18:55:54', '2024-03-06 18:55:54', 13, NULL, '0.5625', NULL),
(194, NULL, '65e8bd22abde0.jpg', 'image', '2024-03-06 18:59:46', '2024-03-06 18:59:46', 13, NULL, '0.5625', NULL),
(195, '😂😂😂', '65e8bd7a94613.jpg', 'image', '2024-03-06 19:01:14', '2024-03-06 19:01:14', 13, NULL, '0.5625', NULL),
(196, 'Kabisa aisee umeongea point sana leo dada yangu agiza soda nakuja kulipa😆😆', '65e8c83a422da.jpg', 'image', '2024-03-06 19:47:06', '2024-03-06 19:47:06', 13, NULL, '0.5625', NULL),
(197, NULL, '65e8d5587954e.jpg', 'image', '2024-03-06 20:43:04', '2024-03-06 20:43:04', 13, NULL, '0.5625', NULL),
(198, NULL, '65e8d5946ae4b.jpg', 'image', '2024-03-06 20:44:04', '2024-03-06 20:44:04', 13, NULL, '0.5625', NULL),
(199, 'Twende kazi😜', '65e8d5e521688.jpg', 'image', '2024-03-06 20:45:25', '2024-03-06 20:45:25', 13, NULL, '0.5625', NULL),
(200, NULL, '65e8d62aa37c1.jpg', 'image', '2024-03-06 20:46:34', '2024-03-06 20:46:34', 13, NULL, '0.5625', NULL),
(201, '😲😲', '65e9e89229bb8.jpg', 'image', '2024-03-07 16:17:22', '2024-03-07 16:17:22', 13, NULL, '0.5625', NULL),
(202, NULL, '65e9e8bf119fa.jpg', 'image', '2024-03-07 16:18:07', '2024-03-07 16:18:07', 13, NULL, '0.5625', NULL),
(203, NULL, '65e9e8e227945.jpg', 'image', '2024-03-07 16:18:42', '2024-03-07 16:18:42', 13, NULL, '0.5625', NULL),
(204, NULL, '65e9ea19e26c2.jpg', 'image', '2024-03-07 16:23:53', '2024-03-07 16:23:53', 13, NULL, '0.5625', NULL),
(205, NULL, '65ea3188519d3.jpg', 'image', '2024-03-07 21:28:40', '2024-03-07 21:28:40', 13, NULL, '0.5625', NULL),
(206, 'kulikoni!!?😳😳', '65ea31c0968de.jpg', 'image', '2024-03-07 21:29:36', '2024-03-07 21:29:36', 13, NULL, '0.5625', NULL),
(207, NULL, '65ea33dc08865.jpg', 'image', '2024-03-07 21:38:36', '2024-03-07 21:38:36', 13, NULL, '0.5625', NULL),
(208, NULL, '65ea343dc2e72.jpg', 'image', '2024-03-07 21:40:13', '2024-03-07 21:40:13', 13, NULL, '0.5625', NULL),
(209, NULL, '65ea346996447.jpg', 'image', '2024-03-07 21:40:57', '2024-03-07 21:40:57', 13, NULL, '0.5625', NULL),
(210, NULL, '65ea34904f5ec.jpg', 'image', '2024-03-07 21:41:36', '2024-03-07 21:41:36', 13, NULL, '0.5625', NULL),
(211, NULL, '65ea96f9c9ed3.jpg', 'image', '2024-03-08 04:41:29', '2024-03-08 04:41:29', 13, NULL, '0.5625', NULL),
(212, 'Kabisaaa 👌🏿👌🏿', '65ea973680ac1.jpg', 'image', '2024-03-08 04:42:30', '2024-03-08 04:42:30', 13, NULL, '0.5625', NULL),
(213, NULL, '65eaf5819a023.jpg', 'image', '2024-03-08 11:24:49', '2024-03-08 11:24:49', 13, NULL, '0.5625', NULL),
(214, NULL, '65ecbeef920f6.jpg', 'image', '2024-03-09 19:56:31', '2024-03-09 19:56:31', 13, NULL, '0.5625', NULL),
(215, 'Hahahahaja mtaachana tu', '65edb5c22d50b.jpg', 'image', '2024-03-10 13:29:38', '2024-03-10 13:29:38', 13, NULL, '0.5625', NULL),
(216, 'Eti ni kweli au sana haiangalii vitu hizo?', '65edb75a7dc13.jpg', 'image', '2024-03-10 13:36:26', '2024-03-10 13:36:26', 13, NULL, '0.5625', NULL),
(217, 'Hii sio kweli bana😀', '65edb8613d219.jpg', 'image', '2024-03-10 13:40:49', '2024-03-10 13:40:49', 13, NULL, '0.5625', NULL),
(218, 'Kumbe!!😳', '65edb8e2681dc.jpg', 'image', '2024-03-10 13:42:58', '2024-03-10 13:42:58', 13, NULL, '0.5625', NULL),
(219, 'Ila mwijaku atafika mbinguni amechoka sana😆😆😆', '65edbb1d3e40a.jpg', 'image', '2024-03-10 13:52:29', '2024-03-10 13:52:29', 13, NULL, '0.5625', NULL),
(220, NULL, '65ee5f178860d.jpg', 'image', '2024-03-11 01:32:07', '2024-03-11 01:32:07', 13, NULL, '0.5625', NULL),
(221, 'Sio sahihi kumuita malaya amekosea sana mwijaku😡', '65ee5f6f9f857.jpg', 'image', '2024-03-11 01:33:35', '2024-03-11 01:33:35', 13, NULL, '0.5625', NULL),
(222, 'Hahahahahaa hii ni akili ya Abunuasi😂😂', '65ee5feb46fdf.jpg', 'image', '2024-03-11 01:35:39', '2024-03-11 01:35:39', 13, NULL, '0.5625', NULL),
(223, NULL, '65ee60d8038ce.jpg', 'image', '2024-03-11 01:39:36', '2024-03-11 01:39:36', 13, NULL, '0.5625', NULL),
(224, 'Mapenzi bwana ni matamu mkiwa pamoja mkiachana tu yangeuka shubili😆', '65ee61b17ec05.jpg', 'image', '2024-03-11 01:43:13', '2024-03-11 01:43:13', 13, NULL, '0.5625', NULL),
(225, 'Nikikumbuka walikua wanafanya mazoezi pamoja nguvu zinaishia😂😂😂', '65ee6213898bc.jpg', 'image', '2024-03-11 01:44:51', '2024-03-11 01:44:51', 13, NULL, '0.5625', NULL),
(226, 'Daaaaa kudadadeki vijana wasiku hizi hawana adabu kabisa😆😆', '65ee628279717.jpg', 'image', '2024-03-11 01:46:42', '2024-03-11 01:46:42', 13, NULL, '0.5625', NULL),
(227, 'King bana😀', '65ee62da8c5fe.jpg', 'image', '2024-03-11 01:48:10', '2024-03-11 01:48:10', 13, NULL, '0.5625', NULL),
(228, 'Mi tuu nimependa tatoooo😂', '65ee63bddde82.jpg', 'image', '2024-03-11 01:51:57', '2024-03-11 01:51:57', 13, NULL, '0.5625', NULL),
(229, 'Aiseee kumbe ndio iko hivi!!😂😳', '65ee9184078fa.jpg', 'image', '2024-03-11 05:07:16', '2024-03-11 05:07:16', 13, NULL, '0.5625', NULL),
(230, 'Chimami na Chibabi 😆😆😆', '65effbab66e86.jpg', 'image', '2024-03-12 06:52:27', '2024-03-12 06:52:27', 13, NULL, '0.5625', NULL),
(231, 'Mi siamini watakuwa wanatafuta kick hawa😆', '65f05ab11c5b2.jpg', 'image', '2024-03-12 13:37:53', '2024-03-12 13:37:53', 13, NULL, '0.5625', NULL),
(232, '😀😀😀😀', '65f6f8d642ca0.jpg', 'image', '2024-03-17 14:06:14', '2024-03-17 14:06:14', 13, NULL, '0.5625', NULL),
(233, NULL, '65f7413410dff.jpg', 'image', '2024-03-17 19:15:00', '2024-03-17 19:15:00', 13, NULL, '0.5625', NULL),
(234, NULL, '65f742250ed75.jpg', 'image', '2024-03-17 19:19:01', '2024-03-17 19:19:01', 13, NULL, '0.5625', NULL),
(235, 'Aiseeeeeee😲😲😲😲', '65f7462c9da8f.jpg', 'image', '2024-03-17 19:36:12', '2024-03-17 19:36:12', 13, NULL, '0.5625', NULL),
(236, 'Vita 😀😀', '65f9b8d779c22.jpg', 'image', '2024-03-19 16:09:59', '2024-03-19 16:09:59', 13, NULL, '0.5625', NULL),
(237, 'Aisee kweli mambo ya ndoa magumu jamani🥵🥵', '65faf1b6f19a7.jpg', 'image', '2024-03-20 14:24:55', '2024-03-20 14:24:55', 13, NULL, '0.5625', NULL),
(238, 'Uongo hii bana😀😀', '65ff0f04c07cd.jpg', 'image', '2024-03-23 17:19:00', '2024-03-23 17:19:00', 13, NULL, '0.5625', NULL),
(239, 'Uongo hii bana😀😀', '65ff0f1c8e6b4.jpg', 'image', '2024-03-23 17:19:24', '2024-03-23 17:19:24', 13, NULL, '0.5625', NULL),
(240, 'hivi maua sama anatafutaga kick au ni nini!!?', '65ff0fba1cd6e.jpg', 'image', '2024-03-23 17:22:02', '2024-03-23 17:22:02', 13, NULL, '0.5625', NULL),
(241, NULL, '65ff1df4689bd.mp4', 'video', '2024-03-23 18:22:44', '2024-03-23 18:22:44', 13, NULL, '0.5625', NULL),
(242, 'hahaha kumekucha😆', '65ff33737ee43.jpg', 'image', '2024-03-23 19:54:27', '2024-03-23 19:54:27', 13, NULL, '0.5625', NULL),
(243, 'Haka kajamaa kaliahidigi katampa mimba Wema mpaka wameacha kameshindwa😆😆😆', '65ffe34c12584.jpg', 'image', '2024-03-24 08:24:44', '2024-03-24 08:24:44', 13, NULL, '0.5625', NULL),
(244, 'Giggy kalipwa 5,000,000 sio mbaya maisha magumu haya 😆', '66012f962859e.jpg', 'image', '2024-03-25 08:02:30', '2024-03-25 08:02:30', 13, NULL, '0.5625', NULL),
(245, 'Huyu anaongea ukweli au pumba tu??', '6601318405800.jpg', 'image', '2024-03-25 08:10:44', '2024-03-25 08:10:44', 13, NULL, '0.5625', NULL),
(246, 'this is caption', 'https://video.bangapp.pro/updateVideo/1660192ad8c014/1660192ad8c014.m3u8', 'video', '2024-03-25 15:05:18', '2024-03-25 15:05:18', 6, 'https://video.bangapp.pro/updateVideos/660192ad89e6a.mp4', '0.5625', 'https://video.bangapp.pro/updateThumbnail/1660192ad8c014/1660192ad8c014.png'),
(247, 'Hahahahaaa Giggy!!', '66027247d2534.jpg', 'image', '2024-03-26 06:59:19', '2024-03-26 06:59:19', 13, NULL, '0.5625', NULL),
(248, '😲😲😲😲', '660294e5b2f74.jpg', 'image', '2024-03-26 09:27:01', '2024-03-26 09:27:01', 13, NULL, '0.5625', NULL),
(249, 'Vita hii ni kubwa sana😇😇', '66029546d2493.jpg', 'image', '2024-03-26 09:28:38', '2024-03-26 09:28:38', 13, NULL, '0.5625', NULL),
(250, 'Mambo ya fb hayo wengi tulikua tunapatia watoto huku enzi hizo😆😆', '66082f0b618f2.jpg', 'image', '2024-03-30 15:26:03', '2024-03-30 15:26:03', 13, NULL, '0.5625', NULL),
(251, NULL, 'https://video.bangapp.pro/updateVideo/1660d09e9baf67/1660d09e9baf67.m3u8', 'video', '2024-04-03 07:48:58', '2024-04-03 07:48:58', 6, 'https://video.bangapp.pro/updateVideos/660d09e9ba9cf.mp4', '0.5625', 'https://video.bangapp.pro/updateThumbnail/1660d09e9baf67/1660d09e9baf67.png'),
(252, NULL, 'https://video.bangapp.pro/video/1661acb8d15189/1661acb8d15189.m3u8', 'video', '2024-04-13 18:14:37', '2024-04-13 18:14:37', 6, 'https://video.bangapp.pro/videos/661acb8d12bc6.mp4', '0.5625', 'https://video.bangapp.pro/thumbnail/1661acb8d15189/1661acb8d15189.png'),
(253, NULL, 'https://video.bangapp.pro/video/1661ad1673844f/1661ad1673844f.m3u8', 'video', '2024-04-13 18:39:35', '2024-04-13 18:39:35', 13, 'https://video.bangapp.pro/videos/661ad16736753.mp4', '0.5625', 'https://video.bangapp.pro/thumbnail/1661ad1673844f/1661ad1673844f.png'),
(254, NULL, 'https://video.bangapp.pro/video/1661ad647d15b2/1661ad647d15b2.m3u8', 'video', '2024-04-13 19:00:24', '2024-04-13 19:00:24', 13, 'https://video.bangapp.pro/videos/661ad647cdecb.mp4', '0.5625', 'https://video.bangapp.pro/thumbnail/1661ad647d15b2/1661ad647d15b2.png'),
(255, NULL, 'https://video.bangapp.pro/video/1661ad6c739f02/1661ad6c739f02.m3u8', 'video', '2024-04-13 19:02:31', '2024-04-13 19:02:31', 13, 'https://video.bangapp.pro/videos/661ad6c734e65.mp4', '0.5625', 'https://video.bangapp.pro/thumbnail/1661ad6c739f02/1661ad6c739f02.png'),
(256, NULL, 'https://video.bangapp.pro/video/1661ad8f6da12f/1661ad8f6da12f.m3u8', 'video', '2024-04-13 19:11:51', '2024-04-13 19:11:51', 13, 'https://video.bangapp.pro/videos/661ad8f6d8930.mp4', '0.5625', 'https://video.bangapp.pro/thumbnail/1661ad8f6da12f/1661ad8f6da12f.png'),
(257, '😢😢😢😢😢😢', 'https://video.bangapp.pro/video/1661aec35d7a45/1661aec35d7a45.m3u8', 'video', '2024-04-13 20:33:58', '2024-04-13 20:33:58', 13, 'https://video.bangapp.pro/videos/661aec35d2860.mp4', '0.5625', 'https://video.bangapp.pro/thumbnail/1661aec35d7a45/1661aec35d7a45.png'),
(258, 'hahaha', 'https://video.bangapp.pro/video/1661af9a3ef141/1661af9a3ef141.m3u8', 'video', '2024-04-13 21:31:16', '2024-04-13 21:31:16', 13, 'https://video.bangapp.pro/videos/661af9a3d937e.mp4', '0.5625', 'https://video.bangapp.pro/thumbnail/1661af9a3ef141/1661af9a3ef141.png'),
(259, 'Hahaha Gigy', 'https://video.bangapp.pro/video/1661b4c3ba1138/1661b4c3ba1138.m3u8', 'video', '2024-04-14 03:23:39', '2024-04-14 03:23:39', 13, 'https://video.bangapp.pro/videos/661b4c3b9f200.mp4', '0.5625', 'https://video.bangapp.pro/thumbnail/1661b4c3ba1138/1661b4c3ba1138.png'),
(260, 'huyu dem ana ngozi mbaya sana😂😂', 'https://video.bangapp.pro/video/1661b4f719b5a1/1661b4f719b5a1.m3u8', 'video', '2024-04-14 03:37:21', '2024-04-14 03:37:21', 13, 'https://video.bangapp.pro/videos/661b4f718404f.mp4', '0.5625', 'https://video.bangapp.pro/thumbnail/1661b4f719b5a1/1661b4f719b5a1.png'),
(261, 'Huyu ndio mmiliki nini????😂😂', 'https://video.bangapp.pro/video/1661b53978c1f7/1661b53978c1f7.m3u8', 'video', '2024-04-14 03:55:03', '2024-04-14 03:55:03', 13, 'https://video.bangapp.pro/videos/661b53978af6a.mp4', '0.5625', 'https://video.bangapp.pro/thumbnail/1661b53978c1f7/1661b53978c1f7.png'),
(262, 'Stress😂😂😂', 'https://video.bangapp.pro/video/1661b564ba3526/1661b564ba3526.m3u8', 'video', '2024-04-14 04:06:35', '2024-04-14 04:06:35', 13, 'https://video.bangapp.pro/videos/661b564b87e63.mp4', '0.5625', 'https://video.bangapp.pro/thumbnail/1661b564ba3526/1661b564ba3526.png'),
(263, 'Hii omba isikukute wewe😀', 'https://video.bangapp.pro/video/1661c292a9372c/1661c292a9372c.m3u8', 'video', '2024-04-14 19:06:18', '2024-04-14 19:06:18', 13, 'https://video.bangapp.pro/videos/661c292a5d404.mp4', '0.5625', 'https://video.bangapp.pro/thumbnail/1661c292a9372c/1661c292a9372c.png'),
(264, NULL, 'https://video.bangapp.pro/video/1661d58e7da776/1661d58e7da776.m3u8', 'video', '2024-04-15 16:42:16', '2024-04-15 16:42:16', 13, 'https://video.bangapp.pro/videos/661d58e7d8734.mp4', 'null', 'https://video.bangapp.pro/thumbnail/1661d58e7da776/1661d58e7da776.png'),
(265, 'Hahaha hatari sana😀😀😀😀', '661d625d3a0a6.jpg', 'image', '2024-04-15 17:22:37', '2024-04-15 17:22:37', 13, NULL, NULL, NULL),
(266, 'hahahaaaaa hatari sana 😂😂😂', '661d64091b3ed.jpg', 'image', '2024-04-15 17:29:45', '2024-04-15 17:29:45', 13, NULL, NULL, NULL),
(267, 'Hili penzi likifika mwezi wa saba mniite mbwa😂', '661d7ae33115e.jpg', 'image', '2024-04-15 19:07:15', '2024-04-15 19:07:15', 13, NULL, NULL, NULL),
(268, 'Mmakonde anafaidi jamani😜😜', '661d7d3df3fcf.jpg', 'image', '2024-04-15 19:17:18', '2024-04-15 19:17:18', 13, NULL, NULL, NULL),
(269, 'Vijana wa hovyo kwenye picha ya pamoja😂', '661d7e8bedd07.jpg', 'image', '2024-04-15 19:22:51', '2024-04-15 19:22:51', 13, NULL, NULL, NULL),
(270, 'heeeeeeee aisee hongera zake😳🔥', '661d7ef4cda7c.jpg', 'image', '2024-04-15 19:24:36', '2024-04-15 19:24:36', 13, NULL, NULL, NULL),
(271, 'Ma x wamezalishwa inauma aisee😀', '661d7f41bdbdc.jpg', 'image', '2024-04-15 19:25:53', '2024-04-15 19:25:53', 13, NULL, NULL, NULL),
(272, 'Machi wa hatari wamekutana hahahhaaa hatari 😀😀', 'https://video.bangapp.pro/video/1661d7fabcbf5f/1661d7fabcbf5f.m3u8', 'video', '2024-04-15 19:27:40', '2024-04-15 19:27:40', 13, 'https://video.bangapp.pro/videos/661d7fabca8ad.mp4', '0.5620437956204379', 'https://video.bangapp.pro/thumbnail/1661d7fabcbf5f/1661d7fabcbf5f.png'),
(273, NULL, '661de47052365.jpg', 'image', '2024-04-16 02:37:36', '2024-04-16 02:37:36', 13, NULL, NULL, NULL),
(274, 'Unyama sana 🔥', '661e705665999.jpg', 'image', '2024-04-16 12:34:30', '2024-04-16 12:34:30', 13, NULL, NULL, NULL),
(275, NULL, '661e74b0d8c12.jpg', 'image', '2024-04-16 12:53:04', '2024-04-16 12:53:04', 13, NULL, NULL, NULL),
(276, 'nomaa', '661e7785734a9.jpg', 'image', '2024-04-16 13:05:09', '2024-04-16 13:05:09', 13, NULL, NULL, NULL),
(277, 'tid', '661e7893dc945.jpg', 'image', '2024-04-16 13:09:39', '2024-04-16 13:09:39', 13, NULL, NULL, NULL),
(278, 'penzi moto moto', '661e7a5dbce39.jpg', 'image', '2024-04-16 13:17:17', '2024-04-16 13:17:17', 13, NULL, NULL, NULL),
(279, NULL, '661e7b43029e9.jpg', 'image', '2024-04-16 13:21:07', '2024-04-16 13:21:07', 13, NULL, NULL, NULL),
(280, 'driving School 🏫', '661e7ccae6f07.jpg', 'image', '2024-04-16 13:27:38', '2024-04-16 13:27:38', 13, NULL, NULL, NULL),
(281, 'hii imekaaje wazee!!', '661e7f27acdd5.jpg', 'image', '2024-04-16 13:37:43', '2024-04-16 13:37:43', 13, NULL, NULL, NULL),
(282, 'tumbo zuri', '661e80500891d.jpg', 'image', '2024-04-16 13:42:40', '2024-04-16 13:42:40', 13, NULL, NULL, NULL),
(283, 'jux', '661e845a8c6a7.jpg', 'image', '2024-04-16 13:59:54', '2024-04-16 13:59:54', 13, NULL, NULL, NULL),
(284, NULL, '661e849459010.jpg', 'image', '2024-04-16 14:00:52', '2024-04-16 14:00:52', 13, NULL, NULL, NULL),
(285, NULL, '661e854ddcb42.jpg', 'image', '2024-04-16 14:03:57', '2024-04-16 14:03:57', 13, NULL, NULL, NULL),
(286, NULL, '661e85935ce42.jpg', 'image', '2024-04-16 14:05:07', '2024-04-16 14:05:07', 13, NULL, NULL, NULL),
(287, NULL, 'https://video.bangapp.pro/video/1661e85c8ae9a8/1661e85c8ae9a8.m3u8', 'video', '2024-04-16 14:06:00', '2024-04-16 14:06:00', 13, 'https://video.bangapp.pro/videos/661e85c8aabe5.mp4', '0.5625', 'https://video.bangapp.pro/thumbnail/1661e85c8ae9a8/1661e85c8ae9a8.png'),
(288, 'weka neno', 'https://video.bangapp.pro/video/1661e9fe446130/1661e9fe446130.m3u8', 'video', '2024-04-16 15:57:24', '2024-04-16 15:57:24', 13, 'https://video.bangapp.pro/videos/661e9fe43592b.mp4', '0.5625', 'https://video.bangapp.pro/thumbnail/1661e9fe446130/1661e9fe446130.png'),
(289, 'Duuuuuu  😭😭', '661fae757434b.jpg', 'image', '2024-04-17 11:11:49', '2024-04-17 11:11:49', 13, NULL, NULL, NULL),
(290, NULL, 'https://video.bangapp.pro/video/1661faec9dda7f/1661faec9dda7f.m3u8', 'video', '2024-04-17 11:13:14', '2024-04-17 11:13:14', 13, 'https://video.bangapp.pro/videos/661faec9dc4ee.mp4', '0.5620437956204379', 'https://video.bangapp.pro/thumbnail/1661faec9dda7f/1661faec9dda7f.png'),
(291, 'Mambo hayo 😂', 'https://video.bangapp.pro/video/1661faf73aa72f/1661faf73aa72f.m3u8', 'video', '2024-04-17 11:16:03', '2024-04-17 11:16:03', 13, 'https://video.bangapp.pro/videos/661faf73a81b9.mp4', '0.5625', 'https://video.bangapp.pro/thumbnail/1661faf73aa72f/1661faf73aa72f.png'),
(292, 'Sema ndio atafanyaje Majani inabidi akubali tu matokeo😀😀😂', 'https://video.bangapp.pro/video/16620ce859606d/16620ce859606d.m3u8', 'video', '2024-04-18 07:40:53', '2024-04-18 07:40:53', 13, 'https://video.bangapp.pro/videos/6620ce859315d.mp4', '0.562962962962963', 'https://video.bangapp.pro/thumbnail/16620ce859606d/16620ce859606d.png'),
(293, 'Mwamba alisahau muosha huoshwa😀😀kajala alimzalisha akiwa mwanafunzi.', '6620d5ee16611.jpg', 'image', '2024-04-18 08:12:30', '2024-04-18 08:12:30', 13, NULL, NULL, NULL),
(294, 'Wazazi wa paula hawajaonekana!!!!', '6620dcb4d7346.jpg', 'image', '2024-04-18 08:41:24', '2024-04-18 08:41:24', 13, NULL, NULL, NULL),
(295, 'Majani katisha🔥🔥', '6620dd193ff19.jpg', 'image', '2024-04-18 08:43:05', '2024-04-18 08:43:05', 13, NULL, NULL, NULL),
(296, 'Kabisa😀😂😂', '66212b09bfb92.jpg', 'image', '2024-04-18 14:15:37', '2024-04-18 14:15:37', 13, NULL, NULL, NULL),
(297, 'Hivi baba levo huwa anatumia bangi ya wapi??😀', '66212b508361b.jpg', 'image', '2024-04-18 14:16:48', '2024-04-18 14:16:48', 13, NULL, NULL, NULL),
(298, NULL, '66212c39c52ce.jpg', 'image', '2024-04-18 14:20:41', '2024-04-18 14:20:41', 13, NULL, NULL, NULL),
(299, NULL, 'https://video.bangapp.pro/video/166212c8baef11/166212c8baef11.m3u8', 'video', '2024-04-18 14:22:04', '2024-04-18 14:22:04', 13, 'https://video.bangapp.pro/videos/66212c8baa042.mp4', '0.5611111111111111', 'https://video.bangapp.pro/thumbnail/166212c8baef11/166212c8baef11.png'),
(300, 'Sunche na kapeto😂😂', 'https://video.bangapp.pro/video/166212cff55f32/166212cff55f32.m3u8', 'video', '2024-04-18 14:23:59', '2024-04-18 14:23:59', 13, 'https://video.bangapp.pro/videos/66212cff4e350.mp4', '0.5625', 'https://video.bangapp.pro/thumbnail/166212cff55f32/166212cff55f32.png'),
(301, 'Baba levo kamnyang\'anya kila kitu alichompa mpnz wake baada ya kuachana nae.', 'https://video.bangapp.pro/video/16621f95b227da/16621f95b227da.m3u8', 'video', '2024-04-19 04:55:55', '2024-04-19 04:55:55', 13, 'https://video.bangapp.pro/videos/6621f95b214be.mp4', '0.5611111111111111', 'https://video.bangapp.pro/thumbnail/16621f95b227da/16621f95b227da.png'),
(302, 'Huu ni ujanja au ushamba???', '6621f9a35d551.jpg', 'image', '2024-04-19 04:57:07', '2024-04-19 04:57:07', 13, NULL, NULL, NULL),
(303, 'Kweli sio kweli??', 'https://video.bangapp.pro/video/166220abd005f0/166220abd005f0.m3u8', 'video', '2024-04-19 06:10:06', '2024-04-19 06:10:06', 13, 'https://video.bangapp.pro/videos/66220abcd5a36.mp4', '0.5625', 'https://video.bangapp.pro/thumbnail/166220abd005f0/166220abd005f0.png'),
(304, 'Malaika 😀😀😀', '66220e425582e.jpg', 'image', '2024-04-19 06:25:06', '2024-04-19 06:25:06', 13, NULL, NULL, NULL),
(305, 'Huyu dem bana😂😂😂', 'https://video.bangapp.pro/video/166220e8d55850/166220e8d55850.m3u8', 'video', '2024-04-19 06:26:21', '2024-04-19 06:26:21', 13, 'https://video.bangapp.pro/videos/66220e8d5364c.mp4', '0.5611111111111111', 'https://video.bangapp.pro/thumbnail/166220e8d55850/166220e8d55850.png'),
(306, 'Ila vitako vya Zuchu😂😂😂', 'https://video.bangapp.pro/video/16622310650056/16622310650056.m3u8', 'video', '2024-04-19 08:53:26', '2024-04-19 08:53:26', 13, 'https://video.bangapp.pro/videos/6622310646bd1.mp4', '0.5625', 'https://video.bangapp.pro/thumbnail/16622310650056/16622310650056.png'),
(307, 'Ila huyu dem ananyodo sana😀', '66223154c238c.jpg', 'image', '2024-04-19 08:54:44', '2024-04-19 08:54:44', 13, NULL, NULL, NULL),
(308, 'Ila watakua walishajaribu kidogo😂😂', '662231b4653e6.jpg', 'image', '2024-04-19 08:56:20', '2024-04-19 08:56:20', 13, NULL, NULL, NULL),
(309, '😇😇😇', 'https://video.bangapp.pro/video/16622332d0775c/16622332d0775c.m3u8', 'video', '2024-04-19 09:02:37', '2024-04-19 09:02:37', 13, 'https://video.bangapp.pro/videos/6622332cec42c.mp4', '0.5625', 'https://video.bangapp.pro/thumbnail/16622332d0775c/16622332d0775c.png'),
(310, 'Hahahahaaa watu bwana😂😂', '6623f5f4689a4.jpg', 'image', '2024-04-20 17:05:56', '2024-04-20 17:05:56', 13, NULL, NULL, NULL),
(311, 'Hahaha watu bwana😀😀😀', '6623f64791f03.jpg', 'image', '2024-04-20 17:07:19', '2024-04-20 17:07:19', 13, NULL, NULL, NULL),
(312, 'Tajiri kaokoka😀🔥', 'https://video.bangapp.pro/video/16623f7672714e/16623f7672714e.m3u8', 'video', '2024-04-20 17:12:07', '2024-04-20 17:12:07', 13, 'https://video.bangapp.pro/videos/6623f767154ba.mp4', '0.5625', 'https://video.bangapp.pro/thumbnail/16623f7672714e/16623f7672714e.png'),
(313, 'Kabisa 😂', '6623f8f91fd46.jpg', 'image', '2024-04-20 17:18:49', '2024-04-20 17:18:49', 13, NULL, NULL, NULL),
(314, 'Hatari 🔥🔥🔥', 'https://video.bangapp.pro/video/16623f971b7bd4/16623f971b7bd4.m3u8', 'video', '2024-04-20 17:20:49', '2024-04-20 17:20:49', 13, 'https://video.bangapp.pro/videos/6623f971a1f0d.mp4', '0.5625', 'https://video.bangapp.pro/thumbnail/16623f971b7bd4/16623f971b7bd4.png'),
(315, 'Aiseee kama ni kweli basi huyu dada aliumia sana 😭😭', 'https://video.bangapp.pro/video/16624bb6dc597d/16624bb6dc597d.m3u8', 'video', '2024-04-21 07:08:30', '2024-04-21 07:08:30', 13, 'https://video.bangapp.pro/videos/6624bb6dbbd7e.mp4', '0.5625', 'https://video.bangapp.pro/thumbnail/16624bb6dc597d/16624bb6dc597d.png'),
(316, 'Chizi leo kaongea Point sana🔥🔥', '66269da121ab0.jpg', 'image', '2024-04-22 17:25:53', '2024-04-22 17:25:53', 13, NULL, NULL, NULL),
(317, 'Hongera yako mzee mshukuru sana Mungu', '662766a4ba65e.jpg', 'image', '2024-04-23 07:43:32', '2024-04-23 07:43:32', 13, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bang_update_comments`
--

CREATE TABLE `bang_update_comments` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `body` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bang_update_comments`
--

INSERT INTO `bang_update_comments` (`user_id`, `post_id`, `body`, `created_at`, `updated_at`, `id`) VALUES
(6, 15, 'hello', '2024-02-10 17:07:06', '2024-02-10 17:07:06', 1),
(6, 16, 'hello', '2024-02-10 18:18:28', '2024-02-10 18:18:28', 2),
(6, 16, 'hello', '2024-02-10 18:22:58', '2024-02-10 18:22:58', 3),
(6, 16, 'hello', '2024-02-10 18:23:01', '2024-02-10 18:23:01', 4),
(6, 16, 'hello', '2024-02-10 18:23:52', '2024-02-10 18:23:52', 5),
(6, 16, 'hello', '2024-02-10 18:24:00', '2024-02-10 18:24:00', 6),
(6, 16, 'hello', '2024-02-10 18:24:04', '2024-02-10 18:24:04', 7),
(6, 10, 'this is comment', '2024-02-10 18:26:34', '2024-02-10 18:26:34', 8),
(6, 10, 'this is comment', '2024-02-10 18:29:37', '2024-02-10 18:29:37', 9),
(6, 16, 'hello', '2024-02-10 18:29:46', '2024-02-10 18:29:46', 10),
(6, 14, 'hermes', '2024-02-17 15:06:21', '2024-02-17 15:06:21', 11),
(6, 14, 'imeenda', '2024-02-17 16:17:32', '2024-02-17 16:17:32', 12),
(13, 16, 'bbbb', '2024-02-18 04:17:07', '2024-02-18 04:17:07', 13),
(13, 15, 'bbbb', '2024-02-18 04:17:18', '2024-02-18 04:17:18', 14),
(13, 16, 'aaaaa', '2024-02-25 09:09:18', '2024-02-25 09:09:18', 15),
(6, 13, 'okkkk', '2024-02-25 10:33:46', '2024-02-25 10:33:46', 16),
(13, 19, 'hahahahaa', '2024-02-25 19:56:13', '2024-02-25 19:56:13', 17),
(13, 36, 'hatari', '2024-02-26 08:15:32', '2024-02-26 08:15:32', 18),
(29, 125, 'duuuuu', '2024-03-03 11:08:03', '2024-03-03 11:08:03', 19),
(13, 234, 'bbbbb', '2024-03-19 16:15:52', '2024-03-19 16:15:52', 20),
(6, 234, 'Hana akili', '2024-03-19 16:16:28', '2024-03-19 16:16:28', 21),
(13, 206, 'bbbbb', '2024-03-20 15:38:28', '2024-03-20 15:38:28', 22),
(13, 206, 'cccc', '2024-03-20 15:40:44', '2024-03-20 15:40:44', 23),
(6, 203, 'nice good', '2024-03-22 17:35:31', '2024-03-22 17:35:31', 24),
(6, 187, 'nice', '2024-03-23 14:58:52', '2024-03-23 14:58:52', 25),
(6, 179, 'njooo', '2024-03-23 15:13:15', '2024-03-23 15:13:15', 26),
(6, 178, 'good', '2024-03-23 15:13:59', '2024-03-23 15:13:59', 27),
(6, 170, 'good', '2024-03-23 15:20:43', '2024-03-23 15:20:43', 28),
(6, 170, 'good', '2024-03-23 15:20:56', '2024-03-23 15:20:56', 29),
(13, 110, 'Hatari', '2024-03-23 16:45:35', '2024-03-23 16:45:35', 30),
(13, 41, 'mkosi', '2024-03-23 17:40:50', '2024-03-23 17:40:50', 31),
(13, 241, 'hahahahaha', '2024-03-23 18:24:13', '2024-03-23 18:24:13', 32),
(6, 243, 'comment', '2024-03-24 19:32:19', '2024-03-24 19:32:19', 33),
(13, 263, 'noma sana', '2024-04-15 02:54:26', '2024-04-15 02:54:26', 36),
(13, 309, 'Giggy😂😂😂', '2024-04-21 14:02:17', '2024-04-21 14:02:17', 37),
(13, 311, '😀😀😀', '2024-04-21 14:05:41', '2024-04-21 14:05:41', 38),
(13, 310, '😀😀😀😀', '2024-04-21 14:05:59', '2024-04-21 14:05:59', 39),
(13, 314, '🔥🔥🔥', '2024-04-21 14:06:47', '2024-04-21 14:06:47', 40);

-- --------------------------------------------------------

--
-- Table structure for table `bang_update_likes`
--

CREATE TABLE `bang_update_likes` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bang_update_likes`
--

INSERT INTO `bang_update_likes` (`user_id`, `post_id`, `created_at`, `updated_at`) VALUES
(13, 2, NULL, NULL),
(13, 1, NULL, NULL),
(13, 14, NULL, NULL),
(6, 14, NULL, NULL),
(6, 13, NULL, NULL),
(6, 15, NULL, NULL),
(6, 16, NULL, NULL),
(39, 15, NULL, NULL),
(39, 2, NULL, NULL),
(39, 13, NULL, NULL),
(13, 18, NULL, NULL),
(13, 8, NULL, NULL),
(39, 8, NULL, NULL),
(13, 19, NULL, NULL),
(13, 36, NULL, NULL),
(38, 36, NULL, NULL),
(38, 25, NULL, NULL),
(6, 84, NULL, NULL),
(73, 88, NULL, NULL),
(73, 75, NULL, NULL),
(73, 74, NULL, NULL),
(73, 73, NULL, NULL),
(73, 72, NULL, NULL),
(13, 201, NULL, NULL),
(13, 236, NULL, NULL),
(6, 236, NULL, NULL),
(13, 234, NULL, NULL),
(6, 234, NULL, NULL),
(13, 41, NULL, NULL),
(13, 241, NULL, NULL),
(13, 66, NULL, NULL),
(13, 57, NULL, NULL),
(6, 208, NULL, NULL),
(13, 263, NULL, NULL),
(13, 72, NULL, NULL),
(13, 291, NULL, NULL),
(13, 290, NULL, NULL),
(13, 289, NULL, NULL),
(13, 252, NULL, NULL),
(13, 4, NULL, NULL),
(13, 204, NULL, NULL),
(13, 309, NULL, NULL),
(13, 311, NULL, NULL),
(13, 310, NULL, NULL),
(13, 314, NULL, NULL),
(13, 103, NULL, NULL),
(13, 102, NULL, NULL),
(13, 101, NULL, NULL),
(13, 99, NULL, NULL),
(13, 98, NULL, NULL),
(13, 94, NULL, NULL),
(13, 93, NULL, NULL),
(13, 92, NULL, NULL),
(13, 89, NULL, NULL),
(13, 65, NULL, NULL),
(13, 64, NULL, NULL),
(13, 54, NULL, NULL),
(13, 53, NULL, NULL),
(13, 52, NULL, NULL),
(13, 42, NULL, NULL),
(13, 40, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bang_update_views`
--

CREATE TABLE `bang_update_views` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `bang_update_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bang_update_views`
--

INSERT INTO `bang_update_views` (`id`, `user_id`, `bang_update_id`, `created_at`, `updated_at`) VALUES
(1, 13, 317, '2024-04-23 15:37:34', '2024-04-23 15:37:34'),
(2, 13, 313, '2024-04-23 15:37:34', '2024-04-23 15:37:34'),
(3, 13, 315, '2024-04-23 15:37:34', '2024-04-23 15:37:34'),
(4, 13, 314, '2024-04-23 15:37:34', '2024-04-23 15:37:34'),
(5, 13, 316, '2024-04-23 15:37:34', '2024-04-23 15:37:34'),
(6, 13, 308, '2024-04-23 16:00:48', '2024-04-23 16:00:48'),
(7, 13, 311, '2024-04-23 16:00:48', '2024-04-23 16:00:48'),
(8, 13, 312, '2024-04-23 16:00:48', '2024-04-23 16:00:48'),
(9, 13, 309, '2024-04-23 16:00:48', '2024-04-23 16:00:48'),
(10, 13, 310, '2024-04-23 16:00:48', '2024-04-23 16:00:48'),
(11, 98, 317, '2024-04-23 17:03:49', '2024-04-23 17:03:49'),
(12, 98, 315, '2024-04-23 17:03:49', '2024-04-23 17:03:49'),
(13, 98, 314, '2024-04-23 17:03:49', '2024-04-23 17:03:49'),
(14, 98, 316, '2024-04-23 17:03:49', '2024-04-23 17:03:49'),
(15, 98, 313, '2024-04-23 17:03:49', '2024-04-23 17:03:49'),
(16, 98, 311, '2024-04-23 17:03:52', '2024-04-23 17:03:52'),
(17, 98, 312, '2024-04-23 17:03:52', '2024-04-23 17:03:52'),
(18, 98, 310, '2024-04-23 17:03:52', '2024-04-23 17:03:52'),
(19, 98, 309, '2024-04-23 17:04:02', '2024-04-23 17:04:02'),
(20, 98, 307, '2024-04-23 17:04:02', '2024-04-23 17:04:02'),
(21, 98, 308, '2024-04-23 17:04:02', '2024-04-23 17:04:02'),
(22, 99, 313, '2024-04-23 18:01:37', '2024-04-23 18:01:37'),
(23, 99, 317, '2024-04-23 18:01:37', '2024-04-23 18:01:37'),
(24, 99, 315, '2024-04-23 18:01:37', '2024-04-23 18:01:37'),
(25, 99, 316, '2024-04-23 18:01:37', '2024-04-23 18:01:37'),
(26, 99, 314, '2024-04-23 18:01:37', '2024-04-23 18:01:37'),
(27, 99, 311, '2024-04-23 18:01:43', '2024-04-23 18:01:43'),
(28, 99, 310, '2024-04-23 18:01:43', '2024-04-23 18:01:43'),
(29, 99, 312, '2024-04-23 18:01:43', '2024-04-23 18:01:43'),
(30, 99, 308, '2024-04-23 19:03:48', '2024-04-23 19:03:48'),
(31, 99, 306, '2024-04-23 19:03:48', '2024-04-23 19:03:48'),
(32, 99, 305, '2024-04-23 19:03:48', '2024-04-23 19:03:48'),
(33, 99, 307, '2024-04-23 19:03:48', '2024-04-23 19:03:48'),
(34, 99, 309, '2024-04-23 19:03:48', '2024-04-23 19:03:48'),
(35, 99, 304, '2024-04-23 19:03:55', '2024-04-23 19:03:55'),
(36, 99, 302, '2024-04-23 19:03:57', '2024-04-23 19:03:57'),
(37, 99, 301, '2024-04-23 19:03:58', '2024-04-23 19:03:58'),
(38, 99, 300, '2024-04-23 19:04:00', '2024-04-23 19:04:00'),
(39, 99, 303, '2024-04-23 19:04:03', '2024-04-23 19:04:03'),
(40, 99, 281, '2024-04-23 19:04:32', '2024-04-23 19:04:32'),
(41, 99, 280, '2024-04-23 19:04:33', '2024-04-23 19:04:33'),
(42, 99, 269, '2024-04-23 19:04:38', '2024-04-23 19:04:38'),
(43, 99, 270, '2024-04-23 19:04:39', '2024-04-23 19:04:39'),
(44, 99, 264, '2024-04-23 19:04:49', '2024-04-23 19:04:49'),
(45, 99, 261, '2024-04-23 19:04:49', '2024-04-23 19:04:49'),
(46, 99, 260, '2024-04-23 19:04:49', '2024-04-23 19:04:49'),
(47, 99, 263, '2024-04-23 19:04:49', '2024-04-23 19:04:49'),
(48, 99, 265, '2024-04-23 19:04:49', '2024-04-23 19:04:49'),
(49, 99, 259, '2024-04-23 19:04:49', '2024-04-23 19:04:49'),
(50, 99, 297, '2024-04-23 19:05:16', '2024-04-23 19:05:16'),
(51, 99, 296, '2024-04-23 19:05:16', '2024-04-23 19:05:16'),
(52, 99, 298, '2024-04-23 19:05:16', '2024-04-23 19:05:16'),
(53, 99, 299, '2024-04-23 19:05:16', '2024-04-23 19:05:16'),
(54, 99, 295, '2024-04-23 19:05:19', '2024-04-23 19:05:19'),
(55, 99, 294, '2024-04-23 19:05:28', '2024-04-23 19:05:28'),
(56, 99, 293, '2024-04-23 19:05:28', '2024-04-23 19:05:28'),
(57, 99, 291, '2024-04-23 19:05:31', '2024-04-23 19:05:31'),
(58, 99, 292, '2024-04-23 19:05:31', '2024-04-23 19:05:31'),
(59, 99, 290, '2024-04-23 19:05:32', '2024-04-23 19:05:32'),
(60, 99, 267, '2024-04-23 19:05:36', '2024-04-23 19:05:36'),
(61, 99, 266, '2024-04-23 19:05:36', '2024-04-23 19:05:36'),
(62, 99, 252, '2024-04-23 19:05:37', '2024-04-23 19:05:37'),
(63, 99, 250, '2024-04-23 19:05:37', '2024-04-23 19:05:37'),
(64, 99, 243, '2024-04-23 19:05:38', '2024-04-23 19:05:38'),
(65, 99, 251, '2024-04-23 19:05:38', '2024-04-23 19:05:38'),
(66, 99, 242, '2024-04-23 19:05:40', '2024-04-23 19:05:40'),
(67, 99, 241, '2024-04-23 19:05:41', '2024-04-23 19:05:41'),
(68, 99, 240, '2024-04-23 19:05:42', '2024-04-23 19:05:42'),
(69, 13, 304, '2024-04-23 21:03:48', '2024-04-23 21:03:48'),
(70, 13, 307, '2024-04-23 21:03:48', '2024-04-23 21:03:48'),
(71, 13, 303, '2024-04-23 21:03:48', '2024-04-23 21:03:48'),
(72, 13, 306, '2024-04-23 21:03:48', '2024-04-23 21:03:48'),
(73, 13, 305, '2024-04-23 21:03:48', '2024-04-23 21:03:48'),
(74, 13, 302, '2024-04-23 21:28:25', '2024-04-23 21:28:25'),
(75, 14, 317, '2024-04-24 08:29:28', '2024-04-24 08:29:28'),
(76, 14, 315, '2024-04-24 08:29:28', '2024-04-24 08:29:28'),
(77, 14, 314, '2024-04-24 08:29:28', '2024-04-24 08:29:28'),
(78, 14, 313, '2024-04-24 08:29:28', '2024-04-24 08:29:28'),
(79, 14, 316, '2024-04-24 08:29:28', '2024-04-24 08:29:28'),
(80, 86, 316, '2024-04-24 09:36:07', '2024-04-24 09:36:07'),
(81, 86, 317, '2024-04-24 09:36:07', '2024-04-24 09:36:07'),
(82, 86, 313, '2024-04-24 09:36:07', '2024-04-24 09:36:07'),
(83, 86, 315, '2024-04-24 09:36:07', '2024-04-24 09:36:07'),
(84, 86, 314, '2024-04-24 09:36:08', '2024-04-24 09:36:08'),
(85, 13, 301, '2024-04-24 11:09:58', '2024-04-24 11:09:58'),
(86, 13, 299, '2024-04-24 11:09:58', '2024-04-24 11:09:58'),
(87, 13, 300, '2024-04-24 11:09:58', '2024-04-24 11:09:58'),
(88, 13, 297, '2024-04-24 11:09:58', '2024-04-24 11:09:58'),
(89, 13, 298, '2024-04-24 11:09:58', '2024-04-24 11:09:58'),
(90, 13, 296, '2024-04-24 11:10:05', '2024-04-24 11:10:05'),
(91, 13, 295, '2024-04-24 11:10:07', '2024-04-24 11:10:07'),
(92, 13, 293, '2024-04-24 18:54:11', '2024-04-24 18:54:11'),
(93, 13, 294, '2024-04-24 18:54:11', '2024-04-24 18:54:11'),
(94, 13, 291, '2024-04-24 18:54:11', '2024-04-24 18:54:11'),
(95, 13, 292, '2024-04-24 18:54:11', '2024-04-24 18:54:11'),
(96, 13, 290, '2024-04-24 18:54:11', '2024-04-24 18:54:11'),
(97, 13, 288, '2024-04-24 18:54:17', '2024-04-24 18:54:17'),
(98, 13, 289, '2024-04-24 18:54:17', '2024-04-24 18:54:17'),
(99, 108, 317, '2024-04-25 06:11:42', '2024-04-25 06:11:42'),
(100, 108, 316, '2024-04-25 06:11:42', '2024-04-25 06:11:42'),
(101, 108, 314, '2024-04-25 06:11:42', '2024-04-25 06:11:42'),
(102, 108, 313, '2024-04-25 06:11:42', '2024-04-25 06:11:42'),
(103, 108, 315, '2024-04-25 06:11:42', '2024-04-25 06:11:42'),
(104, 108, 312, '2024-04-25 06:11:56', '2024-04-25 06:11:56'),
(105, 108, 311, '2024-04-25 06:11:59', '2024-04-25 06:11:59'),
(106, 108, 310, '2024-04-25 06:13:29', '2024-04-25 06:13:29'),
(107, 108, 309, '2024-04-25 06:13:32', '2024-04-25 06:13:32'),
(108, 108, 308, '2024-04-25 06:14:02', '2024-04-25 06:14:02'),
(109, 108, 289, '2024-04-25 06:14:22', '2024-04-25 06:14:22'),
(110, 108, 288, '2024-04-25 06:14:37', '2024-04-25 06:14:37'),
(111, 108, 278, '2024-04-25 06:14:39', '2024-04-25 06:14:39'),
(112, 108, 277, '2024-04-25 06:14:39', '2024-04-25 06:14:39'),
(113, 86, 310, '2024-04-25 14:23:19', '2024-04-25 14:23:19'),
(114, 86, 311, '2024-04-25 14:23:19', '2024-04-25 14:23:19'),
(115, 86, 312, '2024-04-25 14:23:19', '2024-04-25 14:23:19'),
(116, 86, 309, '2024-04-25 14:23:19', '2024-04-25 14:23:19'),
(117, 86, 308, '2024-04-25 14:23:19', '2024-04-25 14:23:19'),
(118, 13, 287, '2024-04-25 14:27:53', '2024-04-25 14:27:53'),
(119, 13, 285, '2024-04-25 14:27:53', '2024-04-25 14:27:53'),
(120, 13, 286, '2024-04-25 14:27:53', '2024-04-25 14:27:53'),
(121, 13, 284, '2024-04-25 14:27:53', '2024-04-25 14:27:53'),
(122, 13, 283, '2024-04-25 14:27:53', '2024-04-25 14:27:53'),
(123, 86, 306, '2024-04-25 14:29:52', '2024-04-25 14:29:52'),
(124, 86, 307, '2024-04-25 14:29:52', '2024-04-25 14:29:52'),
(125, 86, 303, '2024-04-25 14:29:52', '2024-04-25 14:29:52'),
(126, 86, 305, '2024-04-25 14:29:52', '2024-04-25 14:29:52'),
(127, 86, 304, '2024-04-25 14:29:52', '2024-04-25 14:29:52'),
(128, 86, 302, '2024-04-25 14:29:57', '2024-04-25 14:29:57'),
(129, 86, 301, '2024-04-25 14:29:57', '2024-04-25 14:29:57'),
(130, 109, 316, '2024-04-25 14:32:02', '2024-04-25 14:32:02'),
(131, 109, 314, '2024-04-25 14:32:02', '2024-04-25 14:32:02'),
(132, 109, 313, '2024-04-25 14:32:02', '2024-04-25 14:32:02'),
(133, 109, 315, '2024-04-25 14:32:02', '2024-04-25 14:32:02'),
(134, 109, 317, '2024-04-25 14:32:02', '2024-04-25 14:32:02'),
(135, 109, 312, '2024-04-25 14:32:05', '2024-04-25 14:32:05'),
(136, 109, 311, '2024-04-25 14:32:05', '2024-04-25 14:32:05'),
(137, 109, 310, '2024-04-25 14:32:06', '2024-04-25 14:32:06'),
(138, 86, 300, '2024-04-25 14:34:28', '2024-04-25 14:34:28'),
(139, 86, 297, '2024-04-25 14:34:28', '2024-04-25 14:34:28'),
(140, 86, 296, '2024-04-25 14:34:28', '2024-04-25 14:34:28'),
(141, 86, 298, '2024-04-25 14:34:28', '2024-04-25 14:34:28'),
(142, 86, 299, '2024-04-25 14:34:28', '2024-04-25 14:34:28'),
(143, 86, 294, '2024-04-25 14:41:39', '2024-04-25 14:41:39'),
(144, 86, 293, '2024-04-25 14:41:39', '2024-04-25 14:41:39'),
(145, 86, 295, '2024-04-25 14:41:39', '2024-04-25 14:41:39'),
(146, 86, 292, '2024-04-25 14:41:39', '2024-04-25 14:41:39'),
(147, 86, 291, '2024-04-25 14:41:39', '2024-04-25 14:41:39'),
(148, 86, 290, '2024-04-25 14:42:00', '2024-04-25 14:42:00'),
(149, 86, 289, '2024-04-25 14:42:00', '2024-04-25 14:42:00'),
(150, 111, 313, '2024-04-25 15:40:32', '2024-04-25 15:40:32'),
(151, 111, 317, '2024-04-25 15:40:33', '2024-04-25 15:40:33'),
(152, 111, 315, '2024-04-25 15:40:33', '2024-04-25 15:40:33'),
(153, 111, 316, '2024-04-25 15:40:33', '2024-04-25 15:40:33'),
(154, 111, 314, '2024-04-25 15:40:33', '2024-04-25 15:40:33'),
(155, 111, 312, '2024-04-25 15:40:38', '2024-04-25 15:40:38'),
(156, 111, 311, '2024-04-25 15:40:39', '2024-04-25 15:40:39'),
(157, 111, 310, '2024-04-25 15:40:43', '2024-04-25 15:40:43'),
(158, 111, 309, '2024-04-25 15:40:45', '2024-04-25 15:40:45'),
(159, 111, 308, '2024-04-25 15:40:49', '2024-04-25 15:40:49'),
(160, 13, 278, '2024-04-27 07:24:32', '2024-04-27 07:24:32'),
(161, 13, 282, '2024-04-27 07:24:32', '2024-04-27 07:24:32'),
(162, 13, 280, '2024-04-27 07:24:32', '2024-04-27 07:24:32'),
(163, 13, 281, '2024-04-27 07:24:32', '2024-04-27 07:24:32'),
(164, 13, 279, '2024-04-27 07:24:32', '2024-04-27 07:24:32'),
(165, 13, 277, '2024-04-27 07:24:35', '2024-04-27 07:24:35'),
(166, 13, 276, '2024-04-27 07:24:35', '2024-04-27 07:24:35'),
(167, 13, 275, '2024-04-27 07:25:23', '2024-04-27 07:25:23'),
(168, 13, 272, '2024-04-27 07:25:23', '2024-04-27 07:25:23'),
(169, 13, 274, '2024-04-27 07:25:23', '2024-04-27 07:25:23'),
(170, 13, 271, '2024-04-27 07:25:23', '2024-04-27 07:25:23'),
(171, 13, 273, '2024-04-27 07:25:23', '2024-04-27 07:25:23'),
(172, 13, 269, '2024-04-27 07:25:26', '2024-04-27 07:25:26'),
(173, 13, 270, '2024-04-27 07:25:26', '2024-04-27 07:25:26'),
(174, 13, 268, '2024-04-27 07:25:55', '2024-04-27 07:25:55'),
(175, 13, 267, '2024-04-27 08:33:36', '2024-04-27 08:33:36'),
(176, 13, 266, '2024-04-27 08:33:36', '2024-04-27 08:33:36'),
(177, 13, 264, '2024-04-27 08:33:36', '2024-04-27 08:33:36'),
(178, 13, 265, '2024-04-27 08:33:36', '2024-04-27 08:33:36'),
(179, 13, 263, '2024-04-27 08:33:36', '2024-04-27 08:33:36'),
(180, 13, 259, '2024-04-27 09:15:12', '2024-04-27 09:15:12'),
(181, 13, 261, '2024-04-27 09:15:12', '2024-04-27 09:15:12'),
(182, 13, 262, '2024-04-27 09:15:12', '2024-04-27 09:15:12'),
(183, 13, 258, '2024-04-27 09:15:12', '2024-04-27 09:15:12'),
(184, 13, 260, '2024-04-27 09:15:12', '2024-04-27 09:15:12'),
(185, 13, 256, '2024-04-27 09:15:34', '2024-04-27 09:15:34'),
(186, 13, 255, '2024-04-27 09:15:34', '2024-04-27 09:15:34'),
(187, 13, 257, '2024-04-27 09:15:34', '2024-04-27 09:15:34'),
(188, 13, 253, '2024-04-27 09:15:34', '2024-04-27 09:15:34'),
(189, 13, 254, '2024-04-27 09:15:34', '2024-04-27 09:15:34'),
(190, 6, 315, '2024-04-27 15:06:02', '2024-04-27 15:06:02'),
(191, 6, 314, '2024-04-27 15:06:02', '2024-04-27 15:06:02'),
(192, 6, 317, '2024-04-27 15:06:02', '2024-04-27 15:06:02'),
(193, 6, 313, '2024-04-27 15:06:03', '2024-04-27 15:06:03'),
(194, 6, 316, '2024-04-27 15:06:03', '2024-04-27 15:06:03'),
(195, 6, 312, '2024-04-27 15:07:45', '2024-04-27 15:07:45'),
(196, 6, 311, '2024-04-27 15:07:47', '2024-04-27 15:07:47'),
(197, 6, 310, '2024-04-27 15:08:17', '2024-04-27 15:08:17'),
(198, 6, 309, '2024-04-27 15:08:25', '2024-04-27 15:08:25'),
(199, 6, 307, '2024-04-27 16:25:41', '2024-04-27 16:25:41'),
(200, 6, 305, '2024-04-27 16:25:41', '2024-04-27 16:25:41'),
(201, 6, 308, '2024-04-27 16:25:41', '2024-04-27 16:25:41'),
(202, 6, 306, '2024-04-27 16:25:41', '2024-04-27 16:25:41'),
(203, 6, 304, '2024-04-27 16:25:41', '2024-04-27 16:25:41'),
(204, 6, 303, '2024-04-27 16:25:45', '2024-04-27 16:25:45'),
(205, 6, 302, '2024-04-27 16:25:50', '2024-04-27 16:25:50'),
(206, 6, 301, '2024-04-27 16:25:54', '2024-04-27 16:25:54'),
(207, 6, 300, '2024-04-27 16:27:15', '2024-04-27 16:27:15'),
(208, 6, 296, '2024-04-27 16:27:15', '2024-04-27 16:27:15'),
(209, 6, 299, '2024-04-27 16:27:15', '2024-04-27 16:27:15'),
(210, 6, 297, '2024-04-27 16:27:15', '2024-04-27 16:27:15'),
(211, 6, 295, '2024-04-27 16:27:15', '2024-04-27 16:27:15'),
(212, 6, 298, '2024-04-27 16:27:15', '2024-04-27 16:27:15'),
(213, 6, 294, '2024-04-27 16:27:15', '2024-04-27 16:27:15'),
(214, 13, 248, '2024-04-29 02:44:09', '2024-04-29 02:44:09'),
(215, 13, 252, '2024-04-29 02:44:09', '2024-04-29 02:44:09'),
(216, 13, 250, '2024-04-29 02:44:09', '2024-04-29 02:44:09'),
(217, 13, 251, '2024-04-29 02:44:09', '2024-04-29 02:44:09'),
(218, 13, 249, '2024-04-29 02:44:10', '2024-04-29 02:44:10'),
(219, 13, 247, '2024-04-29 02:44:14', '2024-04-29 02:44:14'),
(220, 13, 246, '2024-04-29 02:44:15', '2024-04-29 02:44:15'),
(221, 13, 245, '2024-04-29 02:44:16', '2024-04-29 02:44:16'),
(222, 13, 244, '2024-04-29 02:44:18', '2024-04-29 02:44:18'),
(223, 86, 288, '2024-04-29 08:08:05', '2024-04-29 08:08:05'),
(224, 86, 284, '2024-04-29 08:08:05', '2024-04-29 08:08:05'),
(225, 86, 286, '2024-04-29 08:08:05', '2024-04-29 08:08:05'),
(226, 86, 285, '2024-04-29 08:08:05', '2024-04-29 08:08:05'),
(227, 86, 287, '2024-04-29 08:08:07', '2024-04-29 08:08:07');

-- --------------------------------------------------------

--
-- Table structure for table `battle_comments`
--

CREATE TABLE `battle_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `battles_id` bigint(20) UNSIGNED NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `battle_comments`
--

INSERT INTO `battle_comments` (`id`, `user_id`, `battles_id`, `body`, `created_at`, `updated_at`) VALUES
(6, 29, 55, 'ifm', '2024-02-18 06:11:56', '2024-02-18 06:11:56'),
(8, 13, 64, 'Kiba', '2024-02-18 16:45:09', '2024-02-18 16:45:09'),
(9, 13, 57, 'bbbb', '2024-02-19 11:22:25', '2024-02-19 11:22:25'),
(10, 36, 55, 'mtt kapoa', '2024-02-20 14:26:54', '2024-02-20 14:26:54'),
(11, 13, 55, 'B katisha sana', '2024-02-20 19:03:58', '2024-02-20 19:03:58'),
(12, 38, 58, 'B nd Uzi mkal zaidi🤣🤣', '2024-02-26 09:36:49', '2024-02-26 09:36:49'),
(13, 42, 55, 'jaman A kanikosha 😍😍😍', '2024-02-26 16:38:41', '2024-02-26 16:38:41'),
(14, 42, 58, 'Simba for life', '2024-02-26 16:39:41', '2024-02-26 16:39:41'),
(15, 42, 60, 'hiyo ana degree', '2024-02-26 16:40:09', '2024-02-26 16:40:09'),
(16, 13, 55, 'david😆😆😆', '2024-02-26 17:33:46', '2024-02-26 17:33:46'),
(17, 13, 58, 'Uzi wa Yanga ni wa kuotea mbali hata team za ulaya haziukamati😀😀😀', '2024-02-26 17:35:29', '2024-02-26 17:35:29'),
(18, 43, 60, 'baba levooooo', '2024-02-26 17:46:22', '2024-02-26 17:46:22'),
(19, 49, 64, 'simba la Simba dangotee', '2024-02-26 18:14:42', '2024-02-26 18:14:42'),
(20, 64, 55, 'ifm ni hatareee', '2024-02-27 12:42:05', '2024-02-27 12:42:05'),
(21, 74, 58, 'yanga wanatisha sana', '2024-02-28 10:25:08', '2024-02-28 10:25:08'),
(22, 13, 60, 'baba levo 😆', '2024-03-07 00:14:16', '2024-03-07 00:14:16'),
(23, 13, 64, 'hatari', '2024-03-19 16:38:40', '2024-03-19 16:38:40'),
(24, 6, 58, 'simba', '2024-03-23 14:24:17', '2024-03-23 14:24:17'),
(25, 6, 60, 'nimaa', '2024-03-23 14:40:18', '2024-03-23 14:40:18'),
(28, 6, 64, 'good 2', '2024-03-23 15:20:08', '2024-03-23 15:20:08'),
(29, 13, 68, 'A noma', '2024-03-23 17:26:26', '2024-03-23 17:26:26'),
(30, 13, 57, 'ccccc', '2024-03-26 10:44:32', '2024-03-26 10:44:32'),
(31, 11, 68, 'nice', '2024-03-28 12:13:11', '2024-03-28 12:13:11'),
(32, 6, 64, 'Hello', '2024-04-20 18:58:33', '2024-04-20 18:58:33');

-- --------------------------------------------------------

--
-- Table structure for table `battle_comment_replies`
--

CREATE TABLE `battle_comment_replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `body` text DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `battle_comment_replies`
--

INSERT INTO `battle_comment_replies` (`id`, `body`, `user_id`, `comment_id`, `created_at`, `updated_at`) VALUES
(1, '@pacoljoseph sio kweli mkuu😀', 13, 18, '2024-03-20 14:14:14', '2024-03-20 14:14:14'),
(2, '@pacoljoseph mwijaku ni chawa kupitiliza', 13, 18, '2024-03-20 14:39:40', '2024-03-20 14:39:40'),
(3, '@pacoljoseph okay', 13, 18, '2024-03-20 15:12:25', '2024-03-20 15:12:25'),
(4, '@pacoljoseph hivi', 13, 18, '2024-03-20 15:17:48', '2024-03-20 15:17:48'),
(5, '@Ramadhanimagari kabisa', 13, 21, '2024-03-20 15:24:01', '2024-03-20 15:24:01'),
(6, '@Ghost nomaaa', 6, 23, '2024-03-23 14:35:04', '2024-03-23 14:35:04'),
(7, 'nomaa', 6, 23, '2024-03-23 14:35:19', '2024-03-23 14:35:19'),
(12, '@Ghost nice', 6, 8, '2024-03-23 15:12:45', '2024-03-23 15:12:45'),
(15, '@Ghost 🔥🔥🔥', 13, 29, '2024-03-25 19:01:13', '2024-03-25 19:01:13'),
(16, '@Ghost nice', 13, 9, '2024-03-26 10:44:46', '2024-03-26 10:44:46');

-- --------------------------------------------------------

--
-- Table structure for table `battle_likes`
--

CREATE TABLE `battle_likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `battle_id` bigint(20) UNSIGNED NOT NULL,
  `like_type` enum('A','B') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `battle_likes`
--

INSERT INTO `battle_likes` (`id`, `user_id`, `battle_id`, `like_type`, `created_at`, `updated_at`) VALUES
(7, 29, 55, 'A', '2024-02-18 10:04:17', '2024-02-18 10:04:17'),
(11, 13, 57, 'A', '2024-02-18 16:50:19', '2024-02-18 16:50:19'),
(12, 13, 58, 'B', '2024-02-18 16:50:26', '2024-02-18 16:50:26'),
(13, 36, 57, 'B', '2024-02-20 13:57:52', '2024-02-20 13:57:52'),
(14, 36, 55, 'B', '2024-02-20 14:26:42', '2024-02-20 14:26:42'),
(15, 6, 55, 'A', '2024-02-25 08:35:28', '2024-02-25 08:35:28'),
(17, 13, 55, 'B', '2024-02-25 19:22:50', '2024-02-25 19:22:50'),
(18, 38, 58, 'B', '2024-02-26 09:36:24', '2024-02-26 09:36:24'),
(20, 42, 55, 'A', '2024-02-26 16:38:17', '2024-02-26 16:38:17'),
(21, 42, 57, 'B', '2024-02-26 16:39:17', '2024-02-26 16:39:17'),
(22, 42, 58, 'A', '2024-02-26 16:39:29', '2024-02-26 16:39:29'),
(23, 42, 60, 'B', '2024-02-26 16:39:59', '2024-02-26 16:39:59'),
(24, 43, 55, 'B', '2024-02-26 17:45:13', '2024-02-26 17:45:13'),
(25, 43, 58, 'A', '2024-02-26 17:46:08', '2024-02-26 17:46:08'),
(26, 43, 60, 'A', '2024-02-26 17:46:11', '2024-02-26 17:46:11'),
(27, 44, 55, 'A', '2024-02-26 17:49:49', '2024-02-26 17:49:49'),
(28, 45, 55, 'A', '2024-02-26 17:53:58', '2024-02-26 17:53:58'),
(30, 46, 57, 'A', '2024-02-26 17:58:38', '2024-02-26 17:58:38'),
(32, 46, 55, 'A', '2024-02-26 17:59:33', '2024-02-26 17:59:33'),
(35, 48, 57, 'A', '2024-02-26 18:10:18', '2024-02-26 18:10:18'),
(36, 48, 58, 'A', '2024-02-26 18:10:19', '2024-02-26 18:10:19'),
(37, 48, 60, 'A', '2024-02-26 18:10:21', '2024-02-26 18:10:21'),
(40, 48, 64, 'B', '2024-02-26 18:10:28', '2024-02-26 18:10:28'),
(44, 49, 57, 'A', '2024-02-26 18:14:16', '2024-02-26 18:14:16'),
(45, 49, 58, 'A', '2024-02-26 18:14:19', '2024-02-26 18:14:19'),
(46, 49, 60, 'A', '2024-02-26 18:14:20', '2024-02-26 18:14:20'),
(48, 49, 64, 'B', '2024-02-26 18:14:48', '2024-02-26 18:14:48'),
(52, 50, 57, 'A', '2024-02-26 18:18:38', '2024-02-26 18:18:38'),
(53, 50, 58, 'A', '2024-02-26 18:18:41', '2024-02-26 18:18:41'),
(55, 50, 64, 'A', '2024-02-26 18:18:45', '2024-02-26 18:18:45'),
(57, 50, 60, 'A', '2024-02-26 18:18:47', '2024-02-26 18:18:47'),
(59, 50, 55, 'A', '2024-02-26 18:21:33', '2024-02-26 18:21:33'),
(60, 51, 55, 'A', '2024-02-26 18:31:48', '2024-02-26 18:31:48'),
(61, 51, 58, 'A', '2024-02-26 18:31:51', '2024-02-26 18:31:51'),
(62, 51, 60, 'A', '2024-02-26 18:31:53', '2024-02-26 18:31:53'),
(64, 51, 64, 'A', '2024-02-26 18:31:56', '2024-02-26 18:31:56'),
(65, 51, 57, 'A', '2024-02-26 18:31:57', '2024-02-26 18:31:57'),
(68, 52, 55, 'A', '2024-02-26 18:38:17', '2024-02-26 18:38:17'),
(69, 52, 57, 'A', '2024-02-26 18:38:19', '2024-02-26 18:38:19'),
(70, 52, 58, 'A', '2024-02-26 18:38:23', '2024-02-26 18:38:23'),
(71, 52, 60, 'A', '2024-02-26 18:38:24', '2024-02-26 18:38:24'),
(73, 52, 64, 'B', '2024-02-26 18:38:29', '2024-02-26 18:38:29'),
(78, 53, 57, 'B', '2024-02-26 18:42:47', '2024-02-26 18:42:47'),
(79, 53, 58, 'A', '2024-02-26 18:42:50', '2024-02-26 18:42:50'),
(80, 53, 60, 'B', '2024-02-26 18:42:51', '2024-02-26 18:42:51'),
(82, 53, 64, 'B', '2024-02-26 18:42:56', '2024-02-26 18:42:56'),
(86, 53, 55, 'A', '2024-02-26 18:43:01', '2024-02-26 18:43:01'),
(88, 54, 57, 'B', '2024-02-26 18:47:24', '2024-02-26 18:47:24'),
(89, 54, 58, 'A', '2024-02-26 18:47:30', '2024-02-26 18:47:30'),
(90, 54, 60, 'B', '2024-02-26 18:47:32', '2024-02-26 18:47:32'),
(93, 54, 64, 'B', '2024-02-26 18:47:40', '2024-02-26 18:47:40'),
(95, 55, 55, 'B', '2024-02-26 19:15:24', '2024-02-26 19:15:24'),
(96, 55, 57, 'A', '2024-02-26 19:15:36', '2024-02-26 19:15:36'),
(97, 55, 58, 'A', '2024-02-26 19:15:49', '2024-02-26 19:15:49'),
(98, 55, 60, 'A', '2024-02-26 19:15:58', '2024-02-26 19:15:58'),
(99, 60, 55, 'A', '2024-02-27 12:20:14', '2024-02-27 12:20:14'),
(100, 60, 57, 'A', '2024-02-27 12:20:15', '2024-02-27 12:20:15'),
(101, 60, 58, 'A', '2024-02-27 12:20:20', '2024-02-27 12:20:20'),
(102, 60, 60, 'B', '2024-02-27 12:20:22', '2024-02-27 12:20:22'),
(104, 60, 64, 'B', '2024-02-27 12:20:28', '2024-02-27 12:20:28'),
(107, 61, 55, 'A', '2024-02-27 12:26:25', '2024-02-27 12:26:25'),
(108, 61, 57, 'B', '2024-02-27 12:26:27', '2024-02-27 12:26:27'),
(109, 61, 58, 'A', '2024-02-27 12:26:31', '2024-02-27 12:26:31'),
(110, 61, 60, 'B', '2024-02-27 12:26:33', '2024-02-27 12:26:33'),
(112, 61, 64, 'B', '2024-02-27 12:26:37', '2024-02-27 12:26:37'),
(115, 62, 55, 'A', '2024-02-27 12:32:08', '2024-02-27 12:32:08'),
(116, 62, 57, 'B', '2024-02-27 12:32:12', '2024-02-27 12:32:12'),
(117, 62, 58, 'A', '2024-02-27 12:32:13', '2024-02-27 12:32:13'),
(118, 62, 60, 'B', '2024-02-27 12:32:15', '2024-02-27 12:32:15'),
(120, 62, 64, 'B', '2024-02-27 12:32:21', '2024-02-27 12:32:21'),
(123, 63, 55, 'A', '2024-02-27 12:37:00', '2024-02-27 12:37:00'),
(124, 63, 58, 'A', '2024-02-27 12:37:06', '2024-02-27 12:37:06'),
(125, 63, 57, 'A', '2024-02-27 12:37:06', '2024-02-27 12:37:06'),
(126, 63, 60, 'A', '2024-02-27 12:37:11', '2024-02-27 12:37:11'),
(128, 63, 64, 'B', '2024-02-27 12:37:16', '2024-02-27 12:37:16'),
(132, 64, 57, 'B', '2024-02-27 12:41:03', '2024-02-27 12:41:03'),
(133, 64, 58, 'B', '2024-02-27 12:41:04', '2024-02-27 12:41:04'),
(134, 64, 60, 'A', '2024-02-27 12:41:08', '2024-02-27 12:41:08'),
(136, 64, 64, 'B', '2024-02-27 12:41:11', '2024-02-27 12:41:11'),
(139, 64, 55, 'B', '2024-02-27 12:41:17', '2024-02-27 12:41:17'),
(140, 65, 57, 'A', '2024-02-27 12:46:33', '2024-02-27 12:46:33'),
(141, 65, 55, 'A', '2024-02-27 12:46:37', '2024-02-27 12:46:37'),
(142, 65, 58, 'A', '2024-02-27 12:46:40', '2024-02-27 12:46:40'),
(143, 65, 60, 'B', '2024-02-27 12:46:41', '2024-02-27 12:46:41'),
(145, 65, 64, 'B', '2024-02-27 12:46:45', '2024-02-27 12:46:45'),
(148, 66, 55, 'A', '2024-02-27 12:51:32', '2024-02-27 12:51:32'),
(149, 67, 55, 'A', '2024-02-27 12:58:17', '2024-02-27 12:58:17'),
(150, 67, 57, 'A', '2024-02-27 12:58:32', '2024-02-27 12:58:32'),
(151, 67, 58, 'A', '2024-02-27 12:58:35', '2024-02-27 12:58:35'),
(152, 67, 60, 'A', '2024-02-27 12:58:36', '2024-02-27 12:58:36'),
(154, 67, 64, 'A', '2024-02-27 12:58:39', '2024-02-27 12:58:39'),
(157, 69, 55, 'B', '2024-02-27 13:05:12', '2024-02-27 13:05:12'),
(158, 69, 57, 'A', '2024-02-27 13:05:16', '2024-02-27 13:05:16'),
(159, 69, 58, 'B', '2024-02-27 13:05:17', '2024-02-27 13:05:17'),
(160, 69, 60, 'B', '2024-02-27 13:05:18', '2024-02-27 13:05:18'),
(162, 69, 64, 'B', '2024-02-27 13:05:21', '2024-02-27 13:05:21'),
(165, 70, 58, 'A', '2024-02-27 13:10:11', '2024-02-27 13:10:11'),
(166, 70, 57, 'A', '2024-02-27 13:10:13', '2024-02-27 13:10:13'),
(167, 70, 55, 'A', '2024-02-27 13:10:16', '2024-02-27 13:10:16'),
(169, 71, 55, 'A', '2024-02-27 13:14:09', '2024-02-27 13:14:09'),
(170, 71, 57, 'A', '2024-02-27 13:14:10', '2024-02-27 13:14:10'),
(171, 71, 58, 'B', '2024-02-27 13:14:14', '2024-02-27 13:14:14'),
(172, 71, 60, 'B', '2024-02-27 13:14:15', '2024-02-27 13:14:15'),
(174, 71, 64, 'B', '2024-02-27 13:14:19', '2024-02-27 13:14:19'),
(175, 72, 55, 'A', '2024-02-27 13:19:20', '2024-02-27 13:19:20'),
(176, 72, 57, 'A', '2024-02-27 13:19:21', '2024-02-27 13:19:21'),
(177, 72, 60, 'B', '2024-02-27 13:19:24', '2024-02-27 13:19:24'),
(178, 72, 58, 'B', '2024-02-27 13:19:24', '2024-02-27 13:19:24'),
(180, 72, 64, 'B', '2024-02-27 13:19:26', '2024-02-27 13:19:26'),
(182, 73, 55, 'A', '2024-02-27 13:24:21', '2024-02-27 13:24:21'),
(183, 73, 57, 'A', '2024-02-27 13:24:24', '2024-02-27 13:24:24'),
(184, 73, 58, 'B', '2024-02-27 13:24:25', '2024-02-27 13:24:25'),
(185, 73, 60, 'B', '2024-02-27 13:24:29', '2024-02-27 13:24:29'),
(187, 73, 64, 'A', '2024-02-27 13:24:31', '2024-02-27 13:24:31'),
(191, 74, 58, 'B', '2024-02-28 10:24:58', '2024-02-28 10:24:58'),
(192, 74, 60, 'A', '2024-02-28 10:25:24', '2024-02-28 10:25:24'),
(193, 74, 64, 'B', '2024-02-28 11:33:40', '2024-02-28 11:33:40'),
(195, 81, 55, 'A', '2024-03-04 11:14:53', '2024-03-04 11:14:53'),
(196, 13, 68, 'A', '2024-03-04 18:12:28', '2024-03-04 18:12:28'),
(197, 6, 68, 'B', '2024-03-12 08:33:00', '2024-03-12 08:33:00'),
(198, 13, 60, 'A', '2024-03-26 10:45:12', '2024-03-26 10:45:12'),
(199, 36, 64, 'B', '2024-04-01 23:04:49', '2024-04-01 23:04:49'),
(200, 36, 60, 'B', '2024-04-02 06:51:07', '2024-04-02 06:51:07'),
(201, 13, 64, 'B', '2024-04-09 19:39:24', '2024-04-09 19:39:24'),
(202, 6, 57, 'B', '2024-04-13 17:35:15', '2024-04-13 17:35:15');

-- --------------------------------------------------------

--
-- Table structure for table `blocked_users`
--

CREATE TABLE `blocked_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_blocked_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blocked_users`
--

INSERT INTO `blocked_users` (`id`, `user_blocked_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 13, 13, '2024-04-24 16:40:13', '2024-04-24 16:40:13');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Angelo Kilback', 'angelo-kilback', '2023-05-13 02:11:51', '2023-05-13 02:11:51'),
(2, 'Okey Vandervort', 'okey-vandervort', '2023-05-13 02:11:51', '2023-05-13 02:11:51'),
(3, 'Rafaela McCullough', 'rafaela-mccullough', '2023-05-13 02:11:51', '2023-05-13 02:11:51'),
(4, 'Jeff Bahringer', 'jeff-bahringer', '2023-05-13 02:11:51', '2023-05-13 02:11:51'),
(5, 'Jakob Gerhold', 'jakob-gerhold', '2023-05-13 02:11:51', '2023-05-13 02:11:51'),
(6, 'Imogene Pfannerstill Jr.', 'imogene-pfannerstill-jr', '2023-05-13 02:11:51', '2023-05-13 02:11:51'),
(7, 'Dr. Bartholome Swaniawski', 'dr-bartholome-swaniawski', '2023-05-13 02:11:51', '2023-05-13 02:11:51'),
(8, 'Timmothy Steuber PhD', 'timmothy-steuber-phd', '2023-05-13 02:11:52', '2023-05-13 02:11:52');

-- --------------------------------------------------------

--
-- Table structure for table `challenges`
--

CREATE TABLE `challenges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `challenge_img` varchar(191) NOT NULL,
  `body` text DEFAULT NULL,
  `type` enum('image','video') NOT NULL,
  `public_id` varchar(191) DEFAULT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `challenges`
--

INSERT INTO `challenges` (`id`, `post_id`, `user_id`, `challenge_img`, `body`, `type`, `public_id`, `confirmed`, `created_at`, `updated_at`) VALUES
(20, 14, 3, 'challenges/AzK6C0ksEpvTlQVEyIejrIvUBxWlN5e6Ob1HoErS.png', NULL, 'image', NULL, 1, '2023-07-25 16:39:02', '2023-07-25 16:39:02'),
(21, 13, 1, 'challenges/4qImOnF6jlOG4Cg58lbV9JKOyBnb1h8wIZtzs3xR.png', NULL, 'image', NULL, 0, '2023-07-27 16:27:49', '2023-07-27 16:27:49'),
(22, 13, 1, 'challenges/I9EXlFiTk7FfDJ7BM4j2g93SjJS85B8YIvLEZ055.png', NULL, 'image', NULL, 0, '2023-07-27 16:32:57', '2023-07-27 16:32:57'),
(23, 13, 1, 'challenges/b4lPFEGRUME17CLnxuNA4VT6uNyrwk3pHVZWeXDk.png', NULL, 'image', NULL, 0, '2023-07-27 16:49:36', '2023-07-27 16:49:36'),
(24, 13, 1, 'challenges/Vse2WEpnEYVB1Z5trOn368IV2FgwhCBg2TJFCEFB.png', NULL, 'image', NULL, 0, '2023-07-27 16:57:23', '2023-07-27 16:57:23'),
(25, 13, 1, 'challenges/2AADKxddVjSZ7Oa0930T8RbxCNITT482Gbofy2Wo.png', NULL, 'image', NULL, 1, '2023-07-27 16:58:21', '2023-07-27 16:58:21'),
(26, 13, 1, 'challenges/Xm3ROhq7I8NV6Tuwo7XPUpjUlFxrmnTiWAzVhjyb.png', NULL, 'image', NULL, 0, '2023-07-27 17:00:31', '2023-07-27 17:00:31'),
(27, 13, 1, 'challenges/g1BwAwJv9nKf37Qlgcok4ybQNIvnNEHqfJ9cwdvh.png', NULL, 'image', NULL, 0, '2023-07-27 17:03:24', '2023-07-27 17:03:24'),
(28, 13, 1, 'challenges/5TPSwBWbZvmlpiD2t5cIedSclEP5DzSeVrIDMc3c.png', NULL, 'image', NULL, 1, '2023-07-27 18:15:19', '2023-07-27 18:15:19'),
(29, 13, 1, 'challenges/OLv9B1OFxrD5b2qNiyOmVF8EKWvbHlOvXc0XPDtV.png', NULL, 'image', NULL, 0, '2023-07-27 18:20:28', '2023-07-27 18:20:28'),
(30, 13, 1, 'challenges/8JMskDQ2Ht56PvFlb0EQ2OUNtVH1apncGPwqGdfr.png', NULL, 'image', NULL, 0, '2023-07-27 18:31:25', '2023-07-27 18:31:25'),
(31, 13, 1, 'challenges/J4U69GlXsOc2vYU3Wrls1PGJkjRwNIHAWtS45q3w.png', NULL, 'image', NULL, 0, '2023-07-31 18:41:02', '2023-07-31 18:41:02'),
(32, 13, 1, 'challenges/uuOmGhC5nMLDjmku4vSgvT3iVTg1F6O42ZrpxOn6.png', NULL, 'image', NULL, 0, '2023-07-31 18:41:03', '2023-07-31 18:41:03'),
(33, 14, 1, 'challenges/H7pk7zM840x8pITEnRgPcJ8l6OyNWWNlT3IHeC4L.png', NULL, 'image', NULL, 0, '2023-07-31 18:42:33', '2023-07-31 18:42:33'),
(34, 800, 6, 'challenges/pnqUFE2Go9Gic5cukdLJBhBfQF7atPcTgOuoG7j8.png', NULL, 'image', NULL, 0, '2024-03-04 09:10:40', '2024-03-04 09:10:40'),
(35, 800, 6, 'challenges/Dg7ixeNX8WWaY3THyBLDelsWdYBg9xYzv0ioMd4c.png', NULL, 'image', NULL, 0, '2024-03-04 09:14:23', '2024-03-04 09:14:23'),
(36, 701, 6, 'challenges/XtK3LGm9EcJCwcOmFIm5ihf874Btghom0t48oUP7.png', NULL, 'image', NULL, 0, '2024-03-04 16:31:00', '2024-03-04 16:31:00'),
(37, 692, 6, 'challenges/mOWavcwymttoaEH1kdJFDcmxohFOLJw29sHvtWWK.png', NULL, 'image', NULL, 0, '2024-03-04 16:38:53', '2024-03-04 16:38:53'),
(38, 701, 6, 'challenges/ruSsPf15ifmdDScH5o6BC51MQIXNWVNxo2NH7j5b.png', NULL, 'image', NULL, 0, '2024-03-04 16:45:18', '2024-03-04 16:45:18'),
(39, 700, 6, 'challenges/RdulwAiHXbAYbH8hBaSLR03mLJUSVo7tQmoUsVuB.png', NULL, 'image', NULL, 1, '2024-03-04 16:46:41', '2024-03-04 16:58:50');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `post_id`, `body`, `created_at`, `updated_at`) VALUES
(14, 11, 28, 'hello', '2023-09-18 16:56:09', '2023-09-18 16:56:09'),
(15, 11, 33, 'hhello', '2023-09-18 17:40:04', '2023-09-18 17:40:04'),
(16, 11, 33, 'second', '2023-09-18 17:40:19', '2023-09-18 17:40:19'),
(17, 11, 39, 'comment one', '2023-09-18 18:36:07', '2023-09-18 18:36:07'),
(18, 13, 55, 'nice', '2023-09-19 16:06:21', '2023-09-19 16:06:21'),
(19, 13, 55, 'nice', '2023-09-19 16:06:22', '2023-09-19 16:06:22'),
(20, 13, 60, 'B unyama sana😲😲😀', '2023-09-19 16:16:27', '2023-09-19 16:16:27'),
(27, 13, 33, 'b', '2024-01-13 19:42:17', '2024-01-13 19:42:17'),
(50, 13, 178, 'b', '2024-01-16 09:45:31', '2024-01-16 09:45:31'),
(51, 13, 123, 'nice', '2024-01-16 09:45:46', '2024-01-16 09:45:46'),
(52, 13, 123, 'nice', '2024-01-16 09:45:47', '2024-01-16 09:45:47'),
(54, 13, 254, 'bbb', '2024-01-17 08:38:16', '2024-01-17 08:38:16'),
(67, 13, 203, 'bbbb', '2024-01-26 17:38:30', '2024-01-26 17:38:30'),
(70, 29, 396, 'true', '2024-02-05 17:15:11', '2024-02-05 17:15:11'),
(71, 29, 395, '😄😄😄😉😉', '2024-02-05 17:15:35', '2024-02-05 17:15:35'),
(74, 13, 391, 'well said', '2024-02-06 06:25:30', '2024-02-06 06:25:30'),
(75, 13, 476, 'unyama sana', '2024-02-06 12:32:52', '2024-02-06 12:32:52'),
(84, 13, 425, 'miamiaaaa', '2024-02-10 11:06:32', '2024-02-10 11:06:32'),
(87, 11, 489, 'print[]', '2024-02-10 13:17:31', '2024-02-10 13:17:31'),
(88, 13, 501, 'Nice pic 🔥🔥🔥', '2024-02-10 15:48:46', '2024-02-10 15:48:46'),
(89, 13, 510, 'nice pic', '2024-02-10 19:43:30', '2024-02-10 19:43:30'),
(111, 13, 333, 'bbb', '2024-02-18 01:51:16', '2024-02-18 01:51:16'),
(112, 13, 320, 'ccccv', '2024-02-18 02:01:40', '2024-02-18 02:01:40'),
(116, 29, 517, 'cccc', '2024-02-18 05:27:21', '2024-02-18 05:27:21'),
(117, 13, 517, 'bbbbbb', '2024-02-18 05:28:00', '2024-02-18 05:28:00'),
(118, 29, 518, 'bbvbbbb', '2024-02-18 05:35:09', '2024-02-18 05:35:09'),
(119, 13, 227, 'my dream', '2024-02-18 06:10:03', '2024-02-18 06:10:03'),
(120, 13, 531, 'kichaaa', '2024-02-20 13:55:20', '2024-02-20 13:55:20'),
(121, 36, 531, 'mange', '2024-02-20 14:29:00', '2024-02-20 14:29:00'),
(123, 13, 531, 'mshenzi tu huyu Mange', '2024-02-20 14:31:57', '2024-02-20 14:31:57'),
(124, 13, 531, '😀😀😀', '2024-02-20 14:32:07', '2024-02-20 14:32:07'),
(128, 13, 526, 'kabisa👍🏿👍🏿', '2024-02-20 14:54:08', '2024-02-20 14:54:08'),
(130, 13, 595, 'bbbb', '2024-02-25 19:41:09', '2024-02-25 19:41:09'),
(131, 13, 595, 'hello', '2024-02-25 19:41:41', '2024-02-25 19:41:41'),
(132, 13, 596, 'aaaaa', '2024-02-25 19:44:50', '2024-02-25 19:44:50'),
(133, 13, 597, '🔥🔥🔥🔥', '2024-02-25 19:47:01', '2024-02-25 19:47:01'),
(134, 13, 598, 'b katisha', '2024-02-25 19:48:23', '2024-02-25 19:48:23'),
(135, 13, 526, 'hhhh', '2024-02-25 19:50:13', '2024-02-25 19:50:13'),
(136, 13, 526, 'bbbbbb', '2024-02-25 19:50:41', '2024-02-25 19:50:41'),
(137, 43, 615, 'duh hatar', '2024-02-26 17:46:03', '2024-02-26 17:46:03'),
(138, 13, 615, 'sana mr Pacol', '2024-02-26 17:49:59', '2024-02-26 17:49:59'),
(139, 44, 611, 'inonga baba', '2024-02-26 17:50:41', '2024-02-26 17:50:41'),
(140, 51, 609, 'amna kitu apo 😁😁😁😁😁', '2024-02-26 18:32:40', '2024-02-26 18:32:40'),
(141, 51, 608, 'fyuuuuuu', '2024-02-26 18:32:52', '2024-02-26 18:32:52'),
(142, 51, 608, 'fyuuuuuu', '2024-02-26 18:32:52', '2024-02-26 18:32:52'),
(143, 51, 615, 'hela Zina fitinaa Kwa kwel', '2024-02-26 18:33:22', '2024-02-26 18:33:22'),
(144, 52, 614, 'acha mapepe we oscar', '2024-02-26 18:38:55', '2024-02-26 18:38:55'),
(145, 13, 614, 'hahahhaaa@ernest', '2024-02-26 18:45:31', '2024-02-26 18:45:31'),
(146, 13, 627, 'Safi sana', '2024-02-27 01:03:36', '2024-02-27 01:03:36'),
(147, 13, 641, 'Ni mkubwa sana', '2024-02-27 06:15:29', '2024-02-27 06:15:29'),
(148, 38, 644, 'hahahahahahahaha', '2024-02-27 08:31:00', '2024-02-27 08:31:00'),
(149, 60, 645, '😁😁😁', '2024-02-27 12:22:18', '2024-02-27 12:22:18'),
(150, 61, 657, '😁😁 uongo bana Akon brand kubwa', '2024-02-27 12:27:15', '2024-02-27 12:27:15'),
(151, 62, 657, '😁😁😁', '2024-02-27 12:32:37', '2024-02-27 12:32:37'),
(152, 29, 645, '😀😀😀😀😀', '2024-02-27 15:56:20', '2024-02-27 15:56:20'),
(153, 73, 721, 'hiyo demu ni boya tyu', '2024-02-29 19:10:55', '2024-02-29 19:10:55'),
(154, 73, 720, 'rip mwinyi 😭😭😭😭', '2024-02-29 19:11:24', '2024-02-29 19:11:24'),
(155, 73, 711, 'ifm ndo balaaa mpaka uwe na maokoto aseeh', '2024-02-29 19:15:07', '2024-02-29 19:15:07'),
(156, 13, 722, 'hahahahaa mmebahatisha', '2024-02-29 19:16:01', '2024-02-29 19:16:01'),
(157, 73, 722, '😁😁', '2024-02-29 19:16:47', '2024-02-29 19:16:47'),
(158, 13, 711, 'Hahahahah @tseletz', '2024-02-29 19:17:24', '2024-02-29 19:17:24'),
(159, 73, 722, 'sema mwanetu unapost nyingi sana 🤣🤣🤣', '2024-02-29 19:17:28', '2024-02-29 19:17:28'),
(160, 13, 721, 'kabisa aisee @tselet', '2024-02-29 19:22:39', '2024-02-29 19:22:39'),
(161, 13, 737, 'la kibishoo tu🤠🤠🤠', '2024-03-01 13:00:13', '2024-03-01 13:00:13'),
(164, 79, 748, 'kabisaaaaaaaa 👊👊👊👊👊', '2024-03-01 18:27:44', '2024-03-01 18:27:44'),
(165, 13, 748, 'Yeeeaaa', '2024-03-01 19:22:19', '2024-03-01 19:22:19'),
(166, 41, 753, 'ohngl', '2024-03-02 07:21:29', '2024-03-02 07:21:29'),
(167, 29, 769, 'well said Rosee', '2024-03-03 05:45:58', '2024-03-03 05:45:58'),
(168, 29, 759, 'nice', '2024-03-03 05:47:23', '2024-03-03 05:47:23'),
(169, 13, 793, 'All the best🔥🔥🔥', '2024-03-03 06:08:10', '2024-03-03 06:08:10'),
(170, 13, 819, 'hatari 🔥🔥', '2024-03-03 14:49:06', '2024-03-03 14:49:06'),
(171, 13, 818, 'uchawi bro 🤠', '2024-03-03 14:50:53', '2024-03-03 14:50:53'),
(172, 79, 818, '🤣🤣🤣🤣🤣🤣', '2024-03-03 14:57:24', '2024-03-03 14:57:24'),
(173, 29, 821, 'wanaweza bana acha Murata Tampa mapema hahahaa', '2024-03-03 16:53:06', '2024-03-03 16:53:06'),
(174, 13, 833, 'hahaha safi', '2024-03-04 09:53:02', '2024-03-04 09:53:02'),
(175, 13, 801, 'Acha mikwala dogo😂😂', '2024-03-04 13:22:54', '2024-03-04 13:22:54'),
(177, 6, 598, '@Ghost fdd', '2024-03-05 12:37:24', '2024-03-05 12:37:24'),
(178, 6, 60, 'this is the caption of the videoss', '2024-03-05 13:45:18', '2024-03-05 13:45:18'),
(179, 6, 598, 'nice', '2024-03-05 14:24:51', '2024-03-05 14:24:51'),
(184, 6, 842, 'kwahiyo itakuae', '2024-03-06 10:14:05', '2024-03-06 10:14:05'),
(185, 13, 241, 'hahahahaaaa', '2024-03-06 19:07:21', '2024-03-06 19:07:21'),
(186, 13, 842, 'bbbb', '2024-03-07 00:17:17', '2024-03-07 00:17:17'),
(187, 13, 851, '😆😆😆', '2024-03-07 00:25:08', '2024-03-07 00:25:08'),
(188, 79, 854, 'Namkubali jude beligham na wwe je unamkubali na ni????', '2024-03-07 15:06:38', '2024-03-07 15:06:38'),
(189, 13, 855, 'tisha sana kijana', '2024-03-07 15:47:04', '2024-03-07 15:47:04'),
(190, 13, 854, 'hakuna team hapo mkuu😆', '2024-03-07 15:48:54', '2024-03-07 15:48:54'),
(191, 29, 862, 'hatariii', '2024-03-09 15:44:02', '2024-03-09 15:44:02'),
(192, 6, 739, 'test', '2024-03-18 07:48:25', '2024-03-18 07:48:25'),
(193, 13, 883, 'ggg', '2024-03-19 10:08:54', '2024-03-19 10:08:54'),
(194, 13, 883, 'gggg', '2024-03-19 10:09:09', '2024-03-19 10:09:09'),
(195, 13, 845, 'hello', '2024-03-19 10:09:49', '2024-03-19 10:09:49'),
(196, 13, 885, 'bbbb', '2024-03-19 10:13:37', '2024-03-19 10:13:37'),
(197, 13, 885, 'ggg', '2024-03-19 10:14:04', '2024-03-19 10:14:04'),
(198, 13, 885, 'bbbb', '2024-03-19 10:14:42', '2024-03-19 10:14:42'),
(199, 13, 365, 'hello', '2024-03-19 10:20:29', '2024-03-19 10:20:29'),
(200, 13, 885, 'cccc', '2024-03-19 10:41:37', '2024-03-19 10:41:37'),
(201, 13, 887, 'hatari', '2024-03-19 14:39:12', '2024-03-19 14:39:12'),
(202, 13, 888, 'bbbbb', '2024-03-19 15:09:28', '2024-03-19 15:09:28'),
(203, 13, 895, 'b unyama', '2024-03-19 16:01:08', '2024-03-19 16:01:08'),
(204, 13, 895, 'bbb', '2024-03-19 16:41:34', '2024-03-19 16:41:34'),
(205, 13, 885, 'vvbbb', '2024-03-19 16:42:17', '2024-03-19 16:42:17'),
(207, 6, 903, 'nice nigga', '2024-03-20 12:05:52', '2024-03-20 12:05:52'),
(208, 13, 905, 'b unyama', '2024-03-20 13:52:23', '2024-03-20 13:52:23'),
(209, 6, 905, 'hello', '2024-03-22 13:26:43', '2024-03-22 13:26:43'),
(210, 6, 905, 'hello nigga', '2024-03-22 13:26:57', '2024-03-22 13:26:57'),
(211, 6, 905, 'nice bro', '2024-03-22 15:41:24', '2024-03-22 15:41:24'),
(212, 6, 911, 'kajala', '2024-03-23 11:53:30', '2024-03-23 11:53:30'),
(213, 6, 910, 'moms mzee', '2024-03-23 11:54:57', '2024-03-23 11:54:57'),
(214, 6, 911, 'nice', '2024-03-23 12:26:06', '2024-03-23 12:26:06'),
(215, 6, 911, 'comment', '2024-03-23 12:33:54', '2024-03-23 12:33:54'),
(216, 6, 911, 'goodd', '2024-03-23 12:35:40', '2024-03-23 12:35:40'),
(217, 6, 911, 'godj', '2024-03-23 12:36:08', '2024-03-23 12:36:08'),
(218, 6, 911, 'nice', '2024-03-23 12:46:09', '2024-03-23 12:46:09'),
(219, 6, 911, 'gcvhg', '2024-03-23 12:57:41', '2024-03-23 12:57:41'),
(220, 6, 911, 'nice', '2024-03-23 13:09:54', '2024-03-23 13:09:54'),
(221, 6, 911, 'nice nigga', '2024-03-23 13:10:17', '2024-03-23 13:10:17'),
(222, 6, 910, 'good', '2024-03-23 13:10:33', '2024-03-23 13:10:33'),
(225, 6, 903, 'good job', '2024-03-23 15:29:10', '2024-03-23 15:29:10'),
(227, 13, 914, 'b unyama', '2024-03-23 17:07:22', '2024-03-23 17:07:22'),
(229, 13, 915, 'well said', '2024-03-23 18:27:23', '2024-03-23 18:27:23'),
(230, 13, 922, 'well said Rick', '2024-03-23 18:34:40', '2024-03-23 18:34:40'),
(231, 13, 918, 'tunakukumbuka baba😢😢', '2024-03-23 19:11:55', '2024-03-23 19:11:55'),
(232, 13, 923, 'Well said Champ 🔥🔥🔥', '2024-03-23 19:13:41', '2024-03-23 19:13:41'),
(237, 13, 910, 'bbb', '2024-03-25 07:30:17', '2024-03-25 07:30:17'),
(238, 13, 910, 'grgtgrtf', '2024-03-25 07:31:01', '2024-03-25 07:31:01'),
(239, 13, 910, 'bbbb', '2024-03-25 07:32:32', '2024-03-25 07:32:32'),
(242, 13, 503, 'gggg', '2024-03-26 10:46:04', '2024-03-26 10:46:04'),
(243, 13, 504, 'ccccc', '2024-03-26 11:00:19', '2024-03-26 11:00:19'),
(244, 11, 905, 'n', '2024-03-28 12:12:18', '2024-03-28 12:12:18'),
(245, 11, 905, 'chvv', '2024-03-28 12:12:25', '2024-03-28 12:12:25'),
(246, 11, 910, 'nice', '2024-03-28 12:13:26', '2024-03-28 12:13:26'),
(247, 11, 905, 'nice', '2024-03-28 12:17:42', '2024-03-28 12:17:42'),
(248, 6, 534, 'nice nigga', '2024-03-28 12:26:22', '2024-03-28 12:26:22'),
(249, 6, 534, 'god', '2024-03-28 12:26:32', '2024-03-28 12:26:32'),
(250, 13, 948, 'hahahahaha', '2024-03-29 19:53:23', '2024-03-29 19:53:23'),
(254, 6, 810, 'Ujinga huu', '2024-03-30 16:49:36', '2024-03-30 16:49:36'),
(255, 13, 882, 'unyama sana', '2024-03-30 17:30:32', '2024-03-30 17:30:32'),
(256, 13, 880, 'unyama sana', '2024-03-31 01:29:38', '2024-03-31 01:29:38'),
(260, 14, 871, 'commemt', '2024-04-03 11:02:19', '2024-04-03 11:02:19'),
(261, 13, 871, 'teyrtttuu', '2024-04-03 11:03:29', '2024-04-03 11:03:29'),
(262, 86, 688, 'Marley', '2024-04-03 14:54:22', '2024-04-03 14:54:22'),
(264, 86, 857, 'Duuuuh hatari', '2024-04-03 16:28:55', '2024-04-03 16:28:55'),
(265, 86, 852, 'yesss', '2024-04-03 16:33:09', '2024-04-03 16:33:09'),
(266, 86, 844, 'khaaaah', '2024-04-03 16:35:02', '2024-04-03 16:35:02'),
(268, 86, 830, 'kumbe', '2024-04-03 18:52:16', '2024-04-03 18:52:16'),
(269, 86, 823, 'Daaaah', '2024-04-03 18:53:40', '2024-04-03 18:53:40'),
(270, 13, 823, 'google', '2024-04-03 18:54:01', '2024-04-03 18:54:01'),
(271, 86, 776, 'chizi', '2024-04-03 19:14:07', '2024-04-03 19:14:07'),
(273, 13, 776, 'unyama', '2024-04-03 19:32:13', '2024-04-03 19:32:13'),
(274, 13, 738, 'nice', '2024-04-05 19:07:15', '2024-04-05 19:07:15'),
(275, 86, 756, 'daaaah', '2024-04-05 19:08:05', '2024-04-05 19:08:05'),
(277, 13, 802, 'Nice', '2024-04-13 08:35:59', '2024-04-13 08:35:59'),
(278, 13, 968, 'A unyama sana', '2024-04-13 08:49:08', '2024-04-13 08:49:08'),
(279, 13, 965, 'nice', '2024-04-13 17:22:11', '2024-04-13 17:22:11'),
(282, 13, 803, 'well said', '2024-04-14 04:11:43', '2024-04-14 04:11:43'),
(283, 13, 1037, '😲😲😲', '2024-04-17 07:58:07', '2024-04-17 07:58:07'),
(284, 13, 1043, 'hahaha', '2024-04-17 08:29:03', '2024-04-17 08:29:03'),
(285, 13, 1044, 'unyama sana', '2024-04-17 08:48:30', '2024-04-17 08:48:30'),
(286, 13, 1045, 'Wapi hii?', '2024-04-17 09:10:34', '2024-04-17 09:10:34'),
(287, 6, 1046, 'hatari', '2024-04-17 09:16:51', '2024-04-17 09:16:51'),
(288, 13, 1046, 'Rolls-Royce inavutwa na Range😀😀😀', '2024-04-17 15:28:31', '2024-04-17 15:28:31'),
(290, 13, 790, '😀😀😀', '2024-04-21 14:02:45', '2024-04-21 14:02:45'),
(291, 86, 1068, 'Hey Zuch', '2024-04-22 10:03:05', '2024-04-22 10:03:05'),
(292, 86, 1068, 'I like your gogooz', '2024-04-22 10:03:29', '2024-04-22 10:03:29'),
(293, 14, 1068, 'Thanks Nenga🍒🍒', '2024-04-22 10:06:03', '2024-04-22 10:06:03'),
(294, 13, 1070, 'Umependeza dada', '2024-04-22 13:48:31', '2024-04-22 13:48:31'),
(295, 86, 1075, 'Green City', '2024-04-22 17:13:52', '2024-04-22 17:13:52'),
(296, 103, 1075, 'Kama kawa', '2024-04-22 17:15:33', '2024-04-22 17:15:33'),
(297, 13, 1075, 'Safi', '2024-04-22 17:20:06', '2024-04-22 17:20:06'),
(298, 13, 1077, 'Umetisha sana Nenga kwenye hili song', '2024-04-23 06:09:44', '2024-04-23 06:09:44'),
(299, 14, 1077, 'Safiii', '2024-04-23 06:12:27', '2024-04-23 06:12:27'),
(300, 13, 1078, 'Hiyo mdomoni ni nini 😆?', '2024-04-23 06:23:59', '2024-04-23 06:23:59'),
(301, 13, 1078, '@carrymastory upo sahihi kabisa😆😆', '2024-04-23 07:27:28', '2024-04-23 07:27:28'),
(302, 13, 1071, 'Tisha', '2024-04-23 08:26:51', '2024-04-23 08:26:51'),
(303, 99, 1083, 'Hahahaaaa', '2024-04-23 08:37:51', '2024-04-23 08:37:51'),
(304, 13, 1095, 'B unyama sana', '2024-04-23 15:54:22', '2024-04-23 15:54:22'),
(305, 99, 1096, 'Hatari', '2024-04-23 16:03:46', '2024-04-23 16:03:46'),
(306, 98, 1084, 'I Love you baby', '2024-04-23 17:03:40', '2024-04-23 17:03:40'),
(307, 99, 1027, 'Well said', '2024-04-23 17:42:42', '2024-04-23 17:42:42'),
(308, 13, 1099, 'Hahahahhaa safi', '2024-04-24 08:34:05', '2024-04-24 08:34:05'),
(309, 13, 1105, 'Unyama', '2024-04-29 08:26:42', '2024-04-29 08:26:42');

-- --------------------------------------------------------

--
-- Table structure for table `comment_replies`
--

CREATE TABLE `comment_replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `body` text DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comment_replies`
--

INSERT INTO `comment_replies` (`id`, `body`, `user_id`, `comment_id`, `created_at`, `updated_at`) VALUES
(1, 'this is the caption of the videoss', 6, 20, '2024-03-05 13:44:41', '2024-03-05 13:44:41'),
(2, 'this is the caption of the videoss', 6, 20, '2024-03-05 13:46:00', '2024-03-05 13:46:00'),
(3, 'this is the caption of the videoss', 6, 20, '2024-03-05 13:46:35', '2024-03-05 13:46:35'),
(7, '@Ghost hello nigg', 6, 134, '2024-03-05 14:21:40', '2024-03-05 14:21:40'),
(8, '@Ghost  hello nigga', 6, 134, '2024-03-05 14:23:51', '2024-03-05 14:23:51'),
(9, '@Ghost helo nigga', 6, 134, '2024-03-05 14:46:20', '2024-03-05 14:46:20'),
(10, '@Ghost noma kuu hongera sana', 6, 133, '2024-03-05 17:00:46', '2024-03-05 17:00:46'),
(12, '@Ghost nomakwlli mkuu', 6, 174, '2024-03-05 17:48:50', '2024-03-05 17:48:50'),
(16, '@martinkb nice man', 6, 184, '2024-03-06 10:14:40', '2024-03-06 10:14:40'),
(17, '@martinkb ndio Italian history kijana hahahaaa', 29, 184, '2024-03-06 20:04:23', '2024-03-06 20:04:23'),
(18, '@martinkb ndio Italian history kijana hahahaaa', 29, 184, '2024-03-06 20:04:26', '2024-03-06 20:04:26'),
(19, '@martinkb ndio Italian history kijana hahahaaa', 29, 184, '2024-03-06 20:04:28', '2024-03-06 20:04:28'),
(20, '@martinkb ndio Italian history kijana hahahaaa', 29, 184, '2024-03-06 20:04:29', '2024-03-06 20:04:29'),
(21, '@martinkb ndio Italian history kijana hahahaaa', 29, 184, '2024-03-06 20:04:29', '2024-03-06 20:04:29'),
(22, '@martinkb ndio Italian history kijana hahahaaa', 29, 184, '2024-03-06 20:04:29', '2024-03-06 20:04:29'),
(23, '@martinkb ndio Italian history kijana hahahaaa', 29, 184, '2024-03-06 20:04:29', '2024-03-06 20:04:29'),
(24, '@martinkb ndio Italian history kijana hahahaaa', 29, 184, '2024-03-06 20:04:29', '2024-03-06 20:04:29'),
(25, '@martinkb ndio Italian history kijana hahahaaa', 29, 184, '2024-03-06 20:04:30', '2024-03-06 20:04:30'),
(26, '@martinkb ndio Italian history kijana hahahaaa', 29, 184, '2024-03-06 20:04:30', '2024-03-06 20:04:30'),
(27, '@martinkb ndio Italian history kijana hahahaaa', 29, 184, '2024-03-06 20:04:30', '2024-03-06 20:04:30'),
(28, '@martinkb ndio Italian history kijana hahahaaa', 29, 184, '2024-03-06 20:04:31', '2024-03-06 20:04:31'),
(29, '@daudimshihiri hakuna team hapo😆', 13, 188, '2024-03-07 15:47:49', '2024-03-07 15:47:49'),
(30, '@Ghost nice nigga', 6, 200, '2024-03-19 11:12:35', '2024-03-19 11:12:35'),
(31, '@Ghost mtoto Mauro sana', 6, 201, '2024-03-19 14:41:15', '2024-03-19 14:41:15'),
(32, '@Ghost A ni iguana zaidi', 6, 203, '2024-03-19 16:03:55', '2024-03-19 16:03:55'),
(33, '@martinkb oiiii', 13, 210, '2024-03-22 13:29:04', '2024-03-22 13:29:04'),
(34, '@martinkb oiiii', 13, 210, '2024-03-22 13:29:09', '2024-03-22 13:29:09'),
(35, '@martinkb nice nigga', 6, 210, '2024-03-22 15:12:10', '2024-03-22 15:12:10'),
(36, '@martinkb safe kk', 6, 210, '2024-03-22 15:41:49', '2024-03-22 15:41:49'),
(37, '@martinkb nice nigga', 6, 210, '2024-03-22 19:07:09', '2024-03-22 19:07:09'),
(38, '@Ghost good', 6, 208, '2024-03-22 19:08:30', '2024-03-22 19:08:30'),
(39, '@martinkb acha uhuni dogo', 13, 213, '2024-03-23 11:58:00', '2024-03-23 11:58:00'),
(40, '@martinkb acha uhuni dogo', 13, 213, '2024-03-23 11:58:00', '2024-03-23 11:58:00'),
(41, '@martinkb acha uhuni dogo', 13, 213, '2024-03-23 11:58:00', '2024-03-23 11:58:00'),
(42, '@martinkb acha uhuni dogo', 13, 213, '2024-03-23 11:58:00', '2024-03-23 11:58:00'),
(43, '@martinkb acha uhuni dogo', 13, 213, '2024-03-23 11:58:01', '2024-03-23 11:58:01'),
(44, '@martinkb acha uhuni dogo', 13, 213, '2024-03-23 11:58:01', '2024-03-23 11:58:01'),
(45, '@martinkb acha uhuni dogo', 13, 213, '2024-03-23 11:58:02', '2024-03-23 11:58:02'),
(46, '@martinkb acha uhuni dogo', 13, 213, '2024-03-23 11:58:02', '2024-03-23 11:58:02'),
(47, '@martinkb acha uhuni dogo', 13, 213, '2024-03-23 11:58:02', '2024-03-23 11:58:02'),
(48, '@martinkb acha uhuni dogo', 13, 213, '2024-03-23 11:58:02', '2024-03-23 11:58:02'),
(49, '@martinkb good', 6, 222, '2024-03-23 13:11:00', '2024-03-23 13:11:00'),
(50, '@martinkb good', 6, 212, '2024-03-23 15:04:20', '2024-03-23 15:04:20'),
(52, '@martinkb good', 6, 207, '2024-03-23 15:29:22', '2024-03-23 15:29:22'),
(55, '@Ghost 🔥🔥🔥', 13, 227, '2024-03-23 17:07:36', '2024-03-23 17:07:36'),
(57, '@martinkb yeeea', 13, 214, '2024-03-23 17:42:45', '2024-03-23 17:42:45'),
(58, '@Ghost 🔥🔥🔥', 13, 229, '2024-03-23 18:27:35', '2024-03-23 18:27:35'),
(59, '@Ghost 🔥🔥🔥', 13, 230, '2024-03-23 18:36:13', '2024-03-23 18:36:13'),
(60, '@abedboy inawezekana aisee😀😀😀', 13, 150, '2024-03-23 19:15:32', '2024-03-23 19:15:32'),
(62, '@Ghost ccvv', 13, 242, '2024-03-26 10:46:31', '2024-03-26 10:46:31'),
(63, '@GGhost noma mzee', 11, 237, '2024-03-28 12:11:33', '2024-03-28 12:11:33'),
(64, '@Ghost umeona notifications', 6, 239, '2024-03-28 12:23:41', '2024-03-28 12:23:41'),
(65, '@Sekoyo❤️ hhhhjj', 13, 260, '2024-04-03 11:02:44', '2024-04-03 11:02:44'),
(66, '@GHOST nice', 14, 261, '2024-04-03 11:03:44', '2024-04-03 11:03:44'),
(67, '@Manfred mkali sana', 13, 262, '2024-04-03 14:55:37', '2024-04-03 14:55:37'),
(72, '@Manfred nini?', 13, 265, '2024-04-03 16:33:36', '2024-04-03 16:33:36'),
(76, '@Manfred kumbe nini?', 13, 268, '2024-04-03 18:52:55', '2024-04-03 18:52:55'),
(77, '@GHOST google for what', 86, 270, '2024-04-03 18:54:23', '2024-04-03 18:54:23'),
(78, '@Manfred nice', 13, 269, '2024-04-03 19:01:56', '2024-04-03 19:01:56'),
(79, '@Manfred nzurii', 13, 269, '2024-04-03 19:05:54', '2024-04-03 19:05:54'),
(80, '@Manfred nzuri bro', 13, 269, '2024-04-03 19:10:27', '2024-04-03 19:10:27'),
(81, '@Manfred good', 13, 269, '2024-04-03 19:12:26', '2024-04-03 19:12:26'),
(82, '@GHOST good', 13, 270, '2024-04-03 19:13:13', '2024-04-03 19:13:13'),
(84, '@Manfred nimejibu', 13, 271, '2024-04-03 19:15:26', '2024-04-03 19:15:26'),
(88, '@Manfred good', 86, 271, '2024-04-03 19:21:37', '2024-04-03 19:21:37'),
(89, '@Manfred chizi mwenyewe 😆😆', 13, 271, '2024-04-03 19:22:08', '2024-04-03 19:22:08'),
(90, '@Manfred khaaaah nan', 86, 271, '2024-04-03 19:30:56', '2024-04-03 19:30:56'),
(91, '@Manfred wewe hapo', 13, 271, '2024-04-03 19:31:50', '2024-04-03 19:31:50'),
(93, '@GHOST true', 13, 277, '2024-04-13 08:37:04', '2024-04-13 08:37:04'),
(94, '@GHOST A hamna kitu', 13, 278, '2024-04-13 08:49:25', '2024-04-13 08:49:25'),
(96, '@GHOST hahahaaa', 6, 261, '2024-04-13 17:42:55', '2024-04-13 17:42:55'),
(97, '@GHOST yeeeeaaa', 6, 279, '2024-04-13 17:46:03', '2024-04-13 17:46:03'),
(98, '@GHOST kiduku', 6, 196, '2024-04-13 17:50:56', '2024-04-13 17:50:56'),
(99, '@GHOST kabisa', 6, 189, '2024-04-13 17:52:03', '2024-04-13 17:52:03'),
(100, '@martinkb kabisa aisee', 13, 287, '2024-04-17 09:19:06', '2024-04-17 09:19:06'),
(101, '@Carrymastory katoto Kazuki sana', 99, 294, '2024-04-22 14:24:10', '2024-04-22 14:24:10'),
(102, '@Nenga hauwezi kufikia mji wa Iringa', 13, 295, '2024-04-22 17:23:48', '2024-04-22 17:23:48'),
(103, '@Carrymastory mtajua hamjui', 86, 298, '2024-04-23 06:11:45', '2024-04-23 06:11:45'),
(104, '@Zuchu waaaoh', 86, 299, '2024-04-23 06:33:03', '2024-04-23 06:33:03'),
(105, '@nenga hahaha sawa mkuu', 13, 298, '2024-04-23 07:04:22', '2024-04-23 07:04:22'),
(106, '@Carrymastory bange', 99, 300, '2024-04-23 07:26:30', '2024-04-23 07:26:30'),
(107, '@Ireenuwoya noma sana', 13, 303, '2024-04-23 08:39:30', '2024-04-23 08:39:30'),
(108, '@Carrymastory thanks', 99, 304, '2024-04-23 16:03:59', '2024-04-23 16:03:59');

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user1_id` bigint(20) UNSIGNED NOT NULL,
  `user2_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `conversations`
--

INSERT INTO `conversations` (`id`, `user1_id`, `user2_id`, `created_at`, `updated_at`) VALUES
(1, 6, 11, '2024-02-10 12:42:11', '2024-02-10 12:42:11'),
(2, 31, 6, '2024-02-10 19:00:43', '2024-02-10 19:00:43'),
(3, 13, 6, '2024-02-18 04:22:59', '2024-02-18 04:22:59'),
(4, 13, 50, '2024-02-26 18:24:28', '2024-02-26 18:24:28'),
(5, 29, 13, '2024-02-26 18:28:55', '2024-02-26 18:28:55'),
(6, 11, 13, '2024-03-25 09:22:20', '2024-03-25 09:22:20'),
(7, 13, 14, '2024-04-03 08:18:59', '2024-04-03 08:18:59'),
(8, 13, 86, '2024-04-03 15:19:22', '2024-04-03 15:19:22'),
(9, 13, 100, '2024-04-22 15:01:51', '2024-04-22 15:01:51'),
(10, 86, 103, '2024-04-22 17:14:22', '2024-04-22 17:14:22'),
(11, 86, 71, '2024-04-25 14:24:22', '2024-04-25 14:24:22'),
(12, 86, 14, '2024-04-25 14:42:04', '2024-04-25 14:42:04');

-- --------------------------------------------------------

--
-- Table structure for table `deleted_posts`
--

CREATE TABLE `deleted_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `body` text DEFAULT NULL,
  `type` enum('image','video') NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `challenge_img` varchar(191) DEFAULT NULL,
  `pinned` tinyint(4) NOT NULL DEFAULT 0,
  `public_id` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deleted_posts`
--

INSERT INTO `deleted_posts` (`id`, `user_id`, `body`, `type`, `image`, `challenge_img`, `pinned`, `public_id`, `created_at`, `updated_at`) VALUES
(2, 3, '3', 'image', 'images/8OAIZdvw157In7QTBiL19FV3iOqlXE7kJGJjWZlK.png', NULL, 0, NULL, '2023-07-22 07:06:28', '2023-07-22 07:06:28'),
(3, 6, '6', 'image', 'images/LcW1FAfOGeKEQvvaAdbMTfJRaGWKsj7fzI5MnATb.jpg', NULL, 0, NULL, '2023-07-22 10:50:16', '2023-07-22 10:50:16'),
(4, 6, '6', 'image', 'images/hmm98JKyslaQBECdScISGTv1iShsuVSt0TTWQqxD.jpg', NULL, 0, NULL, '2023-07-22 11:17:35', '2023-07-22 11:17:35'),
(5, 6, '6', 'image', 'images/wPbqpadNRBWgHVAFFtL01VqtWsOVtkg92wufiXEf.jpg', NULL, 1, NULL, '2023-09-18 19:40:33', '2023-09-18 19:40:33'),
(6, 6, '6', 'image', 'images/wPbqpadNRBWgHVAFFtL01VqtWsOVtkg92wufiXEf.jpg', NULL, 1, NULL, '2023-09-18 19:41:13', '2023-09-18 19:41:13'),
(7, 6, '6', 'image', 'images/kmkeDTeEu5Ym7DdEvj2LPUoLXVVe4tj5Y8xiyV1K.png', NULL, 0, NULL, '2023-09-18 19:42:43', '2023-09-18 19:42:43'),
(8, 14, '14', 'image', 'images/bEayROkNi7xnEk3Y2FBlTYcKrYvGvLuJDIlEN05o.png', 'images/Yan2CIxS48R2UA5nxj2seMyLG7uqiSGTiZOmV8D7.png', 0, NULL, '2023-09-19 17:01:37', '2023-09-19 17:01:37'),
(9, 6, '6', 'image', 'images/DX2e3JuvGzs4AdgAYdZQRlMMJui57L0uBWVEjjE9.jpg', NULL, 0, NULL, '2024-02-17 11:50:27', '2024-02-17 11:50:27'),
(10, 6, '6', 'image', 'images/Y8KpYQ9cWRQmModoHduPeHd0QfRhFWm979TRIhQE.jpg', NULL, 0, NULL, '2024-02-17 11:50:57', '2024-02-17 11:50:57'),
(11, 13, '13', 'image', 'images/OBMnRMJ91QicVpSnu922zyTuy5kgDsgkinl0I3Se.jpg', NULL, 0, NULL, '2024-02-17 11:53:46', '2024-02-17 11:53:46'),
(12, 13, '13', 'image', 'images/BdRadFRTqQ2yLbD6Xwf18TdCVZnWiXx2rJ89AMQb.jpg', NULL, 0, NULL, '2024-02-17 11:55:04', '2024-02-17 11:55:04'),
(13, 13, '13', 'image', 'images/BdRadFRTqQ2yLbD6Xwf18TdCVZnWiXx2rJ89AMQb.jpg', NULL, 0, NULL, '2024-02-17 11:56:14', '2024-02-17 11:56:14'),
(14, 13, '13', 'image', 'images/rkvW58ejsz7YJXSVRUvOq6K9vfhORiZfURLRZ01A.jpg', NULL, 0, NULL, '2024-02-17 11:56:23', '2024-02-17 11:56:23'),
(15, 13, '13', 'image', 'images/rkvW58ejsz7YJXSVRUvOq6K9vfhORiZfURLRZ01A.jpg', NULL, 0, NULL, '2024-02-17 12:00:25', '2024-02-17 12:00:25'),
(16, 13, '13', 'image', 'images/8KzwbTyIyTmPt3mq7hFnWFDdTlrASHe2e7UV7KD8.jpg', NULL, 0, NULL, '2024-02-17 12:00:38', '2024-02-17 12:00:38'),
(17, 13, '13', 'image', 'images/oYaRzmpXsgz0VYR0BwOBWa7Wb5pqtib6Pb1OLvwC.jpg', NULL, 0, NULL, '2024-02-17 12:01:16', '2024-02-17 12:01:16'),
(18, 13, '13', 'image', 'images/U5hT6za6b7sYjL6ofyfqTLJukoqT26C7dLng7Syq.jpg', NULL, 0, NULL, '2024-02-17 12:01:41', '2024-02-17 12:01:41'),
(19, 13, '13', 'image', 'images/LNYqyyq7qEndQvUy71oKUIuFnIMtVYf5CI40T6j5.jpg', NULL, 0, NULL, '2024-02-17 12:02:14', '2024-02-17 12:02:14'),
(20, 6, '6', 'image', 'images/Y8KpYQ9cWRQmModoHduPeHd0QfRhFWm979TRIhQE.jpg', NULL, 0, NULL, '2024-02-17 12:10:26', '2024-02-17 12:10:26'),
(21, 6, '6', 'image', 'images/Y8KpYQ9cWRQmModoHduPeHd0QfRhFWm979TRIhQE.jpg', NULL, 0, NULL, '2024-02-17 12:10:33', '2024-02-17 12:10:33'),
(22, 6, '6', 'image', 'images/SijZtGxhGNOgkmFa3N6oDO7jnNqpiGHSXpn2Gk6W.jpg', NULL, 0, NULL, '2024-02-17 12:10:50', '2024-02-17 12:10:50'),
(23, 13, '13', 'image', 'images/lOXT0Gc07D03JMJQsC6hw2sAEqCNbBRLRhMmYue7.jpg', NULL, 0, NULL, '2024-02-17 12:12:00', '2024-02-17 12:12:00'),
(24, 13, '13', 'image', 'images/0zZd3uknAClCAjONWn46MlSAYZzcOk4E1a47P25l.jpg', NULL, 0, NULL, '2024-02-17 12:12:45', '2024-02-17 12:12:45'),
(25, 13, '13', 'image', 'images/0zZd3uknAClCAjONWn46MlSAYZzcOk4E1a47P25l.jpg', NULL, 0, NULL, '2024-02-17 12:12:47', '2024-02-17 12:12:47'),
(26, 13, '13', 'image', 'images/0zZd3uknAClCAjONWn46MlSAYZzcOk4E1a47P25l.jpg', NULL, 0, NULL, '2024-02-17 12:12:48', '2024-02-17 12:12:48'),
(27, 13, '13', 'image', 'images/0zZd3uknAClCAjONWn46MlSAYZzcOk4E1a47P25l.jpg', NULL, 0, NULL, '2024-02-17 12:12:55', '2024-02-17 12:12:55'),
(28, 13, '13', 'image', 'images/0zZd3uknAClCAjONWn46MlSAYZzcOk4E1a47P25l.jpg', NULL, 0, NULL, '2024-02-17 12:13:05', '2024-02-17 12:13:05'),
(29, 13, '13', 'image', 'images/0zZd3uknAClCAjONWn46MlSAYZzcOk4E1a47P25l.jpg', NULL, 0, NULL, '2024-02-17 12:13:29', '2024-02-17 12:13:29'),
(30, 13, '13', 'image', 'images/079gXkU1j32JJg1urTjphVj5amYtJTKH5gkIU2lx.jpg', NULL, 0, NULL, '2024-02-17 12:13:36', '2024-02-17 12:13:36'),
(31, 13, '13', 'image', 'images/0zZd3uknAClCAjONWn46MlSAYZzcOk4E1a47P25l.jpg', NULL, 0, NULL, '2024-02-17 12:14:08', '2024-02-17 12:14:08'),
(32, 13, '13', 'image', 'images/Nqr0gVg4urJsDA5f1JKEmEynxjwG263LOTGw0gb1.jpg', NULL, 0, NULL, '2024-02-17 12:14:16', '2024-02-17 12:14:16'),
(33, 13, '13', 'image', 'images/0zZd3uknAClCAjONWn46MlSAYZzcOk4E1a47P25l.jpg', NULL, 0, NULL, '2024-02-17 12:15:51', '2024-02-17 12:15:51'),
(34, 13, '13', 'image', 'images/OBMnRMJ91QicVpSnu922zyTuy5kgDsgkinl0I3Se.jpg', NULL, 0, NULL, '2024-02-17 12:24:43', '2024-02-17 12:24:43'),
(35, 13, '13', 'image', 'images/eyiEZDd7dITc0AVNUr9gtoz5VhJ69f6CVoMid3ww.jpg', NULL, 0, NULL, '2024-02-17 12:25:17', '2024-02-17 12:25:17'),
(36, 13, '13', 'image', 'images/0zZd3uknAClCAjONWn46MlSAYZzcOk4E1a47P25l.jpg', NULL, 0, NULL, '2024-02-17 12:26:03', '2024-02-17 12:26:03'),
(37, 13, '13', 'image', 'images/0zZd3uknAClCAjONWn46MlSAYZzcOk4E1a47P25l.jpg', NULL, 0, NULL, '2024-02-17 12:26:52', '2024-02-17 12:26:52'),
(38, 13, '13', 'image', 'images/eyJCDDMfDN4d5cGX79Dye90htL4du1tTKkA1EmaU.jpg', NULL, 0, NULL, '2024-02-17 12:27:24', '2024-02-17 12:27:24'),
(39, 13, '13', 'image', 'images/t0JUkmcr6Dp3LYyqqU3RGsOgLvwcxNktky9bOIV3.jpg', NULL, 0, NULL, '2024-02-17 12:27:59', '2024-02-17 12:27:59'),
(40, 13, '13', 'image', 'images/K7XkkT264EsYlhm0GYjltL3XjTnbrKv8jZUC0HLR.jpg', NULL, 0, NULL, '2024-02-17 12:28:54', '2024-02-17 12:28:54'),
(41, 13, '13', 'image', 'images/UjO46lF27Qdaoz1rzUH7vMK4uWJlCxcB8pbv8L0J.jpg', NULL, 0, NULL, '2024-02-17 12:29:27', '2024-02-17 12:29:27'),
(42, 13, '13', 'image', 'images/xgZAclPWJzi6S5wcXeIQ5Okz3KXjOB0wdrd6DBVY.jpg', NULL, 0, NULL, '2024-02-17 12:33:32', '2024-02-17 12:33:32'),
(43, 13, '13', 'image', 'images/xgZAclPWJzi6S5wcXeIQ5Okz3KXjOB0wdrd6DBVY.jpg', NULL, 0, NULL, '2024-02-17 12:33:34', '2024-02-17 12:33:34'),
(44, 13, '13', 'image', 'images/xgZAclPWJzi6S5wcXeIQ5Okz3KXjOB0wdrd6DBVY.jpg', NULL, 0, NULL, '2024-02-17 12:33:36', '2024-02-17 12:33:36'),
(45, 13, '13', 'image', 'images/xgZAclPWJzi6S5wcXeIQ5Okz3KXjOB0wdrd6DBVY.jpg', NULL, 0, NULL, '2024-02-17 12:33:39', '2024-02-17 12:33:39'),
(46, 13, '13', 'image', 'images/xgZAclPWJzi6S5wcXeIQ5Okz3KXjOB0wdrd6DBVY.jpg', NULL, 0, NULL, '2024-02-17 12:33:47', '2024-02-17 12:33:47'),
(47, 13, '13', 'image', 'images/xgZAclPWJzi6S5wcXeIQ5Okz3KXjOB0wdrd6DBVY.jpg', NULL, 0, NULL, '2024-02-17 12:34:04', '2024-02-17 12:34:04'),
(48, 13, '13', 'image', 'images/xgZAclPWJzi6S5wcXeIQ5Okz3KXjOB0wdrd6DBVY.jpg', NULL, 0, NULL, '2024-02-17 12:34:39', '2024-02-17 12:34:39'),
(49, 13, '13', 'image', 'images/usYcAJgAk35CsCydRpCyw6xeWk1rzLFM5ixW4Kmx.jpg', NULL, 0, NULL, '2024-02-17 12:35:09', '2024-02-17 12:35:09'),
(50, 13, '13', 'image', 'images/xgZAclPWJzi6S5wcXeIQ5Okz3KXjOB0wdrd6DBVY.jpg', NULL, 0, NULL, '2024-02-17 12:35:37', '2024-02-17 12:35:37'),
(51, 6, '6', 'image', 'images/DX2e3JuvGzs4AdgAYdZQRlMMJui57L0uBWVEjjE9.jpg', NULL, 0, NULL, '2024-02-17 12:51:38', '2024-02-17 12:51:38'),
(52, 13, '13', 'image', 'images/mnFnjmWv2cTCAmdGY0NxvgiV2IKIfWrlBOdoG7dE.jpg', NULL, 0, NULL, '2024-02-18 04:19:07', '2024-02-18 04:19:07'),
(53, 13, '13', 'image', 'images/YUiODqOWXz9Qzf8cO9CRs1YAXEfCF0XRcV2TScOI.jpg', NULL, 0, NULL, '2024-02-18 04:19:31', '2024-02-18 04:19:31'),
(54, 13, '13', 'image', 'images/wGcDyaCrc4xTKMVeSmgGgZQs83yjjOwPAwj6amFI.jpg', NULL, 0, NULL, '2024-02-18 04:33:11', '2024-02-18 04:33:11'),
(55, 13, '13', 'image', 'images/60GByhqTxaoy9w1wO7XLzqfWnH2r4e4S4oWGGCXj.jpg', NULL, 0, NULL, '2024-02-18 04:33:20', '2024-02-18 04:33:20'),
(56, 13, '13', 'image', 'images/HI3N09TgqRkQ2miEaxZddLhXlL9hYTZ1vjwuAk0L.jpg', NULL, 0, NULL, '2024-02-18 05:03:04', '2024-02-18 05:03:04'),
(57, 13, '13', 'image', 'images/W9DRN8d4SwUTdesOAMHLpY1i3bxZVT5zjMw05aTc.jpg', NULL, 0, NULL, '2024-02-18 06:07:04', '2024-02-18 06:07:04'),
(58, 13, '13', 'image', 'images/CO5uN4QZy6gF6NYsnnvnaS7XyuWEfgIFCe7oNpE7.jpg', NULL, 0, NULL, '2024-02-18 06:07:11', '2024-02-18 06:07:11'),
(59, 13, '13', 'image', 'images/7NrZglLnRlvNjrUnGt9yKTj9DLbOzzRjephRbZD6.jpg', NULL, 0, NULL, '2024-02-18 06:07:17', '2024-02-18 06:07:17'),
(60, 13, '13', 'image', 'images/aeB5NquweZqpJFcLDTI9wauZAqkpncUOjTqAeQd5.jpg', NULL, 0, NULL, '2024-02-18 06:07:30', '2024-02-18 06:07:30'),
(61, 13, '13', 'image', 'images/JN6fTxdbWlfj1melfzY29adPVTHxegdkHMTm0LoH.jpg', NULL, 0, NULL, '2024-02-18 06:08:23', '2024-02-18 06:08:23'),
(62, 13, '13', 'image', 'images/7XmIxIO0jJzTBnM2sgyrMlrvHSecU0X1sG9cuOrO.jpg', NULL, 0, NULL, '2024-02-18 06:08:42', '2024-02-18 06:08:42'),
(63, 13, '13', 'image', 'images/ml4sjbK5PViHTBpcEQqY3eF6IS7Wd2vyGrfXNppq.jpg', NULL, 0, NULL, '2024-02-18 06:09:04', '2024-02-18 06:09:04'),
(64, 13, '13', 'image', 'images/BLxoxl3OFYRNwR1SMDBi89XjipgKW0RgxvO0WWYo.jpg', NULL, 0, NULL, '2024-02-18 06:09:14', '2024-02-18 06:09:14'),
(65, 13, '13', 'image', 'images/LQoNENIgmM3uAIsFAvN2f8fuBgEkn50Y1SMGDn7M.jpg', NULL, 0, NULL, '2024-02-18 09:17:46', '2024-02-18 09:17:46'),
(66, 13, '13', 'image', 'images/Pn3ILDtxv5JlBpA9L3zSeppXiqWWdm8gBwLiOt3g.jpg', NULL, 0, NULL, '2024-02-18 09:47:04', '2024-02-18 09:47:04'),
(67, 13, '13', 'image', 'images/v09ZFCOGdrQiKP1dlWJHmJx4luDCDZI76oJKgj5E.jpg', NULL, 0, NULL, '2024-02-18 12:57:59', '2024-02-18 12:57:59'),
(68, 13, '13', 'image', 'images/qpjELKbz2eDTREIdjt7jNXizmZYlwp5d0R3J1OjB.jpg', NULL, 0, NULL, '2024-02-25 19:29:56', '2024-02-25 19:29:56'),
(69, 13, '13', 'image', 'images/QvICHfiAb8v3ogGAWclLut8XzEtrxPAUIa7eRK8A.jpg', NULL, 0, NULL, '2024-02-25 19:30:08', '2024-02-25 19:30:08'),
(70, 6, '6', 'video', 'https://video.bangapp.pro/video/165dda0df51d00/165dda0df51d00.m3u8', NULL, 0, NULL, '2024-02-27 08:45:13', '2024-02-27 08:45:13'),
(71, 13, '13', 'image', 'images/9CMAypq7Q7McxWz7hPQ3NP47zuW8f111T0r9xKh2.jpg', NULL, 0, NULL, '2024-02-28 01:45:47', '2024-02-28 01:45:47'),
(72, 76, '76', 'image', 'images/RwUUjL4WY5GmrNgqv6rtMnVPudemzvoAmLpEvHMi.jpg', NULL, 0, NULL, '2024-02-28 18:27:47', '2024-02-28 18:27:47'),
(73, 77, '77', 'image', 'images/HXBi8h8cip757FzLrHlg3bEHiug5wWbErncj9KU3.jpg', NULL, 1, NULL, '2024-02-29 16:58:34', '2024-02-29 16:58:34'),
(74, 77, '77', 'image', 'images/HXBi8h8cip757FzLrHlg3bEHiug5wWbErncj9KU3.jpg', NULL, 1, NULL, '2024-02-29 16:58:51', '2024-02-29 16:58:51'),
(75, 6, '6', 'image', 'images/zl9LKEtmPNWj3m7oEoK6Pz7I0FHm0TvTs27yt4dV.jpg', NULL, 0, NULL, '2024-03-06 10:16:05', '2024-03-06 10:16:05'),
(76, 6, '6', 'image', 'images/zl9LKEtmPNWj3m7oEoK6Pz7I0FHm0TvTs27yt4dV.jpg', NULL, 0, NULL, '2024-03-06 12:30:10', '2024-03-06 12:30:10'),
(77, 6, '6', 'image', 'images/zl9LKEtmPNWj3m7oEoK6Pz7I0FHm0TvTs27yt4dV.jpg', NULL, 0, NULL, '2024-03-06 12:30:21', '2024-03-06 12:30:21'),
(78, 6, '6', 'image', 'images/GX0sjobAJuabtVAfZ4XvBai5TMy7d6EwBI3VE9Ui.jpg', NULL, 0, NULL, '2024-03-06 12:30:39', '2024-03-06 12:30:39'),
(79, 6, '6', 'image', 'images/zl9LKEtmPNWj3m7oEoK6Pz7I0FHm0TvTs27yt4dV.jpg', NULL, 0, NULL, '2024-03-06 16:01:37', '2024-03-06 16:01:37'),
(80, 6, '6', 'image', 'images/Z3qPFYVgdEaiO73cDqJDe2od4Ry08c2UC6ZFfDTX.jpg', NULL, 0, NULL, '2024-03-06 16:02:14', '2024-03-06 16:02:14'),
(81, 6, '6', 'image', 'images/AUVTMKeOtmnhwQLI3DnkohCLS6S8d9kmBwl0uOwO.jpg', NULL, 0, NULL, '2024-03-06 16:03:27', '2024-03-06 16:03:27'),
(82, 6, '6', 'image', 'images/i0gI6rujOsOBuMHmRwZvvsW6dzFJp8rOTXEHn7E9.jpg', NULL, 0, NULL, '2024-03-06 16:12:33', '2024-03-06 16:12:33'),
(83, 6, '6', 'image', 'images/9UTFoOz62AUYujL3YCWr7jwukp7G61zh96Vq4BOR.jpg', NULL, 0, NULL, '2024-03-06 16:12:58', '2024-03-06 16:12:58'),
(84, 6, '6', 'image', 'images/CE7dw4iL75ATo7i0TwUTsizqf4syKnvaLgvwzk9d.jpg', NULL, 0, NULL, '2024-03-06 16:16:42', '2024-03-06 16:16:42'),
(85, 6, '6', 'image', 'images/qVtUlMbw0NFGncnX9VZlCUICdTTRAqBsljDX5EIq.jpg', NULL, 0, NULL, '2024-03-06 16:17:22', '2024-03-06 16:17:22'),
(86, 6, '6', 'image', 'images/tNoJ0N8lessAUF82550foVi82GbauQhIv2UVafyv.jpg', NULL, 0, NULL, '2024-03-06 16:30:57', '2024-03-06 16:30:57'),
(87, 6, '6', 'image', 'images/fnnovUPOhiBXJOdyqax4vX2XkUAQiClHAPpRlFoZ.jpg', NULL, 0, NULL, '2024-03-06 16:31:58', '2024-03-06 16:31:58'),
(88, 13, '13', 'image', 'images/MOsb9h6FVZ80HdIrcZ3c6wEsx0pF5T115QrTB1q0.jpg', NULL, 0, NULL, '2024-03-06 19:15:49', '2024-03-06 19:15:49'),
(89, 13, '13', 'image', 'images/rzNgijFUrIQBs4kugRo365YBG8xrEIveuZyr8bVe.jpg', NULL, 0, NULL, '2024-03-06 19:16:00', '2024-03-06 19:16:00'),
(90, 13, '13', 'image', 'images/pGGUQonOcW6EsqQltBYjiwgxNgKf5oFJGgJz4R7N.jpg', NULL, 0, NULL, '2024-03-06 19:16:55', '2024-03-06 19:16:55'),
(91, 13, '13', 'image', 'images/WlfQ74PyzkhSDP1D2M77Y5ja5IbYckdjwEaFQvxs.jpg', NULL, 0, NULL, '2024-03-06 19:17:26', '2024-03-06 19:17:26'),
(92, 13, '13', 'image', 'images/a6jJz2L9StmeG7stzNVuDN7iWTeveJ7dOukxl36Z.jpg', NULL, 0, NULL, '2024-03-06 19:17:55', '2024-03-06 19:17:55'),
(93, 13, '13', 'image', 'images/XKqiFgPAzgwEcUz7d0xPdsuzMogqaYDj6tEha4jG.png', 'images/Dq8QtzfKCSN39a1jfnQcVQujPbQKq5X7jGrwOUuL.png', 0, NULL, '2024-03-06 19:19:10', '2024-03-06 19:19:10'),
(94, 13, '13', 'image', 'images/oqgA27t7QxR3iVnnWPIu98N1sMWKLSmkgpGFKCf7.jpg', NULL, 0, NULL, '2024-03-06 19:20:18', '2024-03-06 19:20:18'),
(95, 13, '13', 'image', 'images/tRaBtn6BoQqjpr3T2Y42APXWspkyhx0iNGP6d4ES.jpg', NULL, 0, NULL, '2024-03-06 19:20:24', '2024-03-06 19:20:24'),
(96, 13, '13', 'image', 'images/rrj6duIBieyjg12zVXUWyX25f7IOShw2LOnyqBgO.jpg', NULL, 0, NULL, '2024-03-06 19:20:29', '2024-03-06 19:20:29'),
(97, 13, '13', 'image', 'images/rVHkABUScNb8Xbn7aj8uTBJYQkReaYlv3i3eYX6O.jpg', NULL, 0, NULL, '2024-03-06 19:20:42', '2024-03-06 19:20:42'),
(98, 13, '13', 'image', 'images/pDuJ7MB79ULmJHK6lth8to3q8450teCUCNV1pXxx.jpg', NULL, 0, NULL, '2024-03-06 19:20:45', '2024-03-06 19:20:45'),
(99, 13, '13', 'image', 'images/hRAUQNQDRQrmVqmW91mv2v8tGX4xcB22eJbSDg7d.png', 'images/Q3ndcSyzJHNa0tZrQoAblNxKGV2d5cFJetIBlmTe.png', 0, NULL, '2024-03-06 19:21:28', '2024-03-06 19:21:28'),
(100, 13, '13', 'image', 'images/9rQvGvk9GAwnbxTYv21SisiZZaztDpp9mw2ptgI0.jpg', NULL, 0, NULL, '2024-03-06 19:21:47', '2024-03-06 19:21:47'),
(101, 13, '13', 'image', 'images/REtcEAF40ZSpXejQRFfbzajOkCoByK2QmgWhAkYO.jpg', NULL, 0, NULL, '2024-03-06 19:23:13', '2024-03-06 19:23:13'),
(102, 13, '13', 'image', 'images/t4RGsJIeNl0i14wlyvvBvwHniiuubze6PeAgWeNc.jpg', NULL, 0, NULL, '2024-03-06 19:44:34', '2024-03-06 19:44:34'),
(103, 13, '13', 'image', 'images/dkf98WYjpMS5BLKP3jeZ3tObWPhdvvDAlYlAoQAZ.jpg', NULL, 0, NULL, '2024-03-06 19:51:41', '2024-03-06 19:51:41'),
(104, 13, '13', 'video', 'https://video.bangapp.pro/video/165de0a5a05af7/165de0a5a05af7.m3u8', NULL, 0, NULL, '2024-03-07 00:07:11', '2024-03-07 00:07:11'),
(105, 13, '13', 'video', 'https://video.bangapp.pro/video/165de0a5a05af7/165de0a5a05af7.m3u8', NULL, 0, NULL, '2024-03-07 00:07:33', '2024-03-07 00:07:33'),
(106, 13, '13', 'image', 'images/KgLuwQsqnNrz7wxEGfoXcsOoQD7AFGLtg9TETPFj.jpg', NULL, 0, NULL, '2024-03-07 00:09:30', '2024-03-07 00:09:30'),
(107, 13, '13', 'image', 'images/hWCRt3YRz7pRVFjs4V36la0aX4ei16LIw2CBCUDK.jpg', NULL, 0, NULL, '2024-03-07 00:09:39', '2024-03-07 00:09:39'),
(108, 13, '13', 'video', 'https://video.bangapp.pro/video/165de0a5a05af7/165de0a5a05af7.m3u8', NULL, 0, NULL, '2024-03-07 00:15:48', '2024-03-07 00:15:48'),
(109, 13, '13', 'image', 'images/1A1bhrDqXMpnfxvcbHpqbLdARMSWNFhhGlOAGc66.jpg', NULL, 0, NULL, '2024-03-07 00:23:34', '2024-03-07 00:23:34'),
(110, 13, '13', 'image', 'images/MKrBQg8py17sgylPYfFM4e9S3zA1d6DMDwRH5Cc7.jpg', NULL, 0, NULL, '2024-03-07 04:37:13', '2024-03-07 04:37:13'),
(111, 13, '13', 'image', 'images/qdX4bBAMN0echwSMr3DCobLx7r4oJTYdxYunzoXC.jpg', NULL, 0, NULL, '2024-03-07 04:43:10', '2024-03-07 04:43:10'),
(112, 13, '13', 'image', 'images/lrinY7ajYVKK7HzMlxaAlAwrcYm37Xd6SyAt8mLW.jpg', NULL, 0, NULL, '2024-03-07 04:43:21', '2024-03-07 04:43:21'),
(113, 13, '13', 'image', 'images/xnJR3WThhN5FyKxtOPZwc3Wqar6PIDhBP2TcMnQC.jpg', NULL, 0, NULL, '2024-03-07 04:44:24', '2024-03-07 04:44:24'),
(114, 13, '13', 'image', 'images/mN6eoyu39qsVHioI1qYzprHvVljpeiiVBBwy92vV.jpg', NULL, 0, NULL, '2024-03-07 04:44:40', '2024-03-07 04:44:40'),
(115, 13, '13', 'image', 'images/iwG12dYbZT6cMROupdnm9DKuS461P21UGKPMnoBm.jpg', NULL, 0, NULL, '2024-03-07 04:44:49', '2024-03-07 04:44:49'),
(116, 13, '13', 'image', 'images/LzGlWTHjoV7ellcOxF2TGEy7PJUjEcHSniJMRFB1.jpg', NULL, 0, NULL, '2024-03-07 04:45:51', '2024-03-07 04:45:51'),
(117, 13, '13', 'image', 'images/cQ1NUpbgaOAaMEG5s3cwyozfx1oY7T2RY2yb8qBR.jpg', NULL, 0, NULL, '2024-03-07 04:46:20', '2024-03-07 04:46:20'),
(118, 13, '13', 'image', 'images/PjZAAdtMHIk6ckW2Y3JgnfYKFINot6FtNzVKUVAF.jpg', NULL, 0, NULL, '2024-03-07 04:46:55', '2024-03-07 04:46:55'),
(119, 13, '13', 'image', 'images/PjZAAdtMHIk6ckW2Y3JgnfYKFINot6FtNzVKUVAF.jpg', NULL, 0, NULL, '2024-03-07 04:47:07', '2024-03-07 04:47:07'),
(120, 13, '13', 'image', 'images/fPax60oIj17hhIDOgD7fxfBv0HCHncCho8AgkLOm.jpg', NULL, 0, NULL, '2024-03-07 04:52:17', '2024-03-07 04:52:17'),
(121, 13, '13', 'image', 'images/vaoTgw7XCGFmenue6L31FrTjVHJLSpVLOKZbbY4a.jpg', NULL, 0, NULL, '2024-03-07 04:52:22', '2024-03-07 04:52:22'),
(122, 13, '13', 'image', 'images/cNfkKAVGLOS2xxP2ukaVPhml3aaSDKPTctssYAIT.jpg', NULL, 0, NULL, '2024-03-07 04:52:36', '2024-03-07 04:52:36'),
(123, 13, '13', 'image', 'images/wOIjEpQHCB2xPuYQRVWy2TktDHLNHn6n6hQk2Prn.jpg', NULL, 0, NULL, '2024-03-07 04:52:46', '2024-03-07 04:52:46'),
(124, 13, '13', 'image', 'images/PIG03znpopdHoxR5pXxVXtOpPL0jzUiac6Z9h89r.jpg', NULL, 0, NULL, '2024-03-07 04:52:51', '2024-03-07 04:52:51'),
(125, 13, '13', 'image', 'images/0oRicTHnWTyDDQ1bjmBbpPT28BeSjntkc4aRexU4.jpg', NULL, 0, NULL, '2024-03-07 04:52:57', '2024-03-07 04:52:57'),
(126, 13, '13', 'image', 'images/aCRYBpJwo8qxZvH1Tbb3GwVkACUborAMAf6w9P6N.jpg', NULL, 0, NULL, '2024-03-07 04:53:02', '2024-03-07 04:53:02'),
(127, 6, '6', 'video', 'https://video.bangapp.pro/video/165ec6bef8ef5e/165ec6bef8ef5e.m3u8', NULL, 0, NULL, '2024-03-09 14:58:12', '2024-03-09 14:58:12'),
(128, 6, '6', 'image', 'images/43wzQx2FmqI1XGCYwwYIn2oF2fa4lTtvgtPF6qrK.jpg', NULL, 1, NULL, '2024-03-09 14:58:37', '2024-03-09 14:58:37'),
(129, 13, '13', 'video', 'https://video.bangapp.pro/video/165e3776f50188/165e3776f50188.m3u8', NULL, 0, NULL, '2024-03-09 15:21:15', '2024-03-09 15:21:15'),
(130, 13, '13', 'image', 'images/16W9ThLIxJeG86jxD9ZKSXrCJbPwjq6xjFtPSUNH.jpg', NULL, 0, NULL, '2024-03-16 01:22:28', '2024-03-16 01:22:28'),
(131, 13, '13', 'image', 'images/CyfpSGRvHvg5J3gI8VhZgF4Afl7ohDEgB9d8WmM2.jpg', NULL, 0, NULL, '2024-03-16 01:22:35', '2024-03-16 01:22:35'),
(132, 13, '13', 'image', 'images/I7qOO1xGnPquyEFZhwPrxcmMLdIknPh4vYKQWYmr.jpg', NULL, 0, NULL, '2024-03-16 01:22:43', '2024-03-16 01:22:43'),
(133, 13, '13', 'video', 'https://video.bangapp.pro/video/165db841e4689d/165db841e4689d.m3u8', NULL, 0, NULL, '2024-03-18 08:54:56', '2024-03-18 08:54:56'),
(134, 13, '13', 'image', 'images/iuR8Hq6bhtJIeX4JZ1VBQSXUpeyxND6hhFFOmKGi.jpg', NULL, 0, NULL, '2024-03-19 09:32:25', '2024-03-19 09:32:25'),
(135, 13, '13', 'image', 'images/nOJLcF6hvYqZDdy8Q9434gt4lBH21Yivnl3NR7ba.jpg', NULL, 0, NULL, '2024-03-19 09:37:34', '2024-03-19 09:37:34'),
(136, 13, '13', 'image', 'images/0y5zKlJQ3RexPXAtvyaASLyrgDHN1zA8B9pDjy2d.jpg', NULL, 0, NULL, '2024-03-19 09:37:53', '2024-03-19 09:37:53'),
(137, 13, '13', 'image', 'images/KTdXlWthplRQb1lc6elzEp2xavpghJ6NQPq68P5S.jpg', NULL, 1, NULL, '2024-03-19 15:13:17', '2024-03-19 15:13:17'),
(138, 13, '13', 'image', 'images/kp9oOiiXc9JkEVRozN55U6oVChjX1CWeeGDRlfRg.jpg', NULL, 1, NULL, '2024-03-20 07:45:37', '2024-03-20 07:45:37'),
(139, 13, '13', 'image', 'images/NuDhsTJJM6yiNnsJkQ4QWxNkd5wIYZnxNv45naJV.jpg', NULL, 0, NULL, '2024-03-23 17:09:31', '2024-03-23 17:09:31'),
(140, 13, '13', 'image', 'images/eMapjt3c91cVlebvsOhGhYf8jfCCLFPWZjpJWwTv.jpg', NULL, 0, NULL, '2024-03-23 17:13:59', '2024-03-23 17:13:59'),
(141, 13, '13', 'image', 'images/lGlJPThBuhA9L8cXXIGlBEcT1aLzc3FsFLVdGqVG.jpg', NULL, 0, NULL, '2024-03-23 17:14:10', '2024-03-23 17:14:10'),
(142, 13, '13', 'image', 'images/AJ9KsLJG0XbbdzVqYjhdSB9JCOPoRLabLL5l12Pr.jpg', NULL, 0, NULL, '2024-03-23 17:26:42', '2024-03-23 17:26:42'),
(143, 13, '13', 'image', 'images/Hr7MmGuoeQ0WrkNUu4ZPmqLH9hoQQ5Iv17ALTIvc.jpg', NULL, 0, NULL, '2024-03-23 17:37:03', '2024-03-23 17:37:03'),
(144, 13, '13', 'image', 'images/aTobuQQkwAYZPNOTN59up8oAccwpZJhMF3sJbK0s.jpg', NULL, 0, NULL, '2024-03-23 19:11:31', '2024-03-23 19:11:31'),
(145, 13, '13', 'video', 'https://video.bangapp.pro/video/165ff3d52e29a7/165ff3d52e29a7.m3u8', NULL, 0, NULL, '2024-03-23 20:38:46', '2024-03-23 20:38:46'),
(146, 13, '13', 'image', 'images/rUf1pMDHchh7Xh4xY138oR1fiS74YjUZXhNj7Bz2.jpg', NULL, 0, NULL, '2024-03-24 02:29:48', '2024-03-24 02:29:48'),
(147, 13, '13', 'image', 'images/PXC6EDlGaUGTQhIVgiEK3zw18lGDmZSKsI0PQEbS.jpg', NULL, 0, NULL, '2024-03-24 02:57:21', '2024-03-24 02:57:21'),
(148, 13, '13', 'image', 'images/1hvTOckbVpz5us0Ksa57Z2Th9ftnjLuZK4N38kI8.png', 'images/ht6ppAzCWxZCNxqU9MghmUHJgSuHY1apY1UUdJJW.png', 0, NULL, '2024-03-24 02:59:13', '2024-03-24 02:59:13'),
(149, 13, '13', 'image', 'images/94BPH6wtMWi7gxxPTRfTGByfglH7zWlQyBbtmA8t.png', 'images/tA3RZ6C1jMzPgvTJQiHrZT7KdkAsoMEy1K0u6QEk.png', 0, NULL, '2024-03-24 02:59:26', '2024-03-24 02:59:26'),
(150, 6, '6', 'video', 'https://video.bangapp.pro/video/1660090c3bf4ab/1660090c3bf4ab.m3u8', NULL, 0, NULL, '2024-03-24 20:45:24', '2024-03-24 20:45:24'),
(151, 13, '13', 'video', 'https://video.bangapp.pro/video/166015116dcf50/166015116dcf50.m3u8', NULL, 1, NULL, '2024-03-25 11:42:02', '2024-03-25 11:42:02'),
(152, 13, '13', 'video', 'https://video.bangapp.pro/video/166015116dcf50/166015116dcf50.m3u8', NULL, 1, NULL, '2024-03-25 12:15:14', '2024-03-25 12:15:14'),
(153, 13, '13', 'video', 'https://video.bangapp.pro/video/16601683c93f4d/16601683c93f4d.m3u8', NULL, 0, NULL, '2024-03-25 12:22:28', '2024-03-25 12:22:28'),
(154, 13, '13', 'video', 'https://video.bangapp.pro/video/166016624b100d/166016624b100d.m3u8', NULL, 0, NULL, '2024-03-25 12:22:57', '2024-03-25 12:22:57'),
(155, 13, '13', 'video', 'https://video.bangapp.pro/video/1660164472f156/1660164472f156.m3u8', NULL, 0, NULL, '2024-03-25 12:28:14', '2024-03-25 12:28:14'),
(156, 13, '13', 'video', 'https://video.bangapp.pro/video/166012ea756a45/166012ea756a45.m3u8', NULL, 0, NULL, '2024-03-25 12:31:37', '2024-03-25 12:31:37'),
(157, 13, '13', 'image', 'images/yl93xvTbCCctdyiuB1H2IpKHRz6bgiV6ZLJeOMqQ.jpg', NULL, 1, NULL, '2024-03-25 13:04:40', '2024-03-25 13:04:40'),
(158, 13, '13', 'video', 'https://video.bangapp.pro/video/165ee611a50595/165ee611a50595.m3u8', NULL, 0, NULL, '2024-03-25 15:02:42', '2024-03-25 15:02:42'),
(159, 13, '13', 'video', 'https://video.bangapp.pro/video/165ff3d52e29a7/165ff3d52e29a7.m3u8', NULL, 0, NULL, '2024-03-25 15:02:54', '2024-03-25 15:02:54'),
(160, 13, '13', 'image', 'images/10EsFIpMPCLi9ls2KQQAbs9rQmcRJgWcXNTnHVM0.jpg', NULL, 1, NULL, '2024-03-26 07:46:13', '2024-03-26 07:46:13'),
(161, 13, '13', 'video', 'https://video.bangapp.pro/video/166007d1d69f1f/166007d1d69f1f.m3u8', NULL, 0, NULL, '2024-03-26 07:47:27', '2024-03-26 07:47:27'),
(162, 6, '6', 'image', 'images/O225ESvp6I31lxQJslOlrqt9IVKtjQ6lwF5FlbAu.jpg', NULL, 0, NULL, '2024-03-28 16:51:59', '2024-03-28 16:51:59'),
(163, 13, '13', 'video', 'https://video.bangapp.pro/video/165ec7ce97fb2f/165ec7ce97fb2f.m3u8', NULL, 0, NULL, '2024-03-29 19:20:27', '2024-03-29 19:20:27'),
(164, 95, '95', 'video', 'https://video.bangapp.pro/video/1660836930c227/1660836930c227.m3u8', NULL, 0, NULL, '2024-03-30 15:58:51', '2024-03-30 15:58:51'),
(165, 13, '13', 'image', 'images/F5RmpKMhOeViSNrs5cI4y3RgDlnEKdrQhXjPpmld.jpg', NULL, 0, NULL, '2024-03-31 13:59:56', '2024-03-31 13:59:56'),
(166, 13, '13', 'video', 'https://video.bangapp.pro/video/165db842a34413/165db842a34413.m3u8', NULL, 0, NULL, '2024-04-02 14:10:42', '2024-04-02 14:10:42'),
(167, 13, '13', 'video', 'https://video.bangapp.pro/video/165db841e4689d/165db841e4689d.m3u8', NULL, 0, NULL, '2024-04-02 14:10:55', '2024-04-02 14:10:55'),
(168, 13, '13', 'video', 'https://video.bangapp.pro/video/165db83f64ae08/165db83f64ae08.m3u8', NULL, 0, NULL, '2024-04-02 14:11:04', '2024-04-02 14:11:04'),
(169, 13, '13', 'video', 'https://video.bangapp.pro/video/165db81fba10b8/165db81fba10b8.m3u8', NULL, 0, NULL, '2024-04-02 14:11:18', '2024-04-02 14:11:18'),
(170, 13, '13', 'video', 'https://video.bangapp.pro/video/165fa9ccacce53/165fa9ccacce53.m3u8', NULL, 0, NULL, '2024-04-02 14:17:42', '2024-04-02 14:17:42'),
(171, 13, '13', 'image', 'images/PqMLiVEzJdkNeNERMIGtyVeV5H3fKVatAMdFJ9XR.jpg', NULL, 0, NULL, '2024-04-03 08:15:13', '2024-04-03 08:15:13'),
(172, 13, '13', 'image', 'images/hGQ3wpbh7C2j00SNaLZwHwWJY9TATJZnK2IadMje.jpg', NULL, 0, NULL, '2024-04-03 09:05:08', '2024-04-03 09:05:08'),
(173, 13, '13', 'image', 'images/zJNTnvEmDwZu3vz6s5t4ABx1p1T6J4kMCkDQgsa6.jpg', NULL, 0, NULL, '2024-04-03 10:11:49', '2024-04-03 10:11:49'),
(174, 13, '13', 'image', 'images/dEsc1yqIBMT3GcfVZvOD1MImWZg33oQPTBXUkgoQ.jpg', NULL, 0, NULL, '2024-04-03 14:58:24', '2024-04-03 14:58:24'),
(175, 13, '13', 'image', 'images/KpegkN8tivntyEtLE23Npn8F0iaoNVCmKaTU3Mc8.jpg', NULL, 0, NULL, '2024-04-03 14:58:33', '2024-04-03 14:58:33'),
(176, 13, '13', 'image', 'images/dMUW4CLXPTs4mQEW1I4RaTAXfJyVXKAHu9zxlZAD.jpg', NULL, 0, NULL, '2024-04-03 14:58:43', '2024-04-03 14:58:43'),
(177, 13, '13', 'image', 'images/MaGF3lfuQjntCGFjiwyIYmnuH5IO0KiyJQmvsXDr.jpg', NULL, 0, NULL, '2024-04-03 14:59:05', '2024-04-03 14:59:05'),
(178, 13, '13', 'image', 'images/MaGF3lfuQjntCGFjiwyIYmnuH5IO0KiyJQmvsXDr.jpg', NULL, 0, NULL, '2024-04-03 15:02:09', '2024-04-03 15:02:09'),
(179, 13, '13', 'image', 'images/Kpw7MYW3w9qNm512QWYLALAoV8gzXwWIEiNO9eQx.jpg', NULL, 0, NULL, '2024-04-03 15:02:24', '2024-04-03 15:02:24'),
(180, 13, '13', 'image', 'images/MaGF3lfuQjntCGFjiwyIYmnuH5IO0KiyJQmvsXDr.jpg', NULL, 0, NULL, '2024-04-03 15:02:30', '2024-04-03 15:02:30'),
(181, 13, '13', 'image', 'images/8j211TSFO7qhtYf1fADhOibgIUuFsTR1MmuWgJ6q.jpg', NULL, 0, NULL, '2024-04-03 15:02:42', '2024-04-03 15:02:42'),
(182, 13, '13', 'image', 'images/ufWFr4tFPZMKd6Z6nTNJybc5opo1Fe10L6aGx5Ec.jpg', NULL, 0, NULL, '2024-04-03 15:02:48', '2024-04-03 15:02:48'),
(183, 13, '13', 'image', 'images/13E0fXIXFwgEUmivz9ab6y1hU5uyzhg8z9NFvhDS.jpg', NULL, 0, NULL, '2024-04-03 15:02:55', '2024-04-03 15:02:55'),
(184, 13, '13', 'image', 'images/DY7GD4gPQdjzRHt5dCW6DFu6VZjohwcavFr7ow3j.jpg', NULL, 0, NULL, '2024-04-03 15:03:02', '2024-04-03 15:03:02'),
(185, 13, '13', 'image', 'images/5favzZH73FnHvqbFTVIj4kZH9J8hWJqSMzWgpcqT.jpg', NULL, 0, NULL, '2024-04-03 15:03:14', '2024-04-03 15:03:14'),
(186, 13, '13', 'image', 'images/UZTywVS6uabDbV0ecP0T72CkpxyLQPKjmmTYWqDt.jpg', NULL, 0, NULL, '2024-04-03 15:03:17', '2024-04-03 15:03:17'),
(187, 13, '13', 'image', 'images/txHXZFWOQwYB2ZYY8lHIDm6V4Iicn2huZujMVSnQ.jpg', NULL, 0, NULL, '2024-04-03 15:03:24', '2024-04-03 15:03:24'),
(188, 13, '13', 'image', 'images/3QHHMb1Vbu5odOxf54pIPRsEQZeTAwVbila12jET.jpg', NULL, 0, NULL, '2024-04-03 15:03:31', '2024-04-03 15:03:31'),
(189, 13, '13', 'image', 'images/impYSX75ena0isutUc3J4YPBI3I7GhiLVJO3ZXRS.jpg', NULL, 0, NULL, '2024-04-03 15:03:38', '2024-04-03 15:03:38'),
(190, 13, '13', 'image', 'images/QWccGHkJIMQCRyjw4OHhAWmFBOjnf0F75e6YQKOU.jpg', NULL, 0, NULL, '2024-04-03 15:03:46', '2024-04-03 15:03:46'),
(191, 13, '13', 'image', 'images/R10fDy3bmG61VZ6S9EEl8nQx1BU2g3d4iat2RRme.jpg', NULL, 0, NULL, '2024-04-03 15:03:52', '2024-04-03 15:03:52'),
(192, 13, '13', 'image', 'images/2aHIBFJEzUT5IWQEzccg1Rrcj2l4yinQQEHvp8bY.jpg', NULL, 0, NULL, '2024-04-03 15:03:57', '2024-04-03 15:03:57'),
(193, 13, '13', 'image', 'images/rEtd0STvMCZb2PDSBVbqbbGQ706A5EEOuU7CRA7d.jpg', NULL, 0, NULL, '2024-04-03 15:04:02', '2024-04-03 15:04:02'),
(194, 13, '13', 'image', 'images/oA1BHCkJQ9CvXaYp3eqoy9Qs6hWJ2yf9HRyiWPxb.jpg', NULL, 0, NULL, '2024-04-03 15:04:07', '2024-04-03 15:04:07'),
(195, 13, '13', 'image', 'images/t1DvASxe1Ky3wKI2jOhXkQXB6zLgSvbXFQYcJAiV.jpg', NULL, 0, NULL, '2024-04-03 15:04:19', '2024-04-03 15:04:19'),
(196, 13, '13', 'image', 'images/xEZxFmxeotpiiUgGl9JMDjU6VdaQNd44XD38XCXm.jpg', NULL, 0, NULL, '2024-04-03 15:04:24', '2024-04-03 15:04:24'),
(197, 13, '13', 'image', 'images/7j73rfoNbWhy5U0o0AeP9vtVKyx1fHJxOW6ZteBH.jpg', NULL, 0, NULL, '2024-04-03 15:04:54', '2024-04-03 15:04:54'),
(198, 13, '13', 'image', 'images/0yyOKXBG5SXiSWZVuDGW3BFEwyOV1JpovCNUm09D.jpg', NULL, 0, NULL, '2024-04-03 15:04:59', '2024-04-03 15:04:59'),
(199, 13, '13', 'image', 'images/KehbYgzIkd1ifjDEQ5dwWXZsQ4ZOjyjL5IXPj0Ik.jpg', NULL, 0, NULL, '2024-04-03 15:05:05', '2024-04-03 15:05:05'),
(200, 13, '13', 'image', 'images/kSxRJJca7DfB7mYeTqyLsJzIMsVl7yzRkGsSpJ3j.jpg', NULL, 0, NULL, '2024-04-03 15:05:09', '2024-04-03 15:05:09'),
(201, 13, '13', 'image', 'images/W11iYPqMkwc8lpKmCTxk8ffUaLN07wZmNzNXQesZ.jpg', NULL, 0, NULL, '2024-04-03 15:05:16', '2024-04-03 15:05:16'),
(202, 13, '13', 'image', 'images/680Osr7SZdHTWwtpTqWcQTmQLL9i2z9ZtbnoFcov.jpg', NULL, 0, NULL, '2024-04-03 15:05:44', '2024-04-03 15:05:44'),
(203, 13, '13', 'image', 'images/MvmG8wcW0QTaCQmAlynpBskjwsGAXfoLUYzm9DJP.jpg', NULL, 0, NULL, '2024-04-03 15:06:11', '2024-04-03 15:06:11'),
(204, 13, '13', 'image', 'images/TmNvP0Fll31Vw2JEI4hlV8wiRsBWM7AFtIqHUlBW.jpg', NULL, 0, NULL, '2024-04-03 15:06:17', '2024-04-03 15:06:17'),
(205, 13, '13', 'image', 'images/o6jxLYZnNFD1sXWyp1YnGHRbtY83lyaYl8neToWb.jpg', NULL, 0, NULL, '2024-04-03 15:06:33', '2024-04-03 15:06:33'),
(206, 13, '13', 'image', 'images/SsZkWqYvJzopL7APAE4AQQgOvgqpWXueYVPDS9H8.jpg', NULL, 0, NULL, '2024-04-03 15:06:40', '2024-04-03 15:06:40'),
(207, 13, '13', 'image', 'images/LIuXlArlRo9aKSAfWyBqsB5iXsQeeB0xjGTU2fQH.jpg', NULL, 0, NULL, '2024-04-03 15:06:45', '2024-04-03 15:06:45'),
(208, 13, '13', 'image', 'images/5IBoe64W2RLFIZJ4QtiwFgP7GCJZigP7qz5PoLUV.jpg', NULL, 0, NULL, '2024-04-03 15:06:50', '2024-04-03 15:06:50'),
(209, 13, '13', 'image', 'images/deH2rdn7ApK8m71M19FSvztbKN62AhwDCO13qf6E.jpg', NULL, 0, NULL, '2024-04-03 15:06:58', '2024-04-03 15:06:58'),
(210, 13, '13', 'image', 'images/6gDosrznHLQWRZChKmA8ZgqsotW9jlI8dvSmVm4p.jpg', NULL, 0, NULL, '2024-04-03 15:07:00', '2024-04-03 15:07:00'),
(211, 13, '13', 'image', 'images/VrHDRDxR8SWPFk5OrD7xt89M48VnVIMJeYzUmak6.jpg', NULL, 0, NULL, '2024-04-03 15:07:11', '2024-04-03 15:07:11'),
(212, 13, '13', 'image', 'images/f7QxKHKFePuWK0gj6HTvWTYdYdozz9ys2vohvXCF.jpg', NULL, 0, NULL, '2024-04-03 15:07:24', '2024-04-03 15:07:24'),
(213, 13, '13', 'image', 'images/FWkt9js2AuvU1ZC5rD0xQz6e7LyReRPvl6SEqxeF.jpg', NULL, 0, NULL, '2024-04-03 15:08:42', '2024-04-03 15:08:42'),
(214, 13, '13', 'image', 'images/seZbpLJDMJEssaYxBgTUDUN0BSIqlaZPLwHML20p.jpg', NULL, 0, NULL, '2024-04-03 15:08:48', '2024-04-03 15:08:48'),
(215, 13, '13', 'image', 'images/mxNq93NrCQwLq2BGilHhPFNbmtSSo8JfSrTUEB1Q.jpg', NULL, 0, NULL, '2024-04-03 15:09:53', '2024-04-03 15:09:53'),
(216, 13, '13', 'image', 'images/tzIo94hRMOhxmDeyN9j0aC2O8DrAqz0N57CM3SnM.jpg', NULL, 0, NULL, '2024-04-03 15:10:58', '2024-04-03 15:10:58'),
(217, 13, '13', 'image', 'images/nLnHBA1AVTza9K1aXH16s0oG1yQ5cqW2zg5jES4c.jpg', NULL, 0, NULL, '2024-04-03 15:11:55', '2024-04-03 15:11:55'),
(218, 13, '13', 'image', 'images/J5wj6LvgMBbSJOIB0maB7dQMbJ2D0ztNsUEcmhLv.jpg', NULL, 0, NULL, '2024-04-03 15:23:51', '2024-04-03 15:23:51'),
(219, 13, '13', 'image', 'images/pyeG1lAnrvFcAHavknadTuHQAYiF2hsYSWibk1rs.jpg', NULL, 0, NULL, '2024-04-03 15:23:56', '2024-04-03 15:23:56'),
(220, 13, '13', 'image', 'images/ModnbHo77FeGbXxAUzTDezMOFxEUHJcT4I8fut86.jpg', NULL, 0, NULL, '2024-04-03 15:24:04', '2024-04-03 15:24:04'),
(221, 13, '13', 'image', 'images/8Z6lbub5IwnX0CjayQwxEfWDVfG01qwQQTPcg4an.jpg', NULL, 0, NULL, '2024-04-03 15:24:10', '2024-04-03 15:24:10'),
(222, 13, '13', 'image', 'images/EoHYUJRwSe1Q41ku1HFQ3I5kfXJSUV8n5CoOXEDJ.jpg', NULL, 0, NULL, '2024-04-03 15:24:15', '2024-04-03 15:24:15'),
(223, 13, '13', 'image', 'images/DbHjAubdUhFeBk1OyHcxfJW0WFGxqlAfzTnhWbys.jpg', NULL, 0, NULL, '2024-04-03 15:24:20', '2024-04-03 15:24:20'),
(224, 13, '13', 'image', 'images/NsjPlTw6WQC596RPsTRy7u1iil8ArMASagJqdR5s.jpg', NULL, 1, NULL, '2024-04-03 15:53:29', '2024-04-03 15:53:29'),
(225, 6, '6', 'video', 'https://video.bangapp.pro/video/166083d755ae64/166083d755ae64.m3u8', NULL, 0, NULL, '2024-04-04 11:35:06', '2024-04-04 11:35:06'),
(226, 6, '6', 'video', 'https://video.bangapp.pro/video/1660d153531d91/1660d153531d91.m3u8', NULL, 0, NULL, '2024-04-04 11:35:15', '2024-04-04 11:35:15'),
(227, 13, '13', 'image', 'images/TW9n6pddzvkKGPr0kx65i7knZrKhSJhaHDFwKld5.jpg', NULL, 0, NULL, '2024-04-09 20:41:11', '2024-04-09 20:41:11'),
(228, 13, '13', 'image', 'images/vMAacxHZPgVVyR8bBKShMlYVJmzLt4vDrCBRtvTe.jpg', NULL, 0, NULL, '2024-04-11 09:37:32', '2024-04-11 09:37:32'),
(229, 13, '13', 'image', 'images/GJUmy4aDAsWCAUGMBTe48NyP3xg1rWrghNJ6NYKE.jpg', NULL, 0, NULL, '2024-04-11 09:37:47', '2024-04-11 09:37:47'),
(230, 13, '13', 'image', 'images/9PF1s2Z4z7ba56z2AHXR0VkRc9T37lWbqclvU53x.jpg', NULL, 0, NULL, '2024-04-11 11:11:04', '2024-04-11 11:11:04'),
(231, 13, '13', 'image', 'images/rIK9ZndOzAmXykszNwhTwJYYMqF5uqiduLFTtYpW.jpg', NULL, 0, NULL, '2024-04-11 11:13:39', '2024-04-11 11:13:39'),
(232, 13, '13', 'image', 'images/THjalFxDVGU6FvDrpLoWx347duZQh9d3o1ew4I3x.jpg', NULL, 0, NULL, '2024-04-11 21:44:13', '2024-04-11 21:44:13'),
(233, 13, '13', 'image', 'images/fiTlLGvn5CVN1Snq2KFHsfTpdBqI8OFZB1LQOT1D.jpg', NULL, 0, NULL, '2024-04-13 07:57:59', '2024-04-13 07:57:59'),
(234, 13, '13', 'image', 'images/SudluKQAv5GHTjQ39Dri5OREwezwc7byYz0xl6c0.jpg', NULL, 0, NULL, '2024-04-13 09:23:52', '2024-04-13 09:23:52'),
(235, 13, '13', 'image', 'images/S3oY8RIn0Dfy5mdZgo4M4XGobB2QtdT04nVDx9kL.jpg', NULL, 0, NULL, '2024-04-13 09:24:02', '2024-04-13 09:24:02'),
(236, 13, '13', 'video', 'https://video.bangapp.pro/video/1661a501eb0358/1661a501eb0358.m3u8', NULL, 0, NULL, '2024-04-13 09:54:38', '2024-04-13 09:54:38'),
(237, 13, '13', 'image', 'images/3YfEl5WDvitwQuy9y0K6AtdNFGfSIws2ZnDUSLB8.jpg', NULL, 0, NULL, '2024-04-13 16:23:21', '2024-04-13 16:23:21'),
(238, 13, '13', 'image', 'images/wI89CuzI9Alo9PEsuFKe8TzEMtZTYXnMt8LN86LB.jpg', NULL, 0, NULL, '2024-04-13 17:12:27', '2024-04-13 17:12:27'),
(239, 13, '13', 'image', 'images/wKUn0JPZHxtU6BMqbGEtRSlCweJP5dLXkGeeEBKC.jpg', NULL, 1, NULL, '2024-04-13 19:35:45', '2024-04-13 19:35:45'),
(240, 13, '13', 'image', 'images/57k73ja3HOIdFpBL82hDqhza4SRvlIkToBKOW5iV.jpg', NULL, 0, NULL, '2024-04-15 12:52:36', '2024-04-15 12:52:36'),
(241, 13, '13', 'image', 'images/DDdmddan8mv2HF2fmKdOmKaKf5u2btpyeAXOKuIO.jpg', NULL, 0, NULL, '2024-04-15 12:55:07', '2024-04-15 12:55:07'),
(242, 13, '13', 'image', 'images/WJkuycvyOLcTIiZdAcHJP0x8wHcMz8rTYPnXgTUk.jpg', NULL, 0, NULL, '2024-04-15 12:57:00', '2024-04-15 12:57:00'),
(243, 13, '13', 'image', 'images/9oJg5Su5yhmeMPpgLjMTJEvXHbBPF9QSPCqBT7hb.jpg', NULL, 0, NULL, '2024-04-15 13:11:54', '2024-04-15 13:11:54'),
(244, 13, '13', 'image', 'images/ANkIFCgCrdaoHh5QV61SU6Xe7fQMky0V7ZrEUB2t.jpg', NULL, 0, NULL, '2024-04-15 13:12:01', '2024-04-15 13:12:01'),
(245, 13, '13', 'image', 'images/6h2a5QFXYeIZrvIdyFz0wWMwhbCTwWRLErmH6Z6d.jpg', NULL, 0, NULL, '2024-04-15 13:12:07', '2024-04-15 13:12:07'),
(246, 13, '13', 'image', 'images/gEaSMLTRyHfbmDbeSXnsZr4jbMUj0t9qgbL2Vtr9.jpg', NULL, 0, NULL, '2024-04-15 13:32:34', '2024-04-15 13:32:34'),
(247, 13, '13', 'image', 'images/X9ryyWeXixxdirjCn5FsGHHwACrSMh5tYj9mobyf.jpg', NULL, 0, NULL, '2024-04-15 13:32:46', '2024-04-15 13:32:46'),
(248, 13, '13', 'image', 'images/3MyCodnARj3Q6Fjt3cMDcxNSBwXx6KGYbcct8n6J.jpg', NULL, 0, NULL, '2024-04-15 13:36:03', '2024-04-15 13:36:03'),
(249, 13, '13', 'image', 'images/O6qjo7rtgCrnbEP0Vs5Vanye1FcZDFtcJs0saLNV.jpg', NULL, 0, NULL, '2024-04-15 13:38:55', '2024-04-15 13:38:55'),
(250, 13, '13', 'image', 'images/7OtuA5c8QgzuCITEM1qiGYjCFGmx1KIGlPeodlBV.jpg', NULL, 0, NULL, '2024-04-15 14:59:53', '2024-04-15 14:59:53'),
(251, 6, '6', 'video', 'https://video.bangapp.pro/video/1661ab04207a54/1661ab04207a54.m3u8', NULL, 0, NULL, '2024-04-15 15:27:36', '2024-04-15 15:27:36'),
(252, 13, '13', 'image', 'images/oZERBiYsCNL8TlbxJAjiIrxuqoOOomRbeOEMxCXm.jpg', NULL, 0, NULL, '2024-04-15 15:50:27', '2024-04-15 15:50:27'),
(253, 13, '13', 'image', 'images/88QPGpELhTF1aHEf837QOA7vXSker6gyhgyP89oG.jpg', NULL, 0, NULL, '2024-04-15 16:47:49', '2024-04-15 16:47:49'),
(254, 13, '13', 'image', 'images/eZyRnOGwM0WBm4NAWy2BofGDbCc0lTdX5Mg96aX1.jpg', NULL, 0, NULL, '2024-04-15 17:25:00', '2024-04-15 17:25:00'),
(255, 13, '13', 'image', 'images/ZVUBHmMvrIpxLo4NyzGkfQt2s9sPJ9GzDhMK4blw.jpg', NULL, 0, NULL, '2024-04-15 17:26:31', '2024-04-15 17:26:31'),
(256, 13, '13', 'image', 'images/yFQvqmhDzjOrYOMEiUSQc8h1vC7LvVhfZsgDrtSK.jpg', NULL, 0, NULL, '2024-04-15 17:27:47', '2024-04-15 17:27:47'),
(257, 13, '13', 'image', 'images/mvS26i3XY3LEeDfw1diQ2jJwMlCriArX0akt76wX.jpg', NULL, 0, NULL, '2024-04-15 17:54:28', '2024-04-15 17:54:28'),
(258, 13, '13', 'image', 'images/CvII4QYabhARD5CjGmUtvjTT3V2xBG5ZccWjQa83.jpg', NULL, 0, NULL, '2024-04-15 17:54:38', '2024-04-15 17:54:38'),
(259, 13, '13', 'image', 'images/sJ1is4J2yen5giQ8sOaEvJqxUHt3KmdAW8Ufuyrf.jpg', NULL, 0, NULL, '2024-04-15 18:19:49', '2024-04-15 18:19:49'),
(260, 13, '13', 'image', 'images/aNt9sOrUxgyoxKO5PT9SrmJHS4gU2fyxzVmeZo05.jpg', NULL, 0, NULL, '2024-04-15 18:33:19', '2024-04-15 18:33:19'),
(261, 13, '13', 'image', 'images/uwAUW8tJbpwWynclbQCcfKXE5MJwiEuMEWiRp23K.jpg', NULL, 0, NULL, '2024-04-15 18:51:12', '2024-04-15 18:51:12'),
(262, 13, '13', 'image', 'images/M8EcTBVR3bduDHus1KwpEYm8ZTYF5WQyoCEMxw5b.jpg', NULL, 0, NULL, '2024-04-15 19:23:35', '2024-04-15 19:23:35'),
(263, 13, '13', 'image', 'images/imQ9u4F2Xb1IpSMJgRkiGTqmCpZMOl8nbt0L6sfU.jpg', NULL, 0, NULL, '2024-04-16 08:14:46', '2024-04-16 08:14:46'),
(264, 13, '13', 'image', 'images/qoSv9iaZUEaMPnH21lCu9cydW6idGxmC9F5cAoaI.jpg', NULL, 0, NULL, '2024-04-16 08:39:07', '2024-04-16 08:39:07'),
(265, 13, '13', 'image', 'images/Szh5XU6OwES7FhuNVgui1BzIfqLFjcQiKIh4AkbL.jpg', NULL, 0, NULL, '2024-04-16 08:41:41', '2024-04-16 08:41:41'),
(266, 13, '13', 'image', 'images/0ZuNdxNeIp4DlzCqNH6y2j0tPvckXiLynOmbnKjW.jpg', NULL, 0, NULL, '2024-04-16 12:22:14', '2024-04-16 12:22:14'),
(267, 13, '13', 'image', 'images/5UvSyOLRFX9mYFKj8Q8F4icPkGTt7wljcc4B0s28.jpg', NULL, 0, NULL, '2024-04-16 12:22:34', '2024-04-16 12:22:34'),
(268, 13, '13', 'video', 'https://video.bangapp.pro/video/165e60387491ae/165e60387491ae.m3u8', NULL, 0, NULL, '2024-04-16 12:24:10', '2024-04-16 12:24:10'),
(269, 13, '13', 'image', 'images/SjZ1O5pNiAZVLjSMF8MtzeYRymrqAQq1vfM6HSfp.jpg', NULL, 0, NULL, '2024-04-16 12:25:30', '2024-04-16 12:25:30'),
(270, 13, '13', 'video', 'https://video.bangapp.pro/video/1661ec557cd78c/1661ec557cd78c.m3u8', NULL, 0, NULL, '2024-04-16 18:37:51', '2024-04-16 18:37:51'),
(271, 13, '13', 'image', 'images/0u203BEyN80uy4E6fPnsCmZYX1EIz7I4E1mhwHhX.jpg', NULL, 0, NULL, '2024-04-17 06:55:00', '2024-04-17 06:55:00'),
(272, 13, '13', 'image', 'images/cucmd8xdV6oRwclyzjDZgLA4iruUqYEQAatxlf3n.jpg', NULL, 0, NULL, '2024-04-17 07:27:52', '2024-04-17 07:27:52'),
(273, 13, '13', 'image', 'images/dJe97AHn56H3meHLbl6zv4Yu2gySVqajWDZ1LT8z.jpg', NULL, 1, NULL, '2024-04-17 15:26:46', '2024-04-17 15:26:46'),
(274, 13, '13', 'image', 'images/FuW9zpy9HB0FyWMnFPI4SBmWPPsWZgywRd2odzY9.jpg', NULL, 0, NULL, '2024-04-17 15:32:55', '2024-04-17 15:32:55'),
(275, 13, '13', 'video', 'https://video.bangapp.pro/video/165db84319da0f/165db84319da0f.m3u8', NULL, 0, NULL, '2024-04-17 16:07:14', '2024-04-17 16:07:14'),
(276, 13, '13', 'image', 'images/0zZd3uknAClCAjONWn46MlSAYZzcOk4E1a47P25l.jpg', NULL, 0, NULL, '2024-04-18 05:18:31', '2024-04-18 05:18:31'),
(277, 13, '13', 'image', 'images/xgZAclPWJzi6S5wcXeIQ5Okz3KXjOB0wdrd6DBVY.jpg', NULL, 0, NULL, '2024-04-18 08:14:07', '2024-04-18 08:14:07'),
(278, 13, '13', 'image', 'images/gacgJ053dVwQ3GrWmRSbx5inASoflCqs1FqRkMLz.jpg', NULL, 0, NULL, '2024-04-18 11:08:45', '2024-04-18 11:08:45'),
(279, 6, '6', 'video', 'https://video.bangapp.pro/video/1661ab1f776ef7/1661ab1f776ef7.m3u8', NULL, 0, NULL, '2024-04-18 22:07:00', '2024-04-18 22:07:00'),
(280, 13, '13', 'video', 'https://video.bangapp.pro/video/1661ece1e86db9/1661ece1e86db9.m3u8', NULL, 0, NULL, '2024-04-20 03:45:08', '2024-04-20 03:45:08'),
(281, 13, '13', 'image', 'images/MQOoMxa8w8MUnOTx8ngJFdpSaBPdSVXwTxFFyfx4.jpg', NULL, 0, NULL, '2024-04-20 10:01:47', '2024-04-20 10:01:47'),
(282, 13, '13', 'image', 'images/DlzoC7ou6V2j7RNWSUbjfYlfonDfyn0ZIGYpOBpU.jpg', NULL, 0, NULL, '2024-04-21 15:30:03', '2024-04-21 15:30:03'),
(283, 13, '13', 'image', 'images/VzANuM5TpTNCgRn9uLevUoCGsTkMBUiPv3EwnCWD.jpg', NULL, 0, NULL, '2024-04-21 17:39:55', '2024-04-21 17:39:55'),
(284, 86, '86', 'image', 'images/mhgNILS8qPMMR6nWC3YWcNnXJ9OMa1oClj0hOxyC.jpg', NULL, 0, NULL, '2024-04-22 09:23:13', '2024-04-22 09:23:13'),
(285, 86, '86', 'image', 'images/kapSd04TYawQqf3skvxBtgAvWbKcVKnezethJBfk.jpg', NULL, 0, NULL, '2024-04-22 09:23:19', '2024-04-22 09:23:19'),
(286, 86, '86', 'image', 'images/3ztyku5ElTXRTcpbchtab1ckUiphgrDRNQeUx6ZV.png', 'images/kPzI2QaT2cc1kYcSvgxK2rBnTNQ2kBtbXcIYuaK7.png', 0, NULL, '2024-04-22 09:23:24', '2024-04-22 09:23:24'),
(287, 86, '86', 'image', 'images/ubtmRByBqSStLkCavnCaBjj2dXpcwzkYGBol81mL.jpg', NULL, 0, NULL, '2024-04-22 09:23:31', '2024-04-22 09:23:31'),
(288, 86, '86', 'image', 'images/s2J22fPnZz71K8ybgFJhT1wgSQBL1Ik4saHVtrgj.jpg', NULL, 0, NULL, '2024-04-22 09:23:39', '2024-04-22 09:23:39'),
(289, 86, '86', 'image', 'images/2cMsh7xbg2daZavDx1fmDFh367WcgvuG9hCY9Obl.jpg', NULL, 0, NULL, '2024-04-22 09:23:46', '2024-04-22 09:23:46'),
(290, 86, '86', 'image', 'images/Xyfj5I1Vd51mVqhilyl55SKvbBlXXnN8QAnbm4sE.jpg', NULL, 0, NULL, '2024-04-22 09:23:52', '2024-04-22 09:23:52'),
(291, 86, '86', 'image', 'images/teN7kRxgdTPczmoaywNwdweGuNwsRSZ2E39bL807.jpg', NULL, 0, NULL, '2024-04-22 09:23:58', '2024-04-22 09:23:58'),
(292, 86, '86', 'image', 'images/vs7VdP8r0fBR6j0hrJlDgMJhTKX6HpTTZdK6s4n4.jpg', NULL, 0, NULL, '2024-04-22 09:24:03', '2024-04-22 09:24:03'),
(293, 86, '86', 'image', 'images/jt4ueAs3Lfr1CGdldxuspaBBpO9jgJVQJ90RBwch.jpg', NULL, 0, NULL, '2024-04-22 09:24:34', '2024-04-22 09:24:34'),
(294, 86, '86', 'image', 'images/PUXv6y01WENdVsGw2OKFgf9D7Rz81yD7joabQrzv.jpg', NULL, 0, NULL, '2024-04-22 09:24:42', '2024-04-22 09:24:42'),
(295, 86, '86', 'image', 'images/kfFxuTzSYuqfc3z625xrBonpM11jJQmyVnD4afyq.jpg', NULL, 0, NULL, '2024-04-22 09:24:50', '2024-04-22 09:24:50'),
(296, 14, '14', 'image', 'images/j6Vs4QcQL5Bf5JlM5Vfaq1KKMhuUoIMehAQpiWY1.png', 'images/3wSFxVbcb7yPVp3QmMM4rLY2FYZBPK4Y055rG2K8.png', 0, NULL, '2024-04-22 09:44:13', '2024-04-22 09:44:13'),
(297, 14, '14', 'image', 'images/AcUE38v1UA2OiSUpU6tGhfoDS7KyrN2w2Aed6smi.jpg', NULL, 0, NULL, '2024-04-22 09:44:19', '2024-04-22 09:44:19'),
(298, 14, '14', 'image', 'images/lXSF51PQgYssXc0k39wakfQCnrI7Eyb4c34ovvbS.jpg', NULL, 0, NULL, '2024-04-22 09:44:24', '2024-04-22 09:44:24'),
(299, 6, '6', 'video', 'https://video.bangapp.pro/video/1661a78ac5ee8e/1661a78ac5ee8e.m3u8', NULL, 0, NULL, '2024-04-22 10:20:05', '2024-04-22 10:20:05'),
(300, 6, '6', 'video', 'https://video.bangapp.pro/video/1661a775e2358b/1661a775e2358b.m3u8', NULL, 0, NULL, '2024-04-22 10:20:39', '2024-04-22 10:20:39'),
(301, 13, '13', 'video', 'https://video.bangapp.pro/video/165db8184c98a9/165db8184c98a9.m3u8', NULL, 0, NULL, '2024-04-22 13:49:31', '2024-04-22 13:49:31'),
(302, 6, '6', 'image', 'images/2VEetLYJPab0sjxT2Af746H1zsfe7mRhW3p9N9xB.jpg', NULL, 1, NULL, '2024-04-29 08:12:45', '2024-04-29 08:12:45'),
(303, 6, '6', 'image', 'images/U1nd8oue6is7uggJEcB4HJpPpRltwQjzLoIiGNoZ.jpg', NULL, 1, NULL, '2024-04-29 08:12:55', '2024-04-29 08:12:55'),
(304, 6, '6', 'image', 'images/zl9LKEtmPNWj3m7oEoK6Pz7I0FHm0TvTs27yt4dV.jpg', NULL, 0, NULL, '2024-04-29 08:13:03', '2024-04-29 08:13:03');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `favorited_id` bigint(20) UNSIGNED NOT NULL,
  `favorited_type` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fewer_posts`
--

CREATE TABLE `fewer_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `user_post_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fewer_posts`
--

INSERT INTO `fewer_posts` (`id`, `user_id`, `post_id`, `user_post_id`, `created_at`, `updated_at`) VALUES
(1, 13, 911, 13, '2024-04-24 16:09:23', '2024-04-24 16:09:23'),
(2, 13, 909, 13, '2024-04-24 16:27:16', '2024-04-24 16:27:16'),
(3, 13, 906, 13, '2024-04-24 16:44:09', '2024-04-24 16:44:09'),
(5, 13, 901, 13, '2024-04-24 18:23:55', '2024-04-24 18:23:55'),
(6, 13, 897, 13, '2024-04-24 18:24:10', '2024-04-24 18:24:10'),
(7, 13, 896, 13, '2024-04-24 18:24:21', '2024-04-24 18:24:21'),
(8, 6, 1064, 13, '2024-04-25 14:04:55', '2024-04-25 14:04:55');

-- --------------------------------------------------------

--
-- Table structure for table `followers`
--

CREATE TABLE `followers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `follower_id` bigint(20) UNSIGNED NOT NULL,
  `following_id` bigint(20) UNSIGNED NOT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `followers`
--

INSERT INTO `followers` (`id`, `follower_id`, `following_id`, `updated_at`, `created_at`) VALUES
(1, 28, 13, '2024-04-09 17:40:01', '2024-04-09 17:40:01'),
(2, 33, 13, '2024-04-09 17:40:01', '2024-04-09 17:40:01'),
(3, 36, 13, '2024-04-09 17:40:01', '2024-04-09 17:40:01'),
(4, 41, 13, '2024-04-09 17:40:01', '2024-04-09 17:40:01'),
(5, 50, 13, '2024-04-09 17:40:01', '2024-04-09 17:40:01'),
(6, 57, 13, '2024-04-09 17:40:01', '2024-04-09 17:40:01'),
(7, 62, 13, '2024-04-09 17:40:01', '2024-04-09 17:40:01'),
(8, 67, 13, '2024-04-09 17:40:01', '2024-04-09 17:40:01'),
(9, 71, 13, '2024-04-09 17:40:01', '2024-04-09 17:40:01'),
(10, 77, 13, '2024-04-09 17:40:01', '2024-04-09 17:40:01'),
(11, 28, 86, '2024-04-09 18:18:57', '2024-04-09 18:18:57'),
(12, 33, 86, '2024-04-09 18:18:57', '2024-04-09 18:18:57'),
(13, 36, 86, '2024-04-09 18:18:57', '2024-04-09 18:18:57'),
(14, 41, 86, '2024-04-09 18:18:57', '2024-04-09 18:18:57'),
(15, 50, 86, '2024-04-09 18:18:57', '2024-04-09 18:18:57'),
(16, 57, 86, '2024-04-09 18:18:57', '2024-04-09 18:18:57'),
(17, 62, 86, '2024-04-09 18:18:57', '2024-04-09 18:18:57'),
(18, 67, 86, '2024-04-09 18:18:57', '2024-04-09 18:18:57'),
(19, 71, 86, '2024-04-09 18:18:57', '2024-04-09 18:18:57'),
(20, 77, 86, '2024-04-09 18:18:57', '2024-04-09 18:18:57'),
(21, 3, 86, '2024-04-09 18:24:23', '2024-04-09 18:24:23'),
(22, 4, 86, '2024-04-09 18:24:23', '2024-04-09 18:24:23'),
(23, 34, 86, '2024-04-09 18:24:24', '2024-04-09 18:24:24'),
(24, 48, 86, '2024-04-09 18:24:24', '2024-04-09 18:24:24'),
(25, 74, 86, '2024-04-09 18:24:24', '2024-04-09 18:24:24'),
(26, 6, 86, '2024-04-09 18:24:24', '2024-04-09 18:24:24'),
(27, 26, 86, '2024-04-09 18:24:24', '2024-04-09 18:24:24'),
(28, 51, 86, '2024-04-09 18:24:24', '2024-04-09 18:24:24'),
(29, 95, 86, '2024-04-09 18:24:24', '2024-04-09 18:24:24');

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE `friends` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) NOT NULL,
  `friend_id` varchar(191) NOT NULL,
  `confirmed` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`id`, `user_id`, `friend_id`, `confirmed`, `created_at`, `updated_at`) VALUES
(1, '6', '13', 1, '2024-04-11 13:45:19', '2024-04-11 13:55:21'),
(2, '13', '29', 0, '2024-04-11 14:42:43', '2024-04-11 14:42:43'),
(3, '13', '86', 1, '2024-04-12 07:02:35', '2024-04-22 09:25:42'),
(4, '13', '14', 0, '2024-04-12 17:21:35', '2024-04-12 17:21:35'),
(5, '13', '81', 0, '2024-04-16 16:28:55', '2024-04-16 16:28:55'),
(6, '13', '79', 0, '2024-04-16 16:28:58', '2024-04-16 16:28:58'),
(7, '13', '6', 1, '2024-04-20 13:29:34', '2024-04-20 18:59:49');

-- --------------------------------------------------------

--
-- Table structure for table `hobbies`
--

CREATE TABLE `hobbies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hobbies`
--

INSERT INTO `hobbies` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Music', NULL, NULL),
(2, 'Acting', NULL, NULL),
(3, 'Gossip', NULL, NULL),
(4, 'Football', NULL, NULL),
(5, 'Entrepreneurship', NULL, NULL),
(6, 'Computer programming', NULL, NULL),
(7, 'Painting', NULL, NULL),
(8, 'Creative writing', NULL, NULL),
(9, 'Dance', NULL, NULL),
(10, 'Drama', NULL, NULL),
(11, 'Drawing', NULL, NULL),
(12, 'Boxing', NULL, NULL),
(13, 'Electronics', NULL, NULL),
(14, 'Fashion', NULL, NULL),
(15, 'Partying', NULL, NULL),
(16, 'Car lover', NULL, NULL),
(17, 'Gaming', NULL, NULL),
(18, 'Interior designer', NULL, NULL),
(19, 'Gambling', NULL, NULL),
(20, 'Jewelry making', NULL, NULL),
(21, 'Magic', NULL, NULL),
(22, 'Listening to music', NULL, NULL),
(23, 'Playing musical instruments', NULL, NULL),
(24, 'Pet', NULL, NULL),
(25, 'Pottery', NULL, NULL),
(26, 'Reading', NULL, NULL),
(27, 'Singing', NULL, NULL),
(28, 'Sports', NULL, NULL),
(29, 'Stand-up comedy', NULL, NULL),
(30, 'Video gaming', NULL, NULL),
(31, 'Watching movies', NULL, NULL),
(32, 'Web surfing', NULL, NULL),
(33, 'Writing', NULL, NULL),
(34, 'Yoga', NULL, NULL),
(35, 'Basketball', NULL, NULL),
(36, 'Board sports', NULL, NULL),
(37, 'Bodybuilding', NULL, NULL),
(38, 'Community', NULL, NULL),
(39, 'Cycling', NULL, NULL),
(40, 'Driving', NULL, NULL),
(41, 'Fishing', NULL, NULL),
(42, 'Gardening', NULL, NULL),
(43, 'Graffiti', NULL, NULL),
(44, 'Hiking', NULL, NULL),
(45, 'Hunting', NULL, NULL),
(46, 'Jogging', NULL, NULL),
(47, 'Motor sports', NULL, NULL),
(48, 'Mountain biking', NULL, NULL),
(49, 'Netball', NULL, NULL),
(50, 'Photography', NULL, NULL),
(51, 'Running', NULL, NULL),
(52, 'Shopping', NULL, NULL),
(53, 'Vacation', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `url` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `like_type` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`, `like_type`) VALUES
(14, 13, 20, '2023-10-08 09:26:05', '2023-10-08 09:26:05', 'A'),
(15, 13, 20, '2023-10-08 09:27:03', '2023-10-08 09:27:03', 'A'),
(16, 13, 20, '2023-10-08 09:27:07', '2023-10-08 09:27:07', 'A'),
(17, 13, 20, '2023-10-08 09:27:31', '2023-10-08 09:27:31', 'A'),
(18, 13, 20, '2023-10-08 09:27:53', '2023-10-08 09:27:53', 'A'),
(19, 13, 20, '2023-10-08 09:31:55', '2023-10-08 09:31:55', 'A'),
(20, 13, 20, '2023-10-08 09:35:55', '2023-10-08 09:35:55', 'A'),
(21, 13, 20, '2023-10-08 09:36:11', '2023-10-08 09:36:11', 'A'),
(22, 13, 20, '2023-10-08 09:39:58', '2023-10-08 09:39:58', 'A'),
(23, 13, 20, '2023-10-08 09:40:28', '2023-10-08 09:40:28', 'A'),
(24, 13, 20, '2023-10-08 09:42:07', '2023-10-08 09:42:07', 'A'),
(25, 13, 20, '2023-10-08 09:43:30', '2023-10-08 09:43:30', 'A'),
(30, 6, 66, '2023-10-08 11:44:41', '2023-10-08 11:44:41', 'A'),
(33, 13, 74, '2024-01-14 04:31:01', '2024-01-14 04:31:01', 'A'),
(39, 13, 178, '2024-01-16 09:45:26', '2024-01-16 09:45:26', 'B'),
(40, 13, 254, '2024-01-17 08:38:10', '2024-01-17 08:38:10', 'A'),
(41, 13, 186, '2024-01-17 10:56:00', '2024-01-17 10:56:00', 'A'),
(42, 13, 181, '2024-01-17 10:57:13', '2024-01-17 10:57:13', 'B'),
(44, 14, 242, '2024-01-17 13:15:35', '2024-01-17 13:15:35', 'A'),
(45, 14, 241, '2024-01-17 13:15:37', '2024-01-17 13:15:37', 'A'),
(46, 13, 177, '2024-01-21 15:22:14', '2024-01-21 15:22:14', 'A'),
(49, 13, 393, '2024-02-01 05:55:33', '2024-02-01 05:55:33', 'A'),
(54, 29, 398, '2024-02-05 17:14:13', '2024-02-05 17:14:13', 'A'),
(56, 29, 396, '2024-02-05 17:15:02', '2024-02-05 17:15:02', 'A'),
(57, 29, 395, '2024-02-05 17:15:20', '2024-02-05 17:15:20', 'A'),
(63, 13, 435, '2024-02-10 10:53:13', '2024-02-10 10:53:13', 'A'),
(65, 6, 446, '2024-02-10 10:53:43', '2024-02-10 10:53:43', 'A'),
(68, 6, 444, '2024-02-10 10:57:46', '2024-02-10 10:57:46', 'A'),
(69, 13, 487, '2024-02-10 10:58:39', '2024-02-10 10:58:39', 'A'),
(70, 11, 489, '2024-02-10 13:17:17', '2024-02-10 13:17:17', 'A'),
(75, 13, 502, '2024-02-10 15:48:11', '2024-02-10 15:48:11', 'A'),
(78, 6, 9, '2024-02-10 16:50:35', '2024-02-10 16:50:35', 'A'),
(79, 6, 510, '2024-02-10 18:57:56', '2024-02-10 18:57:56', 'A'),
(81, 13, 508, '2024-02-11 02:52:10', '2024-02-11 02:52:10', 'A'),
(98, 13, 490, '2024-02-17 08:54:44', '2024-02-17 08:54:44', 'A'),
(99, 6, 490, '2024-02-17 08:55:55', '2024-02-17 08:55:55', 'A'),
(103, 6, 499, '2024-02-17 09:32:32', '2024-02-17 09:32:32', 'A'),
(112, 6, 352, '2024-02-17 10:18:41', '2024-02-17 10:18:41', 'A'),
(119, 6, 457, '2024-02-17 11:22:30', '2024-02-17 11:22:30', 'A'),
(120, 13, 457, '2024-02-17 11:43:17', '2024-02-17 11:43:17', 'A'),
(123, 13, 439, '2024-02-17 11:49:29', '2024-02-17 11:49:29', 'A'),
(124, 13, 432, '2024-02-17 11:51:29', '2024-02-17 11:51:29', 'A'),
(126, 13, 426, '2024-02-17 12:03:13', '2024-02-17 12:03:13', 'A'),
(129, 13, 333, '2024-02-18 01:51:09', '2024-02-18 01:51:09', 'A'),
(130, 13, 314, '2024-02-18 04:16:20', '2024-02-18 04:16:20', 'A'),
(131, 13, 509, '2024-02-18 04:25:51', '2024-02-18 04:25:51', 'A'),
(132, 29, 517, '2024-02-18 05:26:22', '2024-02-18 05:26:22', 'A'),
(133, 29, 476, '2024-02-18 05:30:03', '2024-02-18 05:30:03', 'B'),
(135, 13, 226, '2024-02-18 06:10:12', '2024-02-18 06:10:12', 'A'),
(136, 13, 224, '2024-02-18 06:10:24', '2024-02-18 06:10:24', 'A'),
(137, 13, 517, '2024-02-18 09:12:23', '2024-02-18 09:12:23', 'A'),
(139, 29, 518, '2024-02-18 10:05:20', '2024-02-18 10:05:20', 'B'),
(140, 13, 526, '2024-02-18 14:34:12', '2024-02-18 14:34:12', 'A'),
(141, 29, 425, '2024-02-18 17:04:18', '2024-02-18 17:04:18', 'A'),
(144, 13, 531, '2024-02-20 13:55:14', '2024-02-20 13:55:14', 'A'),
(148, 36, 504, '2024-02-20 14:29:17', '2024-02-20 14:29:17', 'A'),
(151, 36, 532, '2024-02-20 18:09:27', '2024-02-20 18:09:27', 'B'),
(152, 36, 510, '2024-02-22 05:47:47', '2024-02-22 05:47:47', 'A'),
(154, 38, 526, '2024-02-22 18:04:47', '2024-02-22 18:04:47', 'A'),
(157, 6, 566, '2024-02-25 14:48:52', '2024-02-25 14:48:52', 'A'),
(158, 39, 564, '2024-02-25 15:09:34', '2024-02-25 15:09:34', 'A'),
(161, 39, 565, '2024-02-25 15:37:50', '2024-02-25 15:37:50', 'A'),
(162, 39, 566, '2024-02-25 15:43:31', '2024-02-25 15:43:31', 'B'),
(164, 39, 532, '2024-02-25 17:17:26', '2024-02-25 17:17:26', 'B'),
(167, 13, 595, '2024-02-25 19:19:20', '2024-02-25 19:19:20', 'B'),
(168, 13, 565, '2024-02-25 19:22:36', '2024-02-25 19:22:36', 'A'),
(170, 13, 596, '2024-02-25 19:24:41', '2024-02-25 19:24:41', 'A'),
(171, 13, 539, '2024-02-25 19:24:56', '2024-02-25 19:24:56', 'A'),
(172, 13, 598, '2024-02-25 19:48:15', '2024-02-25 19:48:15', 'B'),
(173, 38, 605, '2024-02-26 09:34:53', '2024-02-26 09:34:53', 'A'),
(174, 38, 604, '2024-02-26 09:35:01', '2024-02-26 09:35:01', 'A'),
(175, 38, 603, '2024-02-26 09:35:07', '2024-02-26 09:35:07', 'A'),
(176, 42, 612, '2024-02-26 16:38:52', '2024-02-26 16:38:52', 'A'),
(177, 42, 611, '2024-02-26 16:38:54', '2024-02-26 16:38:54', 'A'),
(178, 42, 610, '2024-02-26 16:38:57', '2024-02-26 16:38:57', 'A'),
(179, 42, 609, '2024-02-26 16:38:59', '2024-02-26 16:38:59', 'A'),
(180, 42, 608, '2024-02-26 16:39:02', '2024-02-26 16:39:02', 'A'),
(181, 42, 607, '2024-02-26 16:39:05', '2024-02-26 16:39:05', 'A'),
(182, 42, 606, '2024-02-26 16:39:09', '2024-02-26 16:39:09', 'A'),
(183, 42, 605, '2024-02-26 16:39:11', '2024-02-26 16:39:11', 'A'),
(184, 42, 614, '2024-02-26 16:39:50', '2024-02-26 16:39:50', 'A'),
(185, 42, 613, '2024-02-26 16:39:52', '2024-02-26 16:39:52', 'A'),
(186, 44, 615, '2024-02-26 17:49:59', '2024-02-26 17:49:59', 'A'),
(187, 44, 613, '2024-02-26 17:50:01', '2024-02-26 17:50:01', 'A'),
(188, 44, 612, '2024-02-26 17:50:02', '2024-02-26 17:50:02', 'A'),
(189, 44, 611, '2024-02-26 17:50:04', '2024-02-26 17:50:04', 'A'),
(190, 44, 609, '2024-02-26 17:50:08', '2024-02-26 17:50:08', 'A'),
(191, 44, 610, '2024-02-26 17:50:10', '2024-02-26 17:50:10', 'A'),
(192, 44, 608, '2024-02-26 17:50:50', '2024-02-26 17:50:50', 'A'),
(193, 44, 607, '2024-02-26 17:50:52', '2024-02-26 17:50:52', 'A'),
(194, 44, 606, '2024-02-26 17:50:53', '2024-02-26 17:50:53', 'A'),
(195, 45, 615, '2024-02-26 17:54:03', '2024-02-26 17:54:03', 'A'),
(196, 45, 614, '2024-02-26 17:54:05', '2024-02-26 17:54:05', 'A'),
(197, 45, 613, '2024-02-26 17:54:07', '2024-02-26 17:54:07', 'A'),
(198, 45, 612, '2024-02-26 17:54:08', '2024-02-26 17:54:08', 'A'),
(199, 45, 611, '2024-02-26 17:54:10', '2024-02-26 17:54:10', 'A'),
(200, 45, 609, '2024-02-26 17:54:16', '2024-02-26 17:54:16', 'A'),
(201, 45, 610, '2024-02-26 17:54:16', '2024-02-26 17:54:16', 'A'),
(202, 45, 608, '2024-02-26 17:54:16', '2024-02-26 17:54:16', 'A'),
(212, 46, 608, '2024-02-26 17:59:50', '2024-02-26 17:59:50', 'A'),
(213, 29, 563, '2024-02-26 18:03:07', '2024-02-26 18:03:07', 'A'),
(214, 47, 615, '2024-02-26 18:06:47', '2024-02-26 18:06:47', 'A'),
(215, 47, 614, '2024-02-26 18:06:48', '2024-02-26 18:06:48', 'A'),
(217, 47, 613, '2024-02-26 18:06:50', '2024-02-26 18:06:50', 'A'),
(218, 47, 612, '2024-02-26 18:06:51', '2024-02-26 18:06:51', 'A'),
(219, 47, 611, '2024-02-26 18:06:53', '2024-02-26 18:06:53', 'A'),
(220, 47, 610, '2024-02-26 18:06:55', '2024-02-26 18:06:55', 'A'),
(221, 47, 609, '2024-02-26 18:06:57', '2024-02-26 18:06:57', 'A'),
(222, 47, 608, '2024-02-26 18:06:58', '2024-02-26 18:06:58', 'A'),
(223, 47, 607, '2024-02-26 18:07:00', '2024-02-26 18:07:00', 'A'),
(225, 49, 614, '2024-02-26 18:15:00', '2024-02-26 18:15:00', 'A'),
(226, 49, 613, '2024-02-26 18:15:02', '2024-02-26 18:15:02', 'A'),
(228, 49, 611, '2024-02-26 18:15:06', '2024-02-26 18:15:06', 'A'),
(229, 49, 609, '2024-02-26 18:15:08', '2024-02-26 18:15:08', 'A'),
(230, 49, 610, '2024-02-26 18:15:09', '2024-02-26 18:15:09', 'A'),
(231, 49, 608, '2024-02-26 18:15:11', '2024-02-26 18:15:11', 'A'),
(241, 50, 611, '2024-02-26 18:20:05', '2024-02-26 18:20:05', 'A'),
(243, 50, 615, '2024-02-26 18:21:39', '2024-02-26 18:21:39', 'A'),
(244, 50, 605, '2024-02-26 18:22:45', '2024-02-26 18:22:45', 'A'),
(245, 50, 604, '2024-02-26 18:22:46', '2024-02-26 18:22:46', 'A'),
(246, 50, 603, '2024-02-26 18:22:47', '2024-02-26 18:22:47', 'A'),
(247, 50, 602, '2024-02-26 18:22:50', '2024-02-26 18:22:50', 'A'),
(248, 50, 601, '2024-02-26 18:22:53', '2024-02-26 18:22:53', 'A'),
(249, 50, 599, '2024-02-26 18:22:59', '2024-02-26 18:22:59', 'A'),
(250, 50, 600, '2024-02-26 18:23:01', '2024-02-26 18:23:01', 'A'),
(252, 50, 606, '2024-02-26 18:23:06', '2024-02-26 18:23:06', 'A'),
(254, 51, 614, '2024-02-26 18:32:09', '2024-02-26 18:32:09', 'A'),
(256, 51, 613, '2024-02-26 18:32:11', '2024-02-26 18:32:11', 'A'),
(257, 51, 616, '2024-02-26 18:32:14', '2024-02-26 18:32:14', 'A'),
(258, 51, 611, '2024-02-26 18:32:14', '2024-02-26 18:32:14', 'A'),
(259, 51, 612, '2024-02-26 18:32:14', '2024-02-26 18:32:14', 'A'),
(260, 51, 609, '2024-02-26 18:32:19', '2024-02-26 18:32:19', 'A'),
(263, 52, 615, '2024-02-26 18:38:38', '2024-02-26 18:38:38', 'A'),
(264, 52, 614, '2024-02-26 18:38:42', '2024-02-26 18:38:42', 'A'),
(266, 53, 615, '2024-02-26 18:43:06', '2024-02-26 18:43:06', 'A'),
(267, 53, 614, '2024-02-26 18:43:09', '2024-02-26 18:43:09', 'A'),
(268, 53, 613, '2024-02-26 18:43:11', '2024-02-26 18:43:11', 'A'),
(269, 53, 616, '2024-02-26 18:43:30', '2024-02-26 18:43:30', 'A'),
(271, 54, 616, '2024-02-26 18:47:47', '2024-02-26 18:47:47', 'A'),
(272, 54, 615, '2024-02-26 18:47:49', '2024-02-26 18:47:49', 'A'),
(273, 54, 614, '2024-02-26 18:47:50', '2024-02-26 18:47:50', 'A'),
(274, 54, 613, '2024-02-26 18:47:51', '2024-02-26 18:47:51', 'A'),
(275, 54, 612, '2024-02-26 18:47:57', '2024-02-26 18:47:57', 'A'),
(276, 54, 610, '2024-02-26 18:47:58', '2024-02-26 18:47:58', 'A'),
(277, 54, 609, '2024-02-26 18:48:00', '2024-02-26 18:48:00', 'A'),
(278, 13, 627, '2024-02-27 01:02:57', '2024-02-27 01:02:57', 'A'),
(279, 13, 626, '2024-02-27 01:03:46', '2024-02-27 01:03:46', 'A'),
(280, 13, 641, '2024-02-27 06:15:20', '2024-02-27 06:15:20', 'A'),
(281, 6, 641, '2024-02-27 07:06:32', '2024-02-27 07:06:32', 'A'),
(283, 38, 633, '2024-02-27 08:35:52', '2024-02-27 08:35:52', 'A'),
(284, 38, 645, '2024-02-27 08:36:11', '2024-02-27 08:36:11', 'A'),
(285, 6, 645, '2024-02-27 08:36:59', '2024-02-27 08:36:59', 'A'),
(286, 6, 627, '2024-02-27 08:37:03', '2024-02-27 08:37:03', 'A'),
(287, 6, 625, '2024-02-27 08:37:11', '2024-02-27 08:37:11', 'A'),
(288, 38, 626, '2024-02-27 08:44:23', '2024-02-27 08:44:23', 'A'),
(289, 38, 627, '2024-02-27 08:44:25', '2024-02-27 08:44:25', 'A'),
(290, 38, 625, '2024-02-27 08:44:29', '2024-02-27 08:44:29', 'A'),
(291, 38, 624, '2024-02-27 08:44:37', '2024-02-27 08:44:37', 'A'),
(292, 6, 647, '2024-02-27 08:52:48', '2024-02-27 08:52:48', 'A'),
(296, 60, 647, '2024-02-27 12:20:46', '2024-02-27 12:20:46', 'A'),
(297, 60, 645, '2024-02-27 12:20:56', '2024-02-27 12:20:56', 'A'),
(298, 60, 644, '2024-02-27 12:20:57', '2024-02-27 12:20:57', 'A'),
(299, 60, 642, '2024-02-27 12:20:59', '2024-02-27 12:20:59', 'A'),
(300, 60, 641, '2024-02-27 12:21:01', '2024-02-27 12:21:01', 'A'),
(301, 60, 640, '2024-02-27 12:21:04', '2024-02-27 12:21:04', 'A'),
(302, 60, 639, '2024-02-27 12:21:06', '2024-02-27 12:21:06', 'A'),
(304, 60, 654, '2024-02-27 12:21:37', '2024-02-27 12:21:37', 'A'),
(305, 60, 657, '2024-02-27 12:21:45', '2024-02-27 12:21:45', 'A'),
(306, 60, 653, '2024-02-27 12:21:50', '2024-02-27 12:21:50', 'A'),
(308, 61, 657, '2024-02-27 12:26:44', '2024-02-27 12:26:44', 'A'),
(309, 61, 653, '2024-02-27 12:26:47', '2024-02-27 12:26:47', 'A'),
(311, 62, 657, '2024-02-27 12:32:29', '2024-02-27 12:32:29', 'A'),
(312, 62, 654, '2024-02-27 12:32:42', '2024-02-27 12:32:42', 'A'),
(313, 62, 653, '2024-02-27 12:32:44', '2024-02-27 12:32:44', 'A'),
(314, 62, 647, '2024-02-27 12:32:45', '2024-02-27 12:32:45', 'A'),
(315, 62, 645, '2024-02-27 12:32:47', '2024-02-27 12:32:47', 'A'),
(316, 62, 644, '2024-02-27 12:32:48', '2024-02-27 12:32:48', 'A'),
(317, 62, 642, '2024-02-27 12:32:50', '2024-02-27 12:32:50', 'A'),
(319, 63, 657, '2024-02-27 12:37:25', '2024-02-27 12:37:25', 'A'),
(320, 63, 654, '2024-02-27 12:37:26', '2024-02-27 12:37:26', 'A'),
(321, 63, 653, '2024-02-27 12:37:28', '2024-02-27 12:37:28', 'A'),
(322, 63, 647, '2024-02-27 12:37:30', '2024-02-27 12:37:30', 'A'),
(323, 63, 645, '2024-02-27 12:37:32', '2024-02-27 12:37:32', 'A'),
(324, 63, 644, '2024-02-27 12:37:33', '2024-02-27 12:37:33', 'A'),
(325, 64, 654, '2024-02-27 12:41:24', '2024-02-27 12:41:24', 'A'),
(326, 64, 653, '2024-02-27 12:41:26', '2024-02-27 12:41:26', 'A'),
(327, 64, 647, '2024-02-27 12:41:27', '2024-02-27 12:41:27', 'A'),
(328, 64, 645, '2024-02-27 12:41:29', '2024-02-27 12:41:29', 'A'),
(329, 64, 644, '2024-02-27 12:41:31', '2024-02-27 12:41:31', 'A'),
(330, 64, 642, '2024-02-27 12:41:32', '2024-02-27 12:41:32', 'A'),
(331, 64, 641, '2024-02-27 12:41:34', '2024-02-27 12:41:34', 'A'),
(332, 64, 640, '2024-02-27 12:41:36', '2024-02-27 12:41:36', 'A'),
(333, 64, 639, '2024-02-27 12:41:38', '2024-02-27 12:41:38', 'A'),
(334, 65, 662, '2024-02-27 12:46:30', '2024-02-27 12:46:30', 'A'),
(335, 65, 657, '2024-02-27 12:46:52', '2024-02-27 12:46:52', 'A'),
(336, 65, 654, '2024-02-27 12:46:53', '2024-02-27 12:46:53', 'A'),
(337, 65, 653, '2024-02-27 12:46:55', '2024-02-27 12:46:55', 'A'),
(338, 65, 645, '2024-02-27 12:46:59', '2024-02-27 12:46:59', 'A'),
(339, 65, 647, '2024-02-27 12:47:02', '2024-02-27 12:47:02', 'A'),
(341, 66, 662, '2024-02-27 12:51:41', '2024-02-27 12:51:41', 'A'),
(342, 66, 657, '2024-02-27 12:51:42', '2024-02-27 12:51:42', 'A'),
(343, 66, 654, '2024-02-27 12:51:45', '2024-02-27 12:51:45', 'A'),
(344, 66, 653, '2024-02-27 12:51:47', '2024-02-27 12:51:47', 'A'),
(345, 66, 647, '2024-02-27 12:51:48', '2024-02-27 12:51:48', 'A'),
(346, 66, 645, '2024-02-27 12:51:50', '2024-02-27 12:51:50', 'A'),
(347, 66, 644, '2024-02-27 12:51:53', '2024-02-27 12:51:53', 'A'),
(348, 66, 642, '2024-02-27 12:51:54', '2024-02-27 12:51:54', 'A'),
(349, 66, 641, '2024-02-27 12:52:04', '2024-02-27 12:52:04', 'A'),
(351, 67, 662, '2024-02-27 12:58:24', '2024-02-27 12:58:24', 'A'),
(352, 67, 657, '2024-02-27 12:58:27', '2024-02-27 12:58:27', 'A'),
(353, 6, 662, '2024-02-27 13:01:08', '2024-02-27 13:01:08', 'A'),
(355, 69, 662, '2024-02-27 13:05:28', '2024-02-27 13:05:28', 'A'),
(356, 69, 657, '2024-02-27 13:05:29', '2024-02-27 13:05:29', 'A'),
(357, 69, 653, '2024-02-27 13:05:31', '2024-02-27 13:05:31', 'A'),
(358, 69, 654, '2024-02-27 13:05:32', '2024-02-27 13:05:32', 'A'),
(359, 69, 647, '2024-02-27 13:05:34', '2024-02-27 13:05:34', 'A'),
(360, 69, 645, '2024-02-27 13:05:36', '2024-02-27 13:05:36', 'A'),
(361, 69, 644, '2024-02-27 13:05:37', '2024-02-27 13:05:37', 'A'),
(362, 69, 642, '2024-02-27 13:05:38', '2024-02-27 13:05:38', 'A'),
(364, 70, 662, '2024-02-27 13:10:21', '2024-02-27 13:10:21', 'A'),
(365, 70, 657, '2024-02-27 13:10:23', '2024-02-27 13:10:23', 'A'),
(366, 70, 654, '2024-02-27 13:10:24', '2024-02-27 13:10:24', 'A'),
(367, 70, 653, '2024-02-27 13:10:26', '2024-02-27 13:10:26', 'A'),
(368, 70, 647, '2024-02-27 13:10:28', '2024-02-27 13:10:28', 'A'),
(369, 70, 645, '2024-02-27 13:10:29', '2024-02-27 13:10:29', 'A'),
(370, 70, 644, '2024-02-27 13:10:31', '2024-02-27 13:10:31', 'A'),
(371, 70, 642, '2024-02-27 13:10:33', '2024-02-27 13:10:33', 'A'),
(372, 70, 641, '2024-02-27 13:10:34', '2024-02-27 13:10:34', 'A'),
(377, 71, 653, '2024-02-27 13:14:26', '2024-02-27 13:14:26', 'A'),
(378, 71, 647, '2024-02-27 13:14:28', '2024-02-27 13:14:28', 'A'),
(379, 71, 645, '2024-02-27 13:14:30', '2024-02-27 13:14:30', 'A'),
(380, 71, 644, '2024-02-27 13:14:31', '2024-02-27 13:14:31', 'A'),
(381, 71, 642, '2024-02-27 13:14:33', '2024-02-27 13:14:33', 'A'),
(382, 71, 641, '2024-02-27 13:14:35', '2024-02-27 13:14:35', 'A'),
(383, 71, 662, '2024-02-27 13:14:38', '2024-02-27 13:14:38', 'A'),
(385, 72, 657, '2024-02-27 13:19:37', '2024-02-27 13:19:37', 'A'),
(386, 72, 654, '2024-02-27 13:19:38', '2024-02-27 13:19:38', 'A'),
(387, 72, 653, '2024-02-27 13:19:39', '2024-02-27 13:19:39', 'A'),
(388, 72, 647, '2024-02-27 13:19:41', '2024-02-27 13:19:41', 'A'),
(389, 72, 645, '2024-02-27 13:19:42', '2024-02-27 13:19:42', 'A'),
(390, 72, 644, '2024-02-27 13:19:44', '2024-02-27 13:19:44', 'A'),
(391, 72, 642, '2024-02-27 13:19:46', '2024-02-27 13:19:46', 'A'),
(392, 72, 641, '2024-02-27 13:19:47', '2024-02-27 13:19:47', 'A'),
(393, 72, 640, '2024-02-27 13:19:49', '2024-02-27 13:19:49', 'A'),
(395, 13, 662, '2024-02-27 13:23:37', '2024-02-27 13:23:37', 'A'),
(397, 73, 657, '2024-02-27 13:24:42', '2024-02-27 13:24:42', 'A'),
(398, 73, 654, '2024-02-27 13:24:48', '2024-02-27 13:24:48', 'A'),
(399, 73, 653, '2024-02-27 13:24:50', '2024-02-27 13:24:50', 'A'),
(400, 73, 647, '2024-02-27 13:24:52', '2024-02-27 13:24:52', 'A'),
(401, 73, 645, '2024-02-27 13:24:53', '2024-02-27 13:24:53', 'A'),
(402, 73, 644, '2024-02-27 13:24:55', '2024-02-27 13:24:55', 'A'),
(409, 13, 534, '2024-02-27 17:02:50', '2024-02-27 17:02:50', 'A'),
(410, 13, 678, '2024-02-27 19:49:39', '2024-02-27 19:49:39', 'A'),
(411, 13, 681, '2024-02-28 07:11:32', '2024-02-28 07:11:32', 'A'),
(412, 13, 679, '2024-02-28 07:11:47', '2024-02-28 07:11:47', 'A'),
(413, 13, 674, '2024-02-28 07:12:01', '2024-02-28 07:12:01', 'A'),
(414, 13, 666, '2024-02-28 07:16:37', '2024-02-28 07:16:37', 'A'),
(415, 6, 665, '2024-02-28 07:47:28', '2024-02-28 07:47:28', 'A'),
(416, 6, 664, '2024-02-28 07:47:51', '2024-02-28 07:47:51', 'A'),
(441, 13, 303, '2024-02-28 08:06:20', '2024-02-28 08:06:20', 'A'),
(450, 41, 683, '2024-02-28 08:09:55', '2024-02-28 08:09:55', 'A'),
(451, 41, 682, '2024-02-28 08:10:00', '2024-02-28 08:10:00', 'A'),
(452, 41, 680, '2024-02-28 08:10:11', '2024-02-28 08:10:11', 'A'),
(453, 13, 683, '2024-02-28 08:14:04', '2024-02-28 08:14:04', 'A'),
(454, 13, 686, '2024-02-28 09:28:42', '2024-02-28 09:28:42', 'A'),
(462, 6, 703, '2024-02-28 18:03:59', '2024-02-28 18:03:59', 'A'),
(463, 13, 703, '2024-02-29 04:02:38', '2024-02-29 04:02:38', 'A'),
(464, 76, 703, '2024-02-29 06:24:07', '2024-02-29 06:24:07', 'A'),
(465, 13, 138, '2024-02-29 13:26:25', '2024-02-29 13:26:25', 'A'),
(466, 77, 716, '2024-02-29 16:56:03', '2024-02-29 16:56:03', 'B'),
(468, 73, 711, '2024-02-29 19:14:42', '2024-02-29 19:14:42', 'A'),
(469, 13, 722, '2024-02-29 19:15:49', '2024-02-29 19:15:49', 'A'),
(471, 13, 734, '2024-03-01 11:48:47', '2024-03-01 11:48:47', 'B'),
(473, 79, 737, '2024-03-01 12:04:02', '2024-03-01 12:04:02', 'A'),
(474, 13, 737, '2024-03-01 12:59:53', '2024-03-01 12:59:53', 'A'),
(478, 80, 734, '2024-03-01 15:25:03', '2024-03-01 15:25:03', 'A'),
(479, 79, 748, '2024-03-01 18:27:11', '2024-03-01 18:27:11', 'A'),
(484, 41, 753, '2024-03-02 07:19:39', '2024-03-02 07:19:39', 'A'),
(485, 41, 752, '2024-03-02 07:19:41', '2024-03-02 07:19:41', 'A'),
(487, 41, 748, '2024-03-02 07:21:48', '2024-03-02 07:21:48', 'A'),
(494, 41, 759, '2024-03-02 07:21:59', '2024-03-02 07:21:59', 'A'),
(496, 6, 737, '2024-03-02 10:05:46', '2024-03-02 10:05:46', 'A'),
(498, 13, 763, '2024-03-02 10:30:15', '2024-03-02 10:30:15', 'B'),
(501, 13, 733, '2024-03-02 14:32:21', '2024-03-02 14:32:21', 'A'),
(504, 13, 732, '2024-03-02 14:32:38', '2024-03-02 14:32:38', 'A'),
(505, 29, 733, '2024-03-03 05:30:33', '2024-03-03 05:30:33', 'A'),
(506, 29, 769, '2024-03-03 05:45:48', '2024-03-03 05:45:48', 'A'),
(507, 29, 759, '2024-03-03 05:47:10', '2024-03-03 05:47:10', 'A'),
(508, 13, 792, '2024-03-03 05:55:58', '2024-03-03 05:55:58', 'A'),
(509, 29, 716, '2024-03-03 06:03:08', '2024-03-03 06:03:08', 'B'),
(510, 41, 801, '2024-03-03 10:08:50', '2024-03-03 10:08:50', 'A'),
(511, 41, 800, '2024-03-03 10:08:59', '2024-03-03 10:08:59', 'A'),
(512, 41, 799, '2024-03-03 10:09:01', '2024-03-03 10:09:01', 'A'),
(513, 41, 798, '2024-03-03 10:09:03', '2024-03-03 10:09:03', 'A'),
(514, 29, 801, '2024-03-03 11:06:37', '2024-03-03 11:06:37', 'A'),
(515, 29, 532, '2024-03-03 11:09:46', '2024-03-03 11:09:46', 'A'),
(516, 79, 817, '2024-03-03 13:35:34', '2024-03-03 13:35:34', 'A'),
(519, 79, 813, '2024-03-03 13:35:54', '2024-03-03 13:35:54', 'A'),
(520, 79, 812, '2024-03-03 13:36:09', '2024-03-03 13:36:09', 'A'),
(521, 79, 811, '2024-03-03 13:36:25', '2024-03-03 13:36:25', 'A'),
(522, 79, 810, '2024-03-03 13:36:40', '2024-03-03 13:36:40', 'A'),
(523, 79, 809, '2024-03-03 13:36:42', '2024-03-03 13:36:42', 'A'),
(524, 79, 808, '2024-03-03 13:37:01', '2024-03-03 13:37:01', 'A'),
(530, 13, 819, '2024-03-03 14:49:00', '2024-03-03 14:49:00', 'A'),
(531, 13, 818, '2024-03-03 14:50:38', '2024-03-03 14:50:38', 'A'),
(532, 29, 821, '2024-03-03 16:53:21', '2024-03-03 16:53:21', 'A'),
(533, 29, 820, '2024-03-03 16:53:35', '2024-03-03 16:53:35', 'A'),
(534, 29, 819, '2024-03-03 16:53:55', '2024-03-03 16:53:55', 'A'),
(535, 29, 818, '2024-03-03 16:54:17', '2024-03-03 16:54:17', 'A'),
(536, 79, 832, '2024-03-04 09:34:44', '2024-03-04 09:34:44', 'A'),
(537, 79, 833, '2024-03-04 09:47:22', '2024-03-04 09:47:22', 'A'),
(538, 13, 833, '2024-03-04 09:52:44', '2024-03-04 09:52:44', 'A'),
(539, 13, 832, '2024-03-04 09:53:12', '2024-03-04 09:53:12', 'A'),
(540, 13, 801, '2024-03-04 13:22:40', '2024-03-04 13:22:40', 'A'),
(542, 13, 815, '2024-03-04 13:34:44', '2024-03-04 13:34:44', 'A'),
(543, 13, 716, '2024-03-04 17:46:38', '2024-03-04 17:46:38', 'B'),
(544, 13, 713, '2024-03-04 18:18:26', '2024-03-04 18:18:26', 'A'),
(545, 13, 842, '2024-03-07 00:17:05', '2024-03-07 00:17:05', 'A'),
(546, 13, 118, '2024-03-07 00:23:54', '2024-03-07 00:23:54', 'A'),
(547, 13, 851, '2024-03-07 00:24:41', '2024-03-07 00:24:41', 'A'),
(548, 13, 852, '2024-03-07 01:25:02', '2024-03-07 01:25:02', 'A'),
(549, 79, 855, '2024-03-07 15:07:24', '2024-03-07 15:07:24', 'A'),
(550, 13, 855, '2024-03-07 15:46:51', '2024-03-07 15:46:51', 'A'),
(551, 13, 854, '2024-03-07 15:47:13', '2024-03-07 15:47:13', 'A'),
(552, 13, 853, '2024-03-07 15:47:27', '2024-03-07 15:47:27', 'A'),
(553, 13, 850, '2024-03-08 05:51:23', '2024-03-08 05:51:23', 'A'),
(554, 13, 843, '2024-03-08 11:21:20', '2024-03-08 11:21:20', 'A'),
(557, 79, 877, '2024-03-13 17:46:35', '2024-03-13 17:46:35', 'A'),
(558, 79, 879, '2024-03-14 13:34:40', '2024-03-14 13:34:40', 'A'),
(559, 41, 881, '2024-03-15 09:21:55', '2024-03-15 09:21:55', 'A'),
(560, 41, 877, '2024-03-15 09:22:06', '2024-03-15 09:22:06', 'A'),
(561, 41, 876, '2024-03-15 09:22:08', '2024-03-15 09:22:08', 'A'),
(562, 41, 874, '2024-03-15 09:22:13', '2024-03-15 09:22:13', 'A'),
(563, 41, 873, '2024-03-15 09:22:15', '2024-03-15 09:22:15', 'A'),
(565, 41, 871, '2024-03-15 09:22:19', '2024-03-15 09:22:19', 'A'),
(566, 41, 828, '2024-03-15 09:22:30', '2024-03-15 09:22:30', 'A'),
(567, 73, 722, '2024-03-17 10:57:42', '2024-03-17 10:57:42', 'A'),
(570, 13, 845, '2024-03-19 10:09:43', '2024-03-19 10:09:43', 'A'),
(572, 13, 885, '2024-03-19 10:13:14', '2024-03-19 10:13:14', 'A'),
(576, 6, 883, '2024-03-19 12:08:04', '2024-03-19 12:08:04', 'A'),
(588, 6, 885, '2024-03-19 13:05:02', '2024-03-19 13:05:02', 'B'),
(589, 13, 886, '2024-03-19 14:33:16', '2024-03-19 14:33:16', 'A'),
(590, 13, 887, '2024-03-19 14:37:18', '2024-03-19 14:37:18', 'A'),
(595, 13, 888, '2024-03-19 15:06:11', '2024-03-19 15:06:11', 'B'),
(596, 13, 894, '2024-03-19 15:53:24', '2024-03-19 15:53:24', 'B'),
(597, 13, 895, '2024-03-19 15:59:36', '2024-03-19 15:59:36', 'A'),
(598, 13, 857, '2024-03-19 16:40:20', '2024-03-19 16:40:20', 'A'),
(601, 13, 727, '2024-03-22 04:25:58', '2024-03-22 04:25:58', 'A'),
(605, 6, 911, '2024-03-23 11:53:09', '2024-03-23 11:53:09', 'A'),
(607, 6, 707, '2024-03-23 15:34:38', '2024-03-23 15:34:38', 'A'),
(608, 6, 706, '2024-03-23 15:34:53', '2024-03-23 15:34:53', 'A'),
(609, 6, 860, '2024-03-23 15:35:04', '2024-03-23 15:35:04', 'A'),
(611, 13, 914, '2024-03-23 17:07:50', '2024-03-23 17:07:50', 'B'),
(613, 13, 910, '2024-03-23 17:27:54', '2024-03-23 17:27:54', 'A'),
(614, 13, 915, '2024-03-23 17:30:32', '2024-03-23 17:30:32', 'A'),
(615, 13, 918, '2024-03-23 17:30:41', '2024-03-23 17:30:41', 'A'),
(618, 13, 922, '2024-03-23 18:34:29', '2024-03-23 18:34:29', 'A'),
(620, 13, 923, '2024-03-23 19:13:26', '2024-03-23 19:13:26', 'A'),
(621, 13, 928, '2024-03-24 02:21:19', '2024-03-24 02:21:19', 'A'),
(624, 13, 930, '2024-03-24 06:22:00', '2024-03-24 06:22:00', 'A'),
(626, 6, 924, '2024-03-25 09:40:55', '2024-03-25 09:40:55', 'A'),
(630, 13, 948, '2024-03-29 19:54:13', '2024-03-29 19:54:13', 'A'),
(633, 13, 882, '2024-03-30 17:30:22', '2024-03-30 17:30:22', 'A'),
(634, 13, 955, '2024-03-30 17:30:46', '2024-03-30 17:30:46', 'A'),
(635, 13, 880, '2024-03-31 01:29:26', '2024-03-31 01:29:26', 'A'),
(636, 13, 879, '2024-03-31 01:30:32', '2024-03-31 01:30:32', 'A'),
(637, 13, 878, '2024-03-31 01:30:51', '2024-03-31 01:30:51', 'A'),
(638, 13, 862, '2024-03-31 01:31:14', '2024-03-31 01:31:14', 'A'),
(639, 13, 759, '2024-03-31 04:02:22', '2024-03-31 04:02:22', 'A'),
(641, 13, 532, '2024-04-02 15:46:57', '2024-04-02 15:46:57', 'B'),
(642, 6, 715, '2024-04-03 09:10:56', '2024-04-03 09:10:56', 'A'),
(643, 13, 903, '2024-04-03 09:19:16', '2024-04-03 09:19:16', 'A'),
(644, 13, 705, '2024-04-03 09:20:47', '2024-04-03 09:20:47', 'A'),
(645, 6, 712, '2024-04-03 09:20:53', '2024-04-03 09:20:53', 'A'),
(648, 13, 823, '2024-04-03 19:02:24', '2024-04-03 19:02:24', 'A'),
(650, 6, 765, '2024-04-06 17:15:50', '2024-04-06 17:15:50', 'A'),
(651, 13, 635, '2024-04-08 13:51:04', '2024-04-08 13:51:04', 'A'),
(652, 13, 706, '2024-04-11 11:20:00', '2024-04-11 11:20:00', 'A'),
(653, 13, 776, '2024-04-11 18:13:10', '2024-04-11 18:13:10', 'A'),
(655, 13, 687, '2024-04-12 16:44:22', '2024-04-12 16:44:22', 'A'),
(656, 13, 769, '2024-04-12 18:22:33', '2024-04-12 18:22:33', 'A'),
(660, 13, 803, '2024-04-12 21:11:52', '2024-04-12 21:11:52', 'A'),
(664, 13, 802, '2024-04-12 21:12:03', '2024-04-12 21:12:03', 'A'),
(665, 13, 788, '2024-04-12 21:12:12', '2024-04-12 21:12:12', 'A'),
(666, 13, 777, '2024-04-12 21:12:21', '2024-04-12 21:12:21', 'A'),
(667, 13, 775, '2024-04-12 21:12:26', '2024-04-12 21:12:26', 'A'),
(668, 96, 965, '2024-04-13 05:34:52', '2024-04-13 05:34:52', 'A'),
(669, 13, 946, '2024-04-13 08:26:01', '2024-04-13 08:26:01', 'A'),
(670, 13, 800, '2024-04-13 08:41:59', '2024-04-13 08:41:59', 'A'),
(681, 13, 911, '2024-04-13 17:21:14', '2024-04-13 17:21:14', 'B'),
(682, 13, 905, '2024-04-13 17:21:21', '2024-04-13 17:21:21', 'A'),
(689, 6, 963, '2024-04-13 17:29:57', '2024-04-13 17:29:57', 'A'),
(693, 6, 954, '2024-04-13 17:32:31', '2024-04-13 17:32:31', 'A'),
(694, 6, 880, '2024-04-13 17:35:47', '2024-04-13 17:35:47', 'A'),
(695, 6, 876, '2024-04-13 17:42:12', '2024-04-13 17:42:12', 'A'),
(696, 6, 873, '2024-04-13 17:42:24', '2024-04-13 17:42:24', 'A'),
(697, 6, 871, '2024-04-13 17:42:28', '2024-04-13 17:42:28', 'A'),
(699, 6, 968, '2024-04-13 17:45:29', '2024-04-13 17:45:29', 'A'),
(700, 6, 965, '2024-04-13 17:45:36', '2024-04-13 17:45:36', 'B'),
(702, 6, 895, '2024-04-13 17:50:18', '2024-04-13 17:50:18', 'A'),
(703, 6, 894, '2024-04-13 17:50:28', '2024-04-13 17:50:28', 'B'),
(704, 6, 888, '2024-04-13 17:50:37', '2024-04-13 17:50:37', 'B'),
(705, 6, 882, '2024-04-13 17:51:15', '2024-04-13 17:51:15', 'A'),
(706, 13, 414, '2024-04-15 13:11:39', '2024-04-15 13:11:39', 'A'),
(711, 13, 1017, '2024-04-15 14:32:11', '2024-04-15 14:32:11', 'B'),
(712, 13, 227, '2024-04-15 17:27:25', '2024-04-15 17:27:25', 'A'),
(713, 13, 10, '2024-04-15 17:55:41', '2024-04-15 17:55:41', 'A'),
(715, 13, 36, '2024-04-16 01:51:11', '2024-04-16 01:51:11', 'B'),
(716, 13, 26, '2024-04-16 02:34:44', '2024-04-16 02:34:44', 'A'),
(718, 13, 1026, '2024-04-16 07:08:02', '2024-04-16 07:08:02', 'A'),
(719, 13, 968, '2024-04-16 07:48:08', '2024-04-16 07:48:08', 'B'),
(721, 6, 1044, '2024-04-17 07:59:11', '2024-04-17 07:59:11', 'A'),
(722, 6, 1043, '2024-04-17 08:01:21', '2024-04-17 08:01:21', 'A'),
(723, 6, 1042, '2024-04-17 08:01:36', '2024-04-17 08:01:36', 'A'),
(724, 13, 1043, '2024-04-17 08:28:53', '2024-04-17 08:28:53', 'A'),
(725, 13, 1042, '2024-04-17 08:47:03', '2024-04-17 08:47:03', 'A'),
(726, 13, 1044, '2024-04-17 08:47:48', '2024-04-17 08:47:48', 'A'),
(727, 13, 1045, '2024-04-17 09:09:29', '2024-04-17 09:09:29', 'A'),
(728, 6, 1046, '2024-04-17 09:16:29', '2024-04-17 09:16:29', 'A'),
(729, 13, 1034, '2024-04-17 12:52:04', '2024-04-17 12:52:04', 'A'),
(731, 13, 1051, '2024-04-18 14:25:32', '2024-04-18 14:25:32', 'A'),
(732, 13, 349, '2024-04-18 15:30:25', '2024-04-18 15:30:25', 'A'),
(737, 6, 1061, '2024-04-20 10:27:51', '2024-04-20 10:27:51', 'A'),
(739, 13, 1061, '2024-04-20 13:29:25', '2024-04-20 13:29:25', 'A'),
(740, 6, 1063, '2024-04-21 09:47:53', '2024-04-21 09:47:53', 'A'),
(741, 6, 1053, '2024-04-21 09:47:57', '2024-04-21 09:47:57', 'A'),
(745, 86, 1068, '2024-04-22 10:11:01', '2024-04-22 10:11:01', 'A'),
(756, 86, 1069, '2024-04-22 10:13:04', '2024-04-22 10:13:04', 'A'),
(757, 86, 1032, '2024-04-22 10:13:07', '2024-04-22 10:13:07', 'A'),
(759, 86, 1037, '2024-04-22 10:13:13', '2024-04-22 10:13:13', 'A'),
(760, 86, 1038, '2024-04-22 10:13:16', '2024-04-22 10:13:16', 'A'),
(762, 86, 1041, '2024-04-22 10:13:21', '2024-04-22 10:13:21', 'A'),
(763, 86, 1042, '2024-04-22 10:13:24', '2024-04-22 10:13:24', 'A'),
(764, 6, 1070, '2024-04-22 10:19:24', '2024-04-22 10:19:24', 'A'),
(765, 6, 1069, '2024-04-22 10:19:27', '2024-04-22 10:19:27', 'A'),
(766, 6, 1068, '2024-04-22 10:19:31', '2024-04-22 10:19:31', 'A'),
(767, 13, 1070, '2024-04-22 13:48:15', '2024-04-22 13:48:15', 'A'),
(768, 13, 1069, '2024-04-22 13:48:37', '2024-04-22 13:48:37', 'A'),
(769, 13, 1068, '2024-04-22 13:48:42', '2024-04-22 13:48:42', 'A'),
(770, 13, 1067, '2024-04-22 13:48:49', '2024-04-22 13:48:49', 'A'),
(771, 99, 1070, '2024-04-22 14:23:46', '2024-04-22 14:23:46', 'A'),
(772, 13, 1074, '2024-04-22 15:20:37', '2024-04-22 15:20:37', 'A'),
(775, 13, 476, '2024-04-22 15:20:53', '2024-04-22 15:20:53', 'B'),
(776, 13, 1075, '2024-04-22 17:19:54', '2024-04-22 17:19:54', 'A'),
(777, 99, 1073, '2024-04-22 17:44:04', '2024-04-22 17:44:04', 'A'),
(778, 99, 1074, '2024-04-22 17:44:14', '2024-04-22 17:44:14', 'A'),
(779, 99, 1068, '2024-04-22 17:44:31', '2024-04-22 17:44:31', 'A'),
(780, 99, 1067, '2024-04-22 17:44:38', '2024-04-22 17:44:38', 'A'),
(781, 86, 1003, '2024-04-23 05:00:03', '2024-04-23 05:00:03', 'A'),
(782, 86, 1001, '2024-04-23 05:00:06', '2024-04-23 05:00:06', 'A'),
(783, 86, 1000, '2024-04-23 05:00:10', '2024-04-23 05:00:10', 'A'),
(784, 86, 999, '2024-04-23 05:00:12', '2024-04-23 05:00:12', 'A'),
(785, 86, 995, '2024-04-23 05:00:16', '2024-04-23 05:00:16', 'A'),
(786, 86, 993, '2024-04-23 05:00:18', '2024-04-23 05:00:18', 'A'),
(787, 86, 991, '2024-04-23 05:00:20', '2024-04-23 05:00:20', 'A'),
(788, 86, 990, '2024-04-23 05:00:22', '2024-04-23 05:00:22', 'A'),
(789, 86, 989, '2024-04-23 05:00:26', '2024-04-23 05:00:26', 'A'),
(790, 86, 978, '2024-04-23 05:00:27', '2024-04-23 05:00:27', 'A'),
(791, 86, 977, '2024-04-23 05:00:30', '2024-04-23 05:00:30', 'A'),
(792, 86, 976, '2024-04-23 05:00:32', '2024-04-23 05:00:32', 'A'),
(793, 86, 974, '2024-04-23 05:00:34', '2024-04-23 05:00:34', 'A'),
(794, 86, 973, '2024-04-23 05:00:37', '2024-04-23 05:00:37', 'A'),
(795, 86, 972, '2024-04-23 05:00:40', '2024-04-23 05:00:40', 'A'),
(796, 86, 955, '2024-04-23 05:00:43', '2024-04-23 05:00:43', 'A'),
(797, 86, 954, '2024-04-23 05:00:45', '2024-04-23 05:00:45', 'A'),
(798, 86, 948, '2024-04-23 05:00:51', '2024-04-23 05:00:51', 'A'),
(799, 86, 946, '2024-04-23 05:00:54', '2024-04-23 05:00:54', 'A'),
(800, 86, 943, '2024-04-23 05:01:03', '2024-04-23 05:01:03', 'A'),
(802, 86, 931, '2024-04-23 05:01:21', '2024-04-23 05:01:21', 'A'),
(803, 86, 930, '2024-04-23 05:01:23', '2024-04-23 05:01:23', 'A'),
(804, 86, 928, '2024-04-23 05:01:26', '2024-04-23 05:01:26', 'A'),
(805, 86, 927, '2024-04-23 05:01:30', '2024-04-23 05:01:30', 'A'),
(806, 86, 926, '2024-04-23 05:01:32', '2024-04-23 05:01:32', 'A'),
(807, 86, 925, '2024-04-23 05:01:34', '2024-04-23 05:01:34', 'A'),
(808, 86, 906, '2024-04-23 05:01:39', '2024-04-23 05:01:39', 'A'),
(809, 86, 905, '2024-04-23 05:01:41', '2024-04-23 05:01:41', 'B'),
(810, 13, 1077, '2024-04-23 06:09:23', '2024-04-23 06:09:23', 'A'),
(811, 14, 1077, '2024-04-23 06:12:19', '2024-04-23 06:12:19', 'A'),
(812, 13, 1078, '2024-04-23 06:23:33', '2024-04-23 06:23:33', 'A'),
(813, 86, 1078, '2024-04-23 06:50:53', '2024-04-23 06:50:53', 'A'),
(814, 86, 1079, '2024-04-23 06:50:56', '2024-04-23 06:50:56', 'A'),
(815, 99, 1079, '2024-04-23 07:26:04', '2024-04-23 07:26:04', 'A'),
(816, 13, 1071, '2024-04-23 08:26:41', '2024-04-23 08:26:41', 'A'),
(817, 99, 1083, '2024-04-23 08:37:38', '2024-04-23 08:37:38', 'A'),
(818, 13, 1073, '2024-04-23 09:41:24', '2024-04-23 09:41:24', 'A'),
(819, 13, 1082, '2024-04-23 09:56:23', '2024-04-23 09:56:23', 'A'),
(820, 13, 1086, '2024-04-23 15:02:46', '2024-04-23 15:02:46', 'A'),
(821, 13, 33, '2024-04-23 15:49:42', '2024-04-23 15:49:42', 'B'),
(823, 99, 1095, '2024-04-23 15:53:23', '2024-04-23 15:53:23', 'B'),
(824, 13, 1095, '2024-04-23 15:54:07', '2024-04-23 15:54:07', 'B'),
(825, 99, 1096, '2024-04-23 16:03:28', '2024-04-23 16:03:28', 'A'),
(826, 99, 1027, '2024-04-23 17:42:35', '2024-04-23 17:42:35', 'A'),
(827, 13, 1098, '2024-04-24 07:12:32', '2024-04-24 07:12:32', 'A'),
(828, 13, 1102, '2024-04-24 08:33:34', '2024-04-24 08:33:34', 'A'),
(829, 13, 1101, '2024-04-24 08:33:40', '2024-04-24 08:33:40', 'A'),
(830, 13, 1100, '2024-04-24 08:33:50', '2024-04-24 08:33:50', 'A'),
(831, 99, 1100, '2024-04-24 08:35:16', '2024-04-24 08:35:16', 'A'),
(832, 99, 1099, '2024-04-24 08:35:18', '2024-04-24 08:35:18', 'A'),
(865, 99, 930, '2024-04-24 08:40:03', '2024-04-24 08:40:03', 'A'),
(866, 99, 928, '2024-04-24 08:40:07', '2024-04-24 08:40:07', 'A'),
(868, 99, 927, '2024-04-24 08:40:09', '2024-04-24 08:40:09', 'A'),
(871, 86, 1099, '2024-04-24 08:40:12', '2024-04-24 08:40:12', 'A'),
(872, 99, 926, '2024-04-24 08:40:13', '2024-04-24 08:40:13', 'A'),
(873, 99, 925, '2024-04-24 08:40:15', '2024-04-24 08:40:15', 'A'),
(874, 99, 924, '2024-04-24 08:40:20', '2024-04-24 08:40:20', 'A'),
(876, 86, 1088, '2024-04-24 08:40:26', '2024-04-24 08:40:26', 'A'),
(877, 99, 923, '2024-04-24 08:40:26', '2024-04-24 08:40:26', 'A'),
(882, 86, 1084, '2024-04-24 08:40:47', '2024-04-24 08:40:47', 'A'),
(885, 86, 1085, '2024-04-24 08:41:22', '2024-04-24 08:41:22', 'A'),
(889, 86, 1102, '2024-04-24 08:42:09', '2024-04-24 08:42:09', 'A'),
(893, 86, 1082, '2024-04-24 08:43:35', '2024-04-24 08:43:35', 'A'),
(894, 86, 1058, '2024-04-24 08:45:22', '2024-04-24 08:45:22', 'A'),
(895, 86, 1053, '2024-04-24 08:45:34', '2024-04-24 08:45:34', 'A'),
(896, 104, 1100, '2024-04-24 13:40:56', '2024-04-24 13:40:56', 'A'),
(897, 104, 1101, '2024-04-24 13:40:59', '2024-04-24 13:40:59', 'A'),
(898, 104, 1095, '2024-04-24 13:41:19', '2024-04-24 13:41:19', 'B'),
(900, 6, 1094, '2024-04-27 10:06:59', '2024-04-27 10:06:59', 'A'),
(901, 6, 1095, '2024-04-27 10:07:15', '2024-04-27 10:07:15', 'B'),
(903, 13, 1104, '2024-04-29 01:57:56', '2024-04-29 01:57:56', 'A'),
(904, 13, 1094, '2024-04-29 01:58:27', '2024-04-29 01:58:27', 'A'),
(905, 13, 1105, '2024-04-29 08:26:35', '2024-04-29 08:26:35', 'A'),
(906, 13, 1081, '2024-04-29 08:26:50', '2024-04-29 08:26:50', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `conversation_id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` bigint(20) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `message_type` varchar(191) DEFAULT NULL,
  `attachment` varchar(191) DEFAULT NULL,
  `message_status` varchar(191) NOT NULL DEFAULT 'sent',
  `is_read` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `conversation_id`, `sender_id`, `message`, `created_at`, `updated_at`, `message_type`, `attachment`, `message_status`, `is_read`) VALUES
(1, 1, 6, 'fdxgfdxgdxg', '2024-02-10 12:42:11', '2024-02-10 12:42:46', 'text', NULL, 'sent', 1),
(2, 1, 11, 'unyggftg', '2024-02-10 12:42:59', '2024-02-10 12:43:02', 'text', NULL, 'sent', 1),
(3, 1, 11, 'https://bangapp.pro/BangAppBackend/storage/app/public/message_attachments/oRe6P0uSA4LM2cGie1us10BgkfMgHbBuQoCs8M3x.jpg', '2024-02-10 12:43:26', '2024-02-10 12:48:56', 'image', 'message_attachments/oRe6P0uSA4LM2cGie1us10BgkfMgHbBuQoCs8M3x.jpg', 'sent', 1),
(4, 1, 11, 'https://bangapp.pro/BangAppBackend/storage/app/public/message_attachments/JElENRGnwPpZTHqYNZv6TY5ky1EwTWXXhKzIxUz0.jpg', '2024-02-10 12:49:21', '2024-02-10 12:50:39', 'image', 'message_attachments/JElENRGnwPpZTHqYNZv6TY5ky1EwTWXXhKzIxUz0.jpg', 'sent', 1),
(5, 1, 11, 'https://bangapp.pro/BangAppBackend/storage/app/public/message_attachments/video/Qjx9dBMQBFXiwIRzXamRbwTxDkQJk68jNfAhPMW8.mp4', '2024-02-10 12:50:20', '2024-02-10 12:50:40', 'video', 'message_attachments/video/Qjx9dBMQBFXiwIRzXamRbwTxDkQJk68jNfAhPMW8.mp4', 'sent', 1),
(6, 1, 6, 'umefika home', '2024-02-10 18:56:58', '2024-03-25 09:05:33', 'text', NULL, 'sent', 1),
(7, 2, 31, 'kitambo san', '2024-02-10 19:00:43', '2024-02-17 09:32:01', 'text', NULL, 'sent', 1),
(8, 3, 13, 'oiiii', '2024-02-18 04:22:59', '2024-02-20 16:15:50', 'text', NULL, 'sent', 1),
(9, 3, 13, 'https://bangapp.pro/BangAppBackend/storage/app/public/message_attachments/afWevWCHk4b2ZPwj2ahwBt1eV1q3FnbY0e33usGR.jpg', '2024-02-18 14:42:01', '2024-02-20 16:15:50', 'image', 'message_attachments/afWevWCHk4b2ZPwj2ahwBt1eV1q3FnbY0e33usGR.jpg', 'sent', 1),
(10, 3, 13, 'mtoto huyo wa Ifm anakutaka😜', '2024-02-18 14:42:27', '2024-02-20 16:15:49', 'text', NULL, 'sent', 1),
(11, 3, 13, 'https://bangapp.pro/BangAppBackend/storage/app/public/message_attachments/video/XhcljXBLNmr4ZKhRJotlm2bskZFvvQt1wY3AGQrK.mp4', '2024-02-18 14:43:18', '2024-02-20 16:15:50', 'video', 'message_attachments/video/XhcljXBLNmr4ZKhRJotlm2bskZFvvQt1wY3AGQrK.mp4', 'sent', 1),
(12, 4, 13, 'boss mambo?', '2024-02-26 18:24:28', '2024-02-26 18:24:32', 'text', NULL, 'sent', 1),
(13, 4, 50, 'safi aseeh', '2024-02-26 18:25:10', '2024-02-26 18:25:40', 'text', NULL, 'sent', 1),
(14, 4, 50, 'adjeee', '2024-02-26 18:25:15', '2024-02-26 18:25:33', 'text', NULL, 'sent', 1),
(15, 4, 13, 'safi kabisa asante kwa kutumia bangapp tupo kwenye majaribio vitu vizuri vinakuja', '2024-02-26 18:26:14', '2024-02-26 18:26:30', 'text', NULL, 'sent', 1),
(16, 4, 50, 'okey sawa bravin kaniambia', '2024-02-26 18:26:58', '2024-02-26 18:27:11', 'text', NULL, 'sent', 1),
(17, 4, 13, 'pamoja sana', '2024-02-26 18:27:29', '2024-02-26 18:27:32', 'text', NULL, 'sent', 1),
(18, 5, 29, 'hi', '2024-02-26 18:28:55', '2024-02-26 18:31:32', 'text', NULL, 'sent', 1),
(19, 5, 13, 'uko poa?', '2024-02-26 18:31:33', '2024-02-27 15:38:06', 'text', NULL, 'sent', 1),
(20, 5, 29, 'niaje rukudushu?? kumbe na wewe uko bangApp', '2024-02-27 15:39:12', '2024-02-27 15:46:17', 'text', NULL, 'sent', 1),
(21, 5, 29, 'safi sana', '2024-02-27 15:39:22', '2024-02-27 15:46:17', 'text', NULL, 'sent', 1),
(22, 5, 13, 'helloooo', '2024-03-07 00:12:56', '2024-03-09 15:43:14', 'text', NULL, 'sent', 1),
(23, 3, 13, 'hjhhhj', '2024-03-19 16:20:00', '2024-03-22 09:35:07', 'text', NULL, 'sent', 1),
(24, 5, 13, 'hellooo', '2024-03-19 16:24:07', '2024-03-19 16:58:42', 'text', NULL, 'sent', 1),
(25, 5, 13, 'hi', '2024-03-19 16:24:22', '2024-03-19 16:58:42', 'text', NULL, 'sent', 1),
(26, 5, 13, 'inakuaje', '2024-03-19 16:28:15', '2024-03-19 16:58:42', 'text', NULL, 'sent', 1),
(27, 5, 13, 'shwari??', '2024-03-19 16:30:58', '2024-03-19 16:58:41', 'text', NULL, 'sent', 1),
(28, 5, 13, 'https://bangapp.pro/BangAppBackend/storage/app/public/message_attachments/Z0jG5tUdmtt1xhUyw3qIsraPdaCr44KH7DVVX8hK.jpg', '2024-03-19 16:38:01', '2024-03-19 16:58:42', 'image', 'message_attachments/Z0jG5tUdmtt1xhUyw3qIsraPdaCr44KH7DVVX8hK.jpg', 'sent', 1),
(29, 5, 13, 'mrembo!!', '2024-03-19 17:00:58', '2024-03-19 17:01:01', 'text', NULL, 'sent', 1),
(30, 5, 13, 'unaringa una hela!!', '2024-03-19 17:01:25', '2024-03-19 17:01:27', 'text', NULL, 'sent', 1),
(31, 5, 13, 'jiangalie 😀😀', '2024-03-19 17:02:58', '2024-03-19 17:03:38', 'text', NULL, 'sent', 1),
(32, 5, 13, 'wewe', '2024-03-19 17:03:35', '2024-03-19 17:03:38', 'text', NULL, 'sent', 1),
(33, 5, 29, 'jiangalie wewe ghost', '2024-03-20 05:53:16', '2024-03-20 05:54:18', 'text', NULL, 'sent', 1),
(34, 5, 13, 'hahahahha 😂😂😂', '2024-03-20 05:54:39', '2024-03-20 05:55:04', 'text', NULL, 'sent', 1),
(35, 5, 13, 'fanya kazi', '2024-03-20 05:54:56', '2024-03-20 05:55:05', 'text', NULL, 'sent', 1),
(36, 5, 29, 'poa poa', '2024-03-20 05:55:48', '2024-03-20 05:55:51', 'text', NULL, 'sent', 1),
(37, 5, 13, 'https://bangapp.pro/BangAppBackend/storage/app/public/message_attachments/4hKzblxQLmohFjnM3GRbFCO1hwY5nfpYloyjsusV.jpg', '2024-03-20 05:58:08', '2024-03-23 16:58:29', 'image', 'message_attachments/4hKzblxQLmohFjnM3GRbFCO1hwY5nfpYloyjsusV.jpg', 'sent', 1),
(38, 5, 13, 'helloooo', '2024-03-23 16:58:07', '2024-03-23 16:58:30', 'text', NULL, 'sent', 1),
(39, 5, 13, 'https://bangapp.pro/BangAppBackend/storage/app/public/message_attachments/video/caG8yyKwOXtzr3t93VG2dPmuXohn5LtuQvKVyC9u.mp4', '2024-03-23 19:05:45', '2024-03-23 19:05:45', 'video', 'message_attachments/video/caG8yyKwOXtzr3t93VG2dPmuXohn5LtuQvKVyC9u.mp4', 'sent', 0),
(40, 6, 11, 'hello', '2024-03-25 09:22:20', '2024-03-25 09:42:35', 'text', NULL, 'sent', 1),
(41, 7, 13, 'vvvv', '2024-04-03 08:18:59', '2024-04-22 09:45:58', 'text', NULL, 'sent', 1),
(42, 8, 13, 'oiiii', '2024-04-03 15:19:23', '2024-04-03 15:20:07', 'text', NULL, 'sent', 1),
(43, 8, 13, 'oiiii', '2024-04-03 15:20:04', '2024-04-03 15:20:08', 'text', NULL, 'sent', 1),
(44, 8, 86, 'what\'s', '2024-04-03 15:21:05', '2024-04-03 15:21:18', 'text', NULL, 'sent', 1),
(45, 8, 13, 'cool', '2024-04-03 15:21:27', '2024-04-03 15:21:29', 'text', NULL, 'sent', 1),
(46, 8, 13, 'https://bangapp.pro/BangAppBackend/storage/app/public/message_attachments/6C2Wj5nQnYPdU3Y3zSuEJDLoKNWwpTGdEkCfCmfq.jpg', '2024-04-03 15:21:47', '2024-04-03 15:22:40', 'image', 'message_attachments/6C2Wj5nQnYPdU3Y3zSuEJDLoKNWwpTGdEkCfCmfq.jpg', 'sent', 1),
(47, 8, 86, 'Figo ipi', '2024-04-03 15:23:32', '2024-04-03 15:23:36', 'text', NULL, 'sent', 1),
(48, 8, 13, '😆😆😆', '2024-04-03 15:25:09', '2024-04-03 15:25:11', 'text', NULL, 'sent', 1),
(49, 7, 13, 'gdgf', '2024-04-13 08:18:12', '2024-04-22 09:45:59', 'text', NULL, 'sent', 1),
(50, 7, 13, 'drffgh', '2024-04-13 08:18:27', '2024-04-22 09:45:58', 'text', NULL, 'sent', 1),
(51, 4, 13, 'hi', '2024-04-13 08:19:36', '2024-04-13 08:19:36', 'text', NULL, 'sent', 0),
(52, 4, 13, 'halllo', '2024-04-13 08:19:44', '2024-04-13 08:19:44', 'text', NULL, 'sent', 0),
(53, 3, 13, '290099', '2024-04-18 18:19:06', '2024-04-20 10:40:31', 'text', NULL, 'sent', 1),
(54, 3, 13, '290099', '2024-04-18 18:19:28', '2024-04-20 10:40:32', 'text', NULL, 'sent', 1),
(55, 3, 13, 'Oiii niaje kijana?', '2024-04-20 09:19:37', '2024-04-20 10:40:32', 'text', NULL, 'sent', 1),
(56, 3, 6, 'Hi', '2024-04-20 18:58:15', '2024-04-20 19:01:35', 'text', NULL, 'sent', 1),
(57, 3, 13, 'Hi mambo vipi dogo?', '2024-04-20 19:01:48', '2024-04-20 19:01:50', 'text', NULL, 'sent', 1),
(58, 9, 13, 'Oiii niaje mkuu', '2024-04-22 15:01:51', '2024-04-22 15:02:01', 'text', NULL, 'sent', 1),
(59, 9, 100, 'bambie boss', '2024-04-22 15:02:15', '2024-04-22 15:02:18', 'text', NULL, 'sent', 1),
(60, 9, 13, 'https://bangapp.pro/BangAppBackend/storage/app/public/message_attachments/sng8fnfUrciLbGtx2QWDR8GTSWQ7qtvHoeYMgN9P.jpg', '2024-04-22 15:05:39', '2024-04-22 15:06:48', 'image', 'message_attachments/sng8fnfUrciLbGtx2QWDR8GTSWQ7qtvHoeYMgN9P.jpg', 'sent', 1),
(61, 10, 86, 'Sungura', '2024-04-22 17:14:22', '2024-04-22 17:14:22', 'text', NULL, 'sent', 0),
(62, 11, 86, 'Hi Stella', '2024-04-25 14:24:22', '2024-04-25 14:24:22', 'text', NULL, 'sent', 0),
(63, 11, 86, 'Hallo', '2024-04-25 14:25:29', '2024-04-25 14:25:29', 'text', NULL, 'sent', 0),
(64, 8, 86, 'Bro', '2024-04-25 14:27:49', '2024-04-25 14:28:12', 'text', NULL, 'sent', 1),
(65, 10, 86, 'Kijana', '2024-04-25 14:28:05', '2024-04-25 14:28:05', 'text', NULL, 'sent', 0),
(66, 8, 13, 'Niambie', '2024-04-25 14:28:15', '2024-04-25 14:28:18', 'text', NULL, 'sent', 1),
(67, 12, 86, 'Zuchu', '2024-04-25 14:42:04', '2024-04-25 14:42:33', 'text', NULL, 'sent', 1),
(68, 12, 86, 'Mic u', '2024-04-25 14:42:23', '2024-04-25 14:42:33', 'text', NULL, 'sent', 1),
(69, 12, 14, 'Jaman nenga', '2024-04-25 14:42:40', '2024-04-25 14:42:43', 'text', NULL, 'sent', 1),
(70, 12, 86, 'Aaah Sasa hako kaneno jaman', '2024-04-25 14:42:58', '2024-04-25 14:43:02', 'text', NULL, 'sent', 1),
(71, 12, 14, 'Kamefanyeje', '2024-04-25 14:45:06', '2024-04-25 14:45:15', 'text', NULL, 'sent', 1),
(72, 12, 86, 'Kuwa serious', '2024-04-25 14:45:23', '2024-04-25 14:45:23', 'text', NULL, 'sent', 0),
(73, 8, 86, '😅😁😁😆', '2024-04-26 15:42:20', '2024-04-27 07:25:37', 'text', NULL, 'sent', 1),
(74, 8, 13, 'Ok nimejua tatizo', '2024-04-27 07:25:49', '2024-04-27 07:29:27', 'text', NULL, 'sent', 1),
(75, 8, 86, 'Hii kitu inahitahi test ya nguvu saana', '2024-04-27 07:29:53', '2024-04-27 07:35:54', 'text', NULL, 'sent', 1),
(76, 12, 86, 'Zuchu', '2024-04-27 07:30:13', '2024-04-27 07:30:13', 'text', NULL, 'sent', 0),
(77, 8, 13, 'Kawaida tu', '2024-04-27 07:36:01', '2024-04-27 07:43:25', 'text', NULL, 'sent', 1),
(78, 8, 13, 'Kuna kitu aliniambia hakumalizia huku kwenye upande wa pin ndio nimekumbuka hapa', '2024-04-27 07:36:33', '2024-04-27 07:43:25', 'text', NULL, 'sent', 1),
(79, 8, 86, 'Ok', '2024-04-27 07:43:37', '2024-04-27 08:33:45', 'text', NULL, 'sent', 1);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(51, '2014_10_12_000000_create_users_table', 1),
(52, '2014_10_12_100000_create_password_resets_table', 1),
(53, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(54, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(55, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(56, '2016_06_01_000004_create_oauth_clients_table', 1),
(57, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(58, '2019_08_19_000000_create_failed_jobs_table', 1),
(59, '2020_06_05_102233_create_categories_table', 1),
(60, '2020_06_05_103613_create_posts_table', 1),
(61, '2020_06_05_153154_create_comments_table', 1),
(62, '2020_06_05_170822_create_favorites_table', 1),
(64, '2020_06_19_220146_create_followers_table', 1),
(65, '2023_04_17_130704_create_images_table', 1),
(66, '2023_05_08_100346_create_likes_table', 1),
(70, '2023_06_29_122510_create_bang_updates_table', 1),
(71, '2023_07_01_114457_create_bang_inspirations_table', 1),
(72, '2023_07_08_121817_bang_update_likes', 2),
(73, '2023_07_08_122810_bang_update_comments', 2),
(75, '2023_07_22_085846_create_deleted_posts_table', 3),
(78, '2023_07_25_153828_create_challenges_table', 4),
(79, '2020_06_05_175343_create_notifications_table', 5),
(80, '2023_07_30_084122_create_hobbies_table', 6),
(81, '2023_07_30_115108_create_user_hobby_table', 7),
(82, '2023_07_31_190259_create_bang_battles_table', 8),
(83, '2023_07_31_190437_create_battle_likes_table', 9),
(85, '2023_07_31_192726_create_battle_comments_table', 10),
(86, '2023_08_13_083723_create_messages_table', 11),
(87, '0000_00_00_000000_create_websockets_statistics_entries_table', 12),
(88, '2023_09_29_105235_create_conversations_table', 13),
(89, '2023_09_29_105349_create_messages_table', 14),
(90, '2023_10_04_095945_add_is_read_to_messages', 14),
(91, '2023_10_07_095229_create_onesignal_user_mapping_table', 14),
(92, '2023_10_15_161612_create_post_views_table', 14),
(93, '2023_10_22_170028_create_roles_table', 15),
(94, '2023_10_25_140123_create_bang_update_views_table', 16),
(95, '2024_03_05_104152_create_comment_replies_table', 17),
(96, '2024_03_08_075407_create_azampays_table', 18),
(97, '2024_03_20_121119_create_update_comment_replies_table', 19),
(98, '2024_03_20_125120_create_battle_comment_replies_table', 19),
(99, '2024_03_25_130203_create_reported_posts_table', 20),
(100, '2024_03_25_132548_create_subscriptions_table', 20),
(101, '2024_04_08_142724_create_friends_table', 21),
(102, '2024_04_24_121645_create_blocked_users_table', 22),
(103, '2024_04_24_132202_create_fewer_posts_table', 22);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `type` varchar(50) NOT NULL,
  `reference_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_read` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `message`, `type`, `reference_id`, `is_read`, `created_at`, `updated_at`, `post_id`) VALUES
(8, 6, 'Has Liked Your Post', 'like', 13, 1, '2024-02-05 16:19:59', '2024-02-05 17:03:47', 457),
(9, 6, 'Has Liked Your Post', 'like', 13, 1, '2024-02-05 16:20:22', '2024-02-05 17:03:47', 452),
(10, 29, 'Has Liked Your Post', 'like', 13, 1, '2024-02-05 17:14:14', '2024-02-05 17:53:20', 398),
(11, 29, 'Has Liked Your Post', 'like', 13, 1, '2024-02-05 17:14:59', '2024-02-05 17:53:20', 397),
(12, 29, 'Has Liked Your Post', 'like', 13, 1, '2024-02-05 17:15:02', '2024-02-05 17:53:20', 396),
(13, 29, 'Has Commented on Your Post', 'comment', 13, 1, '2024-02-05 17:15:11', '2024-02-05 17:53:20', 396),
(14, 29, 'Has Liked Your Post', 'like', 13, 1, '2024-02-05 17:15:20', '2024-02-05 17:53:20', 395),
(15, 29, 'Has Commented on Your Post', 'comment', 13, 1, '2024-02-05 17:15:35', '2024-02-10 11:06:51', 395),
(19, 6, 'Has Liked Your Post', 'like', 13, 1, '2024-02-10 10:53:43', '2024-02-10 10:58:59', 446),
(20, 6, 'Has Commented on Your Post', 'comment', 13, 1, '2024-02-10 10:54:46', '2024-02-10 10:58:59', 445),
(21, 6, 'Has Liked Your Post', 'like', 13, 1, '2024-02-10 10:57:46', '2024-02-10 10:58:59', 444),
(23, 6, 'Has Commented on Your Post', 'comment', 13, 1, '2024-02-10 10:59:23', '2024-02-10 11:06:44', 441),
(24, 6, 'Has Commented on Your Post', 'comment', 13, 1, '2024-02-10 11:18:06', '2024-02-10 11:22:12', 438),
(27, 11, 'Has Liked Your Post', 'like', 13, 1, '2024-02-10 13:17:39', '2024-02-10 14:23:06', 441),
(28, 13, 'Has Liked Your Post', 'like', 11, 0, '2024-02-10 15:47:41', '2024-02-10 15:47:41', 503),
(29, 13, 'Has Liked Your Post', 'like', 11, 0, '2024-02-10 15:47:42', '2024-02-10 15:47:42', 503),
(30, 13, 'Has Liked Your Post', 'like', 11, 0, '2024-02-10 15:47:48', '2024-02-10 15:47:48', 503),
(31, 13, 'Has Liked Your Post', 'like', 11, 0, '2024-02-10 15:48:11', '2024-02-10 15:48:11', 502),
(50, 13, 'Has Liked Your Post', 'like', 11, 1, '2024-02-17 08:08:08', '2024-03-25 09:36:10', 504),
(52, 6, 'Has Liked Your Post', 'like', 11, 1, '2024-02-17 09:32:28', '2024-03-25 09:36:08', 499),
(53, 6, 'Has Liked Your Post', 'like', 11, 1, '2024-02-17 09:32:31', '2024-03-25 09:36:08', 499),
(54, 6, 'Has Liked Your Post', 'like', 11, 1, '2024-02-17 09:32:32', '2024-03-25 09:36:06', 499),
(55, 6, 'Has Liked Your Post', 'like', 11, 1, '2024-02-17 09:32:32', '2024-03-25 09:36:06', 499),
(56, 6, 'Has Liked Your Post', 'like', 11, 1, '2024-02-17 09:32:48', '2024-03-25 09:36:04', 498),
(57, 6, 'Has Liked Your Post', 'like', 11, 1, '2024-02-17 09:32:48', '2024-03-25 09:36:07', 498),
(58, 6, 'Has Liked Your Post', 'like', 11, 1, '2024-02-17 09:32:49', '2024-03-25 09:36:03', 498),
(59, 6, 'Has Liked Your Post', 'like', 11, 1, '2024-02-17 09:32:49', '2024-03-25 09:36:01', 498),
(60, 6, 'Has Liked Your Post', 'like', 11, 1, '2024-02-17 09:32:49', '2024-03-25 09:35:58', 498),
(61, 6, 'Has Liked Your Post', 'like', 11, 1, '2024-02-17 09:32:49', '2024-03-25 09:36:01', 498),
(62, 6, 'Has Liked Your Post', 'like', 13, 1, '2024-02-17 09:53:01', '2024-02-17 11:33:07', 488),
(63, 6, 'Has Liked Your Post', 'like', 13, 1, '2024-02-17 10:18:41', '2024-02-17 11:33:07', 352),
(64, 6, 'Has Liked Your Post', 'like', 13, 1, '2024-02-17 10:49:04', '2024-02-17 11:33:07', 457),
(65, 6, 'Has Liked Your Post', 'like', 13, 1, '2024-02-17 10:49:21', '2024-02-17 11:33:07', 457),
(66, 6, 'Has Liked Your Post', 'like', 13, 1, '2024-02-17 10:50:33', '2024-02-17 11:33:07', 511),
(67, 6, 'Has Liked Your Post', 'like', 13, 1, '2024-02-17 10:53:01', '2024-02-17 11:33:07', 488),
(68, 6, 'Has Liked Your Post', 'like', 13, 1, '2024-02-17 11:22:30', '2024-02-17 11:33:07', 457),
(69, 6, 'Has Commented on Your Post', 'comment', 13, 1, '2024-02-17 12:43:52', '2024-02-17 14:19:22', 450),
(70, 6, 'Has Commented on Your Post', 'comment', 13, 1, '2024-02-17 12:50:50', '2024-02-17 14:19:22', 450),
(71, 6, 'Has Commented on Your Post', 'comment', 13, 1, '2024-02-17 12:51:01', '2024-02-17 14:19:22', 450),
(72, 6, 'Has Commented on Your Post', 'comment', 13, 1, '2024-02-17 12:53:34', '2024-02-17 14:19:22', 450),
(73, 6, 'Has Liked Your Post', 'like', 13, 1, '2024-02-17 13:26:53', '2024-02-17 14:19:22', 441),
(74, 6, 'Has Commented on Your Post', 'comment', 13, 1, '2024-02-17 14:37:53', '2024-02-17 14:42:55', 450),
(75, 6, 'Has Commented on Your Post', 'comment', 13, 1, '2024-02-17 14:41:05', '2024-02-17 14:42:55', 423),
(76, 6, 'Has Commented on Your Post', 'comment', 13, 1, '2024-02-17 14:41:22', '2024-02-17 14:42:55', 423),
(77, 6, 'Has Commented on Your Post', 'comment', 13, 1, '2024-02-17 14:41:51', '2024-02-17 14:42:55', 420),
(78, 6, 'Has Commented on Your Post', 'comment', 13, 1, '2024-02-17 14:42:03', '2024-02-17 14:42:55', 420),
(80, 29, 'Has Liked Your Post', 'like', 13, 1, '2024-02-18 05:26:22', '2024-02-18 05:26:34', 517),
(81, 29, 'Has Commented on Your Post', 'comment', 13, 1, '2024-02-18 05:27:21', '2024-02-18 05:30:16', 517),
(82, 29, 'Has Liked Your Post', 'like', 13, 1, '2024-02-18 05:30:03', '2024-02-18 05:30:16', 476),
(83, 29, 'Has Liked Your Post', 'like', 13, 1, '2024-02-18 05:33:33', '2024-02-18 05:35:41', 518),
(84, 29, 'Has Commented on Your Post', 'comment', 13, 1, '2024-02-18 05:35:09', '2024-02-18 05:35:41', 518),
(85, 29, 'Has Liked Your Post', 'like', 13, 1, '2024-02-18 10:04:22', '2024-02-18 11:01:19', 518),
(86, 29, 'Has Liked Your Post', 'like', 13, 1, '2024-02-18 10:05:20', '2024-02-18 11:01:19', 518),
(88, 29, 'Has Liked Your Post', 'like', 13, 1, '2024-02-18 17:04:19', '2024-02-18 17:10:32', 425),
(89, 36, 'Has Liked Your Post', 'like', 13, 1, '2024-02-20 14:28:15', '2024-02-20 14:33:37', 532),
(90, 36, 'Has Commented on Your Post', 'comment', 13, 1, '2024-02-20 14:29:01', '2024-02-20 14:32:57', 531),
(91, 36, 'Has Liked Your Post', 'like', 11, 1, '2024-02-20 14:29:17', '2024-03-25 09:36:03', 504),
(92, 36, 'Has Liked Your Post', 'like', 13, 1, '2024-02-20 14:30:36', '2024-02-20 14:32:57', 165),
(93, 36, 'Has Commented on Your Post', 'comment', 13, 1, '2024-02-20 14:31:13', '2024-02-20 14:32:57', 164),
(94, 36, 'Has Commented on Your Post', 'comment', 13, 1, '2024-02-20 14:33:59', '2024-02-20 14:39:44', 165),
(96, 36, 'Has Liked Your Post', 'like', 13, 1, '2024-02-20 18:09:26', '2024-02-20 19:01:10', 532),
(97, 36, 'Has Liked Your Post', 'like', 13, 1, '2024-02-20 18:09:27', '2024-02-20 19:01:10', 532),
(99, 38, 'Has Liked Your Post', 'like', 13, 1, '2024-02-22 18:04:41', '2024-02-22 18:50:16', 527),
(100, 38, 'Has Liked Your Post', 'like', 13, 1, '2024-02-22 18:04:48', '2024-02-22 18:50:16', 526),
(102, 6, 'Has Liked Your Post', 'like', 39, 1, '2024-02-25 14:48:53', '2024-02-25 15:36:27', 566),
(104, 39, 'Has Liked Your Post', 'like', 13, 1, '2024-02-25 17:17:26', '2024-02-25 17:59:19', 532),
(105, 13, 'Has Liked Your Post', 'like', 39, 0, '2024-02-25 19:22:36', '2024-02-25 19:22:36', 565),
(108, 38, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 09:34:53', '2024-02-26 09:39:56', 605),
(109, 38, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 09:35:01', '2024-02-26 09:39:56', 604),
(110, 38, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 09:35:07', '2024-02-26 09:39:56', 603),
(111, 42, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 16:38:52', '2024-02-26 17:36:00', 612),
(112, 42, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 16:38:54', '2024-02-26 17:36:00', 611),
(113, 42, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 16:38:57', '2024-02-26 17:36:00', 610),
(114, 42, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 16:38:59', '2024-02-26 17:36:00', 609),
(115, 42, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 16:39:02', '2024-02-26 17:36:00', 608),
(116, 42, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 16:39:05', '2024-02-26 17:36:00', 607),
(117, 42, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 16:39:10', '2024-02-26 17:36:00', 606),
(118, 42, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 16:39:11', '2024-02-26 17:36:00', 605),
(119, 42, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 16:39:50', '2024-02-26 17:36:00', 614),
(120, 42, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 16:39:52', '2024-02-26 17:36:00', 613),
(121, 43, 'Has Commented on Your Post', 'comment', 13, 1, '2024-02-26 17:46:03', '2024-02-26 17:49:14', 615),
(122, 44, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 17:49:59', '2024-02-26 18:05:45', 615),
(123, 44, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 17:50:01', '2024-02-26 18:05:45', 613),
(124, 44, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 17:50:03', '2024-02-26 18:05:45', 612),
(125, 44, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 17:50:05', '2024-02-26 18:05:45', 611),
(126, 44, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 17:50:08', '2024-02-26 18:05:45', 609),
(127, 44, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 17:50:10', '2024-02-26 18:05:45', 610),
(128, 44, 'Has Commented on Your Post', 'comment', 13, 1, '2024-02-26 17:50:41', '2024-02-26 18:05:45', 611),
(129, 44, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 17:50:50', '2024-02-26 18:05:45', 608),
(130, 44, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 17:50:52', '2024-02-26 18:05:45', 607),
(131, 44, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 17:50:54', '2024-02-26 18:05:45', 606),
(132, 45, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 17:54:03', '2024-02-26 18:05:45', 615),
(133, 45, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 17:54:05', '2024-02-26 18:05:45', 614),
(134, 45, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 17:54:07', '2024-02-26 18:05:45', 613),
(135, 45, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 17:54:08', '2024-02-26 18:05:45', 612),
(136, 45, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 17:54:10', '2024-02-26 18:05:45', 611),
(137, 45, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 17:54:16', '2024-02-26 18:05:45', 609),
(138, 45, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 17:54:16', '2024-02-26 18:05:45', 610),
(139, 45, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 17:54:17', '2024-02-26 18:05:45', 608),
(140, 46, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 17:58:47', '2024-02-26 18:05:45', 617),
(141, 46, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 17:58:48', '2024-02-26 18:05:45', 616),
(142, 46, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 17:58:50', '2024-02-26 18:05:45', 615),
(143, 46, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 17:58:52', '2024-02-26 18:05:45', 614),
(144, 46, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 17:58:55', '2024-02-26 18:05:45', 613),
(145, 46, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 17:58:59', '2024-02-26 18:05:45', 611),
(146, 46, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 17:58:59', '2024-02-26 18:05:45', 610),
(147, 46, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 17:58:59', '2024-02-26 18:05:45', 612),
(148, 46, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 17:59:01', '2024-02-26 18:05:45', 609),
(149, 46, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 17:59:50', '2024-02-26 18:05:45', 608),
(150, 29, 'Has Liked Your Post', 'like', 39, 0, '2024-02-26 18:03:07', '2024-02-26 18:03:07', 563),
(151, 47, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 18:06:47', '2024-02-26 18:08:29', 615),
(152, 47, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 18:06:48', '2024-02-26 18:08:29', 614),
(153, 47, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 18:06:50', '2024-02-26 18:08:29', 617),
(154, 47, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 18:06:50', '2024-02-26 18:08:29', 613),
(155, 47, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 18:06:52', '2024-02-26 18:08:29', 612),
(156, 47, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 18:06:53', '2024-02-26 18:08:29', 611),
(157, 47, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 18:06:55', '2024-02-26 18:08:29', 610),
(158, 47, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 18:06:57', '2024-02-26 18:08:29', 609),
(159, 47, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 18:06:59', '2024-02-26 18:08:29', 608),
(160, 47, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 18:07:00', '2024-02-26 18:08:29', 607),
(161, 49, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 18:14:59', '2024-02-26 18:23:13', 617),
(162, 49, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 18:15:01', '2024-02-26 18:23:13', 614),
(163, 49, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 18:15:03', '2024-02-26 18:23:13', 613),
(164, 49, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 18:15:04', '2024-02-26 18:23:13', 612),
(165, 49, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 18:15:06', '2024-02-26 18:23:13', 611),
(166, 49, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 18:15:09', '2024-02-26 18:23:13', 609),
(167, 49, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 18:15:10', '2024-02-26 18:23:13', 610),
(168, 49, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 18:15:11', '2024-02-26 18:23:13', 608),
(169, 50, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 18:20:00', '2024-02-26 18:23:13', 617),
(170, 50, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 18:20:01', '2024-02-26 18:23:13', 615),
(171, 50, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 18:20:02', '2024-02-26 18:23:13', 610),
(172, 50, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 18:20:02', '2024-02-26 18:23:13', 608),
(173, 50, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 18:20:04', '2024-02-26 18:23:13', 612),
(174, 50, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 18:20:05', '2024-02-26 18:23:13', 613),
(175, 50, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 18:20:05', '2024-02-26 18:23:13', 616),
(176, 50, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 18:20:06', '2024-02-26 18:23:13', 614),
(177, 50, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 18:20:06', '2024-02-26 18:23:13', 609),
(178, 50, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 18:20:06', '2024-02-26 18:23:13', 611),
(179, 50, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 18:21:35', '2024-02-26 18:23:13', 617),
(180, 50, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 18:21:39', '2024-02-26 18:23:13', 615),
(181, 50, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 18:22:45', '2024-02-26 18:23:13', 605),
(182, 50, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 18:22:46', '2024-02-26 18:23:13', 604),
(183, 50, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 18:22:48', '2024-02-26 18:23:13', 603),
(184, 50, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 18:22:51', '2024-02-26 18:23:13', 602),
(185, 50, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 18:22:53', '2024-02-26 18:23:13', 601),
(186, 50, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 18:23:00', '2024-02-26 18:23:13', 599),
(187, 50, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 18:23:01', '2024-02-26 18:23:13', 600),
(188, 50, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 18:23:03', '2024-02-26 18:23:13', 607),
(189, 50, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 18:23:06', '2024-02-26 18:23:13', 606),
(190, 13, 'Has Liked Your Post', 'message', 13, 1, '2024-02-26 18:24:28', '2024-02-26 18:27:38', 4),
(191, 50, 'Has Liked Your Post', 'message', 50, 1, '2024-02-26 18:25:10', '2024-02-26 18:25:37', 4),
(192, 50, 'Has Liked Your Post', 'message', 50, 1, '2024-02-26 18:25:16', '2024-02-26 18:25:37', 4),
(193, 13, 'Has Liked Your Post', 'message', 13, 1, '2024-02-26 18:26:15', '2024-02-26 18:27:38', 4),
(194, 50, 'Has Liked Your Post', 'message', 50, 0, '2024-02-26 18:26:58', '2024-02-26 18:26:58', 4),
(195, 13, 'Has Liked Your Post', 'message', 13, 1, '2024-02-26 18:27:29', '2024-02-26 18:27:38', 4),
(198, 51, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 18:32:07', '2024-02-26 18:45:08', 617),
(199, 51, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 18:32:10', '2024-02-26 18:45:08', 614),
(200, 51, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 18:32:10', '2024-02-26 18:45:08', 615),
(201, 51, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 18:32:11', '2024-02-26 18:45:08', 613),
(202, 51, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 18:32:14', '2024-02-26 18:45:08', 616),
(203, 51, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 18:32:14', '2024-02-26 18:45:08', 611),
(204, 51, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 18:32:14', '2024-02-26 18:45:08', 612),
(205, 51, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 18:32:19', '2024-02-26 18:45:08', 609),
(206, 51, 'Has Commented on Your Post', 'comment', 13, 1, '2024-02-26 18:32:40', '2024-02-26 18:45:08', 609),
(207, 51, 'Has Commented on Your Post', 'comment', 13, 1, '2024-02-26 18:32:52', '2024-02-26 18:45:08', 608),
(208, 51, 'Has Commented on Your Post', 'comment', 13, 1, '2024-02-26 18:32:53', '2024-02-26 18:45:08', 608),
(209, 51, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 18:33:01', '2024-02-26 18:45:08', 615),
(210, 51, 'Has Commented on Your Post', 'comment', 13, 1, '2024-02-26 18:33:23', '2024-02-26 18:45:08', 615),
(211, 52, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 18:38:36', '2024-02-26 18:45:08', 617),
(212, 52, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 18:38:38', '2024-02-26 18:45:08', 615),
(213, 52, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 18:38:42', '2024-02-26 18:45:08', 614),
(214, 52, 'Has Commented on Your Post', 'comment', 13, 1, '2024-02-26 18:38:55', '2024-02-26 18:45:08', 614),
(215, 53, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 18:43:05', '2024-02-26 18:45:08', 616),
(216, 53, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 18:43:06', '2024-02-26 18:45:08', 615),
(217, 53, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 18:43:09', '2024-02-26 18:45:08', 614),
(218, 53, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 18:43:11', '2024-02-26 18:45:08', 613),
(219, 53, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 18:43:30', '2024-02-26 18:45:08', 616),
(220, 54, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 18:47:46', '2024-02-26 18:53:00', 617),
(221, 54, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 18:47:47', '2024-02-26 18:53:00', 616),
(222, 54, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 18:47:49', '2024-02-26 18:53:00', 615),
(223, 54, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 18:47:50', '2024-02-26 18:53:00', 614),
(224, 54, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 18:47:52', '2024-02-26 18:53:00', 613),
(225, 54, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 18:47:57', '2024-02-26 18:53:00', 612),
(226, 54, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 18:47:58', '2024-02-26 18:53:00', 610),
(227, 54, 'Has Liked Your Post', 'like', 13, 1, '2024-02-26 18:48:01', '2024-02-26 18:53:00', 609),
(228, 13, 'Has Liked Your Post', 'like', 57, 0, '2024-02-27 01:02:57', '2024-02-27 01:02:57', 627),
(229, 13, 'Has Commented on Your Post', 'comment', 57, 0, '2024-02-27 01:03:37', '2024-02-27 01:03:37', 627),
(230, 13, 'Has Liked Your Post', 'like', 57, 0, '2024-02-27 01:03:47', '2024-02-27 01:03:47', 626),
(231, 13, 'Has Liked Your Post', 'like', 29, 1, '2024-02-27 06:15:20', '2024-02-27 06:16:13', 641),
(232, 13, 'Has Commented on Your Post', 'comment', 29, 1, '2024-02-27 06:15:30', '2024-02-27 06:16:13', 641),
(233, 6, 'Has Liked Your Post', 'like', 29, 1, '2024-02-27 07:06:32', '2024-02-27 07:24:28', 641),
(234, 38, 'Has Commented on Your Post', 'comment', 13, 1, '2024-02-27 08:31:00', '2024-02-27 08:44:45', 644),
(235, 38, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 08:35:53', '2024-02-27 08:44:45', 633),
(236, 6, 'Has Liked Your Post', 'like', 38, 1, '2024-02-27 08:36:59', '2024-02-27 08:38:38', 645),
(237, 6, 'Has Liked Your Post', 'like', 57, 0, '2024-02-27 08:37:03', '2024-02-27 08:37:03', 627),
(238, 6, 'Has Liked Your Post', 'like', 57, 0, '2024-02-27 08:37:11', '2024-02-27 08:37:11', 625),
(239, 38, 'Has Liked Your Post', 'like', 57, 0, '2024-02-27 08:44:23', '2024-02-27 08:44:23', 626),
(240, 38, 'Has Liked Your Post', 'like', 57, 0, '2024-02-27 08:44:25', '2024-02-27 08:44:25', 627),
(241, 38, 'Has Liked Your Post', 'like', 57, 0, '2024-02-27 08:44:30', '2024-02-27 08:44:30', 625),
(242, 38, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 08:44:37', '2024-02-27 08:44:45', 624),
(243, 6, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 08:52:48', '2024-02-27 09:05:34', 647),
(244, 60, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 12:20:39', '2024-02-27 12:21:55', 657),
(245, 60, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 12:20:41', '2024-02-27 12:21:55', 654),
(246, 60, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 12:20:43', '2024-02-27 12:21:55', 653),
(247, 60, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 12:20:46', '2024-02-27 12:21:55', 647),
(248, 60, 'Has Liked Your Post', 'like', 38, 1, '2024-02-27 12:20:56', '2024-03-21 08:27:44', 645),
(249, 60, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 12:20:58', '2024-02-27 12:21:55', 644),
(250, 60, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 12:21:00', '2024-02-27 12:21:55', 642),
(251, 60, 'Has Liked Your Post', 'like', 29, 1, '2024-02-27 12:21:02', '2024-02-27 15:37:41', 641),
(252, 60, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 12:21:04', '2024-02-27 12:21:55', 640),
(253, 60, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 12:21:06', '2024-02-27 12:21:55', 639),
(254, 60, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 12:21:26', '2024-02-27 12:21:55', 657),
(255, 60, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 12:21:38', '2024-02-27 12:21:55', 654),
(256, 60, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 12:21:46', '2024-02-27 12:21:55', 657),
(257, 60, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 12:21:50', '2024-02-27 12:21:55', 653),
(258, 60, 'Has Commented on Your Post', 'comment', 38, 1, '2024-02-27 12:22:18', '2024-03-21 08:27:43', 645),
(259, 61, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 12:26:44', '2024-02-27 13:23:48', 657),
(260, 61, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 12:26:47', '2024-02-27 13:23:48', 653),
(261, 61, 'Has Commented on Your Post', 'comment', 13, 1, '2024-02-27 12:27:15', '2024-02-27 13:23:48', 657),
(262, 62, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 12:32:29', '2024-02-27 13:23:48', 657),
(263, 62, 'Has Commented on Your Post', 'comment', 13, 1, '2024-02-27 12:32:37', '2024-02-27 13:23:48', 657),
(264, 62, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 12:32:42', '2024-02-27 13:23:48', 654),
(265, 62, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 12:32:44', '2024-02-27 13:23:48', 653),
(266, 62, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 12:32:45', '2024-02-27 13:23:48', 647),
(267, 62, 'Has Liked Your Post', 'like', 38, 1, '2024-02-27 12:32:47', '2024-03-21 08:27:43', 645),
(268, 62, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 12:32:48', '2024-02-27 13:23:48', 644),
(269, 62, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 12:32:50', '2024-02-27 13:23:48', 642),
(270, 63, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 12:37:25', '2024-02-27 13:23:48', 657),
(271, 63, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 12:37:26', '2024-02-27 13:23:48', 654),
(272, 63, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 12:37:28', '2024-02-27 13:23:48', 653),
(273, 63, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 12:37:30', '2024-02-27 13:23:48', 647),
(274, 63, 'Has Liked Your Post', 'like', 38, 1, '2024-02-27 12:37:32', '2024-03-21 08:27:43', 645),
(275, 63, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 12:37:34', '2024-02-27 13:23:48', 644),
(276, 64, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 12:41:24', '2024-02-27 13:23:48', 654),
(277, 64, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 12:41:26', '2024-02-27 13:23:48', 653),
(278, 64, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 12:41:28', '2024-02-27 13:23:48', 647),
(279, 64, 'Has Liked Your Post', 'like', 38, 1, '2024-02-27 12:41:29', '2024-03-21 08:27:43', 645),
(280, 64, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 12:41:31', '2024-02-27 13:23:48', 644),
(281, 64, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 12:41:32', '2024-02-27 13:23:48', 642),
(282, 64, 'Has Liked Your Post', 'like', 29, 1, '2024-02-27 12:41:34', '2024-02-27 15:37:41', 641),
(283, 64, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 12:41:36', '2024-02-27 13:23:48', 640),
(284, 64, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 12:41:38', '2024-02-27 13:23:48', 639),
(285, 65, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 12:46:52', '2024-02-27 13:23:48', 657),
(286, 65, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 12:46:54', '2024-02-27 13:23:48', 654),
(287, 65, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 12:46:55', '2024-02-27 13:23:48', 653),
(288, 65, 'Has Liked Your Post', 'like', 38, 1, '2024-02-27 12:46:59', '2024-03-21 08:27:42', 645),
(289, 65, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 12:47:02', '2024-02-27 13:23:48', 647),
(290, 66, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 12:51:42', '2024-02-27 13:23:47', 657),
(291, 66, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 12:51:45', '2024-02-27 13:23:47', 654),
(292, 66, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 12:51:47', '2024-02-27 13:23:47', 653),
(293, 66, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 12:51:49', '2024-02-27 13:23:47', 647),
(294, 66, 'Has Liked Your Post', 'like', 38, 1, '2024-02-27 12:51:50', '2024-03-21 08:27:42', 645),
(295, 66, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 12:51:53', '2024-02-27 13:23:47', 644),
(296, 66, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 12:51:55', '2024-02-27 13:23:47', 642),
(297, 66, 'Has Liked Your Post', 'like', 29, 1, '2024-02-27 12:52:04', '2024-02-27 15:37:41', 641),
(298, 67, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 12:58:28', '2024-02-27 13:23:47', 657),
(299, 69, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 13:05:29', '2024-02-27 13:23:47', 657),
(300, 69, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 13:05:31', '2024-02-27 13:23:47', 653),
(301, 69, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 13:05:32', '2024-02-27 13:23:47', 654),
(302, 69, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 13:05:34', '2024-02-27 13:23:47', 647),
(303, 69, 'Has Liked Your Post', 'like', 38, 1, '2024-02-27 13:05:36', '2024-03-21 08:27:42', 645),
(304, 69, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 13:05:37', '2024-02-27 13:23:47', 644),
(305, 69, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 13:05:38', '2024-02-27 13:23:47', 642),
(306, 70, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 13:10:23', '2024-02-27 13:23:47', 657),
(307, 70, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 13:10:24', '2024-02-27 13:23:47', 654),
(308, 70, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 13:10:26', '2024-02-27 13:23:47', 653),
(309, 70, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 13:10:28', '2024-02-27 13:23:47', 647),
(310, 70, 'Has Liked Your Post', 'like', 38, 1, '2024-02-27 13:10:29', '2024-03-21 08:27:42', 645),
(311, 70, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 13:10:31', '2024-02-27 13:23:47', 644),
(312, 70, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 13:10:33', '2024-02-27 13:23:47', 642),
(313, 70, 'Has Liked Your Post', 'like', 29, 1, '2024-02-27 13:10:34', '2024-02-27 15:37:41', 641),
(314, 71, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 13:14:23', '2024-02-27 13:23:47', 657),
(315, 71, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 13:14:25', '2024-02-27 13:23:47', 654),
(316, 71, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 13:14:26', '2024-02-27 13:23:47', 653),
(317, 71, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 13:14:28', '2024-02-27 13:23:47', 647),
(318, 71, 'Has Liked Your Post', 'like', 38, 1, '2024-02-27 13:14:30', '2024-03-21 08:27:42', 645),
(319, 71, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 13:14:32', '2024-02-27 13:23:47', 644),
(320, 71, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 13:14:33', '2024-02-27 13:23:47', 642),
(321, 71, 'Has Liked Your Post', 'like', 29, 1, '2024-02-27 13:14:35', '2024-02-27 15:37:41', 641),
(322, 72, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 13:19:37', '2024-02-27 13:23:47', 657),
(323, 72, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 13:19:38', '2024-02-27 13:23:47', 654),
(324, 72, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 13:19:40', '2024-02-27 13:23:47', 653),
(325, 72, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 13:19:41', '2024-02-27 13:23:47', 647),
(326, 72, 'Has Liked Your Post', 'like', 38, 1, '2024-02-27 13:19:42', '2024-03-21 08:27:41', 645),
(327, 72, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 13:19:44', '2024-02-27 13:23:47', 644),
(328, 72, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 13:19:46', '2024-02-27 13:23:47', 642),
(329, 72, 'Has Liked Your Post', 'like', 29, 1, '2024-02-27 13:19:47', '2024-02-27 15:37:41', 641),
(330, 72, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 13:19:49', '2024-02-27 13:23:47', 640),
(331, 73, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 13:24:42', '2024-02-27 14:06:14', 657),
(332, 73, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 13:24:48', '2024-02-27 14:06:14', 654),
(333, 73, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 13:24:50', '2024-02-27 14:06:14', 653),
(334, 73, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 13:24:52', '2024-02-27 14:06:14', 647),
(335, 73, 'Has Liked Your Post', 'like', 38, 1, '2024-02-27 13:24:53', '2024-03-21 08:27:41', 645),
(336, 73, 'Has Liked Your Post', 'like', 13, 1, '2024-02-27 13:24:55', '2024-02-27 14:06:13', 644),
(338, 29, 'Has Liked Your Post', 'message', 29, 1, '2024-02-27 15:39:12', '2024-02-27 15:54:48', 5),
(339, 29, 'Has Liked Your Post', 'message', 29, 1, '2024-02-27 15:39:22', '2024-02-27 15:54:48', 5),
(340, 29, 'Has Commented on Your Post', 'comment', 38, 1, '2024-02-27 15:56:20', '2024-03-21 08:27:41', 645),
(341, 13, 'Has Liked Your Post', 'like', 6, 1, '2024-02-27 17:01:55', '2024-02-27 17:02:56', 534),
(342, 13, 'Has Liked Your Post', 'like', 6, 1, '2024-02-27 17:02:50', '2024-02-27 17:02:56', 534),
(343, 13, 'Has Liked Your Post', 'like', 6, 1, '2024-02-27 19:49:39', '2024-02-28 07:29:03', 678),
(344, 6, 'Has Liked Your Post', 'like', 13, 1, '2024-02-28 07:47:29', '2024-02-28 07:49:02', 665),
(345, 6, 'Has Liked Your Post', 'like', 13, 1, '2024-02-28 07:47:51', '2024-02-28 07:49:02', 664),
(377, 41, 'Has Liked Your Post', 'like', 13, 1, '2024-02-28 08:09:55', '2024-02-28 08:13:49', 683),
(378, 41, 'Has Liked Your Post', 'like', 6, 1, '2024-02-28 08:10:00', '2024-02-28 08:27:04', 682),
(379, 41, 'Has Liked Your Post', 'like', 6, 1, '2024-02-28 08:10:12', '2024-02-28 08:27:04', 680),
(387, 6, 'Has Liked Your Post', 'like', 76, 1, '2024-02-28 18:04:00', '2024-02-28 18:28:15', 703),
(388, 13, 'Has Liked Your Post', 'like', 76, 1, '2024-02-29 04:02:39', '2024-02-29 06:23:55', 703),
(389, 73, 'Has Commented on Your Post', 'comment', 13, 1, '2024-02-29 19:10:55', '2024-02-29 19:16:15', 721),
(390, 73, 'Has Commented on Your Post', 'comment', 13, 1, '2024-02-29 19:11:24', '2024-02-29 19:16:15', 720),
(391, 73, 'Has Liked Your Post', 'like', 13, 1, '2024-02-29 19:14:42', '2024-02-29 19:16:15', 711),
(392, 73, 'Has Commented on Your Post', 'comment', 13, 1, '2024-02-29 19:15:08', '2024-02-29 19:16:15', 711),
(393, 13, 'Has Liked Your Post', 'like', 73, 1, '2024-02-29 19:15:49', '2024-02-29 19:22:02', 722),
(394, 13, 'Has Commented on Your Post', 'comment', 73, 1, '2024-02-29 19:16:01', '2024-02-29 19:22:02', 722),
(395, 13, 'Has Liked Your Post', 'like', 79, 1, '2024-03-01 12:59:53', '2024-03-03 13:35:17', 737),
(396, 13, 'Has Commented on Your Post', 'comment', 79, 1, '2024-03-01 13:00:13', '2024-03-03 13:35:17', 737),
(397, 80, 'Has Liked Your Post', 'like', 13, 1, '2024-03-01 15:25:03', '2024-03-01 16:07:32', 734),
(398, 80, 'Has Liked Your Post', 'like', 13, 1, '2024-03-01 15:25:03', '2024-03-01 16:07:32', 734),
(399, 79, 'Has Liked Your Post', 'like', 13, 1, '2024-03-01 18:27:12', '2024-03-01 18:31:06', 748),
(400, 79, 'Has Liked Your Post', 'like', 13, 1, '2024-03-01 18:27:13', '2024-03-01 18:31:06', 749),
(401, 79, 'Has Commented on Your Post', 'comment', 13, 1, '2024-03-01 18:27:22', '2024-03-01 18:31:06', 749),
(402, 79, 'Has Commented on Your Post', 'comment', 13, 1, '2024-03-01 18:27:44', '2024-03-01 18:31:06', 748),
(403, 41, 'Has Liked Your Post', 'like', 13, 1, '2024-03-02 07:19:36', '2024-03-02 07:22:01', 755),
(404, 41, 'Has Liked Your Post', 'like', 13, 1, '2024-03-02 07:19:37', '2024-03-02 07:22:01', 754),
(405, 41, 'Has Liked Your Post', 'like', 13, 1, '2024-03-02 07:19:39', '2024-03-02 07:22:01', 753),
(406, 41, 'Has Liked Your Post', 'like', 13, 1, '2024-03-02 07:19:41', '2024-03-02 07:22:01', 752),
(407, 41, 'Has Commented on Your Post', 'comment', 13, 1, '2024-03-02 07:21:30', '2024-03-02 07:22:01', 753),
(408, 41, 'Has Liked Your Post', 'like', 13, 1, '2024-03-02 07:21:44', '2024-03-02 07:22:01', 749),
(409, 41, 'Has Liked Your Post', 'like', 13, 1, '2024-03-02 07:21:48', '2024-03-02 07:22:01', 748),
(410, 13, 'Has Liked Your Post', 'like', 41, 1, '2024-03-02 08:19:00', '2024-03-15 09:19:58', 759),
(411, 6, 'Has Liked Your Post', 'like', 79, 1, '2024-03-02 10:05:46', '2024-03-03 13:35:17', 737),
(412, 13, 'Has Liked Your Post', 'like', 79, 1, '2024-03-02 14:31:58', '2024-03-03 13:35:17', 733),
(413, 13, 'Has Liked Your Post', 'like', 79, 1, '2024-03-02 14:31:59', '2024-03-03 13:35:17', 733),
(414, 13, 'Has Liked Your Post', 'like', 79, 1, '2024-03-02 14:32:22', '2024-03-03 13:35:17', 733),
(415, 29, 'Has Liked Your Post', 'like', 79, 1, '2024-03-03 05:30:33', '2024-03-03 13:35:17', 733),
(416, 29, 'Has Liked Your Post', 'like', 13, 1, '2024-03-03 05:45:48', '2024-03-03 05:56:02', 769),
(417, 29, 'Has Commented on Your Post', 'comment', 13, 1, '2024-03-03 05:45:58', '2024-03-03 05:56:02', 769),
(418, 29, 'Has Liked Your Post', 'like', 41, 1, '2024-03-03 05:47:11', '2024-03-15 09:19:58', 759),
(419, 29, 'Has Commented on Your Post', 'comment', 41, 1, '2024-03-03 05:47:24', '2024-03-15 09:19:58', 759),
(420, 13, 'Has Liked Your Post', 'like', 29, 1, '2024-03-03 05:55:59', '2024-03-03 06:02:55', 792),
(421, 29, 'Has Liked Your Post', 'like', 77, 0, '2024-03-03 06:03:08', '2024-03-03 06:03:08', 716),
(422, 13, 'Has Commented on Your Post', 'comment', 29, 1, '2024-03-03 06:08:10', '2024-03-03 06:09:02', 793),
(423, 41, 'Has Liked Your Post', 'like', 13, 1, '2024-03-03 10:08:59', '2024-03-03 10:14:08', 800),
(424, 41, 'Has Liked Your Post', 'like', 13, 1, '2024-03-03 10:09:01', '2024-03-03 10:14:08', 799),
(425, 41, 'Has Liked Your Post', 'like', 13, 1, '2024-03-03 10:09:03', '2024-03-03 10:14:08', 798),
(426, 29, 'Has Liked Your Post', 'like', 41, 1, '2024-03-03 11:06:38', '2024-03-15 09:19:58', 801),
(427, 29, 'Has Liked Your Post', 'like', 13, 1, '2024-03-03 11:09:47', '2024-03-03 11:15:23', 532),
(428, 79, 'Has Liked Your Post', 'like', 13, 1, '2024-03-03 13:35:35', '2024-03-03 14:35:52', 817),
(429, 79, 'Has Liked Your Post', 'like', 13, 1, '2024-03-03 13:35:38', '2024-03-03 14:35:52', 816),
(430, 79, 'Has Liked Your Post', 'like', 13, 1, '2024-03-03 13:35:46', '2024-03-03 14:35:52', 815),
(431, 79, 'Has Liked Your Post', 'like', 13, 1, '2024-03-03 13:35:55', '2024-03-03 14:35:52', 813),
(432, 79, 'Has Liked Your Post', 'like', 13, 1, '2024-03-03 13:36:09', '2024-03-03 14:35:52', 812),
(433, 79, 'Has Liked Your Post', 'like', 13, 1, '2024-03-03 13:36:25', '2024-03-03 14:35:52', 811),
(434, 79, 'Has Liked Your Post', 'like', 13, 1, '2024-03-03 13:36:40', '2024-03-03 14:35:52', 810),
(435, 79, 'Has Liked Your Post', 'like', 13, 1, '2024-03-03 13:36:43', '2024-03-03 14:35:52', 809),
(436, 79, 'Has Liked Your Post', 'like', 13, 1, '2024-03-03 13:37:01', '2024-03-03 14:35:52', 808),
(437, 79, 'Has Liked Your Post', 'like', 13, 1, '2024-03-03 13:37:18', '2024-03-03 14:35:52', 815),
(438, 79, 'Has Liked Your Post', 'like', 13, 1, '2024-03-03 13:37:23', '2024-03-03 14:35:52', 815),
(439, 79, 'Has Liked Your Post', 'like', 13, 1, '2024-03-03 13:37:26', '2024-03-03 14:35:52', 815),
(440, 79, 'Has Liked Your Post', 'like', 13, 1, '2024-03-03 13:37:28', '2024-03-03 14:35:52', 815),
(441, 79, 'Has Liked Your Post', 'like', 13, 1, '2024-03-03 13:37:34', '2024-03-03 14:35:52', 814),
(442, 13, 'Has Liked Your Post', 'like', 79, 1, '2024-03-03 14:49:01', '2024-03-03 14:50:32', 819),
(443, 13, 'Has Commented on Your Post', 'comment', 79, 1, '2024-03-03 14:49:06', '2024-03-03 14:50:32', 819),
(444, 13, 'Has Liked Your Post', 'like', 79, 1, '2024-03-03 14:50:39', '2024-03-03 14:53:51', 818),
(445, 13, 'Has Commented on Your Post', 'comment', 79, 1, '2024-03-03 14:50:54', '2024-03-03 14:53:51', 818),
(446, 29, 'Has Commented on Your Post', 'comment', 79, 1, '2024-03-03 16:53:07', '2024-03-04 09:47:24', 821),
(447, 29, 'Has Liked Your Post', 'like', 79, 1, '2024-03-03 16:53:21', '2024-03-04 09:47:24', 821),
(448, 29, 'Has Liked Your Post', 'like', 79, 1, '2024-03-03 16:53:35', '2024-03-04 09:47:24', 820),
(449, 29, 'Has Liked Your Post', 'like', 79, 1, '2024-03-03 16:53:56', '2024-03-04 09:47:24', 819),
(450, 29, 'Has Liked Your Post', 'like', 79, 1, '2024-03-03 16:54:17', '2024-03-04 09:47:24', 818),
(451, 13, 'Has Liked Your Post', 'like', 79, 1, '2024-03-04 09:52:45', '2024-03-07 06:30:50', 833),
(452, 13, 'Has Commented on Your Post', 'comment', 79, 1, '2024-03-04 09:53:03', '2024-03-07 06:30:48', 833),
(453, 13, 'Has Liked Your Post', 'like', 79, 1, '2024-03-04 09:53:12', '2024-03-07 06:30:44', 832),
(454, 13, 'Has Liked Your Post', 'like', 41, 1, '2024-03-04 13:22:40', '2024-03-15 09:19:58', 801),
(455, 13, 'Has Commented on Your Post', 'comment', 41, 1, '2024-03-04 13:22:55', '2024-03-15 09:19:58', 801),
(456, 13, 'Has Liked Your Post', 'like', 75, 0, '2024-03-04 13:27:07', '2024-03-04 13:27:07', 796),
(457, 13, 'Has Commented on Your Post', 'comment', 75, 0, '2024-03-04 13:27:13', '2024-03-04 13:27:13', 796),
(458, 13, 'Has Liked Your Post', 'like', 77, 0, '2024-03-04 17:46:39', '2024-03-04 17:46:39', 716),
(459, 6, 'Has Commented on Your Post', 'comment', 13, 1, '2024-03-05 12:37:25', '2024-03-05 12:39:02', 598),
(460, 6, 'Has Commented on Your Post', 'comment', 13, 1, '2024-03-05 13:45:19', '2024-03-05 13:52:36', 60),
(461, 6, 'Has Replied to Your Comment', 'commentReply', 13, 1, '2024-03-05 14:23:51', '2024-03-05 14:34:33', 598),
(462, 6, 'Has Commented on Your Post', 'comment', 13, 1, '2024-03-05 14:24:51', '2024-03-05 14:34:33', 598),
(463, 6, 'Has Replied to Your Comment', 'commentReply', 13, 1, '2024-03-05 14:46:21', '2024-03-05 17:04:15', 598),
(464, 6, 'Has Replied to Your Comment', 'commentReply', 13, 1, '2024-03-05 17:00:46', '2024-03-05 17:04:15', 597),
(465, 6, 'Has Replied to Your Comment', 'commentReply', 13, 1, '2024-03-05 17:19:02', '2024-03-05 17:51:51', 438),
(466, 6, 'Has Commented on Your Post', 'comment', 13, 1, '2024-03-05 17:23:43', '2024-03-05 17:51:51', 438),
(467, 6, 'Has Commented on Your Post', 'comment', 13, 1, '2024-03-05 17:25:48', '2024-03-05 17:51:51', 438),
(468, 6, 'Has Commented on Your Post', 'comment', 13, 1, '2024-03-05 17:25:57', '2024-03-05 17:51:51', 438),
(469, 6, 'Has Replied to Your Comment', 'commentReply', 79, 1, '2024-03-05 17:48:50', '2024-03-07 06:30:41', 833),
(470, 6, 'Has Commented on Your Post', 'comment', 13, 1, '2024-03-05 20:43:51', '2024-03-06 04:57:52', 755),
(471, 6, 'Has Replied to Your Comment', 'commentReply', 13, 1, '2024-03-05 20:46:39', '2024-03-06 04:57:52', 755),
(472, 6, 'Has Commented on Your Post', 'comment', 13, 1, '2024-03-06 10:14:06', '2024-03-06 12:27:18', 842),
(473, 6, 'Has Replied to Your Comment', 'commentReply', 13, 1, '2024-03-06 10:14:40', '2024-03-06 12:27:18', 842),
(474, 29, 'Has Replied to Your Comment', 'commentReply', 13, 1, '2024-03-06 20:04:24', '2024-03-08 05:51:57', 842),
(475, 29, 'Has Replied to Your Comment', 'commentReply', 13, 1, '2024-03-06 20:04:27', '2024-03-06 20:20:08', 842),
(476, 29, 'Has Replied to Your Comment', 'commentReply', 13, 1, '2024-03-06 20:04:28', '2024-03-06 20:20:08', 842),
(477, 29, 'Has Replied to Your Comment', 'commentReply', 13, 1, '2024-03-06 20:04:29', '2024-03-08 05:51:52', 842),
(478, 29, 'Has Replied to Your Comment', 'commentReply', 13, 1, '2024-03-06 20:04:29', '2024-03-06 20:20:08', 842),
(479, 29, 'Has Replied to Your Comment', 'commentReply', 13, 1, '2024-03-06 20:04:29', '2024-03-06 20:20:08', 842),
(480, 29, 'Has Replied to Your Comment', 'commentReply', 13, 1, '2024-03-06 20:04:30', '2024-03-06 20:20:08', 842),
(481, 29, 'Has Replied to Your Comment', 'commentReply', 13, 1, '2024-03-06 20:04:30', '2024-03-06 20:20:08', 842),
(482, 29, 'Has Replied to Your Comment', 'commentReply', 13, 1, '2024-03-06 20:04:30', '2024-03-06 20:20:08', 842),
(483, 29, 'Has Replied to Your Comment', 'commentReply', 13, 1, '2024-03-06 20:04:30', '2024-03-06 20:20:08', 842),
(484, 29, 'Has Replied to Your Comment', 'commentReply', 13, 1, '2024-03-06 20:04:30', '2024-03-06 20:20:08', 842),
(485, 29, 'Has Replied to Your Comment', 'commentReply', 13, 1, '2024-03-06 20:04:31', '2024-03-06 20:20:08', 842),
(486, 13, 'Has Liked Your Post', 'message', 13, 1, '2024-03-07 00:12:56', '2024-03-07 00:15:00', 5),
(488, 13, 'Has Commented on Your Post', 'comment', 79, 1, '2024-03-07 15:47:04', '2024-03-08 18:26:37', 855),
(489, 13, 'Has Liked Your Post', 'like', 79, 1, '2024-03-07 15:47:14', '2024-03-08 18:26:37', 854),
(490, 13, 'Has Liked Your Post', 'like', 79, 1, '2024-03-07 15:47:28', '2024-03-08 18:26:37', 853),
(491, 13, 'Has Replied to Your Comment', 'commentReply', 79, 1, '2024-03-07 15:47:49', '2024-03-08 18:26:37', 854),
(492, 13, 'Has Commented on Your Post', 'comment', 79, 1, '2024-03-07 15:48:55', '2024-03-08 18:26:37', 854),
(493, 13, 'Has Liked Your Post', 'like', 79, 1, '2024-03-09 15:04:11', '2024-03-13 17:51:59', 862),
(494, 29, 'Has Commented on Your Post', 'comment', 79, 1, '2024-03-09 15:44:02', '2024-03-13 17:51:59', 862),
(495, 41, 'Has Liked Your Post', 'like', 79, 1, '2024-03-15 09:22:06', '2024-03-17 07:58:24', 877),
(496, 41, 'Has Liked Your Post', 'like', 13, 1, '2024-03-15 09:22:08', '2024-03-15 22:01:36', 876),
(497, 41, 'Has Liked Your Post', 'like', 13, 1, '2024-03-15 09:22:14', '2024-03-15 22:01:36', 874),
(498, 41, 'Has Liked Your Post', 'like', 13, 1, '2024-03-15 09:22:15', '2024-03-15 22:01:36', 873),
(499, 41, 'Has Liked Your Post', 'like', 13, 1, '2024-03-15 09:22:18', '2024-03-15 22:01:36', 872),
(500, 41, 'Has Liked Your Post', 'like', 13, 1, '2024-03-15 09:22:20', '2024-03-15 22:01:36', 871),
(501, 41, 'Has Liked Your Post', 'like', 13, 1, '2024-03-15 09:22:30', '2024-03-15 22:01:36', 828),
(502, 6, 'Has Commented on Your Post', 'comment', 13, 1, '2024-03-18 07:48:25', '2024-03-18 07:48:39', 739),
(503, 6, 'Has Replied to Your Comment', 'commentReply', 13, 1, '2024-03-19 11:12:36', '2024-03-19 11:45:38', 885),
(504, 6, 'Has Liked Your Post', 'like', 13, 1, '2024-03-19 12:07:29', '2024-03-19 12:07:29', 885),
(505, 6, 'Has Liked Your Post', 'like', 13, 1, '2024-03-19 12:07:37', '2024-03-19 14:08:53', 885),
(506, 6, 'Has Liked Your Post', 'like', 13, 1, '2024-03-19 12:07:47', '2024-03-19 14:08:53', 885),
(507, 6, 'Has Liked Your Post', 'like', 13, 1, '2024-03-19 12:08:04', '2024-03-19 14:08:53', 883),
(508, 6, 'Has Liked Your Post', 'like', 13, 1, '2024-03-19 12:08:12', '2024-03-19 14:08:53', 885),
(509, 6, 'Has Liked Your Post', 'like', 13, 1, '2024-03-19 12:27:24', '2024-03-19 14:08:53', 885),
(510, 6, 'Has Liked Your Post', 'like', 13, 1, '2024-03-19 12:36:26', '2024-03-19 14:08:53', 885),
(511, 6, 'Has Liked Your Post', 'like', 13, 1, '2024-03-19 12:37:41', '2024-03-19 14:08:53', 885),
(512, 6, 'Has Liked Your Post', 'like', 13, 1, '2024-03-19 12:37:51', '2024-03-19 14:08:53', 885),
(513, 6, 'Has Liked Your Post', 'like', 13, 1, '2024-03-19 12:37:53', '2024-03-19 14:08:53', 885),
(514, 6, 'Has Liked Your Post', 'like', 13, 1, '2024-03-19 12:40:54', '2024-03-19 14:08:53', 885),
(515, 6, 'Has Liked Your Post', 'like', 13, 1, '2024-03-19 12:40:57', '2024-03-19 14:08:53', 885),
(516, 6, 'Has Liked Your Post', 'like', 13, 1, '2024-03-19 12:40:58', '2024-03-19 14:08:53', 885),
(517, 6, 'Has Liked Your Post', 'like', 13, 1, '2024-03-19 13:04:57', '2024-03-19 14:08:53', 885),
(518, 6, 'Has Liked Your Post', 'like', 13, 1, '2024-03-19 13:04:59', '2024-03-19 14:08:53', 885),
(519, 6, 'Has Liked Your Post', 'like', 13, 1, '2024-03-19 13:05:03', '2024-03-19 14:08:53', 885),
(520, 6, 'Has Replied to Your Comment', 'commentReply', 13, 1, '2024-03-19 14:41:16', '2024-03-19 14:41:43', 887),
(521, 6, 'Has Replied to Your Comment', 'commentReply', 13, 1, '2024-03-19 16:03:55', '2024-03-19 16:06:22', 895),
(523, 13, 'Has Liked Your Post', 'message', 13, 1, '2024-03-19 17:00:58', '2024-03-20 05:55:58', 5),
(524, 13, 'Has Liked Your Post', 'message', 13, 1, '2024-03-19 17:01:25', '2024-03-20 05:55:59', 5),
(526, 13, 'Has Liked Your Post', 'message', 13, 1, '2024-03-19 17:03:35', '2024-03-20 05:56:01', 5),
(527, 29, 'Has Liked Your Post', 'message', 29, 1, '2024-03-20 05:53:16', '2024-03-23 18:20:26', 5),
(529, 13, 'Has Liked Your Post', 'message', 13, 1, '2024-03-20 05:54:57', '2024-03-20 05:56:03', 5),
(530, 29, 'Has Liked Your Post', 'message', 29, 1, '2024-03-20 05:55:49', '2024-03-23 18:20:26', 5),
(531, 6, 'Has Commented on Your Post', 'comment', 13, 1, '2024-03-20 12:05:27', '2024-03-20 12:52:00', 230),
(532, 6, 'Has Commented on Your Post', 'comment', 13, 1, '2024-03-22 13:26:43', '2024-03-22 13:29:15', 905),
(533, 6, 'Has Commented on Your Post', 'comment', 13, 1, '2024-03-22 13:26:57', '2024-03-22 13:29:15', 905),
(534, 6, 'Has Replied to Your Comment', 'commentReply', 13, 1, '2024-03-22 15:12:11', '2024-03-22 15:21:52', 905),
(535, 6, 'Has Commented on Your Post', 'comment', 13, 1, '2024-03-22 15:41:24', '2024-03-22 16:08:34', 905),
(536, 6, 'Has Replied to Your Comment', 'commentReply', 13, 1, '2024-03-22 15:41:50', '2024-03-22 16:08:34', 905),
(537, 6, 'Has Replied to Your Comment', 'commentReply', 13, 1, '2024-03-22 17:38:32', '2024-03-22 19:35:43', 16),
(538, 6, 'Has Replied to Your Comment', 'commentReply', 13, 1, '2024-03-22 17:42:20', '2024-03-22 19:35:43', 16),
(539, 6, 'Has Replied to Your Comment', 'commentReply', 13, 1, '2024-03-22 19:07:10', '2024-03-22 19:35:43', 905),
(540, 6, 'Has Replied to Your Comment', 'commentReply', 13, 1, '2024-03-22 19:08:30', '2024-03-22 19:35:43', 905),
(541, 6, 'Has Liked Your Post', 'like', 13, 1, '2024-03-23 11:53:10', '2024-03-23 11:58:12', 911),
(542, 6, 'Has Commented on Your Post', 'comment', 13, 1, '2024-03-23 11:53:30', '2024-03-23 11:58:12', 911),
(543, 6, 'Has Commented on Your Post', 'comment', 13, 1, '2024-03-23 11:54:57', '2024-03-23 11:58:12', 910),
(544, 6, 'Has Commented on Your Post', 'comment', 13, 1, '2024-03-23 12:26:06', '2024-03-23 14:39:29', 911),
(545, 6, 'Has Commented on Your Post', 'comment', 13, 1, '2024-03-23 12:33:54', '2024-03-23 14:39:29', 911),
(546, 6, 'Has Commented on Your Post', 'comment', 13, 1, '2024-03-23 12:35:40', '2024-03-23 14:39:29', 911),
(547, 6, 'Has Commented on Your Post', 'comment', 13, 1, '2024-03-23 12:36:08', '2024-03-23 14:39:29', 911),
(548, 6, 'Has Commented on Your Post', 'comment', 13, 1, '2024-03-23 12:46:09', '2024-03-23 14:39:29', 911),
(549, 6, 'Has Commented on Your Post', 'comment', 13, 1, '2024-03-23 12:57:41', '2024-03-23 14:39:29', 911),
(550, 6, 'Has Commented on Your Post', 'comment', 13, 1, '2024-03-23 13:09:54', '2024-03-23 14:39:29', 911),
(551, 6, 'Has Commented on Your Post', 'comment', 13, 1, '2024-03-23 13:10:17', '2024-03-23 14:39:29', 911),
(552, 6, 'Has Commented on Your Post', 'comment', 13, 1, '2024-03-23 13:10:33', '2024-03-23 14:39:29', 910),
(553, 6, 'Has Replied to Your Comment', 'commentReply', 13, 1, '2024-03-23 13:11:01', '2024-03-23 14:39:28', 910),
(554, 6, 'Has Replied to Your Comment', 'commentReply', 13, 1, '2024-03-23 15:04:21', '2024-03-23 16:42:27', 911),
(555, 6, 'Has Commented on Your Post', 'comment', 13, 1, '2024-03-23 15:15:04', '2024-03-23 16:42:27', 910),
(556, 6, 'Has Commented on Your Post', 'comment', 13, 1, '2024-03-23 15:15:15', '2024-03-23 16:42:27', 910),
(557, 6, 'Has Replied to Your Comment', 'commentReply', 13, 1, '2024-03-23 15:15:29', '2024-03-23 16:42:27', 910),
(558, 13, 'Has Liked Your Post', 'message', 13, 1, '2024-03-23 16:58:08', '2024-03-23 16:59:42', 5),
(559, 6, 'Has Commented on Your Post', 'comment', 13, 1, '2024-03-24 18:34:40', '2024-03-24 19:20:08', 928),
(560, 6, 'Has Commented on Your Post', 'comment', 13, 1, '2024-03-24 19:24:02', '2024-03-24 19:25:44', 928),
(561, 11, 'Has Liked Your Post', 'message', 11, 1, '2024-03-25 09:22:21', '2024-03-25 09:36:01', 6),
(562, 11, 'Has Liked Your Post', 'like', 13, 1, '2024-03-26 06:58:29', '2024-03-26 06:59:28', 944),
(563, 11, 'Has Commented on Your Post', 'comment', 13, 1, '2024-03-26 06:59:46', '2024-03-26 07:02:34', 944),
(564, 11, 'Has Commented on Your Post', 'comment', 13, 1, '2024-03-26 07:01:07', '2024-03-26 07:02:34', 944),
(565, 13, 'Has Commented on Your Post', 'comment', 11, 1, '2024-03-26 10:46:05', '2024-03-27 15:26:00', 503),
(566, 13, 'Has Replied to Your Comment', 'commentReply', 11, 1, '2024-03-26 10:46:31', '2024-03-27 15:26:00', 503),
(567, 13, 'Has Commented on Your Post', 'comment', 11, 1, '2024-03-26 11:00:20', '2024-03-27 15:26:00', 504),
(568, 6, 'Has Liked Your Post', 'like', 86, 1, '2024-03-30 16:31:44', '2024-04-03 14:51:20', 947),
(569, 6, 'Has Commented on Your Post', 'comment', 86, 1, '2024-03-30 16:32:05', '2024-04-03 14:51:20', 947),
(570, 6, 'Has Commented on Your Post', 'comment', 86, 1, '2024-03-30 16:46:23', '2024-04-03 14:51:20', 947),
(571, 6, 'Has Commented on Your Post', 'comment', 13, 1, '2024-03-30 16:49:36', '2024-03-30 17:00:03', 810),
(573, 13, 'Has Liked Your Post', 'like', 79, 0, '2024-03-30 17:30:23', '2024-03-30 17:30:23', 882),
(574, 13, 'Has Commented on Your Post', 'comment', 79, 0, '2024-03-30 17:30:33', '2024-03-30 17:30:33', 882),
(575, 13, 'Has Liked Your Post', 'like', 79, 0, '2024-03-31 01:29:27', '2024-03-31 01:29:27', 880),
(576, 13, 'Has Commented on Your Post', 'comment', 79, 0, '2024-03-31 01:29:38', '2024-03-31 01:29:38', 880),
(577, 13, 'Has Liked Your Post', 'like', 79, 0, '2024-03-31 01:30:32', '2024-03-31 01:30:32', 879),
(578, 13, 'Has Liked Your Post', 'like', 79, 0, '2024-03-31 01:30:52', '2024-03-31 01:30:52', 878),
(579, 13, 'Has Liked Your Post', 'like', 79, 0, '2024-03-31 01:31:15', '2024-03-31 01:31:15', 862),
(580, 13, 'Has Liked Your Post', 'like', 41, 0, '2024-03-31 04:02:23', '2024-03-31 04:02:23', 759),
(581, 13, 'Has Liked Your Post', 'message', 13, 1, '2024-04-03 08:19:00', '2024-04-03 08:23:35', 7);
INSERT INTO `notifications` (`id`, `user_id`, `message`, `type`, `reference_id`, `is_read`, `created_at`, `updated_at`, `post_id`) VALUES
(582, 6, 'Has Liked Your Post', 'like', 13, 1, '2024-04-03 09:10:56', '2024-04-03 09:17:20', 715),
(583, 6, 'Has Liked Your Post', 'like', 13, 1, '2024-04-03 09:20:54', '2024-04-03 09:25:14', 712),
(584, 13, 'Has Liked Your Post', 'like', 14, 1, '2024-04-03 10:58:30', '2024-04-03 10:58:42', 735),
(585, 13, 'Has Commented on Your Post', 'comment', 14, 1, '2024-04-03 10:59:01', '2024-04-22 09:44:35', 735),
(586, 13, 'Has Commented on Your Post', 'comment', 14, 1, '2024-04-03 10:59:22', '2024-04-22 09:44:35', 735),
(587, 13, 'Has Commented on Your Post', 'comment', 14, 1, '2024-04-03 11:00:09', '2024-04-22 09:44:35', 735),
(588, 14, 'Has Commented on Your Post', 'comment', 13, 1, '2024-04-03 11:02:20', '2024-04-03 11:05:00', 871),
(589, 14, 'Has Replied to Your Comment', 'commentReply', 13, 1, '2024-04-03 11:03:44', '2024-04-03 11:05:00', 871),
(590, 86, 'Has Commented on Your Post', 'comment', 13, 1, '2024-04-03 14:54:22', '2024-04-03 15:12:43', 688),
(591, 13, 'Has Replied to Your Comment', 'commentReply', 13, 1, '2024-04-03 14:55:37', '2024-04-03 15:12:43', 688),
(592, 13, 'Has Commented on Your Post', 'comment', 86, 1, '2024-04-03 14:56:44', '2024-04-03 14:56:56', 958),
(593, 86, 'Has Replied to Your Comment', 'commentReply', 86, 1, '2024-04-03 14:57:11', '2024-04-03 15:11:43', 958),
(594, 13, 'Has Liked Your Post', 'message', 13, 1, '2024-04-03 15:19:23', '2024-04-03 15:23:40', 8),
(595, 13, 'Has Liked Your Post', 'message', 13, 1, '2024-04-03 15:20:04', '2024-04-03 15:23:40', 8),
(596, 86, 'Has Liked Your Post', 'message', 86, 1, '2024-04-03 15:21:05', '2024-04-03 15:49:17', 8),
(597, 13, 'Has Liked Your Post', 'message', 13, 1, '2024-04-03 15:21:27', '2024-04-03 15:23:40', 8),
(598, 86, 'Has Liked Your Post', 'message', 86, 1, '2024-04-03 15:23:33', '2024-04-03 15:49:17', 8),
(599, 13, 'Has Liked Your Post', 'message', 13, 1, '2024-04-03 15:25:09', '2024-04-03 15:28:40', 8),
(600, 86, 'Has Commented on Your Post', 'comment', 13, 1, '2024-04-03 16:28:55', '2024-04-03 16:31:37', 857),
(601, 86, 'Has Commented on Your Post', 'comment', 13, 1, '2024-04-03 16:33:10', '2024-04-03 16:35:01', 852),
(602, 13, 'Has Replied to Your Comment', 'commentReply', 13, 1, '2024-04-03 16:33:37', '2024-04-03 16:35:01', 852),
(603, 86, 'Has Commented on Your Post', 'comment', 13, 1, '2024-04-03 16:35:02', '2024-04-03 16:39:37', 844),
(604, 86, 'Has Commented on Your Post', 'comment', 13, 1, '2024-04-03 16:41:39', '2024-04-03 16:43:41', 835),
(605, 13, 'Has Replied to Your Comment', 'commentReply', 13, 1, '2024-04-03 16:42:25', '2024-04-03 16:43:41', 835),
(606, 86, 'Has Commented on Your Post', 'comment', 13, 1, '2024-04-03 18:52:16', '2024-04-03 19:00:23', 830),
(607, 86, 'Has Commented on Your Post', 'comment', 13, 1, '2024-04-03 18:53:41', '2024-04-03 19:00:23', 823),
(608, 86, 'Has Replied to Your Comment', 'commentReply', 13, 1, '2024-04-03 18:54:23', '2024-04-03 19:00:23', 823),
(609, 13, 'Has Liked Your Post', 'like', 86, 1, '2024-04-03 18:56:17', '2024-04-03 19:03:14', 962),
(610, 13, 'Has Liked Your Post', 'like', 86, 1, '2024-04-03 19:02:29', '2024-04-03 19:03:14', 961),
(611, 13, 'Has Replied to Your Comment', 'commentReply', 13, 1, '2024-04-03 19:12:27', '2024-04-03 19:30:45', 823),
(612, 86, 'Has Commented on Your Post', 'comment', 13, 1, '2024-04-03 19:14:08', '2024-04-03 19:30:45', 776),
(613, 13, 'Has Replied to Your Comment', 'commentReply', 13, 1, '2024-04-03 19:15:26', '2024-04-03 19:30:45', 776),
(614, 86, 'Has Replied to Your Comment', 'commentReply', 13, 1, '2024-04-03 19:18:55', '2024-04-03 19:30:45', 776),
(615, 86, 'Has Replied to Your Comment', 'commentReply', 13, 1, '2024-04-03 19:19:58', '2024-04-03 19:30:45', 776),
(616, 13, 'Has Replied to Your Comment', 'commentReply', 13, 1, '2024-04-03 19:22:08', '2024-04-03 19:30:45', 776),
(617, 13, 'Has Replied to Your Comment', 'commentReply', 13, 1, '2024-04-03 19:31:50', '2024-04-04 05:20:09', 776),
(620, 13, 'Has Requested to Be Your Friend', 'friend', 79, 0, '2024-04-11 09:47:13', '2024-04-11 09:47:13', 3),
(622, 13, 'Has Requested to Be Your Friend', 'friend', 29, 0, '2024-04-11 10:24:58', '2024-04-11 10:24:58', 11),
(623, 13, 'Has Liked Your Post', 'like', 6, 1, '2024-04-11 11:20:00', '2024-04-11 11:40:54', 706),
(638, 13, 'Has Requested to be Your Friend', 'friend', 29, 0, '2024-04-11 14:42:43', '2024-04-11 14:42:43', 2),
(640, 13, 'Has Requested to be Your Friend', 'friend', 14, 1, '2024-04-12 17:21:35', '2024-04-22 09:44:35', 4),
(643, 13, 'Has Liked Your Post', 'message', 13, 1, '2024-04-13 08:19:36', '2024-04-13 08:24:16', 4),
(644, 13, 'Has Liked Your Post', 'message', 13, 1, '2024-04-13 08:19:44', '2024-04-13 08:24:16', 4),
(645, 13, 'Has Liked Your Post', 'like', 96, 1, '2024-04-13 17:20:47', '2024-04-14 15:04:39', 965),
(646, 13, 'Has Liked Your Post', 'like', 96, 1, '2024-04-13 17:20:49', '2024-04-14 15:04:39', 965),
(647, 13, 'Has Liked Your Post', 'like', 96, 1, '2024-04-13 17:20:52', '2024-04-14 15:04:39', 965),
(648, 13, 'Has Liked Your Post', 'like', 96, 1, '2024-04-13 17:20:53', '2024-04-14 15:04:39', 965),
(649, 13, 'Has Liked Your Post', 'like', 96, 1, '2024-04-13 17:20:59', '2024-04-14 15:04:39', 965),
(650, 13, 'Has Liked Your Post', 'like', 96, 1, '2024-04-13 17:21:01', '2024-04-14 15:04:39', 965),
(651, 13, 'Has Liked Your Post', 'like', 96, 1, '2024-04-13 17:21:40', '2024-04-14 15:04:39', 965),
(652, 13, 'Has Liked Your Post', 'like', 96, 1, '2024-04-13 17:21:42', '2024-04-14 15:04:39', 965),
(653, 13, 'Has Liked Your Post', 'like', 96, 1, '2024-04-13 17:21:43', '2024-04-14 15:04:39', 965),
(654, 13, 'Has Liked Your Post', 'like', 96, 1, '2024-04-13 17:21:48', '2024-04-14 15:04:38', 965),
(655, 13, 'Has Liked Your Post', 'like', 96, 1, '2024-04-13 17:21:51', '2024-04-14 15:04:38', 965),
(656, 13, 'Has Liked Your Post', 'like', 96, 1, '2024-04-13 17:22:00', '2024-04-14 15:04:38', 965),
(657, 13, 'Has Commented on Your Post', 'comment', 96, 1, '2024-04-13 17:22:11', '2024-04-14 15:04:38', 965),
(658, 6, 'Has Liked Your Post', 'like', 13, 1, '2024-04-13 17:29:58', '2024-04-13 17:59:51', 963),
(659, 6, 'Has Liked Your Post', 'like', 86, 1, '2024-04-13 17:30:09', '2024-04-22 09:25:19', 959),
(660, 6, 'Has Liked Your Post', 'like', 86, 1, '2024-04-13 17:30:15', '2024-04-22 09:25:19', 959),
(661, 6, 'Has Commented on Your Post', 'comment', 86, 1, '2024-04-13 17:31:40', '2024-04-22 09:25:19', 959),
(662, 86, 'Has Replied to Your Comment', 'commentReply', 86, 1, '2024-04-13 17:33:56', '2024-04-22 09:25:19', 959),
(663, 6, 'Has Liked Your Post', 'like', 13, 1, '2024-04-13 17:42:12', '2024-04-13 17:59:51', 876),
(664, 6, 'Has Liked Your Post', 'like', 13, 1, '2024-04-13 17:42:24', '2024-04-13 17:59:51', 873),
(665, 6, 'Has Liked Your Post', 'like', 13, 1, '2024-04-13 17:42:29', '2024-04-13 17:59:51', 871),
(666, 6, 'Has Replied to Your Comment', 'commentReply', 13, 1, '2024-04-13 17:42:55', '2024-04-13 17:59:51', 871),
(668, 6, 'Has Liked Your Post', 'like', 13, 1, '2024-04-13 17:45:29', '2024-04-13 17:59:51', 968),
(669, 6, 'Has Liked Your Post', 'like', 96, 1, '2024-04-13 17:45:37', '2024-04-14 15:04:38', 965),
(670, 6, 'Has Replied to Your Comment', 'commentReply', 96, 1, '2024-04-13 17:46:04', '2024-04-14 15:04:38', 965),
(671, 6, 'Has Liked Your Post', 'like', 13, 1, '2024-04-13 17:50:09', '2024-04-13 17:59:51', 895),
(672, 6, 'Has Liked Your Post', 'like', 13, 1, '2024-04-13 17:50:18', '2024-04-13 17:59:51', 895),
(673, 6, 'Has Liked Your Post', 'like', 13, 1, '2024-04-13 17:50:28', '2024-04-13 17:59:51', 894),
(674, 6, 'Has Liked Your Post', 'like', 13, 1, '2024-04-13 17:50:37', '2024-04-13 17:59:51', 888),
(675, 6, 'Has Replied to Your Comment', 'commentReply', 13, 1, '2024-04-13 17:50:56', '2024-04-13 17:59:51', 885),
(676, 6, 'Has Replied to Your Comment', 'commentReply', 79, 0, '2024-04-13 17:52:03', '2024-04-13 17:52:03', 855),
(677, 13, 'Has Liked Your Post', 'like', 86, 1, '2024-04-15 18:26:17', '2024-04-22 09:25:19', 1019),
(678, 6, 'Has Liked Your Post', 'like', 13, 1, '2024-04-17 07:59:11', '2024-04-17 08:02:14', 1044),
(679, 6, 'Has Liked Your Post', 'like', 13, 1, '2024-04-17 08:01:21', '2024-04-17 08:02:14', 1043),
(680, 6, 'Has Liked Your Post', 'like', 13, 1, '2024-04-17 08:01:36', '2024-04-17 08:02:14', 1042),
(681, 13, 'Has Liked Your Post', 'like', 6, 1, '2024-04-17 09:09:30', '2024-04-17 14:36:23', 1045),
(682, 13, 'Has Commented on Your Post', 'comment', 6, 1, '2024-04-17 09:10:34', '2024-04-17 14:36:23', 1045),
(683, 6, 'Has Liked Your Post', 'like', 13, 1, '2024-04-17 09:16:30', '2024-04-17 09:19:58', 1046),
(684, 6, 'Has Commented on Your Post', 'comment', 13, 1, '2024-04-17 09:16:52', '2024-04-17 09:19:58', 1046),
(685, 13, 'Has Replied to Your Comment', 'commentReply', 13, 1, '2024-04-17 09:19:06', '2024-04-17 09:19:58', 1046),
(686, 13, 'Has Liked Your Post', 'like', 86, 1, '2024-04-18 19:27:40', '2024-04-22 09:25:19', 1055),
(687, 13, 'Has Commented on Your Post', 'comment', 86, 1, '2024-04-18 19:27:59', '2024-04-22 09:25:19', 1055),
(688, 13, 'Has Liked Your Post', 'like', 86, 1, '2024-04-18 19:28:24', '2024-04-22 09:25:19', 1054),
(689, 13, 'Has Liked Your Post', 'like', 86, 1, '2024-04-18 19:29:22', '2024-04-22 09:25:19', 1052),
(690, 13, 'Has Liked Your Post', 'like', 86, 1, '2024-04-20 01:43:52', '2024-04-22 09:25:19', 958),
(692, 6, 'Has Liked Your Post', 'like', 13, 1, '2024-04-20 10:27:51', '2024-04-20 13:28:45', 1061),
(693, 6, 'Has Liked Your Post', 'like', 14, 1, '2024-04-20 12:31:43', '2024-04-22 09:44:35', 735),
(695, 6, 'Has Liked Your Post', 'message', 6, 1, '2024-04-20 18:58:15', '2024-04-20 18:59:41', 3),
(697, 6, 'Has Liked Your Post', 'like', 13, 1, '2024-04-21 09:47:53', '2024-04-21 10:06:44', 1063),
(698, 6, 'Has Liked Your Post', 'like', 13, 1, '2024-04-21 09:47:57', '2024-04-21 10:06:44', 1053),
(699, 86, 'Has Commented on Your Post', 'comment', 14, 0, '2024-04-22 10:03:06', '2024-04-22 10:03:06', 1068),
(700, 86, 'Has Commented on Your Post', 'comment', 14, 0, '2024-04-22 10:03:30', '2024-04-22 10:03:30', 1068),
(701, 86, 'Has Liked Your Post', 'like', 13, 1, '2024-04-22 10:10:33', '2024-04-22 13:42:41', 1042),
(702, 86, 'Has Liked Your Post', 'like', 13, 1, '2024-04-22 10:10:34', '2024-04-22 13:42:41', 1042),
(703, 86, 'Has Liked Your Post', 'like', 13, 1, '2024-04-22 10:10:36', '2024-04-22 13:42:41', 1042),
(704, 86, 'Has Liked Your Post', 'like', 14, 0, '2024-04-22 10:11:01', '2024-04-22 10:11:01', 1068),
(705, 86, 'Has Liked Your Post', 'like', 14, 0, '2024-04-22 10:12:40', '2024-04-22 10:12:40', 1069),
(706, 86, 'Has Liked Your Post', 'like', 14, 0, '2024-04-22 10:12:43', '2024-04-22 10:12:43', 1069),
(707, 86, 'Has Liked Your Post', 'like', 14, 0, '2024-04-22 10:12:47', '2024-04-22 10:12:47', 1069),
(708, 86, 'Has Liked Your Post', 'like', 14, 0, '2024-04-22 10:12:49', '2024-04-22 10:12:49', 1069),
(709, 86, 'Has Liked Your Post', 'like', 14, 0, '2024-04-22 10:12:50', '2024-04-22 10:12:50', 1069),
(710, 86, 'Has Liked Your Post', 'like', 14, 0, '2024-04-22 10:12:52', '2024-04-22 10:12:52', 1069),
(711, 86, 'Has Liked Your Post', 'like', 14, 0, '2024-04-22 10:12:55', '2024-04-22 10:12:55', 1069),
(712, 86, 'Has Liked Your Post', 'like', 14, 0, '2024-04-22 10:12:59', '2024-04-22 10:12:59', 1069),
(713, 86, 'Has Liked Your Post', 'like', 14, 1, '2024-04-22 10:13:01', '2024-04-23 06:46:26', 1069),
(714, 86, 'Has Liked Your Post', 'like', 14, 1, '2024-04-22 10:13:04', '2024-04-23 06:46:26', 1069),
(715, 86, 'Has Liked Your Post', 'like', 14, 1, '2024-04-22 10:13:05', '2024-04-23 06:46:26', 1069),
(716, 86, 'Has Liked Your Post', 'like', 13, 1, '2024-04-22 10:13:07', '2024-04-22 13:42:41', 1032),
(717, 86, 'Has Liked Your Post', 'like', 13, 1, '2024-04-22 10:13:10', '2024-04-22 13:42:41', 1036),
(718, 86, 'Has Liked Your Post', 'like', 13, 1, '2024-04-22 10:13:13', '2024-04-22 13:42:41', 1037),
(719, 86, 'Has Liked Your Post', 'like', 13, 1, '2024-04-22 10:13:16', '2024-04-22 13:42:41', 1038),
(720, 86, 'Has Liked Your Post', 'like', 13, 1, '2024-04-22 10:13:18', '2024-04-22 13:42:41', 1039),
(721, 86, 'Has Liked Your Post', 'like', 13, 1, '2024-04-22 10:13:21', '2024-04-22 13:42:41', 1041),
(722, 86, 'Has Liked Your Post', 'like', 13, 1, '2024-04-22 10:13:24', '2024-04-22 13:42:41', 1042),
(723, 6, 'Has Liked Your Post', 'like', 14, 1, '2024-04-22 10:19:25', '2024-04-23 06:46:26', 1070),
(724, 6, 'Has Liked Your Post', 'like', 14, 1, '2024-04-22 10:19:27', '2024-04-23 06:46:26', 1069),
(725, 6, 'Has Liked Your Post', 'like', 14, 1, '2024-04-22 10:19:31', '2024-04-23 06:46:26', 1068),
(726, 13, 'Has Liked Your Post', 'like', 14, 1, '2024-04-22 13:48:15', '2024-04-23 06:46:26', 1070),
(727, 13, 'Has Commented on Your Post', 'comment', 14, 1, '2024-04-22 13:48:32', '2024-04-23 06:46:26', 1070),
(728, 13, 'Has Liked Your Post', 'like', 14, 1, '2024-04-22 13:48:37', '2024-04-23 06:46:26', 1069),
(729, 13, 'Has Liked Your Post', 'like', 14, 1, '2024-04-22 13:48:43', '2024-04-23 06:46:26', 1068),
(730, 13, 'Has Liked Your Post', 'like', 86, 1, '2024-04-22 13:48:49', '2024-04-22 20:06:33', 1067),
(731, 99, 'Has Liked Your Post', 'like', 14, 1, '2024-04-22 14:23:47', '2024-04-23 06:46:26', 1070),
(732, 99, 'Has Replied to Your Comment', 'commentReply', 14, 1, '2024-04-22 14:24:10', '2024-04-23 06:46:26', 1070),
(733, 13, 'Has Liked Your Post', 'message', 13, 1, '2024-04-22 15:01:51', '2024-04-22 15:07:22', 9),
(734, 100, 'Has Liked Your Post', 'message', 100, 1, '2024-04-22 15:02:15', '2024-04-22 15:06:23', 9),
(735, 13, 'Has Liked Your Post', 'like', 100, 0, '2024-04-22 15:20:37', '2024-04-22 15:20:37', 1074),
(736, 86, 'Has Commented on Your Post', 'comment', 103, 1, '2024-04-22 17:13:52', '2024-04-22 17:15:01', 1075),
(737, 86, 'Has Liked Your Post', 'message', 86, 1, '2024-04-22 17:14:23', '2024-04-22 20:06:33', 10),
(738, 13, 'Has Liked Your Post', 'like', 103, 0, '2024-04-22 17:19:54', '2024-04-22 17:19:54', 1075),
(739, 13, 'Has Commented on Your Post', 'comment', 103, 0, '2024-04-22 17:20:06', '2024-04-22 17:20:06', 1075),
(740, 13, 'Has Replied to Your Comment', 'commentReply', 103, 0, '2024-04-22 17:23:48', '2024-04-22 17:23:48', 1075),
(741, 99, 'Has Liked Your Post', 'like', 100, 0, '2024-04-22 17:44:04', '2024-04-22 17:44:04', 1073),
(742, 99, 'Has Liked Your Post', 'like', 100, 0, '2024-04-22 17:44:15', '2024-04-22 17:44:15', 1074),
(743, 99, 'Has Liked Your Post', 'like', 14, 1, '2024-04-22 17:44:31', '2024-04-23 06:46:26', 1068),
(744, 99, 'Has Liked Your Post', 'like', 86, 1, '2024-04-22 17:44:38', '2024-04-22 20:06:33', 1067),
(745, 86, 'Has Liked Your Post', 'like', 13, 1, '2024-04-23 05:00:03', '2024-04-23 07:04:48', 1003),
(746, 86, 'Has Liked Your Post', 'like', 13, 1, '2024-04-23 05:00:07', '2024-04-23 07:04:48', 1001),
(747, 86, 'Has Liked Your Post', 'like', 13, 1, '2024-04-23 05:00:10', '2024-04-23 07:04:48', 1000),
(748, 86, 'Has Liked Your Post', 'like', 13, 1, '2024-04-23 05:00:13', '2024-04-23 07:04:48', 999),
(749, 86, 'Has Liked Your Post', 'like', 13, 1, '2024-04-23 05:00:16', '2024-04-23 06:11:12', 995),
(750, 86, 'Has Liked Your Post', 'like', 6, 1, '2024-04-23 05:00:18', '2024-04-27 10:06:42', 993),
(751, 86, 'Has Liked Your Post', 'like', 6, 1, '2024-04-23 05:00:20', '2024-04-27 10:06:42', 991),
(752, 86, 'Has Liked Your Post', 'like', 6, 1, '2024-04-23 05:00:22', '2024-04-27 10:06:42', 990),
(753, 86, 'Has Liked Your Post', 'like', 6, 1, '2024-04-23 05:00:26', '2024-04-27 10:06:42', 989),
(754, 86, 'Has Liked Your Post', 'like', 6, 1, '2024-04-23 05:00:28', '2024-04-27 10:06:42', 978),
(755, 86, 'Has Liked Your Post', 'like', 6, 1, '2024-04-23 05:00:30', '2024-04-27 10:06:42', 977),
(756, 86, 'Has Liked Your Post', 'like', 6, 1, '2024-04-23 05:00:32', '2024-04-27 10:06:42', 976),
(757, 86, 'Has Liked Your Post', 'like', 13, 1, '2024-04-23 05:00:34', '2024-04-23 06:11:12', 974),
(758, 86, 'Has Liked Your Post', 'like', 13, 1, '2024-04-23 05:00:37', '2024-04-23 06:11:12', 973),
(759, 86, 'Has Liked Your Post', 'like', 13, 1, '2024-04-23 05:00:40', '2024-04-23 06:11:12', 972),
(760, 86, 'Has Liked Your Post', 'like', 13, 1, '2024-04-23 05:00:43', '2024-04-23 06:11:12', 955),
(761, 86, 'Has Liked Your Post', 'like', 6, 1, '2024-04-23 05:00:45', '2024-04-27 10:06:42', 954),
(762, 86, 'Has Liked Your Post', 'like', 13, 1, '2024-04-23 05:00:51', '2024-04-23 06:11:12', 948),
(763, 86, 'Has Liked Your Post', 'like', 13, 1, '2024-04-23 05:00:54', '2024-04-23 06:11:12', 946),
(764, 86, 'Has Liked Your Post', 'like', 13, 1, '2024-04-23 05:01:03', '2024-04-23 06:11:12', 943),
(765, 86, 'Has Liked Your Post', 'like', 6, 1, '2024-04-23 05:01:05', '2024-04-27 10:06:42', 937),
(766, 86, 'Has Liked Your Post', 'like', 13, 1, '2024-04-23 05:01:21', '2024-04-23 06:11:12', 931),
(771, 86, 'Has Liked Your Post', 'like', 29, 0, '2024-04-23 05:01:35', '2024-04-23 05:01:35', 925),
(774, 13, 'Has Liked Your Post', 'like', 86, 1, '2024-04-23 06:09:23', '2024-04-23 06:51:19', 1077),
(775, 13, 'Has Commented on Your Post', 'comment', 86, 1, '2024-04-23 06:09:44', '2024-04-23 06:51:19', 1077),
(776, 86, 'Has Replied to Your Comment', 'commentReply', 86, 1, '2024-04-23 06:11:45', '2024-04-23 06:51:19', 1077),
(777, 14, 'Has Liked Your Post', 'like', 86, 1, '2024-04-23 06:12:19', '2024-04-23 06:51:19', 1077),
(778, 14, 'Has Commented on Your Post', 'comment', 86, 1, '2024-04-23 06:12:27', '2024-04-23 06:51:19', 1077),
(779, 13, 'Has Liked Your Post', 'like', 14, 1, '2024-04-23 06:23:33', '2024-04-23 06:46:26', 1078),
(780, 13, 'Has Commented on Your Post', 'comment', 14, 1, '2024-04-23 06:23:59', '2024-04-23 06:46:25', 1078),
(781, 86, 'Has Replied to Your Comment', 'commentReply', 86, 1, '2024-04-23 06:33:03', '2024-04-23 06:51:19', 1077),
(782, 86, 'Has Liked Your Post', 'like', 14, 0, '2024-04-23 06:50:54', '2024-04-23 06:50:54', 1078),
(783, 86, 'Has Liked Your Post', 'like', 14, 0, '2024-04-23 06:50:56', '2024-04-23 06:50:56', 1079),
(784, 99, 'Has Liked Your Post', 'like', 14, 0, '2024-04-23 07:26:04', '2024-04-23 07:26:04', 1079),
(785, 99, 'Has Replied to Your Comment', 'commentReply', 14, 0, '2024-04-23 07:26:30', '2024-04-23 07:26:30', 1078),
(786, 13, 'Has Commented on Your Post', 'comment', 14, 0, '2024-04-23 07:27:28', '2024-04-23 07:27:28', 1078),
(789, 99, 'Has Liked Your Post', 'like', 13, 1, '2024-04-23 08:37:38', '2024-04-23 08:39:02', 1083),
(790, 99, 'Has Commented on Your Post', 'comment', 13, 1, '2024-04-23 08:37:51', '2024-04-23 08:39:02', 1083),
(791, 13, 'Has Replied to Your Comment', 'commentReply', 13, 1, '2024-04-23 08:39:30', '2024-04-23 09:05:12', 1083),
(792, 13, 'Has Liked Your Post', 'like', 100, 0, '2024-04-23 09:41:24', '2024-04-23 09:41:24', 1073),
(793, 13, 'Has Liked Your Post', 'like', 99, 1, '2024-04-23 09:56:24', '2024-04-23 09:58:26', 1082),
(794, 13, 'Has Liked Your Post', 'like', 99, 1, '2024-04-23 15:02:46', '2024-04-23 15:04:50', 1086),
(795, 13, 'Has Liked Your Post', 'like', 99, 1, '2024-04-23 15:54:07', '2024-04-23 17:38:10', 1095),
(796, 13, 'Has Commented on Your Post', 'comment', 99, 1, '2024-04-23 15:54:23', '2024-04-23 17:38:10', 1095),
(799, 99, 'Has Replied to Your Comment', 'commentReply', 99, 1, '2024-04-23 16:04:00', '2024-04-23 17:38:10', 1095),
(800, 98, 'Has Commented on Your Post', 'comment', 14, 0, '2024-04-23 17:03:41', '2024-04-23 17:03:41', 1084),
(801, 99, 'Has Liked Your Post', 'like', 13, 1, '2024-04-23 17:42:36', '2024-04-23 19:07:35', 1027),
(802, 99, 'Has Commented on Your Post', 'comment', 13, 1, '2024-04-23 17:42:42', '2024-04-23 19:07:35', 1027),
(803, 13, 'Has Liked Your Post', 'like', 86, 1, '2024-04-24 07:12:32', '2024-04-24 08:38:01', 1098),
(804, 13, 'Has Liked Your Post', 'like', 98, 0, '2024-04-24 08:33:35', '2024-04-24 08:33:35', 1102),
(805, 13, 'Has Liked Your Post', 'like', 14, 0, '2024-04-24 08:33:41', '2024-04-24 08:33:41', 1101),
(806, 13, 'Has Liked Your Post', 'like', 14, 0, '2024-04-24 08:33:50', '2024-04-24 08:33:50', 1100),
(807, 13, 'Has Commented on Your Post', 'comment', 14, 0, '2024-04-24 08:34:06', '2024-04-24 08:34:06', 1099),
(808, 99, 'Has Liked Your Post', 'like', 14, 0, '2024-04-24 08:35:16', '2024-04-24 08:35:16', 1100),
(809, 99, 'Has Liked Your Post', 'like', 14, 0, '2024-04-24 08:35:19', '2024-04-24 08:35:19', 1099),
(810, 86, 'Has Liked Your Post', 'like', 14, 0, '2024-04-24 08:37:58', '2024-04-24 08:37:58', 1101),
(811, 86, 'Has Liked Your Post', 'like', 99, 1, '2024-04-24 08:38:48', '2024-04-24 08:41:02', 1089),
(812, 86, 'Has Liked Your Post', 'like', 99, 1, '2024-04-24 08:38:53', '2024-04-24 08:41:02', 1088),
(813, 86, 'Has Liked Your Post', 'like', 99, 1, '2024-04-24 08:38:56', '2024-04-24 08:41:02', 1087),
(814, 86, 'Has Liked Your Post', 'like', 99, 1, '2024-04-24 08:38:58', '2024-04-24 08:41:02', 1086),
(815, 86, 'Has Liked Your Post', 'like', 13, 1, '2024-04-24 08:39:00', '2024-04-24 09:35:52', 1085),
(816, 86, 'Has Liked Your Post', 'like', 14, 0, '2024-04-24 08:39:07', '2024-04-24 08:39:07', 1084),
(817, 86, 'Has Liked Your Post', 'like', 98, 0, '2024-04-24 08:39:09', '2024-04-24 08:39:09', 1102),
(818, 86, 'Has Liked Your Post', 'like', 98, 0, '2024-04-24 08:39:13', '2024-04-24 08:39:13', 1102),
(819, 86, 'Has Liked Your Post', 'like', 98, 0, '2024-04-24 08:39:14', '2024-04-24 08:39:14', 1102),
(820, 86, 'Has Liked Your Post', 'like', 98, 0, '2024-04-24 08:39:15', '2024-04-24 08:39:15', 1102),
(821, 86, 'Has Liked Your Post', 'like', 98, 1, '2024-04-24 08:39:20', '2024-04-29 07:42:39', 1102),
(822, 86, 'Has Liked Your Post', 'like', 98, 1, '2024-04-24 08:39:22', '2024-04-29 07:42:39', 1102),
(823, 99, 'Has Liked Your Post', 'like', 98, 1, '2024-04-24 08:39:26', '2024-04-29 07:42:39', 1102),
(824, 86, 'Has Liked Your Post', 'like', 98, 1, '2024-04-24 08:39:28', '2024-04-29 07:42:39', 1102),
(825, 86, 'Has Liked Your Post', 'like', 98, 1, '2024-04-24 08:39:30', '2024-04-29 07:42:39', 1102),
(826, 86, 'Has Liked Your Post', 'like', 98, 1, '2024-04-24 08:39:32', '2024-04-29 07:42:39', 1102),
(827, 86, 'Has Liked Your Post', 'like', 98, 1, '2024-04-24 08:39:38', '2024-04-29 07:42:39', 1102),
(828, 86, 'Has Liked Your Post', 'like', 98, 1, '2024-04-24 08:39:39', '2024-04-29 07:42:39', 1102),
(829, 86, 'Has Liked Your Post', 'like', 98, 1, '2024-04-24 08:39:39', '2024-04-29 07:42:39', 1102),
(830, 86, 'Has Liked Your Post', 'like', 98, 1, '2024-04-24 08:39:40', '2024-04-29 07:42:39', 1102),
(831, 86, 'Has Liked Your Post', 'like', 14, 0, '2024-04-24 08:39:43', '2024-04-24 08:39:43', 1101),
(832, 86, 'Has Liked Your Post', 'like', 14, 0, '2024-04-24 08:39:45', '2024-04-24 08:39:45', 1100),
(833, 86, 'Has Liked Your Post', 'like', 14, 0, '2024-04-24 08:39:46', '2024-04-24 08:39:46', 1100),
(834, 86, 'Has Liked Your Post', 'like', 14, 0, '2024-04-24 08:39:47', '2024-04-24 08:39:47', 1100),
(835, 86, 'Has Liked Your Post', 'like', 14, 0, '2024-04-24 08:39:49', '2024-04-24 08:39:49', 1100),
(836, 86, 'Has Liked Your Post', 'like', 98, 1, '2024-04-24 08:39:55', '2024-04-29 07:42:39', 1102),
(837, 99, 'Has Liked Your Post', 'like', 14, 0, '2024-04-24 08:39:56', '2024-04-24 08:39:56', 1101),
(838, 86, 'Has Liked Your Post', 'like', 98, 1, '2024-04-24 08:39:57', '2024-04-29 07:42:39', 1102),
(839, 86, 'Has Liked Your Post', 'like', 98, 1, '2024-04-24 08:39:58', '2024-04-29 07:42:39', 1102),
(840, 99, 'Has Liked Your Post', 'like', 13, 1, '2024-04-24 08:39:59', '2024-04-24 09:35:52', 931),
(841, 86, 'Has Liked Your Post', 'like', 98, 1, '2024-04-24 08:39:59', '2024-04-29 07:42:39', 1102),
(842, 99, 'Has Liked Your Post', 'like', 13, 1, '2024-04-24 08:40:03', '2024-04-24 09:35:52', 930),
(843, 99, 'Has Liked Your Post', 'like', 13, 1, '2024-04-24 08:40:07', '2024-04-24 09:35:52', 928),
(844, 86, 'Has Liked Your Post', 'like', 14, 0, '2024-04-24 08:40:09', '2024-04-24 08:40:09', 1100),
(845, 99, 'Has Liked Your Post', 'like', 13, 1, '2024-04-24 08:40:10', '2024-04-24 09:35:52', 927),
(846, 86, 'Has Liked Your Post', 'like', 14, 0, '2024-04-24 08:40:11', '2024-04-24 08:40:11', 1099),
(847, 86, 'Has Liked Your Post', 'like', 14, 0, '2024-04-24 08:40:11', '2024-04-24 08:40:11', 1099),
(848, 86, 'Has Liked Your Post', 'like', 14, 0, '2024-04-24 08:40:12', '2024-04-24 08:40:12', 1099),
(849, 99, 'Has Liked Your Post', 'like', 13, 1, '2024-04-24 08:40:13', '2024-04-24 09:35:52', 926),
(850, 99, 'Has Liked Your Post', 'like', 29, 0, '2024-04-24 08:40:15', '2024-04-24 08:40:15', 925),
(851, 99, 'Has Liked Your Post', 'like', 13, 1, '2024-04-24 08:40:20', '2024-04-24 09:35:52', 924),
(852, 86, 'Has Liked Your Post', 'like', 99, 1, '2024-04-24 08:40:25', '2024-04-24 08:41:02', 1088),
(853, 86, 'Has Liked Your Post', 'like', 99, 1, '2024-04-24 08:40:26', '2024-04-24 08:41:02', 1088),
(854, 99, 'Has Liked Your Post', 'like', 13, 1, '2024-04-24 08:40:26', '2024-04-24 09:35:52', 923),
(855, 86, 'Has Liked Your Post', 'like', 99, 1, '2024-04-24 08:40:28', '2024-04-24 08:41:02', 1087),
(856, 86, 'Has Liked Your Post', 'like', 99, 1, '2024-04-24 08:40:38', '2024-04-24 08:41:02', 1087),
(857, 86, 'Has Liked Your Post', 'like', 99, 1, '2024-04-24 08:40:40', '2024-04-24 08:41:02', 1086),
(858, 86, 'Has Liked Your Post', 'like', 13, 1, '2024-04-24 08:40:42', '2024-04-24 09:35:52', 1085),
(859, 86, 'Has Liked Your Post', 'like', 14, 0, '2024-04-24 08:40:47', '2024-04-24 08:40:47', 1084),
(860, 86, 'Has Liked Your Post', 'like', 99, 1, '2024-04-24 08:41:00', '2024-04-24 08:41:02', 1086),
(861, 86, 'Has Liked Your Post', 'like', 13, 1, '2024-04-24 08:41:18', '2024-04-24 09:35:52', 1085),
(862, 86, 'Has Liked Your Post', 'like', 13, 1, '2024-04-24 08:41:22', '2024-04-24 09:35:52', 1085),
(863, 86, 'Has Liked Your Post', 'like', 99, 0, '2024-04-24 08:41:24', '2024-04-24 08:41:24', 1086),
(864, 86, 'Has Liked Your Post', 'like', 99, 0, '2024-04-24 08:41:27', '2024-04-24 08:41:27', 1086),
(865, 86, 'Has Liked Your Post', 'like', 99, 0, '2024-04-24 08:41:40', '2024-04-24 08:41:40', 1087),
(866, 86, 'Has Liked Your Post', 'like', 98, 1, '2024-04-24 08:42:09', '2024-04-29 07:42:39', 1102),
(867, 99, 'Has Liked Your Post', 'like', 14, 0, '2024-04-24 08:42:13', '2024-04-24 08:42:13', 1101),
(868, 99, 'Has Liked Your Post', 'like', 14, 0, '2024-04-24 08:42:16', '2024-04-24 08:42:16', 1101),
(869, 99, 'Has Liked Your Post', 'like', 14, 0, '2024-04-24 08:42:26', '2024-04-24 08:42:26', 1101),
(870, 86, 'Has Liked Your Post', 'like', 99, 0, '2024-04-24 08:43:35', '2024-04-24 08:43:35', 1082),
(871, 86, 'Has Liked Your Post', 'like', 13, 1, '2024-04-24 08:45:22', '2024-04-24 09:35:52', 1058),
(872, 86, 'Has Liked Your Post', 'like', 13, 1, '2024-04-24 08:45:34', '2024-04-24 09:35:52', 1053),
(873, 104, 'Has Liked Your Post', 'like', 14, 0, '2024-04-24 13:40:56', '2024-04-24 13:40:56', 1100),
(874, 104, 'Has Liked Your Post', 'like', 14, 0, '2024-04-24 13:40:59', '2024-04-24 13:40:59', 1101),
(875, 104, 'Has Liked Your Post', 'like', 99, 0, '2024-04-24 13:41:20', '2024-04-24 13:41:20', 1095),
(876, 86, 'Has Liked Your Post', 'message', 86, 1, '2024-04-25 14:24:22', '2024-04-25 14:32:31', 11),
(877, 86, 'Has Liked Your Post', 'message', 86, 1, '2024-04-25 14:25:29', '2024-04-25 14:32:31', 11),
(878, 86, 'Has Liked Your Post', 'message', 86, 1, '2024-04-25 14:27:49', '2024-04-25 14:32:31', 8),
(879, 86, 'Has Liked Your Post', 'message', 86, 1, '2024-04-25 14:28:05', '2024-04-25 14:32:31', 10),
(880, 13, 'Has Liked Your Post', 'message', 13, 1, '2024-04-25 14:28:16', '2024-04-25 18:11:24', 8),
(881, 86, 'Has Liked Your Post', 'message', 86, 1, '2024-04-25 14:42:04', '2024-04-25 14:54:32', 12),
(882, 86, 'Has Liked Your Post', 'message', 86, 1, '2024-04-25 14:42:23', '2024-04-25 14:54:32', 12),
(883, 14, 'Has Liked Your Post', 'message', 14, 0, '2024-04-25 14:42:41', '2024-04-25 14:42:41', 12),
(884, 86, 'Has Liked Your Post', 'message', 86, 1, '2024-04-25 14:42:58', '2024-04-25 14:54:32', 12),
(885, 14, 'Has Liked Your Post', 'message', 14, 0, '2024-04-25 14:45:06', '2024-04-25 14:45:06', 12),
(886, 86, 'Has Liked Your Post', 'message', 86, 1, '2024-04-25 14:45:23', '2024-04-25 14:54:32', 12),
(887, 86, 'Has Liked Your Post', 'message', 86, 1, '2024-04-26 15:42:20', '2024-04-27 06:50:30', 8),
(888, 13, 'Has Liked Your Post', 'message', 13, 1, '2024-04-27 07:25:49', '2024-04-27 07:26:50', 8),
(889, 86, 'Has Liked Your Post', 'message', 86, 0, '2024-04-27 07:29:53', '2024-04-27 07:29:53', 8),
(890, 86, 'Has Liked Your Post', 'message', 86, 0, '2024-04-27 07:30:14', '2024-04-27 07:30:14', 12),
(891, 13, 'Has Liked Your Post', 'message', 13, 1, '2024-04-27 07:36:01', '2024-04-27 07:36:53', 8),
(892, 13, 'Has Liked Your Post', 'message', 13, 1, '2024-04-27 07:36:33', '2024-04-27 07:36:53', 8),
(893, 86, 'Has Liked Your Post', 'message', 86, 0, '2024-04-27 07:43:37', '2024-04-27 07:43:37', 8),
(894, 6, 'Has Liked Your Post', 'like', 99, 0, '2024-04-27 10:06:27', '2024-04-27 10:06:27', 1095),
(895, 6, 'Has Liked Your Post', 'like', 99, 0, '2024-04-27 10:06:59', '2024-04-27 10:06:59', 1094),
(896, 6, 'Has Liked Your Post', 'like', 99, 0, '2024-04-27 10:07:15', '2024-04-27 10:07:15', 1095),
(897, 13, 'Has Liked Your Post', 'like', 99, 0, '2024-04-29 01:58:27', '2024-04-29 01:58:27', 1094),
(898, 13, 'Has Liked Your Post', 'like', 98, 0, '2024-04-29 08:26:36', '2024-04-29 08:26:36', 1105),
(899, 13, 'Has Commented on Your Post', 'comment', 98, 0, '2024-04-29 08:26:43', '2024-04-29 08:26:43', 1105),
(900, 13, 'Has Liked Your Post', 'like', 99, 0, '2024-04-29 08:26:50', '2024-04-29 08:26:50', 1081);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(191) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `onesignal_user_mapping`
--

CREATE TABLE `onesignal_user_mapping` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `onesignal_player_id` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `body` varchar(10000) DEFAULT NULL,
  `type` enum('image','video') NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `challenge_img` varchar(191) DEFAULT NULL,
  `aspect_ratio` varchar(255) DEFAULT NULL,
  `cache_url` varchar(255) DEFAULT NULL,
  `thumbnail_url` varchar(255) DEFAULT NULL,
  `pinned` tinyint(1) NOT NULL DEFAULT 0,
  `is_seen` tinyint(1) NOT NULL DEFAULT 0,
  `public_id` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `body`, `type`, `image`, `challenge_img`, `aspect_ratio`, `cache_url`, `thumbnail_url`, `pinned`, `is_seen`, `public_id`, `created_at`, `updated_at`, `price`) VALUES
(8, 6, NULL, 'image', 'images/HY6NdJLCRPVHVgNIz3MFwdJvB4qfzjdCWEQrW3jp.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-13 18:26:07', '2024-01-13 18:26:07', 1000.00),
(9, 6, 'vip gym', 'image', 'images/yZlg43hBFvCY7bUS1gTgYVMz4ln1fvYOwMvRoY0E.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-13 18:30:02', '2024-01-13 18:30:02', 1000.00),
(10, 13, '💯', 'image', 'images/WR9pe9OtgWhp5kRdxccjFAKtVdwREenyrvRlu0ch.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-13 18:43:28', '2024-01-13 18:43:28', 1000.00),
(12, 13, 'hatari 🔥', 'image', 'images/PjZAAdtMHIk6ckW2Y3JgnfYKFINot6FtNzVKUVAF.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-13 19:08:38', '2024-01-13 19:08:38', 1000.00),
(13, 13, '👍🏿👍🏿', 'image', 'images/E6TWvgqRdQbrDvzD0PjIl2xcjaddmNXeMk3qn9D2.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-13 19:11:12', '2024-01-13 19:11:12', 1000.00),
(14, 13, NULL, 'image', 'images/fqI0YRFYPTOduQdsztSrwURKPa8BXzNIq0SeSsOu.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-13 19:11:53', '2024-01-13 19:11:53', 1000.00),
(15, 13, 'This is 50😎', 'image', 'images/KYVhDq4HJFyP0UCNjNqscs9yYDBS8A7fN0z1ZGLM.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-13 19:12:47', '2024-01-13 19:12:47', 1000.00),
(16, 13, 'duuuu', 'image', 'images/zc1FEDYKTxOzWD6z6LhGhBBaevUj9twuWcAnD3cf.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-13 19:13:30', '2024-01-13 19:13:30', 1000.00),
(17, 13, '😲😲', 'image', 'images/ecMLYwaMUYhDhwxrToscXh8ttQDt6ZAUfQBcjjOD.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-13 19:14:24', '2024-01-13 19:14:24', 1000.00),
(18, 13, 'well said', 'image', 'images/hQFJC83OhSsd4cs9es6BIkThb0VJraCpnOfsx7Q5.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-13 19:15:00', '2024-01-13 19:15:00', 1000.00),
(20, 13, 'Kabisa🔥🔥', 'image', 'images/xuE3C5MD9iA0tiHRpCgcMQ9WYEUsc44fJmXjLtkJ.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-13 19:20:53', '2024-01-13 19:20:53', 1000.00),
(21, 13, 'Hahhahahhaa😂😂', 'image', 'images/OojIFX74hhR2xvfImHKDRIfBmGYFAxhZpoYznldf.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-13 19:22:35', '2024-01-13 19:22:35', 1000.00),
(22, 13, '😂😂😂😂', 'image', 'images/DPk1wtwKr1FR1YZnBo9q5THcvaZIZDA8vRpE1wM3.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-13 19:23:28', '2024-01-13 19:23:28', 1000.00),
(23, 13, '👌🏿👌🏿', 'image', 'images/eRqobp2DmuVI4bQowfhRiQbAgb3MgcYkG9ZeZLQU.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-13 19:28:56', '2024-01-13 19:28:56', 1000.00),
(26, 13, '🔥🔥🔥', 'image', 'images/zejy4lp8BuNgQRRLaCgH0rqzzExzTasG7UMozfeB.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-13 19:32:59', '2024-01-13 19:32:59', 1000.00),
(27, 13, '🔥🔥🔥', 'image', 'images/WH3mOCASf57ODzBnqqnoFNqfZdkUpoUOwV0nKXDO.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-13 19:33:43', '2024-01-13 19:33:43', 1000.00),
(28, 13, 'Katisha sana', 'image', 'images/uRWLCUSy58eZkQ3R1cBn126Gxdu5HM6s5a3fI1eu.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-13 19:34:22', '2024-01-13 19:34:22', 1000.00),
(29, 13, 'Iringa moja hiyo😂😂😂', 'image', 'images/pKqvSUfF0FdOgRTDPiS7z1LAVTq5I07MzBVffYHA.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-13 19:35:07', '2024-01-13 19:35:07', 1000.00),
(30, 13, NULL, 'image', 'images/sERsgPRSPxMhR8VMcZfriyv6U6Hcr0FFmeWv2Z4w.jpg', NULL, '0.75', NULL, NULL, 1, 0, NULL, '2024-01-13 19:35:35', '2024-01-13 19:35:35', 1000.00),
(31, 13, '💯💯', 'image', 'images/7BiNsPdf2Ylg7W4TfPAGYKRNQa40LF6T4vSAE1qt.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-13 19:36:34', '2024-01-13 19:36:34', 1000.00),
(32, 13, NULL, 'image', 'images/aKClp3VHRu7cXO0n5KLNO4xfxWyyN7GHfhdFhLn5.png', 'images/geFzrhUGrNgxgy1w0EfUAP4RNodIMN87ftVqCRpp.png', '0.75', NULL, NULL, 0, 0, NULL, '2024-01-13 19:39:22', '2024-01-13 19:39:22', 1000.00),
(33, 13, 'A or B', 'image', 'images/6XsPdJjFgjkKOxCg0mfaf6hx8mPBwoNJrXdjFshy.png', 'images/ALADcsKmV93yrMjk06YaVGFR1xS6KRaHK0Nt4tCo.png', '0.75', NULL, NULL, 0, 0, NULL, '2024-01-13 19:41:02', '2024-01-13 19:41:02', 1000.00),
(34, 13, '👌🏿👌🏿', 'image', 'images/gdRMIHOCgtNCSRe3UhRnMeZp2Lrgyi9S5MyaUYdf.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-13 19:43:01', '2024-01-13 19:43:01', 1000.00),
(35, 13, 'Mwanaume wa shoka🔥🔥', 'image', 'images/qaupWoqwV10oMji7oGFh4QVimYzYe5oikRimUReq.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-13 19:44:20', '2024-01-13 19:44:20', 1000.00),
(36, 13, 'A OR B', 'image', 'images/wGF48vhoqob98u6kCBDk3BxTx7D82CD2RccunqOT.png', 'images/6zNNZSRKNnJu5Qf8RDup4dKCWPf9sAfEhFomDmvR.png', '0.75', NULL, NULL, 0, 0, NULL, '2024-01-13 19:51:54', '2024-01-13 19:51:54', 1000.00),
(37, 13, '💯💯', 'image', 'images/qmXtXJ4HuVBksRHbsxYQ99JfKmKHWQRIaX6W9DFA.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-13 19:57:33', '2024-01-13 19:57:33', 1000.00),
(38, 13, '😂😂😂', 'image', 'images/4cFswWajpLIhTGYMJOBo8splIhRfAIYIxUqi5VQg.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-13 20:13:21', '2024-01-13 20:13:21', 1000.00),
(39, 13, '😆😆', 'image', 'images/K9nBt9zC1PKJUe4avOAZB0Fv4RA0LNhoRfdeZbJS.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-13 20:14:14', '2024-01-13 20:14:14', 1000.00),
(40, 13, 'West cost 🔥🔥', 'image', 'images/ubaWI44hgvEA30u1U1ZvEw0YClkC17TF0ACmq3xF.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-13 20:19:29', '2024-01-13 20:19:29', 1000.00),
(41, 13, 'Mtego huo😂😂', 'image', 'images/6cVq1igo6oN9GikXYWLbGppKsthkrXIyUZaphbHi.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-13 20:20:15', '2024-01-13 20:20:15', 1000.00),
(42, 13, 'daaaa 😆😆😆😂😂', 'image', 'images/KSy5yIifnOXuQHVZfM9HO3MEpvbNMeMMraKKZRqy.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-13 20:21:22', '2024-01-13 20:21:22', 1000.00),
(43, 13, NULL, 'image', 'images/dLG2GM2zzKkff2VgNWubLP6Xj1AdNmbU4OLbvLNO.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-13 20:21:50', '2024-01-13 20:21:50', 1000.00),
(44, 13, NULL, 'image', 'images/3JxTtj85GLjd9p9QdCEJbzhAsFUFkWC7TS3emKt0.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-13 20:22:19', '2024-01-13 20:22:19', 1000.00),
(45, 13, 'Asante Mungu🙏🏿🙏🏿', 'image', 'images/rPK1r7qFbgd9n0aJEI893lrGHBWUl2tuGUnDG0qK.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-13 20:23:06', '2024-01-13 20:23:06', 1000.00),
(46, 13, '😂😂😂', 'image', 'images/KWye8kynNzUpYbufPoQMCeboi8jRsdpm6D0mDslF.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-14 03:32:32', '2024-01-14 03:32:32', 1000.00),
(47, 13, NULL, 'image', 'images/2Ewm7q4dDtaqN4FY2ZJtpIxv8SEfuYXpEwuQjCNI.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-14 03:34:33', '2024-01-14 03:34:33', 1000.00),
(48, 13, NULL, 'image', 'images/HUsQTOZfyNmpEYtmvd3XTZqkKU0eo2qiyWasdBUo.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-14 03:35:07', '2024-01-14 03:35:07', 1000.00),
(49, 13, NULL, 'image', 'images/z6BC65AF9IKT1ndCcIPLvJLv5d2Ww6AdAhkP10V9.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-14 03:40:34', '2024-01-14 03:40:34', 1000.00),
(50, 13, NULL, 'image', 'images/70DePf61CRJO9MhzdgQMyp05sV7PIebXvfX9iA16.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-14 03:41:17', '2024-01-14 03:41:17', 1000.00),
(51, 13, NULL, 'image', 'images/BPhtTJ2qJvEdeUWWjVN582znX1Qko7NKx43N6Vv6.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-14 03:41:55', '2024-01-14 03:41:55', 1000.00),
(52, 13, NULL, 'image', 'images/IZ3Sh5KPK2ehi1FQJreL2DMW2upx9EetcVSClq8m.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-14 03:42:26', '2024-01-14 03:42:26', 1000.00),
(53, 13, NULL, 'image', 'images/cOvCS3O7B6DcTisc67TlLTovD3Elj6XSBwSNDnaP.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-14 03:43:16', '2024-01-14 03:43:16', 1000.00),
(54, 13, '🔥🔥🔥🔥', 'image', 'images/svI50d4mC4ejtQVugLxE7txQCKFumMic2H7wcdRL.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-14 03:43:54', '2024-01-14 03:43:54', 1000.00),
(55, 13, NULL, 'image', 'images/0dY5X1sx0a8hHseW3yiEm6dYWRoX3mWKgITKyiln.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-14 03:45:12', '2024-01-14 03:45:12', 1000.00),
(56, 13, '😂😂😂😂', 'image', 'images/UVV93XAIJyy1yNv6TSCJy0YG0HkMlsAaP2xhTGqd.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-14 03:46:31', '2024-01-14 03:46:31', 1000.00),
(59, 13, 'MAGUFULICATION 🔥', 'image', 'images/RABPyY6NMJ2mXDiy05OdPnZJHgiNiaFFS7CafjOc.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-14 03:48:41', '2024-01-14 03:48:41', 1000.00),
(60, 13, NULL, 'image', 'images/VNTqRhoDpFwf0rrJ9n7aDE4u3kWV1M2qc0TymUiK.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-14 04:03:17', '2024-01-14 04:03:17', 1000.00),
(66, 13, '🔥🔥', 'image', 'images/JSBm33sRZIlRkiMqTZCCt54EzRZTP1OgJ7wXZwpl.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-14 04:06:28', '2024-01-14 04:06:28', 1000.00),
(68, 13, NULL, 'image', 'images/V6V2EAWrm3zWPsLUuG4lAAlq0laG9CK2r6cIkQoL.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-14 04:07:41', '2024-01-14 04:07:41', 1000.00),
(69, 13, NULL, 'image', 'images/LJPbRs3sWnCOBNOz7k0azk10aShgrOVr6ORY7MKu.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-14 04:22:13', '2024-01-14 04:22:13', 1000.00),
(72, 13, '😆😂😂', 'image', 'images/Wr3Dcavam07M1MtYTviLOEMaRCDfSwDhwevm8oW8.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-14 04:23:44', '2024-01-14 04:23:44', 1000.00),
(74, 13, '💯💯', 'image', 'images/XhyX9JmEc6nkjrAw6iao9p56nfZ4tI0XfN0ayedU.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-14 04:24:46', '2024-01-14 04:24:46', 1000.00),
(75, 13, '🔥🔥', 'image', 'images/1N3hmwgFtGtjt39lCHR111kJmAdc3lyBj71gXINE.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-14 04:25:50', '2024-01-14 04:25:50', 1000.00),
(77, 13, '😂', 'image', 'images/7AzlIk3wRuCjnxCvCN7I6mZQANOyo4TjYVQo4mDr.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-14 04:38:50', '2024-01-14 04:38:50', 1000.00),
(78, 13, '😂😂', 'image', 'images/ffKtnhZQskanjjT8EQG1f4RFLN5fHsKpThL8EjL2.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-14 08:31:56', '2024-01-14 08:31:56', 1000.00),
(79, 13, 'Wiz and 50', 'image', 'images/2GUKDNCE6DsGuQmpfmi11CLjVX7z9aqS3Xue1XDE.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-14 08:32:35', '2024-01-14 08:32:35', 1000.00),
(82, 13, 'LEGEND 🔥🔥', 'image', 'images/iq6JPLM45a180YJAJiCELSamChypafiYYSXhBX0K.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-15 16:50:30', '2024-01-15 16:50:30', 1000.00),
(83, 13, NULL, 'image', 'images/gIAbUElAOOPxnBeyouQPDv020pzjs5fuXhDrU6Wd.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-15 18:13:53', '2024-01-15 18:13:53', 1000.00),
(84, 13, NULL, 'image', 'images/QQPtVzhnrO8coxMkWpWlAb2fXMa4IBsDo8Ev12z4.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-15 19:28:31', '2024-01-15 19:28:31', 1000.00),
(85, 13, NULL, 'image', 'images/06rK2uOhS600aICTaDijOt7lRFLtL5gJ4NfxmmBa.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-15 19:29:27', '2024-01-15 19:29:27', 1000.00),
(86, 13, NULL, 'image', 'images/bbieEDnVLDvVXIrjn4yx0AWRpXYDWxtkqt9olkyy.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-15 19:30:04', '2024-01-15 19:30:04', 1000.00),
(87, 13, NULL, 'image', 'images/r2nZ7GeKblvTrxX4dL23fFiqEwSTZPwN59Gf5lzd.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-15 19:30:33', '2024-01-15 19:30:33', 1000.00),
(88, 13, NULL, 'image', 'images/YfMcvvKg0DxPMvOeAhJ7XimBsPnE4g0n7fc66ldH.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-15 19:30:58', '2024-01-15 19:30:58', 1000.00),
(90, 13, NULL, 'image', 'images/uLm0BFsvbWIGn9eALrqFwoab6TfmhoIXg14Ni7at.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-15 19:32:07', '2024-01-15 19:32:07', 1000.00),
(91, 13, NULL, 'image', 'images/kJuXcoVGlF7rkkLhWW4fQGrhWm0muLpUhkkaITjL.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-15 19:32:44', '2024-01-15 19:32:44', 1000.00),
(92, 13, 'Aiseee😲😲', 'image', 'images/dln1pjavAk4RfJJ30MsmYyLBl9bL5RQWecyW5BFw.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-15 19:33:33', '2024-01-15 19:33:33', 1000.00),
(93, 13, NULL, 'image', 'images/9tcoa1mIU9KaQGxVcNVyaGhc2DQdUfQS9TaO7sgf.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-15 19:34:11', '2024-01-15 19:34:11', 1000.00),
(94, 13, NULL, 'image', 'images/yK4Ou1lletWrVHORGSgQKLFDwEJWCkRb7hs0kTTR.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-15 19:34:53', '2024-01-15 19:34:53', 1000.00),
(95, 13, NULL, 'image', 'images/cwHJw5JbwdqyKfdu4L8tvl23OFlp9EkdNwYdJ4Wm.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 06:19:13', '2024-01-16 06:19:13', 1000.00),
(97, 13, NULL, 'image', 'images/WyoObmg2CbTGs9NjlRFDCAye8DGGLgINiAMHh8P0.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 06:23:02', '2024-01-16 06:23:02', 1000.00),
(98, 13, NULL, 'image', 'images/CxTWahNOjr9Y3VkRmDWs0gG38L32wlYKyM9JaLY0.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 06:23:39', '2024-01-16 06:23:39', 1000.00),
(99, 13, NULL, 'image', 'images/NfiOsxdXjeEejb595sg03DSa3DH6GrLXxPMrMv5f.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 06:24:10', '2024-01-16 06:24:10', 1000.00),
(100, 13, 'Aliwaunganisha watu wa kawaida na serikari kupanga mstari pamoja😂😂😂😂', 'image', 'images/qI7cCBJViLzTGVeUPoRyrhb1j1sX6KkIEyCZKRoM.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 06:25:26', '2024-01-16 06:25:26', 1000.00),
(101, 13, NULL, 'image', 'images/x7EH8yITc3YQs3mCNEdbRnj9KcgYxUm1YpvX6p1w.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 06:26:04', '2024-01-16 06:26:04', 1000.00),
(102, 13, NULL, 'image', 'images/usMvEhYqp0D2zABuNuO451JrSG90PjC8t2HTdgKx.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 06:26:35', '2024-01-16 06:26:35', 1000.00),
(103, 13, '😳😳', 'image', 'images/Q8UmF0UBkyM68IhO5Fqr1Ffpr8tBOpp0hUjoW337.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 06:27:21', '2024-01-16 06:27:21', 1000.00),
(104, 13, NULL, 'image', 'images/bnbqH0eVjLVyNAcohEmzLg3ogB2qQrFER6SQeGvl.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 06:27:51', '2024-01-16 06:27:51', 1000.00),
(105, 13, NULL, 'image', 'images/fqC8RAUOAerSqm5Z7pyqvyAkxaQHdG1ZOSMSzt0q.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 06:28:40', '2024-01-16 06:28:40', 1000.00),
(106, 13, NULL, 'image', 'images/pemkRhILQYm4FFBN0n0PeW4wprlm0zWWbfdgi1Ib.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 06:29:22', '2024-01-16 06:29:22', 1000.00),
(107, 13, 'Madam anasema msimuogope mumtongoze jamani😂', 'image', 'images/hjvHayFWbrEFfCk33eGyZ6FtQjBp2zw5TKfDYlIK.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 06:30:14', '2024-01-16 06:30:14', 1000.00),
(108, 13, 'Legend🔥🔥', 'image', 'images/YI8FIS8iofrE68MClQGfP5J1sjVjmVo3SASJMgt0.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 06:30:51', '2024-01-16 06:30:51', 1000.00),
(109, 13, '😂😂😂😂', 'image', 'images/Bpuj2A87xNBF59xSwnMrybxYW34qNYo37ivVBzWk.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 06:31:24', '2024-01-16 06:31:24', 1000.00),
(110, 13, NULL, 'image', 'images/sdYlVcmwT7g2ucujQmeWugxU8K72NXHB8UUqcjVy.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 06:31:49', '2024-01-16 06:31:49', 1000.00),
(112, 13, NULL, 'image', 'images/Df6b5423Jf1NN3IQOxRKCmtjLPam9ywomhzWI54d.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 06:32:38', '2024-01-16 06:32:38', 1000.00),
(114, 13, NULL, 'image', 'images/7z5Su0sFNZtaw1jJJ9IZgJ8kISPvjwCnsxdvbIAl.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 06:34:30', '2024-01-16 06:34:30', 1000.00),
(115, 13, '🙏🏿🙏🏿', 'image', 'images/Z4nKtb8b8vg6a8UU4L4fKnkRhFdqBWIRys5yU7AX.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 06:35:10', '2024-01-16 06:35:10', 1000.00),
(116, 13, 'Well said', 'image', 'images/wa0k3UpeZaCmzeQqwR0rORcO103wJnNiAspW3mLB.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 06:36:35', '2024-01-16 06:36:35', 1000.00),
(117, 13, '😂😂😂😂😂', 'image', 'images/1mDHqXVLIvHuE0ivm05GuuBO3TTkfJYxb8ngEfqM.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 06:37:19', '2024-01-16 06:37:19', 1000.00),
(118, 13, '😂😂', 'image', 'images/c0A0I4S6aQ5unm997v9OdZySaBieSIJLt3zmFO4L.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 06:37:51', '2024-01-16 06:37:51', 1000.00),
(120, 13, '😂😂😂', 'image', 'images/PmHQf1Bh1MN7oyCObJs60mS4Igg7dy75KdkhKysu.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 06:39:23', '2024-01-16 06:39:23', 1000.00),
(121, 13, 'Mwamba🔥🔥🔥', 'image', 'images/Kl9fDzsSfMOKkkhYfIMHV2dnc1rmxTb98rOEUdth.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 06:41:51', '2024-01-16 06:41:51', 1000.00),
(122, 13, 'Wanaume wa shoka🔥🔥', 'image', 'images/Zu9A4Ue99YfqcMyPj3NXsVD736JgjpL1g7JcD7zZ.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 06:42:39', '2024-01-16 06:42:39', 1000.00),
(123, 13, NULL, 'image', 'images/KTHAamzhR4GrnsdcYk3O8s3S4dorCtnmjflyDsnf.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 06:43:16', '2024-01-16 06:43:16', 1000.00),
(124, 13, 'Kabisa', 'image', 'images/9JynLK528mydxjhzWfYWmWMNCKmxgoWk0B8leIre.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 06:44:05', '2024-01-16 06:44:05', 1000.00),
(125, 13, 'LEGENDS 🔥🔥', 'image', 'images/cyIrOfP24gdb9asknaYwHVXQRLi9XxGSTgFEqaBz.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 06:46:06', '2024-01-16 06:46:06', 1000.00),
(126, 13, 'Mtego😂😂', 'image', 'images/x60r7WTAz5jlVF4kgtEkLDF15mohLWKKyjqitsD3.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 06:46:57', '2024-01-16 06:46:57', 1000.00),
(127, 13, NULL, 'image', 'images/urZDJnvb7s97fWnXOaYs4lW8fnvpLrNshKnNwXs2.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 06:47:38', '2024-01-16 06:47:38', 1000.00),
(129, 13, '😂😂😂', 'image', 'images/JCkH8z6SFlxFUoysgsjPANQusYYoahaGRGLOJ5bS.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 06:49:31', '2024-01-16 06:49:31', 1000.00),
(130, 13, NULL, 'image', 'images/9xf3fBgUY4lRtyMReUCx6bTYSmX2xqznbuuhNBD7.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 06:51:54', '2024-01-16 06:51:54', 1000.00),
(131, 13, NULL, 'image', 'images/aaAG19DAVioQXjZZPiri4WT6s5tCMh5v2mNgLyQ7.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 06:52:34', '2024-01-16 06:52:34', 1000.00),
(132, 13, 'Amen🙏🏿🙏🏿🙏🏿', 'image', 'images/L2CDMpdjgJANm1hRHD1RaDUyxa0E1pKnlcKdIxjd.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 06:53:18', '2024-01-16 06:53:18', 1000.00),
(133, 13, NULL, 'image', 'images/D6gK6UclMcT7eQclNlwBvUEfeJxwZXcAe0lDRAuK.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 06:54:11', '2024-01-16 06:54:11', 1000.00),
(138, 13, '😂😂😂😂', 'image', 'images/xYVrCd0ipWPKlmXkKfCR9kuXvZfKwNcpzDqB3T53.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 06:59:10', '2024-01-16 06:59:10', 1000.00),
(139, 13, '😆😆😆', 'image', 'images/UAAROlcQh3UfV32Pd04WNxM160Sk7ukmC4LjrTQc.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 07:37:03', '2024-01-16 07:37:03', 1000.00),
(141, 13, NULL, 'image', 'images/I8JsfCTF98FXCpy6V8EdMou9bku12yEopbbaFOzB.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 07:38:21', '2024-01-16 07:38:21', 1000.00),
(142, 13, NULL, 'image', 'images/24zED3NXv6ixp23jknXDJZMQV9AsoBn3PM1p4580.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 07:39:12', '2024-01-16 07:39:12', 1000.00),
(144, 13, 'Much respect 🔥', 'image', 'images/sO0V1Pk7qaX2AcFjDVjd8DTgGOIoGLgfPcpiRMGe.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 07:40:18', '2024-01-16 07:40:18', 1000.00),
(145, 13, NULL, 'image', 'images/hA8ERGcb1fMtVTOKYlOktqzRFCU5x0Z2lJefzlp1.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 07:49:00', '2024-01-16 07:49:00', 1000.00),
(146, 13, 'kweli hii mazee?😆', 'image', 'images/UaztI5pwrrmn1CcwAjwMz5AygSDfMfbRyy0ktiPw.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 07:55:15', '2024-01-16 07:55:15', 1000.00),
(147, 13, NULL, 'image', 'images/CVi9hJgrZqaxJT8nWuQOqID29IuKXxBEqkocXBMy.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 08:18:35', '2024-01-16 08:18:35', 1000.00),
(148, 13, NULL, 'image', 'images/6mkCsbG1V8mplK1YjnlMphY4EgP7KQgPhm9wiHEU.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 08:19:06', '2024-01-16 08:19:06', 1000.00),
(152, 13, NULL, 'image', 'images/dGjYL9z0YOf8iJcdqMGDddbwnAaZFSuDzRkvCTTt.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 08:20:54', '2024-01-16 08:20:54', 1000.00),
(153, 13, NULL, 'image', 'images/8EegSS9xz4ifOt6SARygm0GlaQZhMM95ajCFWT1Z.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 08:21:26', '2024-01-16 08:21:26', 1000.00),
(154, 13, '😆😆😆', 'image', 'images/l1S1zkXi6ZDB4LvAOIT3J2bd7xVZoIv9gZNw0Sgw.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 08:22:06', '2024-01-16 08:22:06', 1000.00),
(155, 13, 'ASANTE MAMA🙏🏿🙏🏿', 'image', 'images/HquACM3xnGGdDFg3XGPgSQTLenglFfXlsJlRAKsW.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 09:26:06', '2024-01-16 09:26:06', 1000.00),
(156, 13, '😆😆😆', 'image', 'images/PDklTdFPqFrDggoRtuKSNmi3B8KwvEB8qfy3ghef.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 09:26:37', '2024-01-16 09:26:37', 1000.00),
(158, 13, '😲😲', 'image', 'images/EvXN0CV1bboGIsRdRj5wSE3ycNyaEUKSdl4SGSon.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 09:27:51', '2024-01-16 09:27:51', 1000.00),
(159, 13, '😭😭😭', 'image', 'images/rsKUzJwcDIWSKSJ03CxeyhPCQ2ap5X9zEvjhCavL.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 09:28:45', '2024-01-16 09:28:45', 1000.00),
(160, 13, 'True👍🏿', 'image', 'images/ByBtU263uirnLp5hiioU6y8QJGRMm0EPUKm799qx.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 09:29:24', '2024-01-16 09:29:24', 1000.00),
(161, 13, NULL, 'image', 'images/xRk7F2fi0T5YW9xXKSSARjytLwaEsd3Hqsm1YrpX.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 09:30:16', '2024-01-16 09:30:16', 1000.00),
(166, 13, 'Haya sasa vijana kazi kwenu😆', 'image', 'images/nZ87OSfHBJnAN3EGCJH7APWHHRBF91jbfO9bwKxu.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 09:33:39', '2024-01-16 09:33:39', 1000.00),
(167, 13, 'Amen🙏🏿🙏🏿', 'image', 'images/P9OjtXMAvEsMYULvcfGjqquyn4L8gt1wl2hacDjI.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 09:34:13', '2024-01-16 09:34:13', 1000.00),
(168, 13, NULL, 'image', 'images/Cw9OXxellVzqhDXF2DnEI3BntBubuw0T7mzrgFlu.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 09:34:41', '2024-01-16 09:34:41', 1000.00),
(169, 13, '😆😆😆', 'image', 'images/o4NBYM52Hbrzutz2JQLHIOkPCgDnLaA4mmkbQss7.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 09:35:33', '2024-01-16 09:35:33', 1000.00),
(174, 13, NULL, 'image', 'images/vadREEsA1LhllqoDLCazJgEbYJW5JFDKYHy3sqZl.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 09:39:25', '2024-01-16 09:39:25', 1000.00),
(175, 13, '😆😆😆', 'image', 'images/epsifrKbb2Ir2COp3w6l97uElYmcUUwQ3rNgsHht.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 09:39:56', '2024-01-16 09:39:56', 1000.00),
(176, 13, 'Nina mimba tako....😂', 'image', 'images/CxrRJpTHhx3O3y00xykJ51lfctHuEYhvjygIyYXG.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 09:40:50', '2024-01-16 09:40:50', 1000.00),
(177, 13, NULL, 'image', 'images/jQjt9pdEtThlR6Hkn5j41vZpyePywHnilWhojmUG.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 09:41:27', '2024-01-16 09:41:27', 1000.00),
(178, 13, 'A OR B', 'image', 'images/xIipVFwUBdJTonZVIFGR1IQQRRSDAV2NjoN81YA3.png', 'images/vyaH7MdFa3bvU5DUAxOdWxAk00vaa9NKnHyXXBzi.png', '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 09:45:09', '2024-01-16 09:45:09', 1000.00),
(179, 13, 'Tuwe wakweli jezi ipi imeenda shule A or B?', 'image', 'images/CmZWRcaMgUl59Il9QQCA1kO6yHvIgdfhykHpElrk.png', 'images/HtkPuPMykEQOOOtpbbXTHcynvYOBVYJZlZXJyL8R.png', '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 09:49:31', '2024-01-16 09:49:31', 1000.00),
(181, 13, 'A kajala or B Posh,haya twende sasa😜', 'image', 'images/h7upVeZ9R8ZtAhmKO2ASxoxFBQKW56NrSfYAc7rM.png', 'images/8HltW9sPMoTJrLV5DNlH07Gm1lIvTgMUL5TlDlqD.png', '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 10:19:23', '2024-01-16 10:19:23', 1000.00),
(183, 13, 'A or B au zote sawa 😀', 'image', 'images/zmniHIchbplaN9il8pZ6kpS86tjwReQ1avI1FKEO.png', 'images/syp8w2ptPNz0fKJP2MKgIgBFQ8y1n7azFRzUUIJ3.png', '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 10:40:16', '2024-01-16 10:40:16', 1000.00),
(185, 13, '😭😭', 'image', 'images/aaF0I2HzeZIvUt5eTc5PcMpS84R4mMezZqMDgyeK.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 14:30:14', '2024-01-16 14:30:14', 1000.00),
(186, 13, '🔥🔥🔥', 'image', 'images/Rp9dQUjbPzRwo5BlwVoh4pxLeVWISVwGKil9kfIX.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 14:30:44', '2024-01-16 14:30:44', 1000.00),
(187, 13, NULL, 'image', 'images/7EW3H6WotthOxPmhP6B2ilZ9JUvRXzc22ulOjxTU.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 14:31:54', '2024-01-16 14:31:54', 1000.00),
(188, 13, 'Kabisa🥵🥵🥵', 'image', 'images/ASxnLsigbvePvXPDhRd4WKfIFdIG2utoLKXkd1xY.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 14:33:49', '2024-01-16 14:33:49', 1000.00),
(189, 13, '😀😀😀', 'image', 'images/gpmg57LlDvlnkgs9AT78WU6jQKkcMbY0WBn6DBfH.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 14:35:12', '2024-01-16 14:35:12', 1000.00),
(190, 13, 'Wazomeeni tu kama wanazingua😆😆', 'image', 'images/RgwPojA6oeecRjwpwePKhVhTBeMycBugmzVZF9dD.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 14:36:10', '2024-01-16 14:36:10', 1000.00),
(191, 13, '👌🏿👌🏿👌🏿💯', 'image', 'images/rDfp8gNKAJ25tv8zU6CaQybXWyioiXIppXvmmNlf.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 14:37:05', '2024-01-16 14:37:05', 1000.00),
(193, 13, '😲', 'image', 'images/6kzsqBqi6V4ASknJPIUaAN2ARON5p0uXFh7I7LkU.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 14:44:06', '2024-01-16 14:44:06', 1000.00),
(196, 13, NULL, 'image', 'images/JVdZ3AHXez33BgiGEbwA1e4vasbkVIexDOycCSgD.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 14:50:24', '2024-01-16 14:50:24', 1000.00),
(197, 13, 'Cash money🔥🔥', 'image', 'images/pVopfa6M8gykGIuvVPWsePOabBRHUYEFg1IAtcp1.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 14:51:41', '2024-01-16 14:51:41', 1000.00),
(201, 13, 'Amen', 'image', 'images/Ywv6DOdh1otLhtajuLRAi2NffpxZAGVqeP4QUrIs.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 17:06:36', '2024-01-16 17:06:36', 1000.00),
(202, 13, 'duuuuuuuu', 'image', 'images/5Nu8cc93ggvgrMg0ygML2INBz62KV5PRAcgn5MMm.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 17:08:00', '2024-01-16 17:08:00', 1000.00),
(203, 13, NULL, 'image', 'images/6akVgeAgk0ucTyW7Snc0aEQL8sIueCPX7DGocTyP.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 17:08:33', '2024-01-16 17:08:33', 1000.00),
(204, 13, '😂😂', 'image', 'images/Lx862rj7MS9DH1mSzJajSUOZATV8PYEiTkDF8A12.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 17:09:14', '2024-01-16 17:09:14', 1000.00),
(205, 13, '😂😂😂', 'image', 'images/gTtOto6wkaht6gx17wLhyiJPs2dwTP5suxnelxwy.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 17:10:18', '2024-01-16 17:10:18', 1000.00),
(207, 13, 'Amen', 'image', 'images/1FP5MrpbdfnzNlng51wD9plYcqmfy75dIH8x4JmG.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 17:11:26', '2024-01-16 17:11:26', 1000.00),
(208, 13, '💯', 'image', 'images/QmAhhtxSdif758Wy3gnRcK6hwxHJKjGx6IMCePgj.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 17:12:40', '2024-01-16 17:12:40', 1000.00),
(209, 13, '😂😂', 'image', 'images/NZ1jI3hJaranjmysr2PP7mXcqEbVd4APb0KeMnbQ.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 17:13:22', '2024-01-16 17:13:22', 1000.00),
(210, 13, NULL, 'image', 'images/nCtuppoFpXlAH7Uvy9w1IPexqLCTJ0MY8hBoSLA6.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 17:14:21', '2024-01-16 17:14:21', 1000.00),
(211, 13, 'Safi🙏🏿', 'image', 'images/c1Is11drBOrJpenUwYdgdGAMsm1Y5NV1jiWrpmrs.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 17:15:34', '2024-01-16 17:15:34', 1000.00),
(214, 13, '😆😆😆', 'image', 'images/LyhoPMM8Ce16VGOdadfvaBOoNeaFdF8HOrEzBmlg.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 17:19:23', '2024-01-16 17:19:23', 1000.00),
(216, 13, NULL, 'image', 'images/jh7pPLGD9cH7bwgA7mLIbr9XsyL4Qex9uw0sDXDs.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 19:27:32', '2024-01-16 19:27:32', 1000.00),
(218, 13, '😀', 'image', 'images/VNaUOKPDFIkdKcGjFpgcgiPvkDvcyfdihARjben2.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 19:28:59', '2024-01-16 19:28:59', 1000.00),
(220, 13, NULL, 'image', 'images/jCl7fXsusML8EOyZ6vsuCS7GkK915iadadR03zjp.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 19:30:14', '2024-01-16 19:30:14', 1000.00),
(221, 13, NULL, 'image', 'images/8qXaKJTpahxTfd211xunKFzOvhkC5ABmVcCHAzGx.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 19:30:53', '2024-01-16 19:30:53', 1000.00),
(222, 13, NULL, 'image', 'images/LNYKkjuN1fWSsf3vvTeBf0gmF1IqZD1ELKSUvcZl.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 19:31:38', '2024-01-16 19:31:38', 1000.00),
(223, 13, NULL, 'image', 'images/ZBceWwfNQc1iT0Vr0PTmaC9XChtUxc5uyvWUROXW.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 19:32:11', '2024-01-16 19:32:11', 1000.00),
(224, 13, NULL, 'image', 'images/dCQ3Zguv8SDECbQoU1BjLYWOomug4N16Uuxj57oM.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-16 19:32:48', '2024-01-16 19:32:48', 1000.00),
(226, 13, '🙏🏿🙏🏿🙏🏿', 'image', 'images/RvS4lTp357CXrNFX7eYqYlEgYLFTjzYQ6IvNIYLW.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-17 07:04:34', '2024-01-17 07:04:34', 1000.00),
(227, 13, '😎', 'image', 'images/eUkN2Fm74ehdQoFAhJl6b6UlLKsV3UOmE1uNCm29.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-17 07:05:19', '2024-01-17 07:05:19', 1000.00),
(228, 13, NULL, 'image', 'images/DSNXFREVEpBBCvR4s5fvFrwQjgUNHDcy4oBW2VNq.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-17 07:05:48', '2024-01-17 07:05:48', 1000.00),
(232, 13, NULL, 'image', 'images/pf0lV3D52oKOKsw2i5tug4xDRtd62WgcKJ1l4crx.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-17 07:09:10', '2024-01-17 07:09:10', 1000.00),
(236, 13, NULL, 'image', 'images/Mer5cfgRYi3p70VIJjbfLWWPY8dW0xbNcYcG6mp3.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-17 07:13:44', '2024-01-17 07:13:44', 1000.00),
(241, 13, 'Hawajaniona mimi hawa😀😀', 'image', 'images/bsCvoDzx36sX3zxLKToUpNLfP1elsJCP87m8LdjL.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-17 07:17:22', '2024-01-17 07:17:22', 1000.00),
(242, 13, NULL, 'image', 'images/7PE6rxMxfb5xZFonG61Injn8QtTx07yF2w21PzwV.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-17 07:17:54', '2024-01-17 07:17:54', 1000.00),
(245, 13, NULL, 'image', 'images/CLRcd4uUBoBE2cHQobgd0YhXX5G4IeiW10ceFZWK.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-17 07:20:00', '2024-01-17 07:20:00', 1000.00),
(247, 13, 'Rest easy legend umetufirahisha sana utotoni.,🔥', 'image', 'images/gZx57LX7V690na5BRxC6gY4RjtgfwZ9tcDHffXFJ.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-17 07:21:51', '2024-01-17 07:21:51', 1000.00),
(249, 13, NULL, 'image', 'images/31UuayZrXsnWo3oDJgD3py7LhFRzABhY6b41MEsN.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-17 07:23:13', '2024-01-17 07:23:13', 1000.00),
(252, 13, NULL, 'image', 'images/U5zz6Naswfyo6SqQPgrsEMaOqwDa0VQbbvL4qTcY.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-17 07:26:12', '2024-01-17 07:26:12', 1000.00),
(253, 13, NULL, 'image', 'images/kYrhRDGPOumI6LtMWmcWthcqnVROATIb2ex0SenQ.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-17 07:26:54', '2024-01-17 07:26:54', 1000.00),
(254, 13, NULL, 'image', 'images/n0VJdYJ8hknGMns2rEY2HqqsqKpWXOqVGJpRg3u5.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-17 07:39:51', '2024-01-17 07:39:51', 1000.00),
(255, 13, '🔥🔥🔥', 'image', 'images/HC86XOXMdvjZI1S4zk8FtP2imMMOYa4nqov01JEt.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-17 07:41:19', '2024-01-17 07:41:19', 1000.00),
(256, 13, NULL, 'image', 'images/TPqrrGeKtzurJVLdCYLk9LcFZmJpay2BoWeVnszz.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-17 07:42:14', '2024-01-17 07:42:14', 1000.00),
(257, 13, '🙏🏿🙏🏿', 'image', 'images/Zb7jdmm8MlyfqeEyRCibjZdK0WOIAaVkFdXBDIXa.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-17 07:43:11', '2024-01-17 07:43:11', 1000.00),
(261, 13, NULL, 'image', 'images/WkXAZxtvn8rdHjBV2PPohN6dcj5T0bK7vjEARTeF.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 06:45:20', '2024-01-21 06:45:20', 1000.00),
(262, 13, NULL, 'image', 'images/NWXvBEzJcu93fvYQ8MUihhnntUNXsInBPp6Cbp2p.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 06:46:17', '2024-01-21 06:46:17', 1000.00),
(263, 13, NULL, 'image', 'images/k5DodLIHeYNKw42N7R3qnJIuqT1shIznQYbZfMOI.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 06:46:58', '2024-01-21 06:46:58', 1000.00),
(264, 13, NULL, 'image', 'images/UhggPfM0Icck3cUfSYpsmbKpQya1W4WQ8ylT0yVE.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 07:27:41', '2024-01-21 07:27:41', 1000.00),
(269, 13, NULL, 'image', 'images/BRTmVsfnuTTT0fQtB9tTvEowVtS8iWZRLRhjn7xn.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 07:30:11', '2024-01-21 07:30:11', 1000.00),
(270, 13, NULL, 'image', 'images/mJwzuAr5g7eYyW7hzAIMuRZKmNdz31KY9n3ouJwv.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 07:30:39', '2024-01-21 07:30:39', 1000.00),
(271, 13, '😆😆😆😆', 'image', 'images/A5XhagJYv4VHDYY8X4Umy5uZ7DUijodcvkXZxvZh.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 07:31:14', '2024-01-21 07:31:14', 1000.00),
(272, 13, NULL, 'image', 'images/oI8o34HwtgGrT4BwjHhYDh1mJSVCV9qiQ7Xw5MXt.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 07:32:12', '2024-01-21 07:32:12', 1000.00),
(273, 13, NULL, 'image', 'images/o9XrgQ4jW2VVCioAIaty8OK2LO6oQv4nSp1pIj3m.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 07:32:44', '2024-01-21 07:32:44', 1000.00),
(274, 13, 'So sad 😢😢', 'image', 'images/XvslokqDER7hDoAOmgnlyS6dvFuR5cRNGE2xX2DV.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 07:33:22', '2024-01-21 07:33:22', 1000.00),
(275, 13, '😆', 'image', 'images/KrPBW275ZpG2IRAgXY6yInOVDkVgqOUhUsgyYNhe.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 12:25:30', '2024-01-21 12:25:30', 1000.00),
(276, 13, NULL, 'image', 'images/YA4WAzwI64p7qz966fBQBo6U1jrLAZgMx3W50w0m.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 12:26:16', '2024-01-21 12:26:16', 1000.00),
(277, 13, NULL, 'image', 'images/DQKXxYtUgl2cQCF22NZnajFh59W7JKnz9QVVyg5c.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 12:27:02', '2024-01-21 12:27:02', 1000.00),
(278, 13, NULL, 'image', 'images/vhAKfEziVLfZrPBs5iuvLlVeWUJWB07RsjS3X6Md.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 12:27:50', '2024-01-21 12:27:50', 1000.00),
(279, 13, 'The notorious 🔥🔥', 'image', 'images/lCvQnKsIEWJ9EekqxHnDJ3zXShf05Q99hqExp9w1.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 12:28:41', '2024-01-21 12:28:41', 1000.00),
(282, 13, NULL, 'image', 'images/dlaqtZTXl9eDK6ri53rBhueDzspLJgDG6Py7d2RM.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 12:30:34', '2024-01-21 12:30:34', 1000.00),
(283, 13, NULL, 'image', 'images/znwaHFMNu5MpDfaCgqa2cxUi1doEj509gJzC1Qrw.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 12:31:11', '2024-01-21 12:31:11', 1000.00),
(284, 13, NULL, 'image', 'images/kNZG40Mp3lmxpviIpTjqoSP6ccH79Q41OS3PKH4D.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 12:32:31', '2024-01-21 12:32:31', 1000.00),
(287, 13, NULL, 'image', 'images/1LEAgjYU4V4lhSuSFLS1De1rB8EoI8IWpNIar8Jd.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 12:34:25', '2024-01-21 12:34:25', 1000.00),
(289, 13, NULL, 'image', 'images/6bd9qD969a4VJ7ndalSi4ttlRyIs8iizZ6qnLLAk.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 12:35:42', '2024-01-21 12:35:42', 1000.00),
(292, 13, NULL, 'image', 'images/9Y7ROKjzSE5jCzKxVAJVSuh1hdFqVGSkOP3jpeGV.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 12:39:28', '2024-01-21 12:39:28', 1000.00),
(295, 13, NULL, 'image', 'images/ILUNHu9IPLrxjBV1NPsL8EThPAzXBiZDtBMAVzqF.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 12:41:50', '2024-01-21 12:41:50', 1000.00),
(296, 13, NULL, 'image', 'images/Sem7GVPsqs6VvaBPyffbwQfXjZyV84BB0eJqOSVa.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 12:42:16', '2024-01-21 12:42:16', 1000.00),
(297, 13, NULL, 'image', 'images/rbhOh7yUqBkPmjzAjtdLBlbKjg9MAwT7YWVEXvG3.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 12:42:45', '2024-01-21 12:42:45', 1000.00),
(299, 13, NULL, 'image', 'images/7yu1QyJJOw1bFZOhOCpXTCnUv1OogzTAQEr3HmSb.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 12:43:58', '2024-01-21 12:43:58', 1000.00),
(301, 13, NULL, 'image', 'images/UeTq0Rva0VSunyvFGCpVSd0Gba6vKa1lAkLSqEDA.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 12:45:06', '2024-01-21 12:45:06', 1000.00),
(302, 13, NULL, 'image', 'images/RR0Zw0dDMAz0qaRf2zhLF1HxdT4BcKMZiVAVf5xJ.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 15:17:28', '2024-01-21 15:17:28', 1000.00),
(303, 13, NULL, 'image', 'images/sZAGDKUi4ydrKYTrzA53hHOYmb0XUNrRzPenFhBb.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 15:17:57', '2024-01-21 15:17:57', 1000.00),
(304, 13, 'Hii ajira ngumu sana aisee😆😆', 'image', 'images/IM2JcxxsOgepO3OVEHDbmDVsE8qcUlj93kdMKFq3.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 15:19:03', '2024-01-21 15:19:03', 1000.00),
(305, 13, '😆😆😆', 'image', 'images/KYsBAoZZRYlAd8YW8T6oiv5uWqf9LFyI298sh3aP.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 15:19:36', '2024-01-21 15:19:36', 1000.00),
(306, 13, 'kabisa', 'image', 'images/HrRNnYrGLcreNAZcgcFgcUBaqSKzy5ZL9Z3sXnNr.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 15:20:24', '2024-01-21 15:20:24', 1000.00),
(308, 13, '😂', 'image', 'images/KzeWklg7K4IzCgURQOSeTAVrqvFm7sZ17Gzfaq7T.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 15:21:51', '2024-01-21 15:21:51', 1000.00),
(309, 13, NULL, 'image', 'images/NvLamVZawAoywVyxVF7wAqADyTOeJgiuANZMDayI.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 15:25:39', '2024-01-21 15:25:39', 1000.00),
(310, 13, NULL, 'image', 'images/4IjwoEq5lreZKhdCLubptTz9k7Gbv6VPmHph7rdM.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 15:26:13', '2024-01-21 15:26:13', 1000.00),
(311, 13, 'Simba jamani 😂😂😂', 'image', 'images/qy36EZ7KDJVSxDzqzKGXDVGHVB0zZHsRRbHYxQVa.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 15:27:01', '2024-01-21 15:27:01', 1000.00),
(314, 13, NULL, 'image', 'images/mnFnjmWv2cTCAmdGY0NxvgiV2IKIfWrlBOdoG7dE.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 15:29:38', '2024-01-21 15:29:38', 1000.00),
(320, 13, NULL, 'image', 'images/56POtGBu0fhySf600KYQdhjonwJYyOt0Y0q8BsZ8.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 15:32:50', '2024-01-21 15:32:50', 1000.00),
(321, 13, '😂😂😂', 'image', 'images/ibZ8yCsV9tex2qbXsyzgm0lmmnK6U7OZjN3vVqes.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 15:33:48', '2024-01-21 15:33:48', 1000.00),
(322, 13, NULL, 'image', 'images/l8JUHa6mFvcqhBQFHrK5OWdtv3H85zcDSYJQXDhb.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 15:34:19', '2024-01-21 15:34:19', 1000.00),
(328, 13, NULL, 'image', 'images/MaGF3lfuQjntCGFjiwyIYmnuH5IO0KiyJQmvsXDr.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 15:39:33', '2024-01-21 15:39:33', 1000.00),
(330, 13, NULL, 'image', 'images/NaF9n4xWwiJ1U3g7GIxz80hk54hHI3J0YvHSUgiK.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 15:41:28', '2024-01-21 15:41:28', 1000.00),
(331, 13, '🔥🔥', 'image', 'images/dTO8ZzYBsBc7BOWmLKBmYH6jg1e1MacyQeb1pYdw.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 16:05:06', '2024-01-21 16:05:06', 1000.00),
(333, 13, NULL, 'image', 'images/1YGmbgsruElFgIG0qOFETMifZ8EgAGvG2pn3GSKc.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 16:06:03', '2024-01-21 16:06:03', 1000.00),
(334, 13, NULL, 'image', 'images/f87Na2fJ6n070fWA4gN55CpNqbQLNnBPllMNd7nV.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 16:06:28', '2024-01-21 16:06:28', 1000.00),
(336, 13, '😆😆😆😆😆', 'image', 'images/1yVbvqD8Lo8SUoGqRtMuGH3d6tdMfl7mhQg6wpj0.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 16:08:04', '2024-01-21 16:08:04', 1000.00),
(337, 13, NULL, 'image', 'images/ip0SAf9BlJH0ijhevEk5CzdDWFLqUXj9UTZlaDB6.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 16:08:52', '2024-01-21 16:08:52', 1000.00),
(338, 13, NULL, 'image', 'images/JKcb5qY6fzfAAj2mm8OwespxcYzXLDpPrxUYqlaU.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 16:09:23', '2024-01-21 16:09:23', 1000.00),
(339, 13, '🤠🤠🤠🤠', 'image', 'images/xXNrWdzlOG4uVk8b9rKdBthfZuLSKmFdHpnYsalH.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 16:09:55', '2024-01-21 16:09:55', 1000.00),
(340, 13, NULL, 'image', 'images/Q7mSgAIYWFWTsc74m8k8hkfzWlP4gdG1C7fMGBxt.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 16:10:39', '2024-01-21 16:10:39', 1000.00),
(341, 13, NULL, 'image', 'images/DoyoPyKZtZhVxal7ZeF325tg7eaAXsKBKx7acIkB.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 16:11:10', '2024-01-21 16:11:10', 1000.00),
(342, 13, NULL, 'image', 'images/N5z6EcRUu1MF8NEhOvo48TboDjozI4qE1YnbBUQL.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 16:11:50', '2024-01-21 16:11:50', 1000.00),
(343, 13, NULL, 'image', 'images/8e5GlVcb8dHi7B5mv4JaAL9pJGmEozRD6opvVmwR.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 16:12:32', '2024-01-21 16:12:32', 1000.00),
(344, 13, '😳😂', 'image', 'images/Hlbx5wpB3ELADWOJdRes5L5cNFMtv6XUQbjUiMGe.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 16:13:34', '2024-01-21 16:13:34', 1000.00),
(345, 13, NULL, 'image', 'images/YaA8p9b0uZUlKcVZB82RcooMNAZn7aCElxwsWRAF.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 16:14:13', '2024-01-21 16:14:13', 1000.00),
(346, 13, NULL, 'image', 'images/sZYB6FXLm3G7KZKa0akplqGf7S9KI4RfajpjbnnD.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 16:16:44', '2024-01-21 16:16:44', 1000.00),
(348, 13, 'Tyson Furry akimuona huyu jamaa najisikia kutapika😂😂', 'image', 'images/lpZwqyVzpan11Mex49Wgby71Z8dx5VqkQtA7xCSb.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 16:18:33', '2024-01-21 16:18:33', 1000.00),
(349, 13, NULL, 'image', 'images/2Bjx8cqUnJzUQbXMP2WQFDF0IrZU1Da8YIHWBfcj.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 16:19:26', '2024-01-21 16:19:26', 1000.00),
(350, 13, NULL, 'image', 'images/qpjELKbz2eDTREIdjt7jNXizmZYlwp5d0R3J1OjB.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 16:20:20', '2024-01-21 16:20:20', 1000.00),
(351, 13, NULL, 'image', 'images/QvICHfiAb8v3ogGAWclLut8XzEtrxPAUIa7eRK8A.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 16:20:39', '2024-01-21 16:20:39', 1000.00),
(352, 13, NULL, 'image', 'images/MLxj9SWMhadC3k7f85aaFuT1cQ3x3cIX5ZRdTrFw.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 16:21:27', '2024-01-21 16:21:27', 1000.00),
(353, 13, NULL, 'image', 'images/lRjNniKHoYBzkcOKeKFENFw85koohDaVy99TtYag.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 16:22:00', '2024-01-21 16:22:00', 1000.00),
(354, 13, NULL, 'image', 'images/NCXgg9fnapiM62PY7D3XVVf0L9HXef5WDIsIJo3n.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 16:23:18', '2024-01-21 16:23:18', 1000.00),
(355, 13, NULL, 'image', 'images/ZJjCnrd8822HlFiQiNr0HcpxPn4wojFFNipNtpg5.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 16:23:50', '2024-01-21 16:23:50', 1000.00),
(358, 13, NULL, 'image', 'images/6nZzhqo6PNAjG3n3IDrEKs1xOBG434dNKNelTss8.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 16:27:11', '2024-01-21 16:27:11', 1000.00),
(359, 13, NULL, 'image', 'images/yASW3Om5yhRAQUFvpE3jdFLjA9mQgG5ejhPJsTUT.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 16:29:55', '2024-01-21 16:29:55', 1000.00),
(360, 13, NULL, 'image', 'images/abYsqtZvw5RVwZVpn1VJPJm37gsg0s6REDElX7Sv.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 16:32:04', '2024-01-21 16:32:04', 1000.00),
(361, 13, NULL, 'image', 'images/Ls8oivnL6Y9sZbTNAWSp7q3MFtwdzDr9WTBRKHN8.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 16:32:53', '2024-01-21 16:32:53', 1000.00),
(362, 13, '😂😂😂😂', 'image', 'images/isOYUJvTPhONU6t8b6mlt9QPTxpfEURTbfIMN2cZ.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 16:34:20', '2024-01-21 16:34:20', 1000.00),
(363, 13, NULL, 'image', 'images/LGOU7u187kc3osmPUywGvGGHBWDecKjiyS9BdQjl.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 16:35:00', '2024-01-21 16:35:00', 1000.00),
(364, 13, NULL, 'image', 'images/yyuglssjT8UavIZPsqp5nfMCdRmamGt3dhm7qrmb.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 16:35:34', '2024-01-21 16:35:34', 1000.00),
(365, 13, NULL, 'image', 'images/ghfguM066wv1vWRQYr1TTgC8jQrLA5k5CdNwdl7j.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 16:36:20', '2024-01-21 16:36:20', 1000.00),
(367, 13, 'Rozeee🔥🔥🔥', 'image', 'images/ZSPErX5ztcProCQ8m6ittSvn3Pnsj5MgQWbhXoEB.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 16:37:51', '2024-01-21 16:37:51', 1000.00),
(368, 13, NULL, 'image', 'images/b4Umj9K0UwWmu44smkhX5pDjeixkfoNW5upEaQ73.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 16:38:39', '2024-01-21 16:38:39', 1000.00),
(369, 13, '😂😂😂', 'image', 'images/gAy8Zfjw2Jwm3ccwEvKElWpTkUj7QYkA9U5naj7u.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 16:39:26', '2024-01-21 16:39:26', 1000.00),
(371, 13, NULL, 'image', 'images/lTAU3OvpsDxFkdAmtVJrGYt7O3pSEOUOQEspwb49.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 16:41:27', '2024-01-21 16:41:27', 1000.00),
(372, 13, NULL, 'image', 'images/FJmeSAdX5buS5QzbwF3Es6z8YRpJM1MlqbxSW9UY.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 16:42:07', '2024-01-21 16:42:07', 1000.00),
(373, 13, '😂😂😂😂', 'image', 'images/7dI5dI8PafDi2q09jfiss9btPz5nbB6lOu9u6CtR.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 16:42:49', '2024-01-21 16:42:49', 1000.00),
(374, 13, NULL, 'image', 'images/PJNkONUZhBFpRzjgUuwKcRZqVVKmu0OjEkAfLDOy.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 16:44:04', '2024-01-21 16:44:04', 1000.00),
(376, 13, NULL, 'image', 'images/U5QtbhLa5sLAA7XTPzm5rmQgZJUZvR2ThePv4n6h.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 16:45:54', '2024-01-21 16:45:54', 1000.00),
(377, 13, NULL, 'image', 'images/Xkm9rpHeeRGCJyvZjLErOHo89TLDkJ7Vtjk89Prn.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 16:46:59', '2024-01-21 16:46:59', 1000.00),
(378, 13, 'True', 'image', 'images/0YCAxx7GFrVdqfQfJfWZLqrYJ9xYsFb4f1tITJz4.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 16:47:40', '2024-01-21 16:47:40', 1000.00),
(379, 13, NULL, 'image', 'images/eznhlgKYc6iYE76YKFwg4q84ydwRRfge4xwUC9b1.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 16:48:50', '2024-01-21 16:48:50', 1000.00),
(380, 13, NULL, 'image', 'images/QRn7hOXrfUxY4rWyKzeV1mjMoQuiy1z8rkHmiwaT.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 16:49:37', '2024-01-21 16:49:37', 1000.00),
(381, 13, NULL, 'image', 'images/ZLJaYEUI12GiL65SvvdUZkcd61RLJPPqor2F42PY.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 16:50:17', '2024-01-21 16:50:17', 1000.00),
(383, 13, '😀', 'image', 'images/oTaYdMXrdvs2uVQdADwx2UIJ0AwLJUFg0O1UwXU6.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 16:51:54', '2024-01-21 16:51:54', 1000.00),
(385, 13, NULL, 'image', 'images/cecq2kv4FOeBfaZbHHoW5RSegfulQ8qeaJzwIBQF.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 16:53:35', '2024-01-21 16:53:35', 1000.00),
(386, 13, '😂😂😂', 'image', 'images/O2U9GeqPezHvJ4VRmJTuO7ttEmMzKXg6scHyePX6.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 16:54:40', '2024-01-21 16:54:40', 1000.00),
(388, 13, NULL, 'image', 'images/X9zdsH4aka9QnTmH9PV592lmRvx19qGwIQgyYieK.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 16:57:50', '2024-01-21 16:57:50', 1000.00),
(389, 13, NULL, 'image', 'images/c905i8oSaQrqnhTZ0HL9lrxhgoFaxyHwmOYifDER.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 16:58:59', '2024-01-21 16:58:59', 1000.00),
(390, 13, NULL, 'image', 'images/SWGxNsj7eNF8YzP5xO7LpDou2xVotuAdWF1Q7w8Y.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 16:59:41', '2024-01-21 16:59:41', 1000.00),
(391, 13, NULL, 'image', 'images/PC0ZTQDLMtS0Mn6QTi4c0o8kWuKy7VWYSJ5hdVVl.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 17:00:43', '2024-01-21 17:00:43', 1000.00),
(392, 13, NULL, 'image', 'images/UcPR8fvP0Tmq3E8xa56d41QK2fhnjyD9heO4sfgV.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 17:01:29', '2024-01-21 17:01:29', 1000.00),
(393, 13, NULL, 'image', 'images/QINENMvtJjPSTbauOV7PREJsbvrSGV7pOorTlP4z.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 17:02:13', '2024-01-21 17:02:13', 1000.00),
(394, 13, NULL, 'image', 'images/i8Z4FSeKvmIfcu2HvOQk3AWUVPPRCqvcG7XdsTyp.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 17:02:59', '2024-01-21 17:02:59', 1000.00),
(395, 13, NULL, 'image', 'images/uW9ZddNW0tTJ40ka4f4FuiRFPxOFRRZnzGjE1r9p.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 17:03:46', '2024-01-21 17:03:46', 1000.00),
(396, 13, NULL, 'image', 'images/Fe8niW3MTMTJV5oXvHbYOHbTBYHXsRH2DOB8uHuV.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 17:04:40', '2024-01-21 17:04:40', 1000.00),
(398, 13, NULL, 'image', 'images/HvqfX36hZGXTUNdGSFHCIx41I0Cfh5HebBwJbM4h.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 17:06:54', '2024-01-21 17:06:54', 1000.00),
(400, 13, NULL, 'image', 'images/RSwXehtQN1v6DnncTUK8wjNxEkZQT6Jm2MlUQuQv.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 17:08:04', '2024-01-21 17:08:04', 1000.00),
(401, 13, NULL, 'image', 'images/Zvua3rSuLUMI5CJRMROqMEjjf4WGmpkV5XsqEV93.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 17:08:56', '2024-01-21 17:08:56', 1000.00),
(405, 13, NULL, 'image', 'images/xJ0sGwDx8vPE3RnP6CDCvJQbUWZwlyeDD91hCpPd.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 17:11:46', '2024-01-21 17:11:46', 1000.00),
(406, 13, NULL, 'image', 'images/0crGrXqGUSLa0ThVLjjaBdef5OX5FPJZGjzKPpZ5.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 17:12:27', '2024-01-21 17:12:27', 1000.00),
(410, 13, NULL, 'image', 'images/lW9w45mVEfLZ0TkOwn0dKgp64yHtDkJLE3p3LyMU.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 17:16:25', '2024-01-21 17:16:25', 1000.00),
(411, 13, '😆😆😆😆😂', 'image', 'images/eXbZAg1tOTxPEcDLqpIx8YNJXv2a3KZGzxXdDhjL.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 17:16:59', '2024-01-21 17:16:59', 1000.00),
(412, 13, NULL, 'image', 'images/ory7aoEvBW9DUeMqW1Na47OJBiXc3DsTFMCr7MaO.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 17:17:31', '2024-01-21 17:17:31', 1000.00),
(413, 13, NULL, 'image', 'images/cOo12N3sMkiSPh0xkRnRpDYyEHUykop04m2QoKuY.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 17:18:17', '2024-01-21 17:18:17', 1000.00),
(414, 13, NULL, 'image', 'images/urTVa7v0my2gqEi3g0bRcpmzEycl1YpxFnZy5ArN.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 17:19:16', '2024-01-21 17:19:16', 1000.00),
(415, 13, NULL, 'image', 'images/PQ7NItLWrxWjXIeBqpjJPSsxsYeC3P8GSAkrHux8.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 17:20:18', '2024-01-21 17:20:18', 1000.00);
INSERT INTO `posts` (`id`, `user_id`, `body`, `type`, `image`, `challenge_img`, `aspect_ratio`, `cache_url`, `thumbnail_url`, `pinned`, `is_seen`, `public_id`, `created_at`, `updated_at`, `price`) VALUES
(419, 13, NULL, 'image', 'images/xgZAclPWJzi6S5wcXeIQ5Okz3KXjOB0wdrd6DBVY.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 17:25:29', '2024-01-21 17:25:29', 1000.00),
(421, 13, NULL, 'image', 'images/KESCVctNd5nev4xXRqXkAU4S1otdt11BeZJFSANZ.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 17:26:40', '2024-01-21 17:26:40', 1000.00),
(422, 13, 'So sad😭😭', 'image', 'images/DivfPVgga0E28TiKO5Hc7gs5Edw7nZ2J0PPx0O5w.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 17:30:53', '2024-01-21 17:30:53', 1000.00),
(423, 13, NULL, 'image', 'images/hyoIMP8LdXQqU2WSLfDJpR21OKgx93TqGatQRPGv.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 17:31:38', '2024-01-21 17:31:38', 1000.00),
(424, 13, NULL, 'image', 'images/kwpw7mSeRIOQ5VdJpNj0U5nAYS4F55AtM7wFtcG7.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 17:32:17', '2024-01-21 17:32:17', 1000.00),
(425, 13, NULL, 'image', 'images/MmvtvmLLzCV3BIbi65YIUMSngsHNS6yFdaGWAgkt.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 17:33:02', '2024-01-21 17:33:02', 1000.00),
(426, 13, NULL, 'image', 'images/Ei1ZbdSdm5L4tiQTvOnpuZZsFtHzyCrwjy03ZAUr.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 17:33:32', '2024-01-21 17:33:32', 1000.00),
(431, 13, NULL, 'image', 'images/Kbfm9gHCYz0k91F537JCfrvSDi97SGuFwiDnuz2k.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 17:36:15', '2024-01-21 17:36:15', 1000.00),
(432, 13, NULL, 'image', 'images/sPG8e3mi1MyE68MFvbGOsQNL4VX74RVe1d8i1l8U.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-21 17:37:27', '2024-01-21 17:37:27', 1000.00),
(435, 13, 'Legends 🔥🔥🔥', 'image', 'images/JS5nE1iTaMfw0ySSxPa0SV4j7h3HIJDz6qZPO1Km.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-22 13:01:29', '2024-01-22 13:01:29', 1000.00),
(439, 13, NULL, 'image', 'images/qXoG6K1TFxPfpD8KqVkHmUVoP8hAdjWafugntr3A.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-22 13:42:27', '2024-01-22 13:42:27', 1000.00),
(440, 13, NULL, 'image', 'images/BXxD6FMrXWM6xp73IFTw4Yw9MqxYI2YfbQvQvca6.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-22 13:43:00', '2024-01-22 13:43:00', 1000.00),
(442, 13, NULL, 'image', 'images/iASxgHJUCtjRx0B6EVJjLSDxG7yTeXqt4cIiFojC.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-22 13:43:56', '2024-01-22 13:43:56', 1000.00),
(444, 13, NULL, 'image', 'images/C6kTV98x1bXxh4kfd9U0Y57df6ZZNMhAnJFRtdhR.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-22 13:45:14', '2024-01-22 13:45:14', 1000.00),
(445, 13, NULL, 'image', 'images/FKnZ9wtodckfjMsrUuWiCnRdCEcoqSJEondzILjf.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-22 13:45:53', '2024-01-22 13:45:53', 1000.00),
(446, 13, NULL, 'image', 'images/Zl8SLQw27CIO3JMe82QtNdSucAFA7yqNCJ6KBeWS.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-22 13:46:30', '2024-01-22 13:46:30', 1000.00),
(447, 13, NULL, 'image', 'images/E5qQ6BHuFdziBcacfjYN0RyOALAEUvzz3DlidJiW.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-22 13:47:19', '2024-01-22 13:47:19', 1000.00),
(450, 13, NULL, 'image', 'images/0zZd3uknAClCAjONWn46MlSAYZzcOk4E1a47P25l.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-22 13:59:58', '2024-01-22 13:59:58', 1000.00),
(452, 13, NULL, 'image', 'images/3nUpXxpNGQRTwnZMWBaFonU6GNeWHv8tpPYXwIoF.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-23 05:28:00', '2024-01-23 05:28:00', 1000.00),
(453, 6, NULL, 'image', 'images/TWkBLqJahnIeDqwiR2u9hGGtkPeIPog7fTM9x9No.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-26 19:20:18', '2024-01-26 19:20:18', 1000.00),
(457, 13, 'Mida ya kuingia VIP GYM🔥🔥🔥', 'image', 'images/gqiLYKV6gmmLskLlyMFMCrvsarEURCHo5usoz5bz.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-01-27 16:58:09', '2024-01-27 16:58:09', 1000.00),
(466, 6, 'this is the caption of the video', 'image', 'https://video.bangapp.pro/video/165c0986c93368/165c0986c93368.m3u8', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-05 18:51:22', '2024-02-05 18:51:22', 1000.00),
(476, 13, NULL, 'image', 'images/jyqt9F67YNhFaBjYvwlc90FT6hBWZaC4SE3b7dJl.png', 'images/J2Wos6yZ1yrS8vGMJhzvqdcWIApGKGltR5TedWrZ.png', '0.75', NULL, NULL, 1, 0, NULL, '2024-02-06 10:52:51', '2024-02-06 10:52:51', 1000.00),
(486, 6, 'Kiuno bila mfupa🔥🔥😀', 'image', 'images/3cp7mgIx4rQWkuczemBVd989uLwruVoUHxijIH4S.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-10 10:44:36', '2024-02-10 10:44:36', 1000.00),
(487, 6, NULL, 'image', 'images/06BwSPdWdcEPb4vT0jLZLLYj2mhGWCR7ChHtTwbW.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-10 10:58:20', '2024-02-10 10:58:20', 1000.00),
(489, 11, 'Hello World', 'image', 'images/1Dq2kVPzngdLF1MkNqvosSGpcFbSLjnxxFGgF5X0.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-10 13:17:05', '2024-02-10 13:17:05', 1000.00),
(490, 6, NULL, 'image', 'images/TFmnLwTkRcOy6uE8IHZ61YouF2GMLp3BuIfUks6E.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-10 13:40:41', '2024-02-10 13:40:41', 1000.00),
(494, 6, NULL, 'image', 'images/uLiB2FPDxzdBQvJzPiUL9Izkm12ETXsBHTYHNlgv.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-10 14:19:49', '2024-02-10 14:19:49', 1000.00),
(495, 6, NULL, 'image', 'images/Qi0wNt1PPtOSDj20XlXBy43HRdB2buT2aCa53qnz.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-10 14:29:19', '2024-02-10 14:29:19', 1000.00),
(498, 11, NULL, 'image', 'images/c6DFdCE4qGN0icWxAokbRXJLFUXeEJg8R3C3pnDw.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-10 14:36:21', '2024-02-10 14:36:21', 1000.00),
(499, 11, NULL, 'image', 'images/xuIcq72KC8KGhD89e4ynuX2aXmS3McLZ3SpFEGh2.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-10 14:36:41', '2024-02-10 14:36:41', 1000.00),
(501, 6, NULL, 'image', 'images/Y8KpYQ9cWRQmModoHduPeHd0QfRhFWm979TRIhQE.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-10 14:47:22', '2024-02-10 14:47:22', 1000.00),
(502, 11, 'other banhaa', 'image', 'images/j8vOYpnI3fsW9KLOEszoi9ZS1lPKGtFzLGBvBi58.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-10 14:47:55', '2024-02-10 14:47:55', 1000.00),
(503, 11, 'interesting', 'image', 'images/3SOejLsyq0B5wrT8cZGzhCQXqiVumubTAsEzXQu1.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-10 14:48:43', '2024-02-10 14:48:43', 1000.00),
(504, 11, NULL, 'image', 'images/ak4gbxUDcf6r6TWQ95jW1VFdq1wAg46vdclJdwN3.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-10 14:50:51', '2024-02-10 14:50:51', 1000.00),
(508, 13, '😂😂😂😂', 'image', 'images/4QOWe4pKf24aF7nTI9kA3LoDWRNsEJK2B7oHJZ7z.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-10 16:04:32', '2024-02-10 16:04:32', 1000.00),
(509, 13, NULL, 'image', 'images/bu8BbLTMhW8EnXhmwYIBe05f1EGdlHndYzzVS4kW.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-10 16:42:26', '2024-02-10 16:42:26', 1000.00),
(510, 6, NULL, 'image', 'images/AUVTMKeOtmnhwQLI3DnkohCLS6S8d9kmBwl0uOwO.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-10 18:56:32', '2024-02-10 18:56:32', 1000.00),
(512, 13, NULL, 'image', 'images/rkvW58ejsz7YJXSVRUvOq6K9vfhORiZfURLRZ01A.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-11 15:10:24', '2024-02-11 15:10:24', 1000.00),
(513, 13, '😆😆😆😆', 'image', 'images/BdRadFRTqQ2yLbD6Xwf18TdCVZnWiXx2rJ89AMQb.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-12 19:28:17', '2024-02-12 19:28:17', 1000.00),
(517, 13, NULL, 'image', 'images/wBXlqkvE8612ToAJR7TjX5aujzSWYAh7xKDlQzyu.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-18 04:32:46', '2024-02-18 04:32:46', 1000.00),
(518, 13, 'A OR B', 'image', 'images/bNLnETbQnZxMRZY27uxKcLvTxRXOUVJ8w0U5OeVk.png', 'images/YGnPKpLDjw3dn18JEEVA4s09yd0m3QlnIRkvuLGf.png', '0.75', NULL, NULL, 0, 0, NULL, '2024-02-18 05:33:07', '2024-02-18 05:33:07', 1000.00),
(526, 13, 'Mwamba mdani ya TZ🔥🔥🔥', 'image', 'images/QosKasMvxH7iiYqHT7bUH9pqcnSpmGk69IvzjIdD.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-18 14:34:04', '2024-02-18 14:34:04', 1000.00),
(531, 13, '😆😆😆', 'image', 'images/TMeIakaqdMMrMZdrnFIbp6twJK1mpbmbZ8AkAQ6c.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-20 13:55:07', '2024-02-20 13:55:07', 1000.00),
(532, 13, 'Nani anajua kuchamba😆😆', 'image', 'images/OjPs95SaDrhRg7YugQlTEUf0YC6OmVMUNWY2qmpW.png', 'images/R8XpswJHV1eqfTc2k0BirE5OM5MIr0B5TweqIi3x.png', '0.75', NULL, NULL, 0, 0, NULL, '2024-02-20 13:57:27', '2024-02-20 13:57:27', 1000.00),
(533, 13, NULL, 'image', 'images/HFB9OfXYCHgVB9HXEPjobeY3l30W1AKPSMeb31Ep.jpg', NULL, '0.75', NULL, NULL, 1, 0, NULL, '2024-02-20 14:01:27', '2024-02-20 14:01:27', 1000.00),
(534, 6, NULL, 'image', 'images/kKrtsnNGnIuSiuiShh5UFlBe141kZM6NciuO2oxI.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-20 16:01:40', '2024-02-20 16:01:40', 1000.00),
(537, 13, NULL, 'video', 'https://video.bangapp.pro/video/165d4e8e913d6e/165d4e8e913d6e.m3u8', NULL, '0.75', 'https://video.bangapp.pro/videos/65d4e8e91124a.mp4', 'https://video.bangapp.pro/thumbnail/165d4e8e913d6e/165d4e8e913d6e.png', 0, 0, NULL, '2024-02-20 18:01:13', '2024-02-20 18:01:13', 1000.00),
(538, 13, NULL, 'video', 'https://video.bangapp.pro/video/165d4ea9d93026/165d4ea9d93026.m3u8', NULL, '0.75', 'https://video.bangapp.pro/videos/65d4ea9d89e47.mp4', 'https://video.bangapp.pro/thumbnail/165d4ea9d93026/165d4ea9d93026.png', 0, 0, NULL, '2024-02-20 18:08:29', '2024-02-20 18:08:29', 1000.00),
(539, 13, 'Lowasa🔥🔥🔥🔥', 'image', 'images/eG5NPIOExeA5PZWzmbr8qXdqbuYxvL9lPpPyFGtC.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-21 16:30:54', '2024-02-21 16:30:54', 1000.00),
(563, 39, 'uop', 'image', 'images/9Sv4Cx0Gt8bZXrHZeCj5O51yQNSXw7WeejOqrtfA.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-25 14:03:16', '2024-02-25 14:03:16', 1000.00),
(564, 39, 'uop', 'image', 'images/mM3bh5XNdrJLMBzlgDMnKnz2nSPDfHHCU60NUa4a.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-25 14:03:23', '2024-02-25 14:03:23', 1000.00),
(565, 39, 'uop', 'image', 'images/p15vGmkoVdoJdTZZ4h6bY0zTmpEd065jhcYw7D45.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-25 14:03:35', '2024-02-25 14:03:35', 1000.00),
(566, 39, NULL, 'image', 'images/N6JISkoXTFL2Qn5hAhizL2n5vbkodsazVJd6n3WQ.png', 'images/wf6OBM1dnKSMQDyGhcLA0yNCKJ4jVNB7GVVeMUAB.png', '0.75', NULL, NULL, 0, 0, NULL, '2024-02-25 14:04:31', '2024-02-25 14:04:31', 1000.00),
(585, 13, '😀😀😀', 'video', 'https://video.bangapp.pro/video/165db81e588dae/165db81e588dae.m3u8', NULL, '0.75', 'https://video.bangapp.pro/videos/65db81e57b7b3.mp4', 'https://video.bangapp.pro/thumbnail/165db81e588dae/165db81e588dae.png', 0, 0, NULL, '2024-02-25 18:07:33', '2024-02-25 18:07:33', 1000.00),
(587, 13, NULL, 'video', 'https://video.bangapp.pro/video/165db83561735b/165db83561735b.m3u8', NULL, '0.75', 'https://video.bangapp.pro/videos/65db835615ab6.mp4', 'https://video.bangapp.pro/thumbnail/165db83561735b/165db83561735b.png', 0, 0, NULL, '2024-02-25 18:13:42', '2024-02-25 18:13:42', 1000.00),
(595, 13, 'A or B?', 'image', 'images/GoLGwSFWPGmYywbcBW5Y7HY1XeXkcrLCnx30rCI1.png', 'images/Mjp03ZXvsdUO72ISDVCTpNl4ooTehc7OAGFbHM9m.png', '0.75', NULL, NULL, 0, 0, NULL, '2024-02-25 19:18:10', '2024-02-25 19:18:10', 1000.00),
(596, 13, NULL, 'image', 'images/wGbxrnQz4xVuOUAmi8J1bcX1uUrGBjPtPqoClOHT.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-25 19:20:46', '2024-02-25 19:20:46', 1000.00),
(597, 13, 'Arusha 🔥', 'image', 'images/0mDSwLm6VaSNWXfhXxLuzr1EqLBq5S6QVXoKcn5T.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-25 19:46:42', '2024-02-25 19:46:42', 1000.00),
(598, 13, NULL, 'image', 'images/FciCZcfcs1YpwHacXPluFq4rm8PZpeclidHJHlVm.png', 'images/ULWZ4TWoW7IeJQmNmnuIDoZZbgt8oimT1zLhtsz4.png', '0.75', NULL, NULL, 0, 0, NULL, '2024-02-25 19:48:05', '2024-02-25 19:48:05', 1000.00),
(599, 13, 'Mwamba 🔥🔥', 'image', 'images/RUJPx2y70vWXoJCT8PEEixqnruFTVPS4kUQiBaNJ.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-26 05:30:09', '2024-02-26 05:30:09', 1000.00),
(600, 13, '😢😢😢', 'image', 'images/2Yvftj3v5NtIVOHALUSHIXEfVdE0Fio6T8MsForS.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-26 05:55:49', '2024-02-26 05:55:49', 1000.00),
(601, 13, '😀😀😀😀', 'image', 'images/h1cMb9m6lzl6i1CohrNA7LYyFRllm7kcDhjxsGKx.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-26 05:56:31', '2024-02-26 05:56:31', 1000.00),
(602, 13, 'Hii ni kweli hii wakulungwa??au yeye ndio hana akili?😳😳', 'image', 'images/HY4P8yKVD01HY5sGfYz0qPwep62No4GbWFhbZxWx.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-26 06:21:51', '2024-02-26 06:21:51', 1000.00),
(603, 13, '😢😢😢', 'image', 'images/nJiq8MmEUb8hGZK2IiBlP9w6b6zbi3MwMAbUIzHM.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-26 08:09:40', '2024-02-26 08:09:40', 1000.00),
(604, 13, NULL, 'image', 'images/FiqljttjNUP0W0qyTxE0cpS4yWbXKYWWOoXPCXDo.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-26 08:10:08', '2024-02-26 08:10:08', 1000.00),
(605, 13, NULL, 'image', 'images/se4nFILSFBhI0nhcg6SAj3AFRm9e4SklKtm92GYS.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-26 08:10:35', '2024-02-26 08:10:35', 1000.00),
(606, 13, NULL, 'image', 'images/sP3HT8XTDTULdml8uJbnX6VFgn4WqFdh0TrlBMwX.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-26 09:04:17', '2024-02-26 09:04:17', 1000.00),
(607, 13, NULL, 'image', 'images/E1RLzvar61CM5Y1UvGOOLxJUSV6HZ0VKwAhJLinU.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-26 09:43:56', '2024-02-26 09:43:56', 1000.00),
(608, 13, 'Aiseeee😩😩😩', 'image', 'images/bHI6trYOLAyEhvp76mQzqSdADhNPIKuV7MmEpUxl.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-26 09:45:27', '2024-02-26 09:45:27', 1000.00),
(609, 13, '🔥🔥🔥', 'image', 'images/EpmMCQjR5Nl3LCTtp956VFjyzrBPMlu21mkGIPFv.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-26 09:46:58', '2024-02-26 09:46:58', 1000.00),
(610, 13, '😆😆😆😆', 'image', 'images/NEe1xE02rQYOo0dYE8EbZqhnHMAtdAXBT4R78GRv.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-26 10:17:18', '2024-02-26 10:17:18', 1000.00),
(611, 13, NULL, 'image', 'images/JyJyvqU2e25bs6KIvG9go3JSCLrNTswqlSQaHJM9.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-26 10:49:50', '2024-02-26 10:49:50', 1000.00),
(612, 13, NULL, 'image', 'images/aIKeAKLoOEsgqlQZid2LUxEfoD45m5tI70ArisPI.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-26 10:51:05', '2024-02-26 10:51:05', 1000.00),
(613, 13, NULL, 'image', 'images/JaWfgS2lycIUphEv1rpnbz64DZJY57pokZm694ZM.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-26 10:52:11', '2024-02-26 10:52:11', 1000.00),
(614, 13, '😀😀', 'image', 'images/eaFPTz5xR7esOq8mje3iPvLMd44OkWVWI6Qw4KmS.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-26 11:00:52', '2024-02-26 11:00:52', 1000.00),
(615, 13, 'Daaaaaa😢😢😢', 'image', 'images/9mf0n8CkNAeMzS504XXWVQB2zViMHjigRdERZ27p.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-26 17:38:37', '2024-02-26 17:38:37', 1000.00),
(616, 13, 'Hii ni kweli au Bange zinamzingua huyu??😆😆😆', 'image', 'images/m6c7DjXVHV1Dm6qFyMVFvbca2jd2tSskOJX76qD5.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-26 17:54:13', '2024-02-26 17:54:13', 1000.00),
(618, 13, '😀😀', 'image', 'images/P10VWSaa9GHqq9zZ9BWua9e4qL0q44qrV9Cjg05m.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-26 18:52:18', '2024-02-26 18:52:18', 1000.00),
(619, 13, 'hahahaha hii imekaaje wakulungwa??', 'image', 'images/pMyvRQ1nDkl2KizZNHj192tOm814V60hRFbRYtTg.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-26 18:54:20', '2024-02-26 18:54:20', 1000.00),
(620, 13, 'Huyu jamaa ataua watu aisee😆😆😆😆', 'image', 'images/Hfb765Oxv2ckPRKoz12Ci0uiKcwhysClPFu4k4B8.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-26 19:07:31', '2024-02-26 19:07:31', 1000.00),
(621, 13, 'Daaaaa😩😩😩', 'image', 'images/XYDYh96u6awL7h5VTxAiUu3CPwAzYNQWZN9s4siE.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-26 19:12:18', '2024-02-26 19:12:18', 1000.00),
(622, 13, 'Point au Pumba tu???😀', 'image', 'images/8At2ePflCKgZbWcoSiKwrkfXrqdd0vjuEVJbBo1i.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-26 19:14:07', '2024-02-26 19:14:07', 1000.00),
(623, 13, 'Wanamuonea sana huyu mwamba wanauza viatu vyake halafu hawampi maokoto😩😩😩', 'image', 'images/hbLOOipkooSsFLKczAnoCuF5YilrGwGVFoy5Yvgz.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-26 19:41:37', '2024-02-26 19:41:37', 1000.00),
(624, 13, 'Ni kweli au anaota huyu mzee 😂', 'image', 'images/8sNC6WV9ceA2UqNgKtfBvCCG8Fe1OkOOSjr07lZO.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-26 20:08:36', '2024-02-26 20:08:36', 1000.00),
(625, 57, 'Michael nelly', 'image', 'images/N4HQMwVd0zo1KgYct7YJAAfuBV6SO428dnxQ2SL0.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-26 21:03:34', '2024-02-26 21:03:34', 1000.00),
(626, 57, NULL, 'image', 'images/SLKic8kf3pynTtD3dxzuMso9Jyj78Cd08fWWY898.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-26 21:07:16', '2024-02-26 21:07:16', 1000.00),
(627, 57, NULL, 'image', 'images/6ZFUu7zaG7QddIMwl4jQMJdiwi7KzUdMS8GQtAzo.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-26 21:23:12', '2024-02-26 21:23:12', 1000.00),
(628, 13, NULL, 'image', 'images/pBGPG1j7dHWOgdRZztPXphoIkfPGQLvU7XB9B7ef.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-27 01:20:17', '2024-02-27 01:20:17', 1000.00),
(629, 13, NULL, 'image', 'images/sd5k8OgoNaILYJNbUk47NfgtuzHoGBfebJNaRqyX.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-27 01:29:04', '2024-02-27 01:29:04', 1000.00),
(630, 13, NULL, 'image', 'images/JJez8Hy4ZQ5UEPMrfgPqhOyVxtH4hZpvmoDTxdse.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-27 01:29:57', '2024-02-27 01:29:57', 1000.00),
(631, 13, NULL, 'image', 'images/b4CKctgIKRzhNfqGIPMCU8YK32kCUkXtz9WBcYSL.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-27 01:31:44', '2024-02-27 01:31:44', 1000.00),
(632, 13, 'ukipendwa vizuri nenepa😀', 'image', 'images/4T0plQRVGVZ7qT8tRYQziJtKeBUyDI6r09oduhpe.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-27 01:36:59', '2024-02-27 01:36:59', 1000.00),
(633, 13, 'Wahehe hawakosi hapa😆', 'image', 'images/gCMLuyKQFffVEUAWo9hs2liilbR0TpERtvR6dJxJ.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-27 01:40:19', '2024-02-27 01:40:19', 1000.00),
(634, 13, 'Duuuu huyu Diddy watamuua kwa pressure aisee khaaa😩😩😩😀', 'image', 'images/m9T8yDPab2OSD4LyQKlX3CV6GnWshXqqsLccY3yq.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-27 03:57:31', '2024-02-27 03:57:31', 1000.00),
(635, 13, 'This is 50 🔥🔥🔥', 'image', 'images/NuNscpsUB1UxnfvnaRJKgS6MXlj9Gp4PUn9iGEzL.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-27 04:00:27', '2024-02-27 04:00:27', 1000.00),
(636, 13, NULL, 'image', 'images/eedlrSAKPYNfn7nCE0vC5FYUr4GtfMut5GHKDdPm.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-27 04:06:08', '2024-02-27 04:06:08', 1000.00),
(637, 13, 'kuna watu hela zinawajua aisee😀', 'image', 'images/0YqLYz0RduAD53qSnBkiFfhwP78hPXpDGTZT8H4E.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-27 04:09:15', '2024-02-27 04:09:15', 1000.00),
(638, 13, NULL, 'image', 'images/3n26XQEdmA16m5AUtEjg0bqHw7FBhzGP50oflRpg.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-27 04:14:58', '2024-02-27 04:14:58', 1000.00),
(639, 13, 'Makalio😆😆', 'image', 'images/AwAGTJwWlQhcNwUZ8B8QcYalFrG3RtCaeumSMhUJ.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-27 04:15:39', '2024-02-27 04:15:39', 1000.00),
(640, 13, NULL, 'image', 'images/yX0ipTFzfej3sQtl66CSqIo4xFWKyLoEbWkNTWFc.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-27 04:16:11', '2024-02-27 04:16:11', 1000.00),
(641, 29, 'Uweza was Mungu', 'image', 'images/GINXDExwjxlHkiOygcVhaswAHabvJsVY8zCErU2n.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-27 06:14:50', '2024-02-27 06:14:50', 1000.00),
(642, 13, '🔥🔥', 'image', 'images/BhGAn4ZywC1BUAwc3Cr8fCzWYlCp4ZyQgAv4JEsZ.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-27 08:16:35', '2024-02-27 08:16:35', 1000.00),
(644, 13, 'Wape max😆😆', 'image', 'images/EBvV1YsB4ZeFC8VU6ZB85Sz2SdEsmSzU7Rv7nGuX.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-27 08:21:24', '2024-02-27 08:21:24', 1000.00),
(645, 38, NULL, 'image', 'images/oSxkBOWV4VgNjXcqZC5G5MFiju8e9IPI45BjEMGv.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-27 08:34:49', '2024-02-27 08:34:49', 1000.00),
(647, 13, '😆😆😆😆', 'image', 'images/eYpRcwqWr9qiNPRhdO4pl2jTf2smlBLerfqiataS.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-27 08:46:46', '2024-02-27 08:46:46', 1000.00),
(653, 13, 'Kumbe lilibuma mara 2 daaa 😳😳', 'image', 'images/D6acUU52Fxgd6dKYZ0Wgl7QxEufxXwhF08znue0O.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-27 09:26:53', '2024-02-27 09:26:53', 1000.00),
(654, 13, '😀😀', 'image', 'images/2dV66qzd7XhA3U6EqSAmL4Mu4ab7iNaVFb2LbgXC.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-27 09:30:02', '2024-02-27 09:30:02', 1000.00),
(657, 13, 'Changa la macho😆😆😆', 'image', 'images/FccAlI7KbWHZJcwuNJqozd5OWG3w5Ggj3MpYtUOt.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-27 11:24:27', '2024-02-27 11:24:27', 1000.00),
(664, 13, 'Roseeee 🔥🔥🔥', 'image', 'images/kGwADW9vN49UiLbD39it3KuXK8yta8sXeCeCW0iR.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-27 14:26:13', '2024-02-27 14:26:13', 1000.00),
(665, 13, 'ELEWA NENO BODABODA😆😆😆😆', 'image', 'images/VRpD6dY0sbgoYqu8mVz9rk76yFDLHpv7rW0fRLeS.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-27 14:36:17', '2024-02-27 14:36:17', 1000.00),
(666, 13, 'Mwanzo mgumu🔥🔥🔥', 'video', 'https://video.bangapp.pro/video/165de09016391f/165de09016391f.m3u8', NULL, '0.75', 'https://video.bangapp.pro/videos/65de0901629ba.mp4', 'https://video.bangapp.pro/thumbnail/165de09016391f/165de09016391f.png', 0, 0, NULL, '2024-02-27 16:08:33', '2024-02-27 16:08:33', 1000.00),
(667, 13, 'Kazi kazi😆😆😆😆', 'video', 'https://video.bangapp.pro/video/165de09c413d37/165de09c413d37.m3u8', NULL, '0.75', 'https://video.bangapp.pro/videos/65de09c412c43.mp4', 'https://video.bangapp.pro/thumbnail/165de09c413d37/165de09c413d37.png', 0, 0, NULL, '2024-02-27 16:11:48', '2024-02-27 16:11:48', 1000.00),
(668, 13, NULL, 'video', 'https://video.bangapp.pro/video/165de0a5a05af7/165de0a5a05af7.m3u8', NULL, '0.75', 'https://video.bangapp.pro/videos/65de0a5a04c37.mp4', 'https://video.bangapp.pro/thumbnail/165de0a5a05af7/165de0a5a05af7.png', 0, 0, NULL, '2024-02-27 16:14:18', '2024-02-27 16:14:18', 1000.00),
(669, 13, '😆😆😆😆haya mambo haya bana!!!', 'image', 'images/XMo5gignJYbjTuYzGIw26ZQEgdUIxExX9pNcuQes.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-27 17:17:44', '2024-02-27 17:17:44', 1000.00),
(670, 13, 'Hiyo ni uongooo😆😆😆', 'image', 'images/dmaIAD3gguKCSiwfz9ukJpNfFbq8qI9s7X0qbxLB.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-27 17:19:32', '2024-02-27 17:19:32', 1000.00),
(671, 13, 'Mungu abariki hili🙏🏿🙏🏿🙏🏿🙏🏿', 'image', 'images/Kda7DfhwAd5klvQ0zLAzGULyWWxwOkgjkITKWO6o.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-27 17:21:23', '2024-02-27 17:21:23', 1000.00),
(672, 13, NULL, 'image', 'images/9CMAypq7Q7McxWz7hPQ3NP47zuW8f111T0r9xKh2.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-27 17:22:26', '2024-02-27 17:22:26', 1000.00),
(673, 13, 'Mmeanza mambo ya history!!😆😆', 'image', 'images/847EP2q6mea1EAg2xPo64zo8FW4Ldjuj9aovAYAn.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-27 17:55:23', '2024-02-27 17:55:23', 1000.00),
(674, 13, 'Hatuna😏😏', 'image', 'images/Jm43cb5ZYWTJCa0b5A2B1sAeBQmRaKkPeJKGfO7v.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-27 17:59:36', '2024-02-27 17:59:36', 1000.00),
(679, 13, '🔥🔥', 'video', 'https://video.bangapp.pro/video/165de3dea93167/165de3dea93167.m3u8', NULL, '0.75', 'https://video.bangapp.pro/videos/65de3dea8f607.mp4', 'https://video.bangapp.pro/thumbnail/165de3dea93167/165de3dea93167.png', 0, 0, NULL, '2024-02-27 19:54:18', '2024-02-27 19:54:18', 1000.00),
(681, 13, 'kula madini hayo😲😲', 'video', 'https://video.bangapp.pro/video/165de405447fba/165de405447fba.m3u8', NULL, '0.75', 'https://video.bangapp.pro/videos/65de405443107.mp4', 'https://video.bangapp.pro/thumbnail/165de405447fba/165de405447fba.png', 0, 0, NULL, '2024-02-27 20:04:36', '2024-02-27 20:04:36', 1000.00),
(683, 13, 'Mange kima...kamchefua Zali😆', 'image', 'images/oPa9uF2oUZSo2TQH2GbObMRYj72u6Xv20v9UrXlK.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-28 07:42:28', '2024-02-28 07:42:28', 1000.00),
(686, 13, '😆😆', 'image', 'images/YdW7cgq6ERhGhemVrhvDJO1UNslrumcRANvGNf4d.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-28 08:37:57', '2024-02-28 08:37:57', 1000.00),
(687, 13, '😆😆😆😆', 'video', 'https://video.bangapp.pro/video/165def167e8743/165def167e8743.m3u8', NULL, '0.75', 'https://video.bangapp.pro/videos/65def167e5663.mp4', 'https://video.bangapp.pro/thumbnail/165def167e8743/165def167e8743.png', 0, 0, NULL, '2024-02-28 08:40:08', '2024-02-28 08:40:08', 1000.00),
(688, 13, 'Unyama sana🔥🔥', 'image', 'images/3PxUjwM03w3IrEwNQTIaYt4znGWpe0vgFACE8kd8.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-28 10:30:47', '2024-02-28 10:30:47', 1000.00),
(689, 13, 'Kabisa🔥', 'image', 'images/NZeXo7g3mLtb3O1lpsq2Ourt5F9PRHiUXFUzhQlc.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-28 10:37:37', '2024-02-28 10:37:37', 1000.00),
(690, 13, 'Wanaigilizia😆😆😆', 'image', 'images/hCRpJQ71B11d5Zt0oHeWqYBU0YtsnSIC3T3cqzQB.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-28 10:39:14', '2024-02-28 10:39:14', 1000.00),
(691, 13, '🤠🤠', 'image', 'images/KumLHNdWLRlr2nmc849qZIlu0lUMzt7CpYvL9wKg.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-28 10:41:31', '2024-02-28 10:41:31', 1000.00),
(692, 13, NULL, 'image', 'images/FbzbmZR3SmFAxHUQux4PnxHuK6G91OBT9GfM2JgS.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-28 11:02:13', '2024-02-28 11:02:13', 1000.00),
(693, 13, 'Money talks😆😆😆', 'video', 'https://video.bangapp.pro/video/165df12e31b29d/165df12e31b29d.m3u8', NULL, '0.75', 'https://video.bangapp.pro/videos/65df12e31a352.mp4', 'https://video.bangapp.pro/thumbnail/165df12e31b29d/165df12e31b29d.png', 0, 0, NULL, '2024-02-28 11:02:59', '2024-02-28 11:02:59', 1000.00),
(694, 13, NULL, 'image', 'images/c9TLneqSQFaSSg4i2LQ02mHz08KCCqWCmqhHGdfY.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-28 11:04:04', '2024-02-28 11:04:04', 1000.00),
(695, 13, 'Well said', 'image', 'images/PS46XQbfW6RLnoidlVmoWto3n2znAbyf9Df2GDiJ.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-28 11:07:12', '2024-02-28 11:07:12', 1000.00),
(696, 13, 'Hahahahhaaa😆😆', 'video', 'https://video.bangapp.pro/video/165df2c58de142/165df2c58de142.m3u8', NULL, '0.75', 'https://video.bangapp.pro/videos/65df2c58d9046.mp4', 'https://video.bangapp.pro/thumbnail/165df2c58de142/165df2c58de142.png', 0, 0, NULL, '2024-02-28 12:51:37', '2024-02-28 12:51:37', 1000.00),
(697, 13, 'N kweli hii???', 'image', 'images/HM1zKWtPvLiF22QP8iKM82tWrEuHxzkPMD8Yfgod.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-28 13:43:09', '2024-02-28 13:43:09', 1000.00),
(698, 13, 'Ahmed Ally🤠', 'image', 'images/RetSegUwSFyO317pVobQ2T5SzXTQ6SSZtsCJd1vz.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-28 13:58:35', '2024-02-28 13:58:35', 1000.00),
(699, 13, 'Bora aisee☹️🙁🙁😕', 'image', 'images/m4VVy8blGjJJvII36q7rAmA37qq3EiESThkUUxfB.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-28 14:40:37', '2024-02-28 14:40:37', 1000.00),
(700, 13, 'Afadhari 😕😕', 'image', 'images/Oa0pNkb7aOoSjsLEooYvVhOb6MW2R7CDWqii7C3W.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-28 14:41:57', '2024-02-28 14:41:57', 1000.00),
(701, 13, NULL, 'image', 'images/4avCcfj3EGCnqqfru0kBF6NCj1a5uwEynOihB2yA.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-28 17:44:37', '2024-02-28 17:44:37', 1000.00),
(702, 13, NULL, 'video', 'https://video.bangapp.pro/video/165df71b190896/165df71b190896.m3u8', NULL, '0.75', 'https://video.bangapp.pro/videos/65df71b18dff1.mp4', 'https://video.bangapp.pro/thumbnail/165df71b190896/165df71b190896.png', 0, 0, NULL, '2024-02-28 17:47:29', '2024-02-28 17:47:29', 1000.00),
(703, 76, NULL, 'image', 'images/RwUUjL4WY5GmrNgqv6rtMnVPudemzvoAmLpEvHMi.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-28 17:58:09', '2024-02-28 17:58:09', 1000.00),
(704, 6, NULL, 'image', 'images/AE65avbBwMRoT93wIQ8w5VKDBeyRIx6pHCwunStj.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-28 18:13:26', '2024-02-28 18:13:26', 1000.00),
(705, 6, NULL, 'image', 'images/Y883Pg2SAxa9HgMnfPWYCY7NpVWNpMWl8E1oS182.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-28 18:16:50', '2024-02-28 18:16:50', 1000.00),
(706, 6, NULL, 'image', 'images/T8hZtv5d3AcWm2u58OVr3YVY1rdrBmOCCS3yqbWN.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-28 18:17:53', '2024-02-28 18:17:53', 1000.00),
(707, 6, NULL, 'image', 'images/kfK7bJKappIbKJmxmtJ5cGsGrHAFkArHYkJMwwg8.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-28 18:20:23', '2024-02-28 18:20:23', 1000.00),
(709, 6, NULL, 'image', 'images/zl9LKEtmPNWj3m7oEoK6Pz7I0FHm0TvTs27yt4dV.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-28 18:29:34', '2024-02-28 18:29:34', 1000.00),
(711, 13, 'Hii ni kweli wazee??🤠🤠🤠', 'image', 'images/1Lq9olRixJTqvtMiPETH0MvCKuvddknz5eeGC4iO.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-29 04:55:55', '2024-02-29 04:55:55', 1000.00),
(712, 13, 'Lazima wapanic😂', 'image', 'images/wO3c4gUFBH168gtDKibSjJvIeC41ldlcJjfi8aWT.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-29 05:32:46', '2024-02-29 05:32:46', 1000.00),
(713, 13, 'Well said Champ', 'image', 'images/Rv1GueR0NrGbGkUYVNcxK1pZv12frcntT799mBe7.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-29 05:35:51', '2024-02-29 05:35:51', 1000.00),
(714, 13, NULL, 'image', 'images/8elZJKnMrKWNF3zgXPniznYZb1PCMdmClJdhlVG6.jpg', NULL, '0.75', NULL, NULL, 1, 0, NULL, '2024-02-29 10:57:03', '2024-02-29 10:57:03', 1000.00),
(715, 13, '😂😂😂😂😂😂😂', 'image', 'images/qe2RcX1v6cJzFDP0djvG6fw4o0JtsibT4rE2cubb.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-29 14:24:02', '2024-02-29 14:24:02', 1000.00),
(716, 77, 'Ipo iko unyama??', 'image', 'images/8vO47f9TpSN4JL7CAr0U7tqbZrSWJmFlVFcGMPdT.png', 'images/ZAThBT2CdieUd4gFDsEkr5qwiYyaWTUOZlhZdaHn.png', '0.75', NULL, NULL, 0, 0, NULL, '2024-02-29 16:55:49', '2024-02-29 16:55:49', 1000.00),
(717, 77, NULL, 'image', 'images/HXBi8h8cip757FzLrHlg3bEHiug5wWbErncj9KU3.jpg', NULL, '0.75', NULL, NULL, 1, 0, NULL, '2024-02-29 16:57:03', '2024-02-29 16:57:03', 1000.00),
(718, 13, 'RIP mzee wetu.', 'image', 'images/VX5bwl8VImcHUQXIRhXPFqWIEfwFJ7UaOyxV1SQf.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-29 17:07:02', '2024-02-29 17:07:02', 1000.00),
(719, 13, 'Mzee kaishi wacha apumzike😢😢', 'image', 'images/ySIIdsbWfZtWxnodR1M7YRdDyzlgfijY3OyPzLC9.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-29 18:48:35', '2024-02-29 18:48:35', 1000.00),
(720, 13, 'Dunia tunapita😢😢😢', 'image', 'images/p9m1CVBKdGITDLJyt7IpdXXMPmwZcefLppLUaZQI.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-29 18:53:29', '2024-02-29 18:53:29', 1000.00),
(721, 13, 'Anaongelea wanaume wangapi hapa??😂😂😂', 'image', 'images/N32KfoD85Yh104PUcMx0qw9IHpOXTJrWPS10t9YP.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-29 19:04:20', '2024-02-29 19:04:20', 1000.00),
(722, 73, 'Wana thimbaaaa', 'image', 'images/NJAjrCzsZFAXuPDrjl3jjuLQRaqeyjDNqV9Uhu7v.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-29 19:14:16', '2024-02-29 19:14:16', 1000.00),
(723, 13, 'Ni kweli mwamba alikua anatumia madawa ya kusisimua misuli au fitna tu???😳😩😩', 'image', 'images/68rlZh6KmvRBSA06NCb1LYyUzzVo4QoCLfFNDGQA.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-29 19:43:03', '2024-02-29 19:43:03', 1000.00),
(724, 13, NULL, 'image', 'images/0stz5QteBAjtcF0SQbxqbnz7YY0x1pwaKc6K1eYz.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-02-29 19:43:37', '2024-02-29 19:43:37', 1000.00),
(725, 13, 'afadhari 😡😡😡', 'image', 'images/atlZo9W8xNYuY6VLtlaukrPFmTA1Hcv9s1sqnF88.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-01 03:03:58', '2024-03-01 03:03:58', 1000.00),
(726, 13, 'kabisa🤠🤠🤠🤠🤠', 'image', 'images/VqQnPFcRiD54P1VCB0oYnv6aIPmebxiNvbs4MJPg.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-01 03:05:11', '2024-03-01 03:05:11', 1000.00),
(727, 13, NULL, 'image', 'images/sjImXAiCMxWQz9MBdjtGqL8v2Io5Ek8L9G1EprKr.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-01 04:43:29', '2024-03-01 04:43:29', 1000.00),
(728, 13, '🤠🤠🤠', 'image', 'images/kUZt9hdBMLfmgZh8zOU7UBvdMbRl3X0jHV2rC1s7.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-01 04:44:03', '2024-03-01 04:44:03', 1000.00),
(729, 13, 'Wanga haufahi Prof Janabi.', 'image', 'images/hwkBW2eJmZpDOYpPZXpENl9lwx1di6pWpOACFqk3.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-01 04:44:57', '2024-03-01 04:44:57', 1000.00),
(730, 13, 'Hii ni kweli hii wazee😆', 'image', 'images/gVX4pIhzRSUxz2j8f616MunMF1fmzZk6ZfwY4UJw.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-01 04:47:36', '2024-03-01 04:47:36', 1000.00),
(731, 13, NULL, 'image', 'images/CMCAVucGji5WZondQ6ZBR4ZLkWl5Hmo8xWSmU2TQ.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-01 07:48:12', '2024-03-01 07:48:12', 1000.00),
(732, 13, NULL, 'image', 'images/1UiE9RbzAmLgCnAX9W9OLDUtMeZpYQycASiby3FR.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-01 07:57:57', '2024-03-01 07:57:57', 1000.00),
(733, 79, NULL, 'image', 'images/SXneYwyt5Itbm3N1ptee5JmyjxtWA1zPWvUmTgUs.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-01 11:46:09', '2024-03-01 11:46:09', 1000.00),
(734, 13, 'A or B', 'image', 'images/ZuInCU5iTCWmvjs3Yo9PMyx6dKGhWna0m2geaOEh.png', 'images/DrUjctt3yPNV00XTSTXGdCTbQALQhazwFs6b1ntm.png', '0.75', NULL, NULL, 0, 0, NULL, '2024-03-01 11:48:29', '2024-03-01 11:48:29', 1000.00),
(737, 79, 'Ni unyama ama sio unyama unaonaje hili poooz la safari. 😎😎😎😎', 'image', 'images/HZrBfIGk1Xib1hS1oKETPCg2rF7jgH6MO1JKmccv.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-01 12:03:52', '2024-03-01 12:03:52', 1000.00),
(738, 13, 'hata mimi🤠', 'image', 'images/LTQTWfv5IynMLwS3RexMeiJBZNw5FyTqbLA44tSP.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-01 16:33:45', '2024-03-01 16:33:45', 1000.00),
(739, 13, '🔥🔥', 'image', 'images/UOp0IPchduWLowmXoGgVdlKhM1GtZg7hy6i2Xl8A.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-01 16:39:37', '2024-03-01 16:39:37', 1000.00),
(740, 13, '😢😢', 'image', 'images/gs4CaSTQPKSYQ7o2YsAM8N1nDcQ7DQUA38cgI1fA.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-01 17:29:24', '2024-03-01 17:29:24', 1000.00),
(741, 13, 'Ameshataja wanaume sita hapo😆😆😆', 'image', 'images/1XXVZTTi5ID6oGc03mVvPdojuNdvFBWERBxtmffp.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-01 17:31:50', '2024-03-01 17:31:50', 1000.00),
(742, 13, '🤠🤠😩😩😩', 'image', 'images/3dyKy2sMECoDU3VZ7KoxIkre7dl1KnQKglSGKjow.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-01 17:35:08', '2024-03-01 17:35:08', 1000.00),
(743, 13, 'kuweni na adabu vijana😆😆😆', 'image', 'images/KQYTMYWN9HRZTeHoHp4Pq9A9aQCu9FtdTnftNyeU.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-01 17:35:54', '2024-03-01 17:35:54', 1000.00),
(744, 13, '😆😆😆huyu jamaa bana!!!', 'image', 'images/8amDFxIJGcxdYLxcFsDjhwXIXNR29rPEt9Eteo8B.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-01 17:40:39', '2024-03-01 17:40:39', 1000.00),
(745, 13, '😆😆😆😆', 'image', 'images/buTjCsCFYZl58lxMrYXGSMzqIMIMLFz2d2LQwhHV.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-01 17:48:50', '2024-03-01 17:48:50', 1000.00),
(746, 13, '😆😆😆😆', 'image', 'images/81FyTBhZmRtdoTgt3kAYWZ0cHddvrCYiokoCPg3b.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-01 17:50:26', '2024-03-01 17:50:26', 1000.00),
(747, 13, 'imekaaje hii wakulungwa!!?', 'image', 'images/u650cfyD9swqaIKsWQmHmYGAAIZNubg4luCJp84O.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-01 17:57:08', '2024-03-01 17:57:08', 1000.00),
(748, 13, 'Daaa haya bana 🙏🏿🙏🏿', 'image', 'images/rZfp4c2NWle2ITSE1wgYQK7bbGYiXZzpzxL4jhT2.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-01 18:10:18', '2024-03-01 18:10:18', 1000.00),
(751, 13, NULL, 'image', 'images/Mbu3me9YnQGqeJGKYw6luE5G5mXBog8GnzRbRcqZ.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-01 18:43:27', '2024-03-01 18:43:27', 1000.00),
(752, 13, NULL, 'image', 'images/pSlKA5KvU24zcevZhIxa3m0nwhRuJxk7m30RCTej.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-01 18:47:08', '2024-03-01 18:47:08', 1000.00),
(753, 13, 'Watu bana😆😆😆', 'image', 'images/6Ttj2kdpUu92SAbAappmGrI6wfVMOnSGGu9fe0CC.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-01 19:00:16', '2024-03-01 19:00:16', 1000.00),
(756, 13, NULL, 'image', 'images/luoCcqFXGlGbBf8X9redNt3AeCjZQHuFUjrCZD2t.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-02 02:03:16', '2024-03-02 02:03:16', 1000.00),
(757, 13, NULL, 'image', 'images/OCrLlMVghvV2ooeMpUGAZQtQJKIGScmTJafDDbpp.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-02 04:34:46', '2024-03-02 04:34:46', 1000.00),
(758, 41, 'tarifa kamil 🏋️', 'image', 'images/SHyAkpBNNjekEYzbaApdXQhnr017oJRgUbZb6Gm5.jpg', NULL, '0.75', NULL, NULL, 1, 0, NULL, '2024-03-02 07:17:20', '2024-03-02 07:17:20', 1000.00),
(759, 41, 'tarifa ya gym', 'image', 'images/3BURuaCpoV72DwREnpvBKTfyzOBnoxaKeix7ouTJ.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-02 07:19:17', '2024-03-02 07:19:17', 1000.00),
(760, 13, NULL, 'image', 'images/dYljQOJC3B8v29uuDVTATvaYnGRbgxz34qX3XJEn.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-02 08:25:13', '2024-03-02 08:25:13', 1000.00),
(761, 13, NULL, 'video', 'https://video.bangapp.pro/video/165e2e4d949af5/165e2e4d949af5.m3u8', NULL, '0.75', 'https://video.bangapp.pro/videos/65e2e4d947424.mp4', 'https://video.bangapp.pro/thumbnail/165e2e4d949af5/165e2e4d949af5.png', 0, 0, NULL, '2024-03-02 08:35:37', '2024-03-02 08:35:37', 1000.00),
(762, 13, 'Unyama🔥🔥', 'image', 'images/jrFhduYdvZY4dASwRaXTBoJZacdo2auhFFqdgDi3.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-02 10:27:19', '2024-03-02 10:27:19', 1000.00),
(763, 13, 'Nani katisha??', 'image', 'images/6kC9zsqGL5hIl5eu71Pr7umvGby8wvS0GMLPWfbq.png', 'images/0OaV2Kx4iF11i07VeEpxX08zJDuuwXfsvG99nq1f.png', '0.75', NULL, NULL, 0, 0, NULL, '2024-03-02 10:30:01', '2024-03-02 10:30:01', 1000.00),
(764, 13, NULL, 'image', 'images/BQGsNHjkKqxtJxxIJTPW6XolmAwKzsM9bhP88QJ1.jpg', NULL, '0.75', NULL, NULL, 1, 0, NULL, '2024-03-02 10:38:16', '2024-03-02 10:38:16', 1000.00),
(766, 13, NULL, 'video', 'https://video.bangapp.pro/video/165e305c0d709b/165e305c0d709b.m3u8', NULL, '0.75', 'https://video.bangapp.pro/videos/65e305c0d21b0.mp4', 'https://video.bangapp.pro/thumbnail/165e305c0d709b/165e305c0d709b.png', 0, 0, NULL, '2024-03-02 10:56:01', '2024-03-02 10:56:01', 1000.00),
(767, 13, NULL, 'video', 'https://video.bangapp.pro/video/165e33f49296c4/165e33f49296c4.m3u8', NULL, '0.75', 'https://video.bangapp.pro/videos/65e33f492835b.mp4', 'https://video.bangapp.pro/thumbnail/165e33f49296c4/165e33f49296c4.png', 0, 0, NULL, '2024-03-02 15:01:29', '2024-03-02 15:01:29', 1000.00),
(768, 13, NULL, 'image', 'images/c4HshWv1xRdCBPcBTAdPQRx8NeDixZwiwRWFUIzO.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-02 15:57:47', '2024-03-02 15:57:47', 1000.00),
(769, 13, NULL, 'video', 'https://video.bangapp.pro/video/165e34de3365e4/165e34de3365e4.m3u8', NULL, '0.75', 'https://video.bangapp.pro/videos/65e34de332df9.mp4', 'https://video.bangapp.pro/thumbnail/165e34de3365e4/165e34de3365e4.png', 0, 0, NULL, '2024-03-02 16:03:47', '2024-03-02 16:03:47', 1000.00),
(770, 13, NULL, 'image', 'images/6hpFOMYapXmln2GK8ost0gN6WeWIRFdtzfN5aqi8.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-02 16:06:20', '2024-03-02 16:06:20', 1000.00),
(775, 13, NULL, 'video', 'https://video.bangapp.pro/video/165e3533bdda16/165e3533bdda16.m3u8', NULL, '0.75', 'https://video.bangapp.pro/videos/65e3533bdbe31.mp4', 'https://video.bangapp.pro/thumbnail/165e3533bdda16/165e3533bdda16.png', 0, 0, NULL, '2024-03-02 16:26:36', '2024-03-02 16:26:36', 1000.00),
(776, 13, NULL, 'image', 'images/FjRCMQNQueravNkqSTdB0zN3xq99ZDTFRb0LUInH.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-02 16:28:15', '2024-03-02 16:28:15', 1000.00),
(777, 13, NULL, 'image', 'images/cBpCkFbjz0LFam7w3o6ecvftUjIB6ZyQdx8T5E5N.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-02 16:32:02', '2024-03-02 16:32:02', 1000.00),
(778, 13, NULL, 'video', 'https://video.bangapp.pro/video/165e354bfbbe3b/165e354bfbbe3b.m3u8', NULL, '0.75', 'https://video.bangapp.pro/videos/65e354bfbaaf8.mp4', 'https://video.bangapp.pro/thumbnail/165e354bfbbe3b/165e354bfbbe3b.png', 0, 0, NULL, '2024-03-02 16:33:04', '2024-03-02 16:33:04', 1000.00),
(779, 13, NULL, 'video', 'https://video.bangapp.pro/video/165e355479ce8b/165e355479ce8b.m3u8', NULL, '0.75', 'https://video.bangapp.pro/videos/65e355479a9c2.mp4', 'https://video.bangapp.pro/thumbnail/165e355479ce8b/165e355479ce8b.png', 0, 0, NULL, '2024-03-02 16:35:19', '2024-03-02 16:35:19', 1000.00),
(780, 13, '🔥🔥🔥', 'video', 'https://video.bangapp.pro/video/165e355fad5e0d/165e355fad5e0d.m3u8', NULL, '0.75', 'https://video.bangapp.pro/videos/65e355fad39dc.mp4', 'https://video.bangapp.pro/thumbnail/165e355fad5e0d/165e355fad5e0d.png', 0, 0, NULL, '2024-03-02 16:38:19', '2024-03-02 16:38:19', 1000.00),
(781, 13, '🔥🔥🔥', 'video', 'https://video.bangapp.pro/video/165e357546d4c6/165e357546d4c6.m3u8', NULL, '0.75', 'https://video.bangapp.pro/videos/65e357546ace6.mp4', 'https://video.bangapp.pro/thumbnail/165e357546d4c6/165e357546d4c6.png', 0, 0, NULL, '2024-03-02 16:44:04', '2024-03-02 16:44:04', 1000.00),
(782, 13, NULL, 'video', 'https://video.bangapp.pro/video/165e35a45c22de/165e35a45c22de.m3u8', NULL, '0.75', 'https://video.bangapp.pro/videos/65e35a45bab11.mp4', 'https://video.bangapp.pro/thumbnail/165e35a45c22de/165e35a45c22de.png', 0, 0, NULL, '2024-03-02 16:56:38', '2024-03-02 16:56:38', 1000.00),
(784, 13, 'Jeuri ya pesa🤠🔥🔥', 'image', 'images/di2qCurA8C8BSyZta37iv4usEo4x02Goz8GPvkPE.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-02 18:32:11', '2024-03-02 18:32:11', 1000.00),
(785, 13, '🔥🔥', 'video', 'https://video.bangapp.pro/video/165e3755eb3ca3/165e3755eb3ca3.m3u8', NULL, '0.75', 'https://video.bangapp.pro/videos/65e3755eb235e.mp4', 'https://video.bangapp.pro/thumbnail/165e3755eb3ca3/165e3755eb3ca3.png', 0, 0, NULL, '2024-03-02 18:52:15', '2024-03-02 18:52:15', 1000.00),
(786, 13, 'Mcheza kwao hutuzwa', 'video', 'https://video.bangapp.pro/video/165e3776f50188/165e3776f50188.m3u8', NULL, '0.75', 'https://video.bangapp.pro/videos/65e3776f4dfda.mp4', 'https://video.bangapp.pro/thumbnail/165e3776f50188/165e3776f50188.png', 0, 0, NULL, '2024-03-02 19:01:03', '2024-03-02 19:01:03', 1000.00),
(787, 13, NULL, 'video', 'https://video.bangapp.pro/video/165e37a6fca4ec/165e37a6fca4ec.m3u8', NULL, '0.75', 'https://video.bangapp.pro/videos/65e37a6fc80f6.mp4', 'https://video.bangapp.pro/thumbnail/165e37a6fca4ec/165e37a6fca4ec.png', 0, 0, NULL, '2024-03-02 19:13:52', '2024-03-02 19:13:52', 1000.00),
(788, 13, 'Hahaha', 'video', 'https://video.bangapp.pro/video/165e383c128895/165e383c128895.m3u8', NULL, '0.75', 'https://video.bangapp.pro/videos/65e383c126b15.mp4', 'https://video.bangapp.pro/thumbnail/165e383c128895/165e383c128895.png', 0, 0, NULL, '2024-03-02 19:53:37', '2024-03-02 19:53:37', 1000.00),
(789, 13, 'Rugha gongana🤠🤠🤠', 'video', 'https://video.bangapp.pro/video/165e38436b91ed/165e38436b91ed.m3u8', NULL, '0.75', 'https://video.bangapp.pro/videos/65e38436b8053.mp4', 'https://video.bangapp.pro/thumbnail/165e38436b91ed/165e38436b91ed.png', 0, 0, NULL, '2024-03-02 19:55:35', '2024-03-02 19:55:35', 1000.00),
(790, 13, 'Simba yenyewe imeona umeanza kuongea ujinga😆😆😆', 'video', 'https://video.bangapp.pro/video/165e38dc61ab81/165e38dc61ab81.m3u8', NULL, '0.75', 'https://video.bangapp.pro/videos/65e38dc619c04.mp4', 'https://video.bangapp.pro/thumbnail/165e38dc61ab81/165e38dc61ab81.png', 0, 0, NULL, '2024-03-02 20:36:22', '2024-03-02 20:36:22', 1000.00),
(791, 13, 'Daaaa RIP😩😩😩', 'image', 'images/Z3IqJQ8fJVHUNVNoJ2ORPAmdA0MMMBPoJRetV5QA.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-02 23:56:53', '2024-03-02 23:56:53', 1000.00),
(792, 29, 'See you soon', 'image', 'images/usQ3SJvDgEx6IRCwJR4DksEdH8xiyja5jEjfQvqL.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-03 05:50:09', '2024-03-03 05:50:09', 1000.00),
(793, 29, 'see you soon', 'video', 'https://video.bangapp.pro/video/165e412ef513e2/165e412ef513e2.m3u8', NULL, '0.75', 'https://video.bangapp.pro/videos/65e412ef35cf6.mp4', 'https://video.bangapp.pro/thumbnail/165e412ef513e2/165e412ef513e2.png', 0, 0, NULL, '2024-03-03 06:04:31', '2024-03-03 06:04:31', 1000.00),
(794, 13, '🤠🤠🤠🤠🤠', 'video', 'https://video.bangapp.pro/video/165e41795c7d72/165e41795c7d72.m3u8', NULL, '0.75', 'https://video.bangapp.pro/videos/65e41795c48a1.mp4', 'https://video.bangapp.pro/thumbnail/165e41795c7d72/165e41795c7d72.png', 0, 0, NULL, '2024-03-03 06:24:22', '2024-03-03 06:24:22', 1000.00),
(795, 13, NULL, 'video', 'https://video.bangapp.pro/video/165e419952f17b/165e419952f17b.m3u8', NULL, '0.75', 'https://video.bangapp.pro/videos/65e419952c6e1.mp4', 'https://video.bangapp.pro/thumbnail/165e419952f17b/165e419952f17b.png', 0, 0, NULL, '2024-03-03 06:32:53', '2024-03-03 06:32:53', 1000.00),
(797, 13, '🤠🤠', 'image', 'images/Hg6tHicNR0yeosh5Id5bR13PiViDbB3KqcsFr4JB.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-03 07:21:20', '2024-03-03 07:21:20', 1000.00),
(798, 13, 'True🔥🔥🔥', 'video', 'https://video.bangapp.pro/video/165e4267fc4acb/165e4267fc4acb.m3u8', NULL, '0.75', 'https://video.bangapp.pro/videos/65e4267fbb84e.mp4', 'https://video.bangapp.pro/thumbnail/165e4267fc4acb/165e4267fc4acb.png', 0, 0, NULL, '2024-03-03 07:28:00', '2024-03-03 07:28:00', 1000.00),
(799, 13, '🤠🤠🤠', 'image', 'images/NdaIdKvJ5uR4P6Jli0TGbymKAiMuMdKA51IanaGh.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-03 09:38:58', '2024-03-03 09:38:58', 1000.00),
(800, 13, '😆😆😆', 'image', 'images/B39AJpKzZCE8RZwBdFCSB2aZwLRB6yU50lrJ5f3R.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-03 09:39:34', '2024-03-03 09:39:34', 1000.00),
(801, 41, 'trainer kichaaa njoo VIP gym uje kuwek mwil wak swa', 'image', 'images/1ebfmCplq2BBSwMR1ztst3F2NjXVMjl5eNafwbQK.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-03 10:08:44', '2024-03-03 10:08:44', 1000.00),
(802, 13, NULL, 'image', 'images/daZZEAIMBGFQ6CyDA6GWUFAGD1JruZbHezpp9qTU.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-03 10:17:17', '2024-03-03 10:17:17', 1000.00),
(803, 13, NULL, 'video', 'https://video.bangapp.pro/video/165e458feb1a8a/165e458feb1a8a.m3u8', NULL, '0.75', 'https://video.bangapp.pro/videos/65e458feb01df.mp4', 'https://video.bangapp.pro/thumbnail/165e458feb1a8a/165e458feb1a8a.png', 0, 0, NULL, '2024-03-03 11:03:27', '2024-03-03 11:03:27', 1000.00),
(804, 13, 'Hizi ngumi!!!!Mlela na Mkali wenu😆😆😆😆😆', 'video', 'https://video.bangapp.pro/video/165e45bc7c884b/165e45bc7c884b.m3u8', NULL, '0.75', 'https://video.bangapp.pro/videos/65e45bc7c36ee.mp4', 'https://video.bangapp.pro/thumbnail/165e45bc7c884b/165e45bc7c884b.png', 0, 0, NULL, '2024-03-03 11:15:20', '2024-03-03 11:15:20', 1000.00),
(805, 13, NULL, 'video', 'https://video.bangapp.pro/video/165e461340cb57/165e461340cb57.m3u8', NULL, '0.75', 'https://video.bangapp.pro/videos/65e461340a1ec.mp4', 'https://video.bangapp.pro/thumbnail/165e461340cb57/165e461340cb57.png', 0, 0, NULL, '2024-03-03 11:38:28', '2024-03-03 11:38:28', 1000.00),
(806, 13, 'Zinedine Zidane yuko sahihi au kazingua??', 'image', 'images/1VolT94kCT4XZbxGzgbbJsLjG7wnoMVlyeJZZSdx.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-03 11:45:25', '2024-03-03 11:45:25', 1000.00),
(807, 13, 'Idiot ndicho alichokua anakiwaza😩😩', 'image', 'images/KrPju0mUX8J8wpUdq23WlPuKfwGwDnpyRFNAqGZw.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-03 11:48:40', '2024-03-03 11:48:40', 1000.00),
(808, 13, '😂😂😂😂', 'video', 'https://video.bangapp.pro/video/165e464a5168bd/165e464a5168bd.m3u8', NULL, '0.75', 'https://video.bangapp.pro/videos/65e464a5140dc.mp4', 'https://video.bangapp.pro/thumbnail/165e464a5168bd/165e464a5168bd.png', 0, 0, NULL, '2024-03-03 11:53:09', '2024-03-03 11:53:09', 1000.00),
(809, 13, 'Hii ni kweli au aio kweli wakulungwa??', 'image', 'images/g5cBVsVfYXJ2cHU3adM86oKgVplQemKLRzYcmSND.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-03 12:00:52', '2024-03-03 12:00:52', 1000.00),
(810, 13, 'Ile maana halisi ya KUBWA JINGA unaeza ipata kwa huyu mzee hapa😂😂', 'image', 'images/kLr0wE5HGmKgYvNOFvwEJ7daiHSQ8J3rnHCvFeyA.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-03 12:04:15', '2024-03-03 12:04:15', 1000.00),
(811, 13, 'Hahahaha ufala kabisa😂😂', 'image', 'images/rZnJ1wk1AjSOwlXcI8EoXjRFVB8WKJzzJ9HS4IFS.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-03 12:25:47', '2024-03-03 12:25:47', 1000.00),
(812, 13, 'Wapi Fayma😂😂😂', 'video', 'https://video.bangapp.pro/video/165e46e06912a1/165e46e06912a1.m3u8', NULL, '0.75', 'https://video.bangapp.pro/videos/65e46e068f07c.mp4', 'https://video.bangapp.pro/thumbnail/165e46e06912a1/165e46e06912a1.png', 0, 0, NULL, '2024-03-03 12:33:10', '2024-03-03 12:33:10', 1000.00),
(813, 13, 'Aiseee😳😳😳😆', 'image', 'images/v7LEWY1hfdw1D6levAdcOA3YdWct6IA7S5ek24ss.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-03 12:48:46', '2024-03-03 12:48:46', 1000.00),
(814, 13, 'Prof Janab tuambie😆😆', 'image', 'images/Dtlah0KiWFZYpdmhQvlvAOv5Sb0MEutnYjMmXRVm.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-03 12:50:29', '2024-03-03 12:50:29', 1000.00),
(815, 13, 'Hamna kitu😜', 'image', 'images/3NshRgzVqAwCTWvsBYR7rSLGS2vDaIR53sjmiTDH.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-03 12:53:16', '2024-03-03 12:53:16', 1000.00),
(817, 13, 'Tafuta hela Rihana ana perfom kwenye Harusi😂😂🤠', 'video', 'https://video.bangapp.pro/video/165e4747db7a49/165e4747db7a49.m3u8', NULL, '0.75', 'https://video.bangapp.pro/videos/65e4747db30ff.mp4', 'https://video.bangapp.pro/thumbnail/165e4747db7a49/165e4747db7a49.png', 0, 0, NULL, '2024-03-03 13:00:46', '2024-03-03 13:00:46', 1000.00),
(818, 79, 'Unaweza kusema ni uchawi kumbe watu na vipaji vyao... hatariiiii sanaaaaa😎😎😎😎', 'video', 'https://video.bangapp.pro/video/165e48c74ca89a/165e48c74ca89a.m3u8', NULL, '0.75', 'https://video.bangapp.pro/videos/65e48c74c8194.mp4', 'https://video.bangapp.pro/thumbnail/165e48c74ca89a/165e48c74ca89a.png', 0, 0, NULL, '2024-03-03 14:43:01', '2024-03-03 14:43:01', 1000.00),
(819, 79, 'Duuuuuuh hii hatariiiii check kipaji cha James 😄😄😄😄😄', 'video', 'https://video.bangapp.pro/video/165e48d5754f86/165e48d5754f86.m3u8', NULL, '0.75', 'https://video.bangapp.pro/videos/65e48d5752a1f.mp4', 'https://video.bangapp.pro/thumbnail/165e48d5754f86/165e48d5754f86.png', 0, 0, NULL, '2024-03-03 14:46:47', '2024-03-03 14:46:47', 1000.00),
(820, 79, 'Huyu dogo miyeyusho kweli..... 🤣🤣🤣🤣🤣🤣🤣', 'video', 'https://video.bangapp.pro/video/165e48e0c9a723/165e48e0c9a723.m3u8', NULL, '0.75', 'https://video.bangapp.pro/videos/65e48e0c8d86f.mp4', 'https://video.bangapp.pro/thumbnail/165e48e0c9a723/165e48e0c9a723.png', 0, 0, NULL, '2024-03-03 14:49:48', '2024-03-03 14:49:48', 1000.00);
INSERT INTO `posts` (`id`, `user_id`, `body`, `type`, `image`, `challenge_img`, `aspect_ratio`, `cache_url`, `thumbnail_url`, `pinned`, `is_seen`, `public_id`, `created_at`, `updated_at`, `price`) VALUES
(821, 79, 'Rick rozzey..... hata wafurukute vipi wasaniii wa bongo hawawezi fikia maisha ya wenzetu black American🇺🇸 🧐🧐🧐🧐🧐', 'video', 'https://video.bangapp.pro/video/165e48f9386d15/165e48f9386d15.m3u8', NULL, '0.75', 'https://video.bangapp.pro/videos/65e48f937decf.mp4', 'https://video.bangapp.pro/thumbnail/165e48f9386d15/165e48f9386d15.png', 0, 0, NULL, '2024-03-03 14:56:19', '2024-03-03 14:56:19', 1000.00),
(822, 13, '😆😆😆', 'image', 'images/tIn1frvgGjZRjFjemd1Kgj6AsStBfqF8dy0MeUys.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-03 14:57:19', '2024-03-03 14:57:19', 1000.00),
(823, 13, NULL, 'image', 'images/5Hbg2nA0oUnJnpfubg8tOgtQYJ8YSQ1YhHCWQl3p.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-03 14:58:20', '2024-03-03 14:58:20', 1000.00),
(824, 13, NULL, 'image', 'images/NKRu3BogPZWLSBghg1SOss77lLgf2N2lS3yilZbz.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-03 17:40:09', '2024-03-03 17:40:09', 1000.00),
(825, 13, '😂😂', 'image', 'images/aSSYOZBWdQnFuiyJs4PcAhc5XtcPEya3yIM5jfbx.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-03 17:41:22', '2024-03-03 17:41:22', 1000.00),
(826, 13, NULL, 'image', 'images/wjabxO6vyvavKe38GdYhyT9JLzAC9fI604M873uy.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-03 18:20:11', '2024-03-03 18:20:11', 1000.00),
(827, 13, 'Aiseee🔥🔥🔥', 'image', 'images/TnEoeVjsH3KA4fNEw6ljM4hJkODJnoim0RPCao1o.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-03 18:27:50', '2024-03-03 18:27:50', 1000.00),
(828, 13, '😂', 'image', 'images/b0DNUa6ZvQKRJoixPTTpBdCOyDldYgYFvG2Pi3yO.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-03 18:36:17', '2024-03-03 18:36:17', 1000.00),
(830, 13, NULL, 'image', 'images/qPd1UtsxmFuaa2GrrlooPnjHwKskbgmZ7M2dmPKV.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-03 22:20:32', '2024-03-03 22:20:32', 1000.00),
(831, 13, 'Rihana akipeform kwenye harusi', 'video', 'https://video.bangapp.pro/video/165e58631bb863/165e58631bb863.m3u8', NULL, '0.75', 'https://video.bangapp.pro/videos/65e58631b7a5a.mp4', 'https://video.bangapp.pro/thumbnail/165e58631bb863/165e58631bb863.png', 0, 0, NULL, '2024-03-04 08:28:34', '2024-03-04 08:28:34', 1000.00),
(832, 79, 'Unaipa max ngapi hii picha..... 😎😎😎😎😎', 'image', 'images/OAFgD52AEXup0DZXMFdvrdBTFtzc6h3Vqh7XwDdz.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-04 09:34:38', '2024-03-04 09:34:38', 1000.00),
(833, 79, 'kama unamkubali huyu mnyamwezi toa commet yako hapo.... 😎😎😎😎😎', 'image', 'images/JDO57Oiy5UlUneEjDspBrUOZuaJIGQrlDGqtGZpO.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-04 09:47:09', '2024-03-04 09:47:09', 1000.00),
(836, 13, '🔥🔥🔥', 'image', 'images/jIEy7vjpDg12ehqXUGTEss8TvgZqgZmQCxE3wskf.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-05 06:49:16', '2024-03-05 06:49:16', 1000.00),
(838, 13, NULL, 'image', 'images/v7BKo6tw52bY2oI9aIZ0mykLIhFx5Nm2aTywsAfV.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-05 13:27:38', '2024-03-05 13:27:38', 1000.00),
(839, 13, NULL, 'image', 'images/tMMWaCmt4GgbxIPzJBS5EzarRN33cpsNEcOQYVMo.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-05 18:23:33', '2024-03-05 18:23:33', 1000.00),
(840, 13, '😆😆😆😆', 'image', 'images/C3CM1ZoaOB9xCmthY8YA1Izj8umZb5j4x7GtmAk0.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-05 19:16:47', '2024-03-05 19:16:47', 1000.00),
(841, 13, 'Hahahhaaaaaa', 'image', 'images/J7ZY39jli137waz5GDSyTpOipve7tUGM63Bqu7PV.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-05 19:17:41', '2024-03-05 19:17:41', 1000.00),
(842, 13, 'Aisee', 'image', 'images/U0mntenOhAqjRbzH9yCxw6FwTySIxxruOi4J8EMq.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-06 06:12:17', '2024-03-06 06:12:17', 1000.00),
(843, 13, '🔥🔥🔥', 'image', 'images/ZZQ98aNpatb15bQdcVjbHBuKiZyWBcK5AzydjDDV.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-06 09:30:55', '2024-03-06 09:30:55', 1000.00),
(844, 13, 'Hii ndio kitu hata mimi huwa nashangaa😂😂😂', 'image', 'images/TgwdtAJCRnPv4uRGQerOQVeLQvIpGtNrCzUB9Fix.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-06 16:13:41', '2024-03-06 16:13:41', 1000.00),
(845, 13, 'Kabisa😆', 'image', 'images/Kf0GJazf5OJDEXVAcZCYqEHima3LIidEHyQAfWAG.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-06 16:15:56', '2024-03-06 16:15:56', 1000.00),
(846, 13, 'Mpe banzi la ukweli😆', 'image', 'images/1cHN4M27CbqlbSLGIZNMcORDn0abZv7kXFSxXteP.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-06 16:16:33', '2024-03-06 16:16:33', 1000.00),
(847, 13, NULL, 'image', 'images/6Jm47rJffsEI9VT6OfzixETJOfKIvzjJECO161eu.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-06 17:17:39', '2024-03-06 17:17:39', 1000.00),
(848, 13, 'A OR B', 'image', 'images/fSZd0clXAbU7q8BlkOmkxXOoWxlmHzO6yfPFhBTX.png', 'images/t0lmGTXv2OmoN6hkfaCdQQhcfuCEBanyEc4uqvlT.png', '0.75', NULL, NULL, 0, 0, NULL, '2024-03-06 19:03:29', '2024-03-06 19:03:29', 1000.00),
(849, 13, 'Rihana 🔥🔥🔥', 'video', 'https://video.bangapp.pro/video/165e8c95d3270e/165e8c95d3270e.m3u8', NULL, '0.75', 'https://video.bangapp.pro/videos/65e8c95d2daa5.mp4', 'https://video.bangapp.pro/thumbnail/165e8c95d3270e/165e8c95d3270e.png', 0, 0, NULL, '2024-03-06 19:51:57', '2024-03-06 19:51:57', 1000.00),
(850, 13, NULL, 'image', 'images/Z5OIzxlPu8AsMgMMwlEultfkx3DH7CFQu8jFtg3Y.jpg', NULL, '0.75', NULL, NULL, 1, 0, NULL, '2024-03-07 00:19:44', '2024-03-07 00:19:44', 1000.00),
(851, 13, '😆😆😆', 'image', 'images/ssCskEAu6fF6j2g4vl7SaoWkaxaJCLxnVznBdxiu.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-07 00:24:28', '2024-03-07 00:24:28', 1000.00),
(852, 13, NULL, 'image', 'images/xbAci3R9ks2s38l1FKDsCOmqdB3xlogWDdwL1Jkc.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-07 01:24:52', '2024-03-07 01:24:52', 1000.00),
(853, 79, '😇😇😇picha kali ama kawaida', 'image', 'images/OY87EAtNADo6OjXrFCx6rlaemLRk0DrCpdtbfV0y.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-07 15:04:51', '2024-03-07 15:04:51', 1000.00),
(854, 79, 'Unaliaonaje chama la team ya Real Madrid......?????', 'image', 'images/O5SvU84u01C3oLZHXXkHqzXqKK2U59FW4oVfgHL7.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-07 15:05:56', '2024-03-07 15:05:56', 1000.00),
(855, 79, 'Mnyamwezi nimepoa.... 😎😎😎', 'image', 'images/mUeSTkeMjqLTjTozUjJtqYHaYsAgqYlsZeRFgdru.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-07 15:07:18', '2024-03-07 15:07:18', 1000.00),
(856, 13, 'ROBERTINHO \n\nKocha wa zamani wa Club ya Simba Robertihno Olveira, Akizungumza kutoka Brazili, Robertinho alieleza kama alitimuliwa kutokana na matokeo ya mechi yake ya mwisho dhidi ya Yanga basi ubora wa Pacome ulichangia kwa asilimia kubwa kuondoka katika klabu hiyo.\n\nAlisema Pacome ni kiungo ambaye anacheza soka la kisasa sana akiwa na kasi, ya kwenda lango la wapinzani pia anacheza kwa ajili ya timu sio kutafuta ustaa.\n\n“Sitaki kuingia kwenye siasa za nani bora kati ya Chama na Pacome, kwani nawaheshimu wote ni wachezaji wenye akili kubwa, lakini Pacome bado atabaki katika kumbukumbu isiyofutika kwangu kwa namna alivyotupa shida kwenye mechi ya mwisho,” alisema Robertinho na kuongeza;\n\n“Naona moto ule ameendelea na kama ataendelea hivi ataendelea kusumbua kwenye ligi ya Tanzania na Afrika, napenda sana uchezaji wa Pacome kwa kuwa ni kiungo. Uwepo wa Pacome Yanga umemrahisishia kazi Aziz KI kwa kuwa timu nyingi zitamwangalia zaidi yeye na wakati Yanga ina wachezaji wengine hatari kama Aziz.”\n\nMastaa hao wa Yanga wanaofahamika kwa ubora wao,wote wakitokea timu moja ya ASEC Mimosas ya Ivory Coast, licha ya kuzungumziwa na kocha huyo lakini wamekuwa na wakishikilia rekodi ya mabao.\n\nFeisal ndiye anayeongoza ligi kuu kwa ufungaji akiwa na mabao 12 akifuatiwa na Aziz KI akiwa na mabao 10.Kutokana na ubora wa viungo wa Yanga  kuna uwezekano mkubwa wa viungo hawa kufunga zaidi mpaka mwisho wa msimu. Yanga itakuwa ugenini Ijumaa, Tarehe 8 Machi kusaka alama tatu dhidi ya Namungo, ikiwa ni mechi ya 17 ya ligi wakiwa na jumla ya pointi 43 katika michezo 16 waliyokwisha kucheza.', 'image', 'images/Zbc7gvWpgWROO7RsKW1iKKOdijFmI6wS7vvnSQCs.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-07 21:23:57', '2024-03-07 21:23:57', 1000.00),
(857, 13, '😆😆😆😆', 'image', 'images/oePHjpgwaDJXaKb8iQy06AAL2eJSbAGp97ghm0As.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-08 05:23:12', '2024-03-08 05:23:12', 1000.00),
(858, 6, NULL, 'image', 'images/mrSRBMLqfd8W8nDAHFkwddGTDNG6ygMLUnWfRe3d.jpg', NULL, '0.75', NULL, NULL, 1, 0, NULL, '2024-03-08 12:01:26', '2024-03-08 12:01:26', 1000.00),
(860, 6, NULL, 'image', 'images/TPs4HTGr6rA0OPiZMpVVQdlFjMZc4cwwG6joCLfJ.jpg', NULL, '0.75', NULL, NULL, 1, 0, NULL, '2024-03-08 16:25:43', '2024-03-08 16:25:43', 1000.00),
(861, 13, NULL, 'video', 'https://video.bangapp.pro/video/165ec45051802c/165ec45051802c.m3u8', NULL, '0.75', 'https://video.bangapp.pro/videos/65ec450509d18.mp4', 'https://video.bangapp.pro/thumbnail/165ec45051802c/165ec45051802c.png', 0, 0, NULL, '2024-03-09 11:16:21', '2024-03-09 11:16:21', 1000.00),
(862, 79, 'Angalia Antony Joshua akikiangusha kipande cha mtu... 🥸🥸🥸🥸🥸', 'video', 'https://video.bangapp.pro/video/165ec5ad56e0d4/165ec5ad56e0d4.m3u8', NULL, '0.75', 'https://video.bangapp.pro/videos/65ec5ad561e4d.mp4', 'https://video.bangapp.pro/thumbnail/165ec5ad56e0d4/165ec5ad56e0d4.png', 0, 0, NULL, '2024-03-09 12:49:25', '2024-03-09 12:49:25', 1000.00),
(865, 13, NULL, 'video', 'https://video.bangapp.pro/video/165ec7c0c8351e/165ec7c0c8351e.m3u8', NULL, '0.75', 'https://video.bangapp.pro/videos/65ec7c0c806af.mp4', 'https://video.bangapp.pro/thumbnail/165ec7c0c8351e/165ec7c0c8351e.png', 0, 0, NULL, '2024-03-09 15:11:08', '2024-03-09 15:11:08', 1000.00),
(867, 13, 'hahahaaaa', 'image', 'images/Ury54uG6yPO7V29hvKSdUqixvDC6aFZJL28HM785.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-10 13:39:13', '2024-03-10 13:39:13', 1000.00),
(868, 13, NULL, 'image', 'images/dBm7ZQbeUoYnqXXqCHK0lYWOYxH62Blz2UiiiCgq.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-10 13:39:48', '2024-03-10 13:39:48', 1000.00),
(869, 13, NULL, 'image', 'images/tI8ysFbeNVvUYO30eugWqo3bS2B2EwojGIB08rKn.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-11 01:34:33', '2024-03-11 01:34:33', 1000.00),
(870, 13, 'Hahahahah kwamba mashabiki wa simba hawana akili???😂', 'image', 'images/qkqtGMyGPpc06so5MRzQ1vjZoiOzsd6ZWSbpvRgs.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-11 01:36:53', '2024-03-11 01:36:53', 1000.00),
(871, 13, NULL, 'image', 'images/sn1RSlsziHXnpOQ7Li7AvVwvtF0tyKvkhuRzqKsv.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-11 01:37:58', '2024-03-11 01:37:58', 1000.00),
(873, 13, 'Mike anatafuta tu kushusha heshima yake umri umeenda atakuja kufia ulingoni😩', 'image', 'images/GMUB5VaKUhIaChriVM0lRxn90BGJBmDHx9i5ZYR1.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-11 01:50:04', '2024-03-11 01:50:04', 1000.00),
(874, 13, NULL, 'image', 'images/CVkRYybz04xJ63cPHIuDtuA8FGWQiyf3fajmGb4D.jpg', NULL, '0.75', NULL, NULL, 1, 0, NULL, '2024-03-11 07:33:11', '2024-03-11 07:33:11', 1000.00),
(876, 13, NULL, 'image', 'images/aZKqIycXF19pcVIc5u38k2krlzW8rikztI7h2olY.jpg', NULL, '0.75', NULL, NULL, 1, 0, NULL, '2024-03-11 11:05:35', '2024-03-11 11:05:35', 2000.00),
(877, 79, 'Ukiniambia hii picha ni wapi nakutumia elfu 50 sasa ivi kupitia namba yako..... 😁😁😁😁', 'image', 'images/GQUZxcXCxgvjnpDBIC0xuNTgcJHydRykET09matG.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-13 17:46:25', '2024-03-13 17:46:25', NULL),
(878, 79, NULL, 'image', 'images/sw8cJQdlcaY2bIIHCwgAuLcLwmoKLZMGOTc4GBsp.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-13 17:51:38', '2024-03-13 17:51:38', NULL),
(879, 79, 'Temboni bus stop.... 😎', 'image', 'images/TkoQl9p9LmY3atRa6b7pc1cjNJCJgiYASyfQTHlk.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-14 13:34:32', '2024-03-14 13:34:32', NULL),
(880, 79, 'Wametokelezea ama hawajatokelezea... mwaga makopa kama wapo vizuri😎😎😎😎😎', 'image', 'images/LDT8dwyvN9Bo7cjg9O2qkJ2udK1SpDi5S9EFaLOl.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-14 14:01:34', '2024-03-14 14:01:34', NULL),
(881, 41, 'VIP gym', 'image', 'images/qkAPRyxmvp7Z1w0UwHaXKb7ZzP3rTrCZryoAmVr0.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-15 09:21:44', '2024-03-15 09:21:44', NULL),
(882, 79, 'moja ya harakati za mtu mweusi', 'video', 'https://video.bangapp.pro/video/165f6a2a587a9c/165f6a2a587a9c.m3u8', NULL, '0.75', 'https://video.bangapp.pro/videos/65f6a2a578ad3.mp4', 'https://video.bangapp.pro/thumbnail/165f6a2a587a9c/165f6a2a587a9c.png', 0, 0, NULL, '2024-03-17 07:58:29', '2024-03-17 07:58:29', NULL),
(883, 13, 'Hatari', 'image', 'images/fLziM7ZlkKGVrXWcMG1lejw2sxRt4rKCInqgEOt2.jpg', NULL, '0.75', NULL, NULL, 1, 0, NULL, '2024-03-17 20:09:36', '2024-03-17 20:09:36', NULL),
(885, 13, 'A or B', 'image', 'images/obYBGV5rmyqftNyy46fygVp6KkHHnIgfJ5nuXsfd.png', 'images/t8KYQyFeSLKRyUzhnygSFjHNEb7Dy9VcIWJ0vy1F.png', '0.75', NULL, NULL, 0, 0, NULL, '2024-03-19 09:50:27', '2024-03-19 09:50:27', NULL),
(886, 13, NULL, 'image', 'images/DWJbawD25k8R9oSXK85MwXmCiw9e4nLIBmNjdI4V.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-19 14:33:02', '2024-03-19 14:33:02', NULL),
(887, 13, NULL, 'image', 'images/HTc2YbuKr8jOF2TgzAsDLrJfzbAs7d8M4ZzzQ7f1.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-19 14:37:08', '2024-03-19 14:37:08', NULL),
(888, 13, 'A or B', 'image', 'images/y37TRRgTumD2MWTauJeG7FRxrDWxU8mhhZK233E6.png', 'images/FWGzggcxbQpXzOQAiCxhg8baIAhurtuKqrG1K9Yl.png', '0.75', NULL, NULL, 0, 0, NULL, '2024-03-19 14:51:07', '2024-03-19 14:51:07', NULL),
(890, 13, NULL, 'image', 'images/YOLz4W1xBU4jWuDMM0eNU5fvcAnC9JCltyRuRji2.jpg', NULL, '0.75', NULL, NULL, 1, 0, NULL, '2024-03-19 15:22:30', '2024-03-19 15:22:30', 5000.00),
(891, 13, 'bonge la umbea utapenda', 'image', 'images/FY1pixro5y1hcGEDXDFdg1FEylco5wCBMLOrmunr.jpg', NULL, '0.75', NULL, NULL, 1, 0, NULL, '2024-03-19 15:30:10', '2024-03-19 15:30:10', 0.00),
(892, 13, 'Bonge la umbea Wema na Whozu utapenda niamini', 'image', 'images/Ygb9E5IDrRRgVXcpF8jYUn2pDJWlobWSsfJcAlBA.jpg', NULL, '0.75', NULL, NULL, 1, 0, NULL, '2024-03-19 15:31:54', '2024-03-19 15:31:54', 1000.00),
(894, 13, 'A or B', 'image', 'images/TxvPfMyycrFCJ2XPIR6pBU4gKDTMAY8lCZsdvUHw.png', 'images/eDsuDd0yJlvSNvZQQG5IwH1MoZo7KMZsdmXzXY6y.png', '0.75', NULL, NULL, 0, 0, NULL, '2024-03-19 15:52:48', '2024-03-19 15:52:48', NULL),
(895, 13, 'A or B', 'image', 'images/Gir0dcNQJJPQ0QSipO4L4PbNsrDxNiHxY1UJhccK.png', 'images/OscU3YvERuMuzKFhLbywj9XxzYBDqRS1aIjbeYrj.png', '0.75', NULL, NULL, 0, 0, NULL, '2024-03-19 15:59:14', '2024-03-19 15:59:14', NULL),
(896, 13, NULL, 'video', 'https://video.bangapp.pro/video/165f9c391bed94/165f9c391bed94.m3u8', NULL, '0.75', 'https://video.bangapp.pro/videos/65f9c391b7296.mp4', 'https://video.bangapp.pro/thumbnail/165f9c391bed94/165f9c391bed94.png', 0, 0, NULL, '2024-03-19 16:55:46', '2024-03-19 16:55:46', NULL),
(897, 13, NULL, 'video', 'https://video.bangapp.pro/video/165f9c7c507703/165f9c7c507703.m3u8', NULL, '0.75', 'https://video.bangapp.pro/videos/65f9c7c504874.mp4', 'https://video.bangapp.pro/thumbnail/165f9c7c507703/165f9c7c507703.png', 0, 0, NULL, '2024-03-19 17:13:41', '2024-03-19 17:13:41', NULL),
(898, 13, 'ila Mange hahahahaa', 'image', 'images/kdD5m8gOzm8wzDkiC1puUvYG4EmzUfYTkNTX3MCl.jpg', NULL, '0.75', NULL, NULL, 1, 0, NULL, '2024-03-20 07:09:30', '2024-03-20 07:09:30', 1000.00),
(899, 13, 'Angalia hii utafurahi', 'image', 'images/C6YqdusbJFJ389aQpijL8B03veaEfk2fxfsmpRSM.jpg', NULL, '0.75', NULL, NULL, 1, 0, NULL, '2024-03-20 07:48:52', '2024-03-20 07:48:52', 1000.00),
(900, 13, 'Hii ni noma iangalie usipofurahi nakurudishia hela yako😂😂', 'image', 'images/FPJxOhSMs6HRruphTxgMvY1gSZlJjBUHcLwjqEmL.jpg', NULL, '0.75', NULL, NULL, 1, 0, NULL, '2024-03-20 07:52:05', '2024-03-20 07:52:05', 1000.00),
(901, 13, 'Umbea huu huwezi kuupata sehemu yeyote niamini mimi😂', 'image', 'images/lK5CRTVFRQDPskQDNKp3FcJgkiT1nvPpZcq6ZbZZ.jpg', NULL, '0.75', NULL, NULL, 1, 0, NULL, '2024-03-20 08:00:40', '2024-03-20 08:00:40', 1000.00),
(903, 6, 'this is captiongvhh martin', 'image', 'images/7iSQcqVrleSR0Qv6iTarWKuFgzSYqn3tYWgZxQ1m.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-20 09:19:35', '2024-04-04 10:11:18', NULL),
(905, 13, 'A or B', 'image', 'images/DkF2uyC01Lu7vUKAlRH9crkWPCaphJjhwLV11vtz.png', 'images/ori9AbAIJtrVjbNnPrDLnOTWPQqEow97yReSikOM.png', '0.75', NULL, NULL, 0, 0, NULL, '2024-03-20 13:52:01', '2024-03-20 13:52:01', NULL),
(906, 13, NULL, 'image', 'images/92v2xl49tY0uTjZZMNgfLm7eouff3APlu4YbwPYn.jpg', NULL, '0.75', NULL, NULL, 1, 0, NULL, '2024-03-20 15:32:14', '2024-03-20 15:32:14', 1000.00),
(907, 13, NULL, 'image', 'images/qEoNOF2JNitYXwfqh76Xu8J7bb9KwskWusvcKoBX.jpg', NULL, '0.75', NULL, NULL, 1, 0, NULL, '2024-03-20 15:33:32', '2024-03-20 15:33:32', 1000.00),
(909, 13, NULL, 'image', 'images/TwJkA64IBe0SBVpeNQmUApo3jm0gaVCp3m35MmCr.jpg', NULL, '0.75', NULL, NULL, 1, 0, NULL, '2024-03-22 17:04:13', '2024-03-22 17:04:13', 1000.00),
(910, 13, NULL, 'image', 'images/2MUxzF5xINnloxMMqO2TMtRqM4zH0EmE8JToaEEK.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-22 17:24:28', '2024-03-22 17:24:28', NULL),
(911, 13, 'A or B', 'image', 'images/eZORDsvHEq7rKRTvuZ5iU6IJ73Jc2Vzdn9Ldik5o.png', 'images/6tpSAFGsUMdlDUmOXNrHUiqvUeXec2P9WtYDuzbh.png', '0.75', NULL, NULL, 0, 0, NULL, '2024-03-22 17:26:26', '2024-03-22 17:26:26', NULL),
(914, 13, 'Ipi pic kali ya Chui A or B', 'image', 'images/eSni5PlwfIj2B4Vu4hdo7n9dj8ttYLa0lIotE6qc.png', 'images/oT9CdlzxkBLRWxVvhtxs3C6FFJkxXrh1HKFB23aU.png', '0.75', NULL, NULL, 0, 0, NULL, '2024-03-23 17:06:44', '2024-03-23 17:06:44', NULL),
(915, 13, '🔥🔥', 'video', 'https://video.bangapp.pro/video/165ff0d9e72434/165ff0d9e72434.m3u8', NULL, '0.75', 'https://video.bangapp.pro/videos/65ff0d9e6f6b0.mp4', 'https://video.bangapp.pro/thumbnail/165ff0d9e72434/165ff0d9e72434.png', 0, 0, NULL, '2024-03-23 17:13:02', '2024-03-23 17:13:02', NULL),
(918, 13, 'Kabisa aisee🙏🏿🙏🏿🙏🏿', 'image', 'images/y72dUcd1DzpdjzBLUHm6i2QQ3uZ0e7aTE2ZIkIY2.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-23 17:23:35', '2024-03-23 17:23:35', NULL),
(922, 13, NULL, 'video', 'https://video.bangapp.pro/video/165ff1fa6e14a4/165ff1fa6e14a4.m3u8', NULL, '0.75', 'https://video.bangapp.pro/videos/65ff1fa6db72e.mp4', 'https://video.bangapp.pro/thumbnail/165ff1fa6e14a4/165ff1fa6e14a4.png', 0, 0, NULL, '2024-03-23 18:29:59', '2024-03-23 18:29:59', NULL),
(923, 13, NULL, 'video', 'https://video.bangapp.pro/video/165ff295a2e73a/165ff295a2e73a.m3u8', NULL, '0.75', 'https://video.bangapp.pro/videos/65ff295a2bcef.mp4', 'https://video.bangapp.pro/thumbnail/165ff295a2e73a/165ff295a2e73a.png', 0, 0, NULL, '2024-03-23 19:11:22', '2024-03-23 19:11:22', NULL),
(924, 13, NULL, 'video', 'https://video.bangapp.pro/video/165ff2d53f1187/165ff2d53f1187.m3u8', NULL, '0.75', 'https://video.bangapp.pro/videos/65ff2d53d7ab4.mp4', 'https://video.bangapp.pro/thumbnail/165ff2d53f1187/165ff2d53f1187.png', 0, 0, NULL, '2024-03-23 19:28:20', '2024-03-23 19:28:20', NULL),
(925, 29, NULL, 'image', 'images/bOrVGearuEENSDRxQozxQb8t0e1YwZPLSeHI8Mum.jpg', NULL, '0.75', NULL, NULL, 1, 0, NULL, '2024-03-23 19:35:25', '2024-03-23 19:35:25', 0.00),
(926, 13, NULL, 'video', 'https://video.bangapp.pro/video/165ff306728114/165ff306728114.m3u8', NULL, '0.75', 'https://video.bangapp.pro/videos/65ff30671a9e5.mp4', 'https://video.bangapp.pro/thumbnail/165ff306728114/165ff306728114.png', 0, 0, NULL, '2024-03-23 19:41:27', '2024-03-23 19:41:27', NULL),
(927, 13, '🔥🔥🔥', 'video', 'https://video.bangapp.pro/video/165ff329353a92/165ff329353a92.m3u8', NULL, '0.75', 'https://video.bangapp.pro/videos/65ff329351d84.mp4', 'https://video.bangapp.pro/thumbnail/165ff329353a92/165ff329353a92.png', 0, 0, NULL, '2024-03-23 19:50:43', '2024-03-23 19:50:43', NULL),
(928, 13, '🔥🔥', 'image', 'images/LeBCzE1SiNG4CrESfgPb67fcTI9x75B3LQmZMo7r.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-23 20:19:47', '2024-03-24 18:43:48', NULL),
(930, 13, NULL, 'video', 'https://video.bangapp.pro/video/165ffc2b9404f0/165ffc2b9404f0.m3u8', NULL, '0.75', 'https://video.bangapp.pro/videos/65ffc2b9252ae.mp4', 'https://video.bangapp.pro/thumbnail/165ffc2b9404f0/165ffc2b9404f0.png', 0, 0, NULL, '2024-03-24 06:05:45', '2024-03-24 06:05:45', NULL),
(931, 13, 'Daa noma sana aisee 😢😢😢', 'image', 'images/TGrbnH7qzLiE26aw6Y9ze5Ta4cCIOKTzyRJgzFfM.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-24 08:53:05', '2024-03-24 08:53:05', NULL),
(943, 13, NULL, 'image', 'images/KFN33CBaAGM0SyqBxjRMi7iRizdK7vdvmcUUeyKV.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-26 04:38:16', '2024-03-26 04:38:16', NULL),
(946, 13, '😇😇😆😆😆😆', 'image', 'images/njJv9BjzL2p9gQNvlpNsyB6iBEVA5Gn0hDAuMoOX.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-28 18:24:30', '2024-03-28 18:24:30', NULL),
(948, 13, '😆😆 mpuuzi sana', 'image', 'images/1cV6Na9MchnDsrbkznMPXb6tsIKlaQU8CHVjM85d.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-03-29 19:49:05', '2024-03-31 14:00:47', NULL),
(955, 13, NULL, 'video', 'https://video.bangapp.pro/video/16608461757f61/16608461757f61.m3u8', NULL, '0.75', 'https://video.bangapp.pro/videos/660846174968c.mp4', 'https://video.bangapp.pro/thumbnail/16608461757f61/16608461757f61.png', 0, 0, NULL, '2024-03-30 17:04:23', '2024-03-30 17:04:23', 0.00),
(960, 13, NULL, 'image', 'images/sCzUjXU73cTcM80rKXCJH6kS35PGYT7STdKIWS3Y.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-04-03 15:31:11', '2024-04-03 15:31:11', NULL),
(963, 13, 'Unacheka nini??😀😀', 'image', 'images/16YcQyBpvq8tWPTto6BSVFqcvpeWf4ddre26bEje.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-04-11 18:14:57', '2024-04-11 18:14:57', NULL),
(964, 13, NULL, 'image', 'images/6OuzP22KFnRWPd1G0ooNrKzqTiN0MFN6ZRYH1PtD.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-04-13 00:16:52', '2024-04-13 00:16:52', NULL),
(965, 96, 'Ipi nzuri', 'image', 'images/1On9P39OLnImIdo4VwZ5da1aBUAIwFlTH3vQM1IN.png', 'images/zkACGkNoBJpsTPaxcIi9HDeO55rAKwiSvEzgyPEt.png', '0.75', NULL, NULL, 0, 0, NULL, '2024-04-13 05:34:21', '2024-04-13 05:34:21', NULL),
(967, 13, NULL, 'image', 'images/8opXree3BGwjw2vvUYLXnzQxJJbPM8grv1uVWAm4.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-04-13 08:07:47', '2024-04-13 08:07:47', NULL),
(968, 13, 'Nani katisha?', 'image', 'images/yBijyLBH5QiyOfjOOB7xbQJa5y31PYde27Iyjqwl.png', 'images/vBwV0pvpnrY7xN1TzGxFtC8AzVUUS2D1cJIe7vMQ.png', '0.75', NULL, NULL, 0, 0, NULL, '2024-04-13 08:44:53', '2024-04-13 08:44:53', NULL),
(971, 13, 'True', 'video', 'https://video.bangapp.pro/video/1661a55d3e7291/1661a55d3e7291.m3u8', NULL, '0.75', 'https://video.bangapp.pro/videos/661a55d3e4900.mp4', 'https://video.bangapp.pro/thumbnail/1661a55d3e7291/1661a55d3e7291.png', 0, 0, NULL, '2024-04-13 09:52:20', '2024-04-13 09:52:20', 0.00),
(972, 13, NULL, 'video', 'https://video.bangapp.pro/video/1661a569ca819e/1661a569ca819e.m3u8', NULL, '0.75', 'https://video.bangapp.pro/videos/661a569ca36ce.mp4', 'https://video.bangapp.pro/thumbnail/1661a569ca819e/1661a569ca819e.png', 0, 0, NULL, '2024-04-13 09:55:40', '2024-04-13 09:55:40', 0.00),
(973, 13, NULL, 'video', 'https://video.bangapp.pro/video/1661a5746e8283/1661a5746e8283.m3u8', NULL, '0.75', 'https://video.bangapp.pro/videos/661a5746daee2.mp4', 'https://video.bangapp.pro/thumbnail/1661a5746e8283/1661a5746e8283.png', 0, 0, NULL, '2024-04-13 09:58:31', '2024-04-13 09:58:31', 0.00),
(974, 13, NULL, 'video', 'https://video.bangapp.pro/video/1661a5a0094418/1661a5a0094418.m3u8', NULL, '0.75', 'https://video.bangapp.pro/videos/661a5a006facd.mp4', 'https://video.bangapp.pro/thumbnail/1661a5a0094418/1661a5a0094418.png', 0, 0, NULL, '2024-04-13 10:10:08', '2024-04-13 10:10:08', 0.00),
(995, 13, NULL, 'video', 'https://video.bangapp.pro/video/1661a791094850/1661a791094850.m3u8', NULL, '0.75', 'https://video.bangapp.pro/videos/661a791091712.mp4', 'https://video.bangapp.pro/thumbnail/1661a791094850/1661a791094850.png', 0, 0, NULL, '2024-04-13 12:22:40', '2024-04-13 12:22:40', 0.00),
(999, 13, NULL, 'video', 'https://video.bangapp.pro/video/1661ab2961ac28/1661ab2961ac28.m3u8', NULL, '0.5625', 'https://video.bangapp.pro/videos/661ab29619525.mp4', 'https://video.bangapp.pro/thumbnail/1661ab2961ac28/1661ab2961ac28.png', 0, 0, NULL, '2024-04-13 16:28:06', '2024-04-13 16:28:06', 0.00),
(1000, 13, NULL, 'video', 'https://video.bangapp.pro/video/1661ab9bf60d14/1661ab9bf60d14.m3u8', NULL, '0.5625', 'https://video.bangapp.pro/videos/661ab9bf5ea83.mp4', 'https://video.bangapp.pro/thumbnail/1661ab9bf60d14/1661ab9bf60d14.png', 0, 0, NULL, '2024-04-13 16:58:39', '2024-04-13 16:58:39', 0.00),
(1001, 13, NULL, 'video', 'https://video.bangapp.pro/video/1661abc3b6dfdf/1661abc3b6dfdf.m3u8', NULL, '0.5625', 'https://video.bangapp.pro/videos/661abc3b6089f.mp4', 'https://video.bangapp.pro/thumbnail/1661abc3b6dfdf/1661abc3b6dfdf.png', 0, 0, NULL, '2024-04-13 17:09:15', '2024-04-13 17:09:15', 0.00),
(1003, 13, NULL, 'video', 'https://video.bangapp.pro/video/1661abd4ad574e/1661abd4ad574e.m3u8', NULL, '0.5625', 'https://video.bangapp.pro/videos/661abd4ac52b3.mp4', 'https://video.bangapp.pro/thumbnail/1661abd4ad574e/1661abd4ad574e.png', 0, 0, NULL, '2024-04-13 17:13:47', '2024-04-13 17:13:47', 0.00),
(1004, 13, NULL, 'video', 'https://video.bangapp.pro/video/1661ae7ba843d7/1661ae7ba843d7.m3u8', NULL, '0.5625', 'https://video.bangapp.pro/videos/661ae7ba800b6.mp4', 'https://video.bangapp.pro/thumbnail/1661ae7ba843d7/1661ae7ba843d7.png', 0, 0, NULL, '2024-04-13 20:14:50', '2024-04-13 20:14:50', 0.00),
(1005, 13, '😆😆😆😆', 'video', 'https://video.bangapp.pro/video/1661af76db52f2/1661af76db52f2.m3u8', NULL, '0.5625', 'https://video.bangapp.pro/videos/661af76db35c8.mp4', 'https://video.bangapp.pro/thumbnail/1661af76db52f2/1661af76db52f2.png', 0, 0, NULL, '2024-04-13 21:21:50', '2024-04-13 21:21:50', 0.00),
(1006, 13, 'Thanks God', 'video', 'https://video.bangapp.pro/video/1661af7f65416c/1661af7f65416c.m3u8', NULL, '0.5625', 'https://video.bangapp.pro/videos/661af7f653073.mp4', 'https://video.bangapp.pro/thumbnail/1661af7f65416c/1661af7f65416c.png', 0, 0, NULL, '2024-04-13 21:24:06', '2024-04-13 21:24:06', 0.00),
(1007, 13, 'Woow🔥', 'video', 'https://video.bangapp.pro/video/1661b475a6eaa8/1661b475a6eaa8.m3u8', NULL, '0.5625', 'https://video.bangapp.pro/videos/661b475a6a4a4.mp4', 'https://video.bangapp.pro/thumbnail/1661b475a6eaa8/1661b475a6eaa8.png', 0, 0, NULL, '2024-04-14 03:02:50', '2024-04-14 03:02:50', 0.00),
(1008, 13, 'True💯', 'video', 'https://video.bangapp.pro/video/1661b4e2f65dde/1661b4e2f65dde.m3u8', NULL, '0.5625', 'https://video.bangapp.pro/videos/661b4e2f3f750.mp4', 'https://video.bangapp.pro/thumbnail/1661b4e2f65dde/1661b4e2f65dde.png', 0, 0, NULL, '2024-04-14 03:31:59', '2024-04-14 03:31:59', 0.00),
(1009, 13, 'Hahahaha nacheka kama mazuri😂😂', 'video', 'https://video.bangapp.pro/video/1661b5762ec900/1661b5762ec900.m3u8', NULL, '0.5625', 'https://video.bangapp.pro/videos/661b5762e9097.mp4', 'https://video.bangapp.pro/thumbnail/1661b5762ec900/1661b5762ec900.png', 0, 0, NULL, '2024-04-14 04:11:15', '2024-04-14 04:11:15', 0.00),
(1010, 13, 'hahaha kufa kufaana😆😆😆😆', 'video', 'https://video.bangapp.pro/video/1661b72ad5399d/1661b72ad5399d.m3u8', NULL, '0.5625', 'https://video.bangapp.pro/videos/661b72ad2ea9c.mp4', 'https://video.bangapp.pro/thumbnail/1661b72ad5399d/1661b72ad5399d.png', 0, 0, NULL, '2024-04-14 06:07:41', '2024-04-14 06:07:41', 0.00),
(1011, 13, 'well said 🔥🔥🔥', 'video', 'https://video.bangapp.pro/video/1661baf86491c2/1661baf86491c2.m3u8', NULL, '0.5625', 'https://video.bangapp.pro/videos/661baf862d106.mp4', 'https://video.bangapp.pro/thumbnail/1661baf86491c2/1661baf86491c2.png', 0, 0, NULL, '2024-04-14 10:27:18', '2024-04-14 10:27:18', 0.00),
(1012, 13, '💯', 'image', 'images/X0bJNVurg2r3vvR2XqYneoY2n0gqwjfmvORvicmb.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-04-15 09:15:03', '2024-04-15 09:15:03', NULL),
(1013, 13, NULL, 'image', 'images/AMokPUnTt8PJENtn2t9fzOMSpGldhOEMGEkLlsbr.jpg', NULL, '0.75', NULL, NULL, 0, 0, NULL, '2024-04-15 12:20:40', '2024-04-15 12:20:40', NULL),
(1017, 13, NULL, 'image', 'images/PgjCjqxnWmWM5oBUGxhK6HTlv5bP45gLwI5scx8k.png', 'images/5dyqQhp7TXw1lWMcSr1N8u0mybIKYoeNQF7SOFhH.png', '0.75', NULL, NULL, 0, 0, NULL, '2024-04-15 14:08:11', '2024-04-15 14:08:11', NULL),
(1020, 13, NULL, 'video', 'https://video.bangapp.pro/video/1661d617c50a44/1661d617c50a44.m3u8', NULL, '0.5625', 'https://video.bangapp.pro/videos/661d617c346a8.mp4', 'https://video.bangapp.pro/thumbnail/1661d617c50a44/1661d617c50a44.png', 0, 0, NULL, '2024-04-15 17:18:52', '2024-04-15 17:18:52', 0.00),
(1021, 13, 'hatari!!', 'video', 'https://video.bangapp.pro/video/1661d65917ca98/1661d65917ca98.m3u8', NULL, '0.5625', 'https://video.bangapp.pro/videos/661d65916166d.mp4', 'https://video.bangapp.pro/thumbnail/1661d65917ca98/1661d65917ca98.png', 0, 0, NULL, '2024-04-15 17:36:17', '2024-04-15 17:36:17', 0.00),
(1022, 13, NULL, 'video', 'https://video.bangapp.pro/video/1661d68ff72426/1661d68ff72426.m3u8', NULL, '0.5625', 'https://video.bangapp.pro/videos/661d68ff6e987.mp4', 'https://video.bangapp.pro/thumbnail/1661d68ff72426/1661d68ff72426.png', 0, 0, NULL, '2024-04-15 17:50:55', '2024-04-15 17:50:55', 0.00),
(1023, 13, NULL, 'video', 'https://video.bangapp.pro/video/1661d6c722b3da/1661d6c722b3da.m3u8', NULL, '0.5625', 'https://video.bangapp.pro/videos/661d6c722781e.mp4', 'https://video.bangapp.pro/thumbnail/1661d6c722b3da/1661d6c722b3da.png', 0, 0, NULL, '2024-04-15 18:05:38', '2024-04-15 18:05:38', 0.00),
(1025, 13, 'Hii pic inazungumza mengi.One day yes....', 'image', 'images/Q4LkR1KWnOdN6YI60PDmm2P1Pp6zDxQx4PQVNF7V.jpg', NULL, '1.0027855153203342', NULL, NULL, 0, 0, NULL, '2024-04-15 19:13:57', '2024-04-15 19:13:57', NULL),
(1026, 13, 'Mmakonde anafaidiii jamani😜', 'image', 'images/LvzG8Fk69uIk2FMGILqQ2zTnkr0VSKrV4lNVuY6g.jpg', NULL, '0.9981412639405205', NULL, NULL, 0, 0, NULL, '2024-04-15 19:16:15', '2024-04-15 19:16:15', NULL),
(1027, 13, 'Well said mama', 'video', 'https://video.bangapp.pro/video/1661d82d7955a3/1661d82d7955a3.m3u8', NULL, '0.5625', 'https://video.bangapp.pro/videos/661d82d7932d5.mp4', 'https://video.bangapp.pro/thumbnail/1661d82d7955a3/1661d82d7955a3.png', 0, 0, NULL, '2024-04-15 19:41:11', '2024-04-15 19:41:11', 0.00),
(1028, 13, '😂😂😂😂', 'video', 'https://video.bangapp.pro/video/1661d83a816a18/1661d83a816a18.m3u8', NULL, '0.5625', 'https://video.bangapp.pro/videos/661d83a810623.mp4', 'https://video.bangapp.pro/thumbnail/1661d83a816a18/1661d83a816a18.png', 0, 0, NULL, '2024-04-15 19:44:40', '2024-04-15 19:44:40', 0.00),
(1029, 13, 'Mwana anayekojoa hapo kama anaroho ya chuma hivi😀😀', 'video', 'https://video.bangapp.pro/video/1661de4df61de1/1661de4df61de1.m3u8', NULL, '0.5625', 'https://video.bangapp.pro/videos/661de4df5eec2.mp4', 'https://video.bangapp.pro/thumbnail/1661de4df61de1/1661de4df61de1.png', 0, 0, NULL, '2024-04-16 02:39:27', '2024-04-16 02:39:27', 0.00),
(1030, 13, NULL, 'video', 'https://video.bangapp.pro/video/1661de992c712f/1661de992c712f.m3u8', NULL, '0.5625', 'https://video.bangapp.pro/videos/661de992c3112.mp4', 'https://video.bangapp.pro/thumbnail/1661de992c712f/1661de992c712f.png', 0, 0, NULL, '2024-04-16 02:59:31', '2024-04-16 02:59:31', 0.00),
(1031, 13, NULL, 'image', 'images/i3qrxH2pO0WvaElnfbcO7dTf7QlLebSIoUEaViFK.jpg', NULL, '1.0027881040892193', NULL, NULL, 0, 0, NULL, '2024-04-16 11:46:32', '2024-04-16 11:46:32', NULL),
(1032, 13, 'Unyama ni mwingi🔥', 'video', 'https://video.bangapp.pro/video/1661e9cefadfca/1661e9cefadfca.m3u8', NULL, '0.5625', 'https://video.bangapp.pro/videos/661e9cefa1110.mp4', 'https://video.bangapp.pro/thumbnail/1661e9cefadfca/1661e9cefadfca.png', 0, 0, NULL, '2024-04-16 15:44:47', '2024-04-16 15:44:47', 0.00),
(1033, 13, 'duuuuui', 'video', 'https://video.bangapp.pro/video/1661eb467abf39/1661eb467abf39.m3u8', NULL, '0.5625', 'https://video.bangapp.pro/videos/661eb467a9f84.mp4', 'https://video.bangapp.pro/thumbnail/1661eb467abf39/1661eb467abf39.png', 0, 0, NULL, '2024-04-16 17:24:56', '2024-04-16 17:24:56', 0.00),
(1034, 13, 'Hahahahaha watu wanapenda kuwachokoza polisi jamani😀😀😀', 'video', 'https://video.bangapp.pro/video/1661ebe7fce2fd/1661ebe7fce2fd.m3u8', NULL, '0.5625', 'https://video.bangapp.pro/videos/661ebe7fc9c55.mp4', 'https://video.bangapp.pro/thumbnail/1661ebe7fce2fd/1661ebe7fce2fd.png', 0, 0, NULL, '2024-04-16 18:08:00', '2024-04-16 18:08:00', 0.00),
(1036, 13, 'Rozeee 🔥🔥🔥🔥', 'image', 'images/BqZeXXQWqayAYSqYKPpXT5lVkCojXZy5zTaHuHLV.jpg', NULL, '0.7983691623424759', NULL, NULL, 0, 0, NULL, '2024-04-16 18:40:09', '2024-04-16 18:40:09', NULL),
(1037, 13, NULL, 'video', 'https://video.bangapp.pro/video/1661ecbc44215b/1661ecbc44215b.m3u8', NULL, '0.5625', 'https://video.bangapp.pro/videos/661ecbc43fb29.mp4', 'https://video.bangapp.pro/thumbnail/1661ecbc44215b/1661ecbc44215b.png', 0, 0, NULL, '2024-04-16 19:04:36', '2024-04-16 19:04:36', 0.00),
(1038, 13, '😀😀😀😀', 'video', 'https://video.bangapp.pro/video/1661ecc0a449ba/1661ecc0a449ba.m3u8', NULL, '0.5625', 'https://video.bangapp.pro/videos/661ecc0a40029.mp4', 'https://video.bangapp.pro/thumbnail/1661ecc0a449ba/1661ecc0a449ba.png', 0, 0, NULL, '2024-04-16 19:05:46', '2024-04-16 19:05:46', 0.00),
(1039, 13, 'aliye juu mfuate hukohuko juu😀😀', 'video', 'https://video.bangapp.pro/video/1661ecd99032c8/1661ecd99032c8.m3u8', NULL, '0.5625', 'https://video.bangapp.pro/videos/661ecd98f223e.mp4', 'https://video.bangapp.pro/thumbnail/1661ecd99032c8/1661ecd99032c8.png', 0, 0, NULL, '2024-04-16 19:12:25', '2024-04-16 19:12:25', 0.00),
(1041, 13, '😲😲😲', 'video', 'https://video.bangapp.pro/video/1661eceb0ef9d7/1661eceb0ef9d7.m3u8', NULL, '0.5625', 'https://video.bangapp.pro/videos/661eceb0ed532.mp4', 'https://video.bangapp.pro/thumbnail/1661eceb0ef9d7/1661eceb0ef9d7.png', 0, 0, NULL, '2024-04-16 19:17:05', '2024-04-16 19:17:05', 0.00),
(1042, 13, 'Hahahahaaa GTA', 'video', 'https://video.bangapp.pro/video/1661f546568682/1661f546568682.m3u8', NULL, '0.5625', 'https://video.bangapp.pro/videos/661f5465635e2.mp4', 'https://video.bangapp.pro/thumbnail/1661f546568682/1661f546568682.png', 0, 0, NULL, '2024-04-17 04:47:33', '2024-04-17 04:47:33', 0.00),
(1043, 13, NULL, 'video', 'https://video.bangapp.pro/video/1661f59d298dc4/1661f59d298dc4.m3u8', NULL, '0.5625', 'https://video.bangapp.pro/videos/661f59d295355.mp4', 'https://video.bangapp.pro/thumbnail/1661f59d298dc4/1661f59d298dc4.png', 0, 0, NULL, '2024-04-17 05:10:42', '2024-04-17 05:10:42', 0.00),
(1044, 13, '🔥🔥🔥', 'video', 'https://video.bangapp.pro/video/1661f5c729f82e/1661f5c729f82e.m3u8', NULL, '0.5625', 'https://video.bangapp.pro/videos/661f5c729a04c.mp4', 'https://video.bangapp.pro/thumbnail/1661f5c729f82e/1661f5c729f82e.png', 0, 0, NULL, '2024-04-17 05:21:54', '2024-04-17 05:21:54', 0.00),
(1046, 13, 'Dubai😭😭', 'video', 'https://video.bangapp.pro/video/1661f920d5f01a/1661f920d5f01a.m3u8', NULL, '0.5625', 'https://video.bangapp.pro/videos/661f920d53e0e.mp4', 'https://video.bangapp.pro/thumbnail/1661f920d5f01a/1661f920d5f01a.png', 0, 0, NULL, '2024-04-17 09:10:37', '2024-04-17 09:10:37', 0.00),
(1047, 13, NULL, 'video', 'https://video.bangapp.pro/video/1661fed097f572/1661fed097f572.m3u8', NULL, '0.5625', 'https://video.bangapp.pro/videos/661fed096e488.mp4', 'https://video.bangapp.pro/thumbnail/1661fed097f572/1661fed097f572.png', 0, 0, NULL, '2024-04-17 15:38:49', '2024-04-17 15:38:49', 0.00),
(1048, 13, 'Hahaha noma', 'image', 'images/1mO9uAiXMnAVr62NckOniqu0mWa1wXnnBerxtpJ3.jpg', NULL, '0.4940530649588289', NULL, NULL, 1, 0, NULL, '2024-04-18 01:44:46', '2024-04-18 01:44:46', 1000.00),
(1049, 13, 'Hivi kwanini ulaya mtu unajijazia mafuta mwenyewe kwenye gari!!!!?😂', 'video', 'https://video.bangapp.pro/video/16620d72d6dbd8/16620d72d6dbd8.m3u8', NULL, '0.5625', 'https://video.bangapp.pro/videos/6620d72d6182f.mp4', 'https://video.bangapp.pro/thumbnail/16620d72d6dbd8/16620d72d6dbd8.png', 0, 0, NULL, '2024-04-18 08:17:49', '2024-04-18 08:17:49', 0.00),
(1050, 13, '😀😀😀😀', 'video', 'https://video.bangapp.pro/video/16620d8397b448/16620d8397b448.m3u8', NULL, '0.5625', 'https://video.bangapp.pro/videos/6620d8397785d.mp4', 'https://video.bangapp.pro/thumbnail/16620d8397b448/16620d8397b448.png', 0, 0, NULL, '2024-04-18 08:22:17', '2024-04-18 08:22:17', 0.00),
(1051, 13, '😂😂😂', 'video', 'https://video.bangapp.pro/video/16620d979d7506/16620d979d7506.m3u8', NULL, '0.5625', 'https://video.bangapp.pro/videos/6620d979d4734.mp4', 'https://video.bangapp.pro/thumbnail/16620d979d7506/16620d979d7506.png', 0, 0, NULL, '2024-04-18 08:27:38', '2024-04-18 08:27:38', 0.00),
(1053, 13, 'Real!!!!', 'video', 'https://video.bangapp.pro/video/166212d9f230d0/166212d9f230d0.m3u8', NULL, '0.5625', 'https://video.bangapp.pro/videos/66212d9f1e629.mp4', 'https://video.bangapp.pro/thumbnail/166212d9f230d0/166212d9f230d0.png', 0, 0, NULL, '2024-04-18 14:26:39', '2024-04-18 14:26:39', 0.00),
(1056, 13, 'Weekend vibe🔥🔥🔥', 'video', 'https://video.bangapp.pro/video/166220f4c3db97/166220f4c3db97.m3u8', NULL, '0.5625', 'https://video.bangapp.pro/videos/66220f4c365a9.mp4', 'https://video.bangapp.pro/thumbnail/166220f4c3db97/166220f4c3db97.png', 0, 0, NULL, '2024-04-19 06:29:32', '2024-04-19 06:29:32', 0.00),
(1057, 13, '😂😂😂😂😇', 'video', 'https://video.bangapp.pro/video/1662258be68c9d/1662258be68c9d.m3u8', NULL, '0.5625', 'https://video.bangapp.pro/videos/662258be66b8c.mp4', 'https://video.bangapp.pro/thumbnail/1662258be68c9d/1662258be68c9d.png', 0, 0, NULL, '2024-04-19 11:42:54', '2024-04-19 11:42:54', 0.00),
(1058, 13, 'Rest easy bro😭😭😭', 'image', 'images/tE1kVvu9dZMNRvXAZxPywo7O65RwPTQJuhgk7Hrg.jpg', NULL, '1.0', NULL, NULL, 0, 0, NULL, '2024-04-20 06:57:39', '2024-04-20 06:57:39', NULL),
(1059, 13, 'RIP BRO😭😭', 'image', 'images/98WsbQ4t1uf4ppLTtaLig0kRtFNcKXwCcej36Brr.jpg', NULL, '0.9971988795518207', NULL, NULL, 0, 0, NULL, '2024-04-20 06:58:55', '2024-04-20 06:58:55', NULL),
(1060, 13, '😂😂😂😂😂', 'image', 'images/G6YPOzjF3fUzMdBCfFflpCWMOQOY2beozSwf01PX.jpg', NULL, '1.0046511627906978', NULL, NULL, 0, 0, NULL, '2024-04-20 09:22:07', '2024-04-20 09:22:07', NULL),
(1061, 13, 'Ngumu sana😂😂😂😂', 'image', 'images/381Wwr0VA8xf7p9OrjtsAKx0e9nJRtim4h0M8aWX.jpg', NULL, '0.8836065573770492', NULL, NULL, 0, 0, NULL, '2024-04-20 10:01:14', '2024-04-20 10:01:14', NULL),
(1062, 13, '😂😂😂😂', 'image', 'images/oVaiyjW0D7NXpN4FUZU6qZiep4VuxKUN7o8n9zGE.jpg', NULL, '0.9278169014084507', NULL, NULL, 0, 0, NULL, '2024-04-20 17:16:43', '2024-04-20 17:16:43', NULL),
(1063, 13, 'Hahaha wanawake hawajawahi ridhikaga😂', 'image', 'images/rVZolN3sofINYKdnvuHa0eEGswNcO58guctomhBz.jpg', NULL, '0.9981515711645101', NULL, NULL, 0, 0, NULL, '2024-04-21 07:13:35', '2024-04-21 07:13:35', NULL),
(1064, 13, 'Aiseeeee kumbe ilikua hivi!!RIP CHAMP.', 'video', 'https://video.bangapp.pro/video/16624bd221a5b9/16624bd221a5b9.m3u8', NULL, '0.5625', 'https://video.bangapp.pro/videos/6624bd21e7a60.mp4', 'https://video.bangapp.pro/thumbnail/16624bd221a5b9/16624bd221a5b9.png', 0, 0, NULL, '2024-04-21 07:15:46', '2024-04-21 07:15:46', 0.00),
(1065, 13, 'Haya ndio maisha unatakiwa uishi wewe tafuta hela😀', 'video', 'https://video.bangapp.pro/video/16624bde0473cc/16624bde0473cc.m3u8', NULL, '0.5622222222222222', 'https://video.bangapp.pro/videos/6624bde044ffb.mp4', 'https://video.bangapp.pro/thumbnail/16624bde0473cc/16624bde0473cc.png', 0, 0, NULL, '2024-04-21 07:18:56', '2024-04-21 07:18:56', 0.00),
(1066, 13, 'Hahahaha', 'image', 'images/J59A3titYHnkdfqOof8SRKowHz9jzrJPenk9THVM.jpg', NULL, '0.9608540925266904', NULL, NULL, 0, 0, NULL, '2024-04-21 07:23:57', '2024-04-21 07:23:57', NULL),
(1067, 86, 'Nenga', 'image', 'images/ZrazjTMYuKRs3arTYZzjekqQIdSnEVnT2vOG6zIN.jpg', NULL, '0.7268518518518519', NULL, NULL, 0, 0, NULL, '2024-04-22 09:27:54', '2024-04-22 09:27:54', NULL),
(1068, 14, 'Love you guyz', 'image', 'images/yWUbWvxXSSZManYZ8Xh9bdUdyYNttQWrAxuEneaU.jpg', NULL, '0.799250936329588', NULL, NULL, 0, 0, NULL, '2024-04-22 10:01:25', '2024-04-22 10:01:25', NULL),
(1069, 14, '❣️❣️❣️', 'image', 'images/nnA4wo5FGuuzvPHVxpvjkyzeMLZB8wOePehRFnFx.jpg', NULL, '0.7967359050445104', NULL, NULL, 0, 0, NULL, '2024-04-22 10:04:19', '2024-04-22 10:04:19', NULL),
(1070, 14, 'God first🙏🙏', 'image', 'images/MK48ttBQK6JoW8ofwu6KgJHQSH38ZCjFZLDEYdwH.jpg', NULL, '0.7873900293255132', NULL, NULL, 0, 0, NULL, '2024-04-22 10:10:12', '2024-04-22 10:10:12', NULL),
(1071, 98, 'Shuu!!!', 'image', 'images/i9i7ZOi1zs0VPpkR2QhysctH01EJCxjDNzkG9eES.jpg', NULL, '0.8154020385050963', NULL, NULL, 0, 0, NULL, '2024-04-22 10:27:08', '2024-04-22 10:27:08', NULL),
(1072, 86, 'Led Love lead💕', 'video', 'https://video.bangapp.pro/video/166263d17b507c/166263d17b507c.m3u8', NULL, '0.0', 'https://video.bangapp.pro/videos/66263d17af1c6.mp4', 'https://video.bangapp.pro/thumbnail/166263d17b507c/166263d17b507c.png', 0, 0, NULL, '2024-04-22 10:34:00', '2024-04-22 10:34:00', 0.00),
(1073, 100, 'uzuu street postal', 'image', 'images/O4kBXKfiu1Y03u6kzXjvYRU4Sy63iEPUHedyAHx5.jpg', NULL, '0.7669421487603306', NULL, NULL, 0, 0, NULL, '2024-04-22 15:15:13', '2024-04-22 15:15:13', NULL),
(1074, 100, 'Yooo', 'image', 'images/8y3xpHTl98GQED48jD84878MuItMQxgH5SjfcFJZ.jpg', NULL, '0.8033898305084746', NULL, NULL, 0, 0, NULL, '2024-04-22 15:19:56', '2024-04-22 15:19:56', NULL),
(1075, 103, 'Mbeya city kona za mkoa', 'image', 'images/apH9tMMxS67SlHuTn2kZJLpP8FqcvpEY1NNEuAUD.jpg', NULL, '0.5124555160142349', NULL, NULL, 0, 0, NULL, '2024-04-22 17:11:54', '2024-04-22 17:11:54', NULL),
(1076, 13, 'Kaongea point sana huyu mjamaa', 'video', 'https://video.bangapp.pro/video/166269cf0ac5b7/166269cf0ac5b7.m3u8', NULL, '0.5614814814814815', 'https://video.bangapp.pro/videos/66269cf0a4159.mp4', 'https://video.bangapp.pro/thumbnail/166269cf0ac5b7/166269cf0ac5b7.png', 0, 0, NULL, '2024-04-22 17:22:56', '2024-04-22 17:22:56', 0.00),
(1077, 86, 'Yaaan mnunuliwe pombe na mpewe na supu asubuhi', 'video', 'https://video.bangapp.pro/video/166274004edeb6/166274004edeb6.m3u8', NULL, '0.5625', 'https://video.bangapp.pro/videos/66274004e9109.mp4', 'https://video.bangapp.pro/thumbnail/166274004edeb6/166274004edeb6.png', 0, 0, NULL, '2024-04-23 04:58:45', '2024-04-23 04:58:45', 0.00),
(1078, 14, 'Tuesday crazy 🤪 😜', 'image', 'images/sRWznwLDGP5DyEaua4mWpAhwvWdChCGIgGKAtri0.jpg', NULL, '1.0046511627906978', NULL, NULL, 0, 0, NULL, '2024-04-23 06:15:00', '2024-04-23 06:15:00', NULL),
(1079, 14, 'Family 🥰', 'video', 'https://video.bangapp.pro/video/16627588d45670/16627588d45670.m3u8', NULL, '0.5625', 'https://video.bangapp.pro/videos/6627588d441a1.mp4', 'https://video.bangapp.pro/thumbnail/16627588d45670/16627588d45670.png', 0, 0, NULL, '2024-04-23 06:43:25', '2024-04-23 06:43:25', 0.00),
(1080, 99, NULL, 'image', 'images/r20oaqQ8c9lnZgwgk4DzknhWN7JKJmNbu0uH4LqB.jpg', NULL, '0.9203703703703704', NULL, NULL, 0, 0, NULL, '2024-04-23 07:29:02', '2024-04-23 07:29:02', NULL),
(1081, 99, 'Weekend vibe', 'image', 'images/iRvZIdQ6pwSwnkZwqftJbIJYEOzKNocXWY0tglAc.jpg', NULL, '0.8435185185185186', NULL, NULL, 0, 0, NULL, '2024-04-23 07:29:59', '2024-04-23 07:29:59', NULL),
(1082, 99, 'Nawapenda sana watu wants ktk jina la Yesu', 'video', 'https://video.bangapp.pro/video/1662764020d998/1662764020d998.m3u8', NULL, '0.5625', 'https://video.bangapp.pro/videos/66276401e8404.mp4', 'https://video.bangapp.pro/thumbnail/1662764020d998/1662764020d998.png', 0, 0, NULL, '2024-04-23 07:32:18', '2024-04-23 07:32:18', 0.00),
(1083, 13, 'Fumanizi msibani 😀😀', 'video', 'https://video.bangapp.pro/video/1662772e162b33/1662772e162b33.m3u8', NULL, '0.5625', 'https://video.bangapp.pro/videos/662772e144c8e.mp4', 'https://video.bangapp.pro/thumbnail/1662772e162b33/1662772e162b33.png', 0, 0, NULL, '2024-04-23 08:35:45', '2024-04-23 08:35:45', 0.00),
(1084, 14, '❣️❣️', 'image', 'images/4e8FVP1OJYrb5JQttQ76bWh8axOPKnGWuoGNPN7K.jpg', NULL, '0.8047690014903129', NULL, NULL, 0, 0, NULL, '2024-04-23 10:12:00', '2024-04-23 10:12:00', NULL),
(1085, 13, NULL, 'image', 'images/qo9relrXKrzwiwLuSMUx9N6CSxIhZ13ZYqRiiUEp.jpg', NULL, '0.8096385542168675', NULL, NULL, 0, 0, NULL, '2024-04-23 15:00:56', '2024-04-23 15:00:56', NULL),
(1086, 99, 'See you soon guys', 'image', 'images/rT8QAZp3owNif7WKTa3R9vKWZx2gY2bbKrPDVKJk.jpg', NULL, '0.9627507163323782', NULL, NULL, 0, 0, NULL, '2024-04-23 15:02:17', '2024-04-23 15:02:17', NULL),
(1087, 99, NULL, 'image', 'images/ukcJTsyy6igvtnYGx5WI05RbiT2mGzET4vlFtCXu.jpg', NULL, '0.9203703703703704', NULL, NULL, 0, 0, NULL, '2024-04-23 15:03:09', '2024-04-23 15:03:09', NULL),
(1088, 99, NULL, 'image', 'images/XwGtEcaygR9RGIoab5WnAmSE5n1XzPxkVncBASla.jpg', NULL, '0.8092592592592592', NULL, NULL, 0, 0, NULL, '2024-04-23 15:05:36', '2024-04-23 15:05:36', NULL),
(1089, 99, NULL, 'image', 'images/HWRTY8hODoxsLRNIObrrqKbwiconvxQBrjwZHhE7.jpg', NULL, '0.8083333333333333', NULL, NULL, 0, 0, NULL, '2024-04-23 15:06:43', '2024-04-23 15:06:43', NULL),
(1090, 99, 'Hellooo guyz', 'image', 'images/p64grX6jTARitJxBJKI8gYZohZj1m4GzO3OeigtE.jpg', NULL, '0.9581749049429658', NULL, NULL, 0, 0, NULL, '2024-04-23 15:07:50', '2024-04-23 15:07:50', NULL),
(1091, 99, 'Mida ya church', 'image', 'images/ABrjLrN83POKFDoFqDCKQG9mzXHDQGwJV1DVXLr3.jpg', NULL, '0.998019801980198', NULL, NULL, 0, 0, NULL, '2024-04-23 15:10:24', '2024-04-23 15:10:24', NULL),
(1092, 99, 'Outing kidogo', 'image', 'images/ueVcoKiUwbfLIHH9s1ZgSd6ibAgC9YI9v732mx51.jpg', NULL, '0.8064814814814815', NULL, NULL, 0, 0, NULL, '2024-04-23 15:11:07', '2024-04-23 15:11:07', NULL),
(1093, 99, NULL, 'image', 'images/jL6AyBGYYFEnURuyD56wlaALIinhy1kttrhBfZ7n.jpg', NULL, '0.8194444444444444', NULL, NULL, 0, 0, NULL, '2024-04-23 15:19:39', '2024-04-23 15:19:39', NULL),
(1094, 99, NULL, 'image', 'images/vXUmKlTgpppg51ZSqSsLB8R0UuAW3BWKWVrW27pJ.jpg', NULL, '0.8166666666666667', NULL, NULL, 0, 0, NULL, '2024-04-23 15:34:51', '2024-04-23 15:34:51', NULL),
(1095, 99, 'Ipi kali??', 'image', 'images/FpR2wui0lTKQh0QLjTlioGHdTVwjUeQxMvRDAMph.png', 'images/5c9KsKn0x8fUnOo5IJ9DZOriiNJyXg8OvOhXJYMl.png', NULL, NULL, NULL, 0, 0, NULL, '2024-04-23 15:52:52', '2024-04-23 15:52:52', NULL),
(1096, 98, 'Young Simba', 'image', 'images/LnWwFwyuR80Cj6YMfsL9ZZZa08uOgmITUQUJjW8w.jpg', NULL, '0.8530805687203792', NULL, NULL, 0, 0, NULL, '2024-04-23 16:02:22', '2024-04-23 16:02:22', NULL),
(1097, 99, 'Mtoto wa Yesu ktk ubora wangu', 'image', 'images/XL8brRab6dJlGAUuJypVKw7eur5vPn7df9U3HQU3.jpg', NULL, '0.8240740740740741', NULL, NULL, 0, 0, NULL, '2024-04-23 17:41:45', '2024-04-23 17:41:45', NULL),
(1098, 86, 'Tanga tumefika', 'image', 'images/fkhNWqC3FZqvFJwStbFXqlaW0gqeQG3eo96EgwEX.jpg', NULL, '0.8083333333333333', NULL, NULL, 0, 0, NULL, '2024-04-24 06:54:20', '2024-04-24 06:54:20', NULL),
(1099, 14, NULL, 'video', 'https://video.bangapp.pro/video/16628bee14d488/16628bee14d488.m3u8', NULL, '0.5625', 'https://video.bangapp.pro/videos/6628bee14a065.mp4', 'https://video.bangapp.pro/thumbnail/16628bee14d488/16628bee14d488.png', 0, 0, NULL, '2024-04-24 08:12:17', '2024-04-24 08:12:17', 0.00),
(1100, 14, 'Hellow❣️❣️', 'image', 'images/RnbYuYnfq3zkwi6paw79olbVodu7o2jtuizTRw0D.jpg', NULL, '0.8053691275167785', NULL, NULL, 0, 0, NULL, '2024-04-24 08:29:05', '2024-04-24 08:29:05', NULL),
(1101, 14, 'Zuchu 😜', 'image', 'images/Gh3aNO64QzIxaBbzTo7rZzbWBw0Gbu3sZLuYlSbN.jpg', NULL, '0.8005930318754633', NULL, NULL, 0, 0, NULL, '2024-04-24 08:32:25', '2024-04-24 08:32:25', NULL),
(1102, 98, 'Karibu msosi', 'image', 'images/pIUNwypBcosFp4oAOKyObOYMZBwqQQyY5fk1RM8H.jpg', NULL, '0.802675585284281', NULL, NULL, 0, 0, NULL, '2024-04-24 08:33:00', '2024-04-24 08:33:00', NULL),
(1103, 86, 'NIKE BRAND', 'image', 'images/FSzlOAqU4tZveZswFBs6jpre6pBkEckvUmkxJpWS.jpg', NULL, '0.7981481481481482', NULL, NULL, 0, 0, NULL, '2024-04-24 08:47:36', '2024-04-24 08:47:36', NULL),
(1104, 13, 'Ipi kali?', 'image', 'images/pCrJklDtYM4H8vSnLrF0VbLxC68hLtP5YIQ1p0IB.png', 'images/FfFKPMBaLWi4kFx53aKaCD0qJ2Q8SgQN89prCMeC.png', NULL, NULL, NULL, 0, 0, NULL, '2024-04-29 01:57:41', '2024-04-29 01:57:41', NULL),
(1105, 98, 'Mlionaje performance yangu?', 'image', 'images/k0Un8K2iOaFkA9hPsT32Y8XHjoVzu0F5zZagZzDY.jpg', NULL, '0.8053691275167785', NULL, NULL, 0, 0, NULL, '2024-04-29 07:48:11', '2024-04-29 07:48:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post_views`
--

CREATE TABLE `post_views` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_views`
--

INSERT INTO `post_views` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 6, 974, '2024-04-27 17:12:15', '2024-04-27 17:12:15'),
(2, 6, 995, '2024-04-27 17:12:15', '2024-04-27 17:12:15'),
(3, 6, 1084, '2024-04-27 17:12:16', '2024-04-27 17:12:16'),
(4, 6, 1085, '2024-04-27 17:12:16', '2024-04-27 17:12:16'),
(5, 6, 1087, '2024-04-27 17:12:17', '2024-04-27 17:12:17'),
(6, 6, 1086, '2024-04-27 17:12:17', '2024-04-27 17:12:17'),
(7, 6, 1088, '2024-04-27 17:12:17', '2024-04-27 17:12:17'),
(8, 6, 1089, '2024-04-27 17:12:17', '2024-04-27 17:12:17'),
(9, 6, 1090, '2024-04-27 17:12:18', '2024-04-27 17:12:18'),
(10, 6, 1091, '2024-04-27 17:12:18', '2024-04-27 17:12:18'),
(11, 6, 1092, '2024-04-27 17:12:18', '2024-04-27 17:12:18'),
(12, 6, 1093, '2024-04-27 17:12:19', '2024-04-27 17:12:19'),
(13, 6, 1103, '2024-04-27 17:12:21', '2024-04-27 17:12:21'),
(14, 6, 1102, '2024-04-27 17:12:22', '2024-04-27 17:12:22'),
(15, 6, 1101, '2024-04-27 17:12:23', '2024-04-27 17:12:23'),
(16, 6, 1100, '2024-04-27 17:12:24', '2024-04-27 17:12:24'),
(17, 6, 1099, '2024-04-27 17:12:24', '2024-04-27 17:12:24'),
(18, 6, 1098, '2024-04-27 17:12:24', '2024-04-27 17:12:24'),
(19, 6, 1095, '2024-04-27 17:12:28', '2024-04-27 17:12:28'),
(20, 6, 1096, '2024-04-27 17:12:28', '2024-04-27 17:12:28'),
(21, 6, 1094, '2024-04-27 17:12:28', '2024-04-27 17:12:28'),
(22, 6, 1097, '2024-04-27 17:12:30', '2024-04-27 17:12:30'),
(23, 6, 814, '2024-04-27 17:12:30', '2024-04-27 17:12:30'),
(24, 6, 813, '2024-04-27 17:12:33', '2024-04-27 17:12:33'),
(25, 6, 812, '2024-04-27 17:12:34', '2024-04-27 17:12:34'),
(26, 6, 811, '2024-04-27 17:12:35', '2024-04-27 17:12:35'),
(27, 6, 810, '2024-04-27 17:13:06', '2024-04-27 17:13:06'),
(28, 6, 809, '2024-04-27 17:13:07', '2024-04-27 17:13:07'),
(29, 6, 808, '2024-04-27 17:13:09', '2024-04-27 17:13:09'),
(30, 6, 807, '2024-04-27 17:13:14', '2024-04-27 17:13:14'),
(31, 6, 806, '2024-04-27 17:13:20', '2024-04-27 17:13:20'),
(32, 6, 805, '2024-04-27 17:13:23', '2024-04-27 17:13:23'),
(33, 6, 839, '2024-04-27 17:13:26', '2024-04-27 17:13:26'),
(34, 6, 838, '2024-04-27 17:13:29', '2024-04-27 17:13:29'),
(35, 6, 836, '2024-04-27 17:13:30', '2024-04-27 17:13:30'),
(36, 6, 833, '2024-04-27 17:13:31', '2024-04-27 17:13:31'),
(37, 6, 832, '2024-04-27 17:13:32', '2024-04-27 17:13:32'),
(38, 6, 831, '2024-04-27 17:13:34', '2024-04-27 17:13:34'),
(39, 6, 830, '2024-04-27 17:13:35', '2024-04-27 17:13:35'),
(40, 6, 828, '2024-04-27 17:20:59', '2024-04-27 17:20:59'),
(41, 6, 827, '2024-04-27 17:21:00', '2024-04-27 17:21:00'),
(42, 6, 826, '2024-04-27 17:21:03', '2024-04-27 17:21:03'),
(43, 6, 793, '2024-04-27 17:21:03', '2024-04-27 17:21:03'),
(44, 6, 792, '2024-04-27 17:21:05', '2024-04-27 17:21:05'),
(45, 6, 791, '2024-04-27 17:21:16', '2024-04-27 17:21:16'),
(46, 6, 790, '2024-04-27 17:21:18', '2024-04-27 17:21:18'),
(47, 6, 789, '2024-04-27 17:21:19', '2024-04-27 17:21:19'),
(48, 6, 788, '2024-04-27 17:21:26', '2024-04-27 17:21:26'),
(49, 6, 787, '2024-04-27 17:21:36', '2024-04-27 17:21:36'),
(50, 6, 786, '2024-04-27 17:21:49', '2024-04-27 17:21:49'),
(51, 6, 785, '2024-04-27 17:23:15', '2024-04-27 17:23:15'),
(52, 6, 784, '2024-04-27 17:23:17', '2024-04-27 17:23:17'),
(53, 6, 768, '2024-04-27 17:23:34', '2024-04-27 17:23:34'),
(54, 6, 767, '2024-04-27 17:23:34', '2024-04-27 17:23:34'),
(55, 6, 766, '2024-04-27 17:23:39', '2024-04-27 17:23:39'),
(56, 6, 764, '2024-04-27 17:23:52', '2024-04-27 17:23:52'),
(57, 6, 763, '2024-04-27 17:24:25', '2024-04-27 17:24:25'),
(58, 6, 762, '2024-04-27 17:24:25', '2024-04-27 17:24:25'),
(59, 6, 761, '2024-04-27 17:24:26', '2024-04-27 17:24:26'),
(60, 6, 760, '2024-04-27 17:24:30', '2024-04-27 17:24:30'),
(61, 6, 759, '2024-04-27 17:24:34', '2024-04-27 17:24:34'),
(62, 6, 758, '2024-04-27 17:24:34', '2024-04-27 17:24:34'),
(63, 6, 782, '2024-04-27 17:24:36', '2024-04-27 17:24:36'),
(64, 6, 781, '2024-04-27 17:24:38', '2024-04-27 17:24:38'),
(65, 6, 780, '2024-04-27 17:24:46', '2024-04-27 17:24:46'),
(66, 6, 779, '2024-04-27 17:24:59', '2024-04-27 17:24:59'),
(67, 6, 778, '2024-04-27 17:25:21', '2024-04-27 17:25:21'),
(68, 6, 777, '2024-04-27 17:25:26', '2024-04-27 17:25:26'),
(69, 6, 776, '2024-04-27 17:27:03', '2024-04-27 17:27:03'),
(70, 6, 775, '2024-04-27 17:27:04', '2024-04-27 17:27:04'),
(71, 6, 770, '2024-04-27 17:27:07', '2024-04-27 17:27:07'),
(72, 6, 769, '2024-04-27 17:27:13', '2024-04-27 17:27:13'),
(73, 6, 804, '2024-04-27 17:27:13', '2024-04-27 17:27:13'),
(74, 6, 803, '2024-04-27 17:27:31', '2024-04-27 17:27:31'),
(75, 6, 802, '2024-04-27 17:27:32', '2024-04-27 17:27:32'),
(76, 6, 801, '2024-04-27 17:27:40', '2024-04-27 17:27:40'),
(77, 6, 800, '2024-04-27 17:27:41', '2024-04-27 17:27:41'),
(78, 6, 799, '2024-04-27 17:27:43', '2024-04-27 17:27:43'),
(79, 6, 798, '2024-04-27 17:27:45', '2024-04-27 17:27:45'),
(80, 6, 797, '2024-04-27 17:27:46', '2024-04-27 17:27:46'),
(81, 6, 795, '2024-04-27 17:28:19', '2024-04-27 17:28:19'),
(82, 6, 794, '2024-04-27 17:28:20', '2024-04-27 17:28:20'),
(83, 6, 757, '2024-04-27 17:28:29', '2024-04-27 17:28:29'),
(84, 6, 756, '2024-04-27 17:28:30', '2024-04-27 17:28:30'),
(85, 6, 753, '2024-04-27 17:28:34', '2024-04-27 17:28:34'),
(86, 6, 752, '2024-04-27 17:28:35', '2024-04-27 17:28:35'),
(87, 6, 751, '2024-04-27 17:29:27', '2024-04-27 17:29:27'),
(88, 6, 748, '2024-04-27 17:29:28', '2024-04-27 17:29:28'),
(89, 6, 747, '2024-04-27 17:29:30', '2024-04-27 17:29:30'),
(90, 6, 746, '2024-04-27 17:29:32', '2024-04-27 17:29:32'),
(91, 6, 745, '2024-04-27 17:29:33', '2024-04-27 17:29:33'),
(92, 6, 744, '2024-04-27 17:29:34', '2024-04-27 17:29:34'),
(93, 6, 731, '2024-04-27 17:29:35', '2024-04-27 17:29:35'),
(94, 6, 730, '2024-04-27 17:29:37', '2024-04-27 17:29:37'),
(95, 6, 729, '2024-04-27 17:29:41', '2024-04-27 17:29:41'),
(96, 6, 728, '2024-04-27 17:29:41', '2024-04-27 17:29:41'),
(97, 6, 727, '2024-04-27 17:29:42', '2024-04-27 17:29:42'),
(98, 6, 726, '2024-04-27 17:29:44', '2024-04-27 17:29:44'),
(99, 6, 725, '2024-04-27 17:29:45', '2024-04-27 17:29:45'),
(100, 6, 724, '2024-04-27 17:29:46', '2024-04-27 17:29:46'),
(101, 6, 723, '2024-04-27 17:29:47', '2024-04-27 17:29:47'),
(102, 6, 722, '2024-04-27 17:29:47', '2024-04-27 17:29:47'),
(103, 6, 825, '2024-04-27 17:29:48', '2024-04-27 17:29:48'),
(104, 6, 824, '2024-04-27 17:29:49', '2024-04-27 17:29:49'),
(105, 6, 823, '2024-04-27 17:29:50', '2024-04-27 17:29:50'),
(106, 6, 822, '2024-04-27 17:29:51', '2024-04-27 17:29:51'),
(107, 6, 821, '2024-04-27 17:29:51', '2024-04-27 17:29:51'),
(108, 6, 820, '2024-04-27 17:29:52', '2024-04-27 17:29:52'),
(109, 6, 819, '2024-04-27 17:30:15', '2024-04-27 17:30:15'),
(110, 6, 818, '2024-04-27 17:30:24', '2024-04-27 17:30:24'),
(111, 6, 817, '2024-04-27 17:30:29', '2024-04-27 17:30:29'),
(112, 6, 815, '2024-04-27 17:30:30', '2024-04-27 17:30:30'),
(113, 6, 743, '2024-04-27 17:31:05', '2024-04-27 17:31:05'),
(114, 6, 742, '2024-04-27 17:31:07', '2024-04-27 17:31:07'),
(115, 6, 741, '2024-04-27 17:31:09', '2024-04-27 17:31:09'),
(116, 6, 740, '2024-04-27 17:31:10', '2024-04-27 17:31:10'),
(117, 6, 739, '2024-04-27 17:31:11', '2024-04-27 17:31:11'),
(118, 6, 1083, '2024-04-28 04:13:03', '2024-04-28 04:13:03'),
(119, 6, 1082, '2024-04-28 04:13:07', '2024-04-28 04:13:07'),
(120, 6, 1081, '2024-04-28 04:13:33', '2024-04-28 04:13:33'),
(121, 6, 1080, '2024-04-28 04:17:53', '2024-04-28 04:17:53'),
(122, 6, 1079, '2024-04-28 04:17:54', '2024-04-28 04:17:54'),
(123, 6, 1078, '2024-04-28 04:17:57', '2024-04-28 04:17:57'),
(124, 6, 1077, '2024-04-28 04:18:13', '2024-04-28 04:18:13'),
(125, 6, 1076, '2024-04-28 04:18:15', '2024-04-28 04:18:15'),
(126, 6, 1075, '2024-04-28 04:18:22', '2024-04-28 04:18:22'),
(127, 6, 1074, '2024-04-28 04:19:00', '2024-04-28 04:19:00'),
(128, 6, 1038, '2024-04-28 04:19:05', '2024-04-28 04:19:05'),
(129, 6, 1037, '2024-04-28 04:19:06', '2024-04-28 04:19:06'),
(130, 6, 1036, '2024-04-28 04:19:19', '2024-04-28 04:19:19'),
(131, 6, 1034, '2024-04-28 04:19:25', '2024-04-28 04:19:25'),
(132, 6, 1033, '2024-04-28 04:19:26', '2024-04-28 04:19:26'),
(133, 6, 1032, '2024-04-28 04:19:32', '2024-04-28 04:19:32'),
(134, 6, 1031, '2024-04-28 04:19:35', '2024-04-28 04:19:35'),
(135, 6, 1030, '2024-04-28 04:19:42', '2024-04-28 04:19:42'),
(136, 6, 1029, '2024-04-28 04:19:43', '2024-04-28 04:19:43'),
(137, 6, 1028, '2024-04-28 04:19:51', '2024-04-28 04:19:51'),
(138, 6, 909, '2024-04-28 04:19:55', '2024-04-28 04:19:55'),
(139, 13, 1103, '2024-04-28 07:28:15', '2024-04-28 07:28:15'),
(140, 13, 1102, '2024-04-28 07:28:19', '2024-04-28 07:28:19'),
(141, 13, 1101, '2024-04-28 07:28:19', '2024-04-28 07:28:19'),
(142, 13, 1100, '2024-04-28 07:28:24', '2024-04-28 07:28:24'),
(143, 13, 1099, '2024-04-28 07:28:24', '2024-04-28 07:28:24'),
(144, 13, 1098, '2024-04-29 01:57:37', '2024-04-29 01:57:37'),
(145, 13, 1097, '2024-04-29 01:57:43', '2024-04-29 01:57:43'),
(146, 13, 1104, '2024-04-29 01:57:43', '2024-04-29 01:57:43'),
(147, 13, 1096, '2024-04-29 01:58:08', '2024-04-29 01:58:08'),
(148, 13, 1095, '2024-04-29 01:58:10', '2024-04-29 01:58:10'),
(149, 13, 1094, '2024-04-29 01:58:18', '2024-04-29 01:58:18'),
(150, 13, 1093, '2024-04-29 01:58:24', '2024-04-29 01:58:24'),
(151, 13, 1092, '2024-04-29 01:58:39', '2024-04-29 01:58:39'),
(152, 13, 1091, '2024-04-29 01:58:39', '2024-04-29 01:58:39'),
(153, 13, 1090, '2024-04-29 01:58:43', '2024-04-29 01:58:43'),
(154, 13, 1089, '2024-04-29 01:58:43', '2024-04-29 01:58:43'),
(155, 13, 1058, '2024-04-29 01:58:48', '2024-04-29 01:58:48'),
(156, 13, 1087, '2024-04-29 02:37:21', '2024-04-29 02:37:21'),
(157, 13, 1088, '2024-04-29 02:37:21', '2024-04-29 02:37:21'),
(158, 13, 1086, '2024-04-29 02:37:27', '2024-04-29 02:37:27'),
(159, 13, 1085, '2024-04-29 02:37:28', '2024-04-29 02:37:28'),
(160, 13, 1084, '2024-04-29 02:37:29', '2024-04-29 02:37:29'),
(161, 13, 1083, '2024-04-29 02:37:30', '2024-04-29 02:37:30'),
(162, 13, 1082, '2024-04-29 02:37:34', '2024-04-29 02:37:34'),
(163, 6, 1104, '2024-04-29 07:36:17', '2024-04-29 07:36:17'),
(164, 6, 1073, '2024-04-29 07:36:17', '2024-04-29 07:36:17'),
(165, 6, 1072, '2024-04-29 07:38:01', '2024-04-29 07:38:01'),
(166, 6, 1070, '2024-04-29 07:39:38', '2024-04-29 07:39:38'),
(167, 6, 1071, '2024-04-29 07:39:38', '2024-04-29 07:39:38'),
(168, 6, 1069, '2024-04-29 07:39:42', '2024-04-29 07:39:42'),
(169, 6, 1068, '2024-04-29 07:39:43', '2024-04-29 07:39:43'),
(170, 6, 1067, '2024-04-29 07:39:45', '2024-04-29 07:39:45'),
(171, 6, 1066, '2024-04-29 07:39:46', '2024-04-29 07:39:46'),
(172, 6, 1065, '2024-04-29 07:39:50', '2024-04-29 07:39:50'),
(173, 6, 1064, '2024-04-29 07:39:54', '2024-04-29 07:39:54'),
(174, 98, 1104, '2024-04-29 07:40:33', '2024-04-29 07:40:33'),
(175, 98, 1103, '2024-04-29 07:40:33', '2024-04-29 07:40:33'),
(176, 6, 1063, '2024-04-29 07:41:46', '2024-04-29 07:41:46'),
(177, 6, 1062, '2024-04-29 07:41:52', '2024-04-29 07:41:52'),
(178, 6, 1060, '2024-04-29 07:42:15', '2024-04-29 07:42:15'),
(179, 6, 1061, '2024-04-29 07:42:16', '2024-04-29 07:42:16'),
(180, 98, 1102, '2024-04-29 07:42:26', '2024-04-29 07:42:26'),
(181, 98, 1101, '2024-04-29 07:42:27', '2024-04-29 07:42:27'),
(182, 98, 1100, '2024-04-29 07:43:17', '2024-04-29 07:43:17'),
(183, 98, 1099, '2024-04-29 07:43:17', '2024-04-29 07:43:17'),
(184, 98, 1098, '2024-04-29 07:43:46', '2024-04-29 07:43:46'),
(185, 98, 1097, '2024-04-29 07:43:47', '2024-04-29 07:43:47'),
(186, 98, 1096, '2024-04-29 07:43:48', '2024-04-29 07:43:48'),
(187, 98, 1095, '2024-04-29 07:43:51', '2024-04-29 07:43:51'),
(188, 98, 1105, '2024-04-29 07:48:15', '2024-04-29 07:48:15'),
(189, 98, 1094, '2024-04-29 07:48:15', '2024-04-29 07:48:15'),
(190, 98, 1093, '2024-04-29 07:48:35', '2024-04-29 07:48:35'),
(191, 86, 1105, '2024-04-29 08:07:01', '2024-04-29 08:07:01'),
(192, 6, 1105, '2024-04-29 08:10:14', '2024-04-29 08:10:14'),
(193, 6, 1059, '2024-04-29 08:10:20', '2024-04-29 08:10:20'),
(194, 6, 1058, '2024-04-29 08:10:23', '2024-04-29 08:10:23'),
(195, 6, 1057, '2024-04-29 08:10:23', '2024-04-29 08:10:23'),
(196, 6, 1056, '2024-04-29 08:10:24', '2024-04-29 08:10:24'),
(197, 6, 1053, '2024-04-29 08:10:35', '2024-04-29 08:10:35'),
(198, 6, 1051, '2024-04-29 08:10:57', '2024-04-29 08:10:57'),
(199, 86, 1104, '2024-04-29 08:11:08', '2024-04-29 08:11:08'),
(200, 86, 1103, '2024-04-29 08:11:10', '2024-04-29 08:11:10'),
(201, 6, 1050, '2024-04-29 08:11:13', '2024-04-29 08:11:13'),
(202, 6, 1049, '2024-04-29 08:11:16', '2024-04-29 08:11:16'),
(203, 6, 1048, '2024-04-29 08:11:19', '2024-04-29 08:11:19'),
(204, 6, 512, '2024-04-29 08:11:23', '2024-04-29 08:11:23'),
(205, 86, 1102, '2024-04-29 08:11:23', '2024-04-29 08:11:23'),
(206, 6, 510, '2024-04-29 08:11:24', '2024-04-29 08:11:24'),
(207, 86, 1101, '2024-04-29 08:11:27', '2024-04-29 08:11:27'),
(208, 6, 502, '2024-04-29 08:11:29', '2024-04-29 08:11:29'),
(209, 6, 509, '2024-04-29 08:11:29', '2024-04-29 08:11:29'),
(210, 6, 508, '2024-04-29 08:11:29', '2024-04-29 08:11:29'),
(211, 6, 503, '2024-04-29 08:11:29', '2024-04-29 08:11:29'),
(212, 6, 504, '2024-04-29 08:11:29', '2024-04-29 08:11:29'),
(213, 86, 1100, '2024-04-29 08:11:32', '2024-04-29 08:11:32'),
(214, 86, 1099, '2024-04-29 08:11:33', '2024-04-29 08:11:33'),
(215, 86, 1098, '2024-04-29 08:11:35', '2024-04-29 08:11:35'),
(216, 86, 1097, '2024-04-29 08:11:57', '2024-04-29 08:11:57'),
(217, 86, 1096, '2024-04-29 08:11:59', '2024-04-29 08:11:59'),
(218, 86, 1065, '2024-04-29 08:12:05', '2024-04-29 08:12:05'),
(219, 86, 1064, '2024-04-29 08:12:05', '2024-04-29 08:12:05'),
(220, 86, 1064, '2024-04-29 08:12:05', '2024-04-29 08:12:05'),
(221, 6, 501, '2024-04-29 08:12:06', '2024-04-29 08:12:06'),
(222, 6, 501, '2024-04-29 08:12:06', '2024-04-29 08:12:06'),
(223, 6, 499, '2024-04-29 08:12:06', '2024-04-29 08:12:06'),
(224, 6, 498, '2024-04-29 08:12:08', '2024-04-29 08:12:08'),
(225, 6, 452, '2024-04-29 08:12:09', '2024-04-29 08:12:09'),
(226, 6, 450, '2024-04-29 08:12:10', '2024-04-29 08:12:10'),
(227, 6, 447, '2024-04-29 08:12:11', '2024-04-29 08:12:11'),
(228, 6, 446, '2024-04-29 08:12:13', '2024-04-29 08:12:13'),
(229, 6, 445, '2024-04-29 08:12:15', '2024-04-29 08:12:15'),
(230, 6, 444, '2024-04-29 08:12:18', '2024-04-29 08:12:18'),
(231, 6, 442, '2024-04-29 08:12:19', '2024-04-29 08:12:19'),
(232, 6, 440, '2024-04-29 08:12:20', '2024-04-29 08:12:20'),
(233, 6, 439, '2024-04-29 08:12:22', '2024-04-29 08:12:22'),
(234, 6, 435, '2024-04-29 08:12:23', '2024-04-29 08:12:23'),
(235, 6, 618, '2024-04-29 08:12:24', '2024-04-29 08:12:24'),
(236, 6, 616, '2024-04-29 08:12:25', '2024-04-29 08:12:25'),
(237, 6, 615, '2024-04-29 08:12:27', '2024-04-29 08:12:27'),
(238, 6, 614, '2024-04-29 08:12:27', '2024-04-29 08:12:27'),
(239, 6, 613, '2024-04-29 08:12:30', '2024-04-29 08:12:30'),
(240, 6, 612, '2024-04-29 08:12:30', '2024-04-29 08:12:30'),
(241, 13, 1105, '2024-04-29 08:26:30', '2024-04-29 08:26:30'),
(242, 13, 1081, '2024-04-29 08:26:34', '2024-04-29 08:26:34'),
(243, 13, 1080, '2024-04-29 08:26:45', '2024-04-29 08:26:45'),
(244, 13, 1079, '2024-04-29 08:26:50', '2024-04-29 08:26:50'),
(245, 13, 1078, '2024-04-29 08:26:54', '2024-04-29 08:26:54'),
(246, 13, 1077, '2024-04-29 08:27:00', '2024-04-29 08:27:00'),
(247, 13, 1076, '2024-04-29 08:27:02', '2024-04-29 08:27:02');

-- --------------------------------------------------------

--
-- Table structure for table `reported_posts`
--

CREATE TABLE `reported_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `reason` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reported_posts`
--

INSERT INTO `reported_posts` (`id`, `post_id`, `user_id`, `reason`, `created_at`, `updated_at`) VALUES
(1, 885, 6, 'Spam', '2024-03-25 16:11:35', '2024-03-25 16:11:35'),
(2, 870, 6, 'Inappropriate content', '2024-03-25 16:17:21', '2024-03-25 16:17:21'),
(3, 869, 6, 'Hate', '2024-03-25 16:33:35', '2024-03-25 16:33:35'),
(4, 860, 6, 'Violent & hateful entities', '2024-03-25 16:34:38', '2024-03-25 16:34:38');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` longtext DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'this is the role for admin', 1, NULL, NULL),
(3, 'user', 'this is a normal role', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subscriber_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `subscriber_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 11, 6, '2024-03-26 09:05:30', '2024-03-26 09:05:30'),
(3, 13, 6, '2024-03-26 09:52:45', '2024-03-26 09:52:45'),
(4, 6, 13, '2024-04-03 07:34:27', '2024-04-03 07:34:27'),
(5, 13, 86, '2024-04-03 15:16:58', '2024-04-03 15:16:58'),
(6, 13, 99, '2024-04-23 09:08:57', '2024-04-23 09:08:57'),
(7, 99, 13, '2024-04-23 09:22:51', '2024-04-23 09:22:51');

-- --------------------------------------------------------

--
-- Table structure for table `update_comment_replies`
--

CREATE TABLE `update_comment_replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `body` text DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `update_comment_replies`
--

INSERT INTO `update_comment_replies` (`id`, `body`, `user_id`, `comment_id`, `created_at`, `updated_at`) VALUES
(2, 'this is a reply', 6, 2, '2024-03-22 17:38:31', '2024-03-22 17:38:31'),
(3, 'this is a reply', 6, 2, '2024-03-22 17:42:20', '2024-03-22 17:42:20'),
(4, 'this is a reply', 6, 2, '2024-03-22 17:47:12', '2024-03-22 17:47:12'),
(5, 'this is a reply', 6, 2, '2024-03-22 17:48:51', '2024-03-22 17:48:51'),
(6, '@Ghost helo', 6, 23, '2024-03-22 18:54:51', '2024-03-22 18:54:51'),
(7, '@dainess good', 6, 19, '2024-03-22 19:05:42', '2024-03-22 19:05:42'),
(8, '@Ghost good', 6, 23, '2024-03-22 19:06:21', '2024-03-22 19:06:21'),
(9, '@Ghost good', 6, 23, '2024-03-22 19:06:24', '2024-03-22 19:06:24'),
(10, '@dainess good', 6, 19, '2024-03-22 19:35:38', '2024-03-22 19:35:38'),
(11, '@martinkb nicee', 6, 26, '2024-03-23 15:13:27', '2024-03-23 15:13:27'),
(12, 'good', 6, 26, '2024-03-23 15:13:36', '2024-03-23 15:13:36'),
(13, 'good', 6, 26, '2024-03-23 15:13:45', '2024-03-23 15:13:45'),
(14, '@martinkb goood', 6, 27, '2024-03-23 15:14:06', '2024-03-23 15:14:06'),
(15, 'nice', 6, 27, '2024-03-23 15:14:18', '2024-03-23 15:14:18'),
(16, '@martinkb nice', 6, 28, '2024-03-23 15:20:51', '2024-03-23 15:20:51'),
(17, '@martinkb this is hot', 6, 29, '2024-03-23 15:21:09', '2024-03-23 15:21:09'),
(18, '@Ghost noma', 13, 30, '2024-03-23 16:46:36', '2024-03-23 16:46:36'),
(19, '@Ghost why!!?', 13, 31, '2024-03-23 17:41:24', '2024-03-23 17:41:24'),
(20, '@Ghost unacheka😀', 13, 32, '2024-03-23 18:24:32', '2024-03-23 18:24:32'),
(22, '@martinkb yap', 6, 16, '2024-04-13 17:39:24', '2024-04-13 17:39:24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `username` varchar(25) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `bio` varchar(700) DEFAULT NULL,
  `phone_number` varchar(110) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `occupation` varchar(500) DEFAULT NULL,
  `public` tinyint(1) DEFAULT 0,
  `subscribe` tinyint(1) NOT NULL DEFAULT 0,
  `subscriptionPrice` decimal(10,0) DEFAULT NULL,
  `password` varchar(191) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `device_token` varchar(10000) NOT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `image`, `bio`, `phone_number`, `date_of_birth`, `occupation`, `public`, `subscribe`, `subscriptionPrice`, `password`, `role_id`, `remember_token`, `device_token`, `price`, `created_at`, `updated_at`, `reset_password_token`) VALUES
(1, 'crispin', 'martinkaboja@gmail.com', 'mohammed@gmail.com', NULL, 'bang_logo.jpg', 'chrispin', '0710426568', NULL, NULL, NULL, 0, NULL, '$2y$10$zOwW8bHBeJcSYCYCamWiiuYT/JujlktWxvJ7CuO3j4.axzqBCTB2a', 1, NULL, 'dzUHuiw9SKSZS69rFPP_rG:APA91bFQagXq1Fw68o_VAr26IXQu2UrlqpvMRgGViNjxHNJC7GrRfPdHPa2aKRXRvC027l1U8zXBB6FJm6FWq_JFO2JTyDGRy7XXtUh6rp38Cppv14xr4lIQbzR3jjc4Zmr0eBrAzYhH', NULL, '2023-05-13 02:11:51', '2023-07-30 12:27:14', NULL),
(2, 'Mr. Vincenzo Heathcote', '', 'bstokes@example.net', '2023-05-13 02:11:51', 'bang_logo.jpg', '', '0710426568', NULL, NULL, NULL, 0, NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'vVVcyj8Bci', 'vsddfewfef4rweed', NULL, '2023-05-13 02:11:51', '2023-07-23 13:02:38', NULL),
(3, 'Kiara Rohan', '', 'fredrick.schumm@example.com', '2023-05-13 02:11:51', 'bang_logo.jpg', '', '0710426568', NULL, NULL, NULL, 0, NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, '9Pj5oqlKMj', '', NULL, '2023-05-13 02:11:51', '2023-05-13 02:11:51', NULL),
(4, 'Ryder Padberg', '', 'jkeebler@example.com', '2023-05-13 02:11:51', 'bang_logo.jpg', '', '0710426568', NULL, NULL, NULL, 0, NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, '9QvPW8g9wB', '', NULL, '2023-05-13 02:11:51', '2023-05-13 02:11:51', NULL),
(5, 'Judy O\'Kon DVM', '', 'gcrist@example.org', '2023-05-13 02:11:52', 'bang_logo.jpg', '', '0710426568', NULL, NULL, NULL, 0, NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 1, 'BFLWJzn5A4', '', NULL, '2023-05-13 02:11:52', '2023-05-13 02:11:52', NULL),
(6, 'martinkb', '', 'martinkaboja@gmail.com', NULL, 'profile_pictures/LK3KegKj5BPHD8xokrE03Srf5ZUrLPIUp3mq4F0X.jpg', 'development', '0710426568', '1997-01-01', 'engineer', 1, 1, 1000, '$2y$10$zOwW8bHBeJcSYCYCamWiiuYT/JujlktWxvJ7CuO3j4.axzqBCTB2a', 1, NULL, 'eNRxfmd1QIqVgZkHN1aneZ:APA91bEoWX882vc-kvHw-8P7OxEd6xTDX_JR9KsHfIImtbNpqz29Vi77YoEHM_L9LJQcSI3yN-NdpIJSOTdJjUXbf_e9fraHi9wS4Zj16VDaCthPFyM1oSI-PYxIiQCj6fA_T-1TGAOe', 1000, '2023-05-13 02:14:41', '2024-04-26 13:33:11', 'niRdQFdtRz6ia2pAGkEq2vjFwXLLzFNKo91lrbxDHZ2nT6W6fsjJPjLwOAHT'),
(10, 'chrispin', '', 'chrispin@gmail.com', NULL, 'bang_logo.jpg', '', '0710426568', '1993-07-01', NULL, NULL, 0, NULL, '$2y$10$NZql4mSEQIAbEpsraAeZfOP11xXuJxtcDt3RUQ0kEwrHVVgHRqBKq', 1, NULL, 'dzUHuiw9SKSZS69rFPP_rG:APA91bFQagXq1Fw68o_VAr26IXQu2UrlqpvMRgGViNjxHNJC7GrRfPdHPa2aKRXRvC027l1U8zXBB6FJm6FWq_JFO2JTyDGRy7XXtUh6rp38Cppv14xr4lIQbzR3jjc4Zmr0eBrAzYhH', NULL, '2023-07-30 10:50:43', '2023-07-30 10:50:45', NULL),
(11, 'herman', NULL, 'herman@gmail.com', NULL, 'bang_logo.jpg', NULL, '0710426568', '2000-09-01', NULL, 1, 0, NULL, '$2y$10$zOwW8bHBeJcSYCYCamWiiuYT/JujlktWxvJ7CuO3j4.axzqBCTB2a', 1, NULL, 'cQrC4kiDQx6OwdbPhEq59p:APA91bFlJ-6KLmwpTRhDOAotXCj72hiC4uyR9GuXL3SDmGgWRR4wNPG4Grf4_Oqk4DooHRs2gIsxGCvtyroZLa13VNnoeYDa4oWdlsNOjow1IYLO_ZqWvAxo9vdxI5Akwomgqg97hudR', 1000, '2023-09-18 16:44:44', '2024-03-25 17:11:53', NULL),
(13, 'Carrymastory', NULL, 'kisininichrispin@gmail.com', NULL, 'profile_pictures/ao5jTgWN7IzgdIebqOspniQdTxYBvQkQVc2hQRRQ.jpg', NULL, '0717161736', '1981-11-13', 'CEO BangApp', 0, 1, 1000, '$2y$10$zOwW8bHBeJcSYCYCamWiiuYT/JujlktWxvJ7CuO3j4.axzqBCTB2a', 1, NULL, 'eIVkNBO4SLKn3R2WiJQzmv:APA91bEDuUw1e2H7c09kc_CJ9YtJ73SVUuDA8d9ItO_cLpZU-q5lFMmSdEJvz7jy27VkCIGJZYEIgv18C7jg-g0nhGeZkCZ3C1SnBq4is5k1D3HG6L9hzcoRXfDJRJFr1olCVucOkCvK', 1000, '2023-09-19 08:36:32', '2024-04-26 22:51:29', NULL),
(14, 'Zuchu', NULL, 'Sekoyorehema@gmail.com', NULL, 'profile_pictures/SswaEmybidnB3RYuoxdFYepOjwiAPMv6kQzFpZiu.jpg', 'Musician East africa', '659512993', '2024-01-13', 'Musician', 0, 0, NULL, '$2y$10$aFmd0qIlQYYpFSOMlKfLje9lsYi1XgoW1o1kdSVDt38rYzz3khbse', 1, NULL, 'c7xJHCZjSM6oSYglwmmDPE:APA91bHxfbyoPilqc8g6PNdEc8wn2XTLmJwCaFV0AQEWyiKpvxrfncCAsWeKfRI4zRF7GecacqkzBERtVuxkVlP5r05wxaJ0UJnwkOj0subG2GXjGEg9tmkj1HdR4zWVtYl5n9jVCznh', 1000, '2023-09-19 16:41:36', '2024-04-25 14:33:56', NULL),
(15, 'martnkb', NULL, 'martinkaboja@gmaill.com', NULL, 'bang_logo.jpg', NULL, '0710426568', '2000-09-06', NULL, NULL, 0, NULL, '$2y$10$uE3FOHMX6pl/GVQfs9FD1OJl0kK7YTky0MALLbMXUWAcFfpxufCVa', 1, NULL, 'eT8KvQTBSKGtU_D-acXZeI:APA91bFLBErJ6updm36604IZ4crwpLCaUMryzZnqOaMA5qRnjByEnikNgOr9pBZL-Qlxvfvtt9Lu-uKEgwrYwucKF_8YbXdDSWh3pvoVQFstG0Uhqfv4UdUl_oGyI8TC2nnVyWfmF8AX', NULL, '2023-09-19 18:35:05', '2023-09-19 18:35:09', NULL),
(16, '', NULL, '', NULL, 'bang_logo.jpg', NULL, '0710426568', NULL, NULL, NULL, 0, NULL, '', 1, NULL, '', NULL, '2023-10-01 13:00:02', '2023-10-01 13:00:02', NULL),
(25, 'martinkaboja', NULL, 'martinkabojaaa@gmail.com', NULL, 'bang_logo.jpg', NULL, '0710426568', NULL, NULL, NULL, 0, NULL, '$2y$10$C9l77YPj5tNRtHARajAU.uZyn87NDQiVka0ib7sc7WtekU9RmmM7m', 1, NULL, '', NULL, '2023-10-29 17:15:10', '2023-10-29 17:15:10', NULL),
(26, 'kabojaab', NULL, 'kaboja@gmail.comm', NULL, 'bang_logo.jpg', 'bvbv', '0710426568', '2023-10-25', 'yr', NULL, 0, NULL, '$2y$10$137r5JO5a7ixx0Ezu5xqKOQz.66QJogQBVQ3wYUXa9icJClG36try', 1, NULL, 'eT8KvQTBSKGtU_D-acXZeI:APA91bFLBErJ6updm36604IZ4crwpLCaUMryzZnqOaMA5qRnjByEnikNgOr9pBZL-Qlxvfvtt9Lu-uKEgwrYwucKF_8YbXdDSWh3pvoVQFstG0Uhqfv4UdUl_oGyI8TC2nnVyWfmF8AX', NULL, '2023-10-29 17:21:45', '2023-10-29 17:54:27', NULL),
(27, 'yuzoo', NULL, 'yuzoo@gmail.com', NULL, 'bang_logo.jpg', NULL, '0710426568', NULL, NULL, NULL, 0, NULL, '$2y$10$RIMbphrN05DqCC4i8nt96O3F7PactSrsgXlOwSDiA7/0G0UMpDuD6', 1, NULL, 'eT8KvQTBSKGtU_D-acXZeI:APA91bFLBErJ6updm36604IZ4crwpLCaUMryzZnqOaMA5qRnjByEnikNgOr9pBZL-Qlxvfvtt9Lu-uKEgwrYwucKF_8YbXdDSWh3pvoVQFstG0Uhqfv4UdUl_oGyI8TC2nnVyWfmF8AX', NULL, '2023-10-30 04:59:32', '2023-10-30 04:59:34', NULL),
(28, 'Joshua', NULL, 'urasajoshuag@gmail.com', NULL, NULL, NULL, '0710426568', NULL, NULL, 0, 0, NULL, '$2y$10$3suEH3FujdgNsvoZWUI4geaWSEUNSePgUv0H1VJ5PookT0oDQp3pC', NULL, NULL, 'du3aBotfQqOxA7U4pymlgl:APA91bGWqyt2MhzQ1otIoeJ9DRo0ZwVP-ZqCd-vAY1RRVt1l9ssHdPrIu0-b9TEzuGJzpi7kgNQT2X7j7NNfmYKa_8u3X3_Sd2Mijaaire0Sv100mq59FeyvbdEhM2-cWdYvjdqx1D0H', NULL, '2024-01-22 19:54:02', '2024-01-22 19:54:03', NULL),
(29, 'roseedward', NULL, 'rossieeedward@gmail.com', NULL, 'profile_pictures/ANK8pw0rcAVMzmVVxF7z1X86tIjwTH2uJdFaKI8H.jpg', 'business', '0710426568', '2024-03-15', 'self-employed', 0, 0, NULL, '$2y$10$hcd0uQGaLx9x4.uGB8KtVu6Er9eArPTP1V42qVupTrhxAMxeO28c.', NULL, NULL, 'cFwVm56BTaetJPvZbIvbs9:APA91bEyoqmsB0VCpLfjzeNuzG3PsjAD1R-WIe_TJOUEj0Ao5a-H5I-nyZ10WeWKoYoYW_fOQmoBn3z3SjB_-5oFdY1HeqEE7niZ8ZckYkX520TVQnfSmbvqcHqDIUUbkjsTDnHEwXOh', NULL, '2024-02-02 14:38:11', '2024-03-19 16:51:33', NULL),
(30, 'nyanda', NULL, 'knyanda01@gmail.com', NULL, NULL, 's', '0710426568', '1986-05-29', 'business', 0, 0, NULL, '$2y$10$/fWyHULXNjU24taJk51G3OhSbvXRx.QangVh4JqQBrazF9vgc4xZS', NULL, NULL, 'fdoE20TxRbmw60B7_nO7vy:APA91bHMjKXie_UtZaT0yDhi8yDxfkvlqGQODcLUoBDbE1ViiLUOvXKubtqbmUDuyx6Lwh04i9ZvtUUW4BlP_RVxprQ3t7IZn5prymh0_2JH8R4ARaZv6YxfGl50poXRo-VjnmKy96WA', NULL, '2024-02-06 06:20:50', '2024-02-06 06:22:51', NULL),
(31, 'jionijo', NULL, '0621189855', NULL, NULL, 'bio', '0710426568', '2024-02-10', 'joble', 0, 0, NULL, '$2y$10$zOwW8bHBeJcSYCYCamWiiuYT/JujlktWxvJ7CuO3j4.axzqBCTB2a', 3, NULL, 'duts6Yr1RRijctgOdO9Fen:APA91bHjgBbLto0nQE97KXc7Dyh8K-XuouJLX13nqU2po__mINyTCv_-ZT-zJmiJ0RYi2I2SOMYDFaUtuEGtqPFT4WTLol_twtsh2HChtkUl8r1V6iaeBkJTsz4aT7LYfYWLGQLbdgQr', NULL, '2024-02-10 15:51:49', '2024-02-10 15:53:07', NULL),
(33, 'Bang Inspiration', 'bang_inspiration', 'banginspiration@bangapp.pro', NULL, NULL, 'account to inspire people', '0710426568', NULL, NULL, 0, 0, NULL, '$2y$10$zOwW8bHBeJcSYCYCamWiiuYT/JujlktWxvJ7CuO3j4.axzqBCTB2a', 1, NULL, 'null', NULL, NULL, NULL, NULL),
(34, 'Lwifunyo', NULL, 'lwifunyomangula@gmail.com', NULL, NULL, 'I love People!', '0710426568', '2024-02-18', 'Designer', 0, 0, NULL, '$2y$10$w2YYb5W5EGkbCVG.vUJZcuCgSZDnyQbFTuyVHyiOdMBj2Dqmfg5Q.', NULL, NULL, 'cWoeE-UMSRGTNqCRebPsL1:APA91bGA77hCRD7eEWW8tnk1jSTHBoPj1uZZrPf9CABWmweXjVLDp6kWSCxp3aCbWExrLyy0ftRYCmIYhMhLCdJ-02o8plFr9lX3kOjshvuf7nqg7rEAhPmgPof6c8AJmNDk-2fYtlZE', NULL, '2024-02-18 13:06:42', '2024-02-18 13:07:23', NULL),
(35, 'Emmanuel', NULL, 'ej6715629@gmail.com', NULL, NULL, NULL, '0710426568', NULL, NULL, 0, 0, NULL, '$2y$10$oI8/cmDtGwjkNQ7J/Kdd4OfgsTC2KjZmv1vRwImBGEhX8O5/ALljC', NULL, NULL, 'fbK5Nms0QHWr1o4hcAQdIf:APA91bGob3zAofSuCBn6JrIIk_2ZzMMVUvkN9wVL903Q08u7m-sApNc4pe856yuEq02WDjXWSUKxCeTSp6TkEI2cBst9FF4ia5KrF1fah1YzijFYbDdV8_jDb5KVWGy2bfwKIWi9gQ1t', NULL, '2024-02-20 12:05:34', '2024-02-20 12:05:35', NULL),
(36, 'BRAVIN', NULL, 'ananiasbravin3@gmail.com', NULL, 'profile_pictures/oDs4jIygRgk3P5xZgjVsGqkFE6FaETe3rcRROXgE.jpg', 'BUSINESS', '719838652', '2001-06-16', 'business', 0, 0, NULL, '$2y$10$/9Po/HFKmtpgIwOfAiBzruyC8CispX5f1aIJrQ3g8USJSz6tvQbDy', NULL, NULL, 'cf2BATy6SSqpcR8eG1DfW4:APA91bE76CVdK09RsxIfGPTD6Twyx8W1P89E8lgdA3hr8jkEXEV6tJ2Y9vuroh53AAeLoXL0E_8Q904yCuF4Hoh7zMun6cRwNlMvUgXFmWv_663_ELaR4CjmndRjuswNa5T70g-jiF4c', NULL, '2024-02-20 13:49:30', '2024-04-02 06:51:08', NULL),
(37, 'derick', NULL, 'popsmil3888@gmail.com', NULL, 'profile_pictures/HdeqItQ1UU620dlAUqsJcPpP6p3yiJFsQoUUA6R7.webp', 'business', '0710426568', '2000-02-20', 'business', 0, 0, NULL, '$2y$10$2R2NFTu/Pp1WK4aWff4RouH/P2yfmY91QAaDUNTsHkeh91lfEmMk2', NULL, NULL, 'eQmxmWF3Qw-vGjVmOpn19p:APA91bFb0rdmpH0sh6-5bgmHidr70o7IVaV1QzuPF8oAw0GJdYn6PYG2_CW9jV96SE4Z-ml3dUn336ZQKMDw8zmmMrHA-MfCVA60lCstVzMVwPILSHzo0QNnkznWz6SoZsMtpZTZbyvU', NULL, '2024-02-21 20:09:55', '2024-02-21 20:12:21', NULL),
(38, 'Kihungwe', NULL, 'kihungwe2024@gmail.com', NULL, NULL, NULL, '0710426568', NULL, NULL, 0, 0, NULL, '$2y$10$UFAP87ErDOKEanVLMWF2Q.Tl82GIlaWVjLeGkBsa/zVCmmjHv0age', NULL, NULL, 'ceBh9gTXRFylsmtrIqLNnE:APA91bHTIoXq_nC6HVvY5fefod2Ble0TvzsfDiduRHZd4dXfYyEtC9nbYPOmvtoEucY3aqmFqPFeKHavXrrCEkfh9LNH4z8JwWflJffdqBBSliIDwWr94wSR2HUbSvpHKa2siB5Dvgzw', NULL, '2024-02-22 17:00:52', '2024-02-22 17:00:53', NULL),
(39, 'rebecka', NULL, 'rebecka@gmail.com', NULL, NULL, NULL, '0710426568', NULL, NULL, 0, 0, NULL, '$2y$10$zOwW8bHBeJcSYCYCamWiiuYT/JujlktWxvJ7CuO3j4.axzqBCTB2a', 3, NULL, 'cDewp4ehQ_e5HO8nOVO7CC:APA91bE-vMo5Ppq0OlTW7oYlpEana-F9CSV5LxxYrKlk_-af922o5AqsKc3MnjANH-LvVKRx5imw70_1pKSTSIiI7BlyOI1iP10Y1nqFbcTTLFI3rBnsDI0hI_fjEwjUYBb6v0qjasJh', NULL, '2024-02-25 13:33:39', '2024-02-25 16:51:37', NULL),
(40, 'YassinRashid', NULL, '0715438203', NULL, NULL, 'business', '0710426568', '2024-05-11', 'business', 0, 0, NULL, '$2y$10$/NgSLMyaWdlsuVPAkhqQLOwPH6XrcIeluYqQSu3K8jB5kKl6FuJK2', NULL, NULL, 'd81glbTaQYSetafNx7X1EQ:APA91bGkPI9ALaFu_Fukrk750g_1mhfGti1PNZLLI6sI8OOIBxWN7BjfF7UHlU88HS-elBnHuboJu9Q6EOt2Ej2lmJgQngCPIjJbq43F3Te1X_24qFilrt8ivQRyFozXOJWpd0M3tc7H', NULL, '2024-02-26 08:43:26', '2024-02-26 08:45:16', NULL),
(41, 'bachulotrainer', NULL, '0628681136', NULL, NULL, 'trainer', '0710426568', '2024-02-26', 'trainer', 0, 0, NULL, '$2y$10$q36IYh0EH5pslXhLAqezXOjNgwguyCSxZddvU8pqG4nO/McV8caRu', NULL, NULL, 'dvnI2pDSSH-D-NHRPnMou4:APA91bEnueTnuvHv40hd4QsL4K6POpKvIct31PZjNz4LGUZR8t-xRwndnS29cxyvztxfxGUkdO9iiTRJO3Odjct71XVenB04NU_K9JyG-gWZcdGYwsqGWgctlEzWQ2vGzYQXbLiHpG04', NULL, '2024-02-26 08:57:45', '2024-02-26 08:58:41', NULL),
(42, 'Davidmbwila', NULL, '0713185022', NULL, 'profile_pictures/v44KPtIBmYDJ5X7INP3olDzkCNS14Tmqw4fXPRmr.jpg', 'life pills', '0710426568', '2002-02-08', 'business', 0, 0, NULL, '$2y$10$c7AjJzkf6uKUhYSjRG8WJOpfF9hn8lzWXCDAaf2IOk/NaRyC.P.n2', NULL, NULL, 'cf2BATy6SSqpcR8eG1DfW4:APA91bE76CVdK09RsxIfGPTD6Twyx8W1P89E8lgdA3hr8jkEXEV6tJ2Y9vuroh53AAeLoXL0E_8Q904yCuF4Hoh7zMun6cRwNlMvUgXFmWv_663_ELaR4CjmndRjuswNa5T70g-jiF4c', NULL, '2024-02-26 16:36:00', '2024-02-26 16:45:02', NULL),
(43, 'pacoljoseph', NULL, '0622656907', NULL, 'profile_pictures/BUp6oneLJabSKFWONrUmJzkLMLBlUxwHJFq9f1Lm.jpg', '😉😉😉', '0710426568', '2002-07-04', 'student', 0, 0, NULL, '$2y$10$.YoBwyoS2LyIwhB4WNXotOeE4WkId705jLJ8411yu8vNx9.Trif.O', NULL, NULL, 'cf2BATy6SSqpcR8eG1DfW4:APA91bE76CVdK09RsxIfGPTD6Twyx8W1P89E8lgdA3hr8jkEXEV6tJ2Y9vuroh53AAeLoXL0E_8Q904yCuF4Hoh7zMun6cRwNlMvUgXFmWv_663_ELaR4CjmndRjuswNa5T70g-jiF4c', NULL, '2024-02-26 17:42:37', '2024-02-26 17:45:03', NULL),
(44, 'Tadei', NULL, '0685234575', NULL, 'profile_pictures/HeGYX0irgfjimFkjgcwRqqiOFK0YcIQpOdpcb2Vl.jpg', 'mbeya boy', '0710426568', '2002-07-04', 'student', 0, 0, NULL, '$2y$10$yUmCgIX42wkkRZGax9yRFuEyLgS8Vqa1IhCOA.F4fnxIz2bT0O.PK', NULL, NULL, 'cf2BATy6SSqpcR8eG1DfW4:APA91bE76CVdK09RsxIfGPTD6Twyx8W1P89E8lgdA3hr8jkEXEV6tJ2Y9vuroh53AAeLoXL0E_8Q904yCuF4Hoh7zMun6cRwNlMvUgXFmWv_663_ELaR4CjmndRjuswNa5T70g-jiF4c', NULL, '2024-02-26 17:48:28', '2024-02-26 17:51:44', NULL),
(45, 'Joram', NULL, '0747257337', NULL, 'profile_pictures/TzgmravEx1B3xddkNlxjwsRBZDP7MsIKYQvvi0yI.jpg', 'j boe', '0710426568', '2002-05-16', 'student', 0, 0, NULL, '$2y$10$ktyo5Vm82yjWfppePFr3/.vj34hAHMIIhb7S9q2Bq1ldf/jgxigYC', NULL, NULL, 'cf2BATy6SSqpcR8eG1DfW4:APA91bE76CVdK09RsxIfGPTD6Twyx8W1P89E8lgdA3hr8jkEXEV6tJ2Y9vuroh53AAeLoXL0E_8Q904yCuF4Hoh7zMun6cRwNlMvUgXFmWv_663_ELaR4CjmndRjuswNa5T70g-jiF4c', NULL, '2024-02-26 17:53:08', '2024-02-26 17:55:30', NULL),
(46, 'kidafuri', NULL, '0782432051', NULL, 'profile_pictures/dlChTYsAnKlgrTfxVghhFfIWbbxknAnQAKDKYjbT.jpg', 'money secularism 💵💵💵', '0710426568', '2001-05-18', 'student', 0, 0, NULL, '$2y$10$EH4Ll8lnER098Y8wQI/LPOY7Km9ZmVpfyqpRYO1glGZ32qYf0kOy.', NULL, NULL, 'cf2BATy6SSqpcR8eG1DfW4:APA91bE76CVdK09RsxIfGPTD6Twyx8W1P89E8lgdA3hr8jkEXEV6tJ2Y9vuroh53AAeLoXL0E_8Q904yCuF4Hoh7zMun6cRwNlMvUgXFmWv_663_ELaR4CjmndRjuswNa5T70g-jiF4c', NULL, '2024-02-26 17:56:55', '2024-02-26 18:01:23', NULL),
(47, 'nuhukato', NULL, '0623384574', NULL, 'profile_pictures/brPhmkdTxk4feqvYH33D2NI17jGHpqmcumbpJ1VG.jpg', 'viwalo jr', '0710426568', '2001-05-18', 'student', 0, 0, NULL, '$2y$10$lErbiFqI8/oNUfHWrP/E6O8.zP2sB7OZN6IkUOXng8Ng6H1z55fGu', NULL, NULL, 'cf2BATy6SSqpcR8eG1DfW4:APA91bE76CVdK09RsxIfGPTD6Twyx8W1P89E8lgdA3hr8jkEXEV6tJ2Y9vuroh53AAeLoXL0E_8Q904yCuF4Hoh7zMun6cRwNlMvUgXFmWv_663_ELaR4CjmndRjuswNa5T70g-jiF4c', NULL, '2024-02-26 18:05:42', '2024-02-26 18:08:09', NULL),
(48, 'anorddeo', NULL, '0622612903', NULL, 'profile_pictures/lS9DOEdAZILdjXA4OV9CcKjGcZfxKh7oZ7QTJJaS.jpg', '✌️✌️', '0710426568', '2000-09-07', 'student', 0, 0, NULL, '$2y$10$JDSiSWs9kfe4pq/dS69W4uH7iuV6gtiqeIWwDAcmE76h4VDmY9J9y', NULL, NULL, 'cf2BATy6SSqpcR8eG1DfW4:APA91bE76CVdK09RsxIfGPTD6Twyx8W1P89E8lgdA3hr8jkEXEV6tJ2Y9vuroh53AAeLoXL0E_8Q904yCuF4Hoh7zMun6cRwNlMvUgXFmWv_663_ELaR4CjmndRjuswNa5T70g-jiF4c', NULL, '2024-02-26 18:09:21', '2024-02-26 18:11:29', NULL),
(49, 'dainess', NULL, '0768924356', NULL, 'profile_pictures/c5AdjGzpFEslL4XGXMovM44cJgGlkOVtsWwNBC8m.jpg', 'Dee baby girl', '0710426568', '2000-09-07', 'student', 0, 0, NULL, '$2y$10$Bt3UBL1HAk6BaM/9BBnzxOYDzB8lFYXmbCvGdxM20nT3FMRyJfnm.', NULL, NULL, 'cf2BATy6SSqpcR8eG1DfW4:APA91bE76CVdK09RsxIfGPTD6Twyx8W1P89E8lgdA3hr8jkEXEV6tJ2Y9vuroh53AAeLoXL0E_8Q904yCuF4Hoh7zMun6cRwNlMvUgXFmWv_663_ELaR4CjmndRjuswNa5T70g-jiF4c', NULL, '2024-02-26 18:13:15', '2024-02-26 18:16:02', NULL),
(50, 'yudayuda', NULL, '0685469347', NULL, 'profile_pictures/VfCiycQVQJQp3JscLl2n8Pj8oDGrZKCIZsexyM2M.jpg', 'iringa finest 😉😉', '0710426568', '2000-09-07', 'student', 0, 0, NULL, '$2y$10$Im8h4nBx7SVrr9dpJMHede6Ticu0yd1f2K22cgTB/MfQQCLdWw2n6', NULL, NULL, 'cf2BATy6SSqpcR8eG1DfW4:APA91bE76CVdK09RsxIfGPTD6Twyx8W1P89E8lgdA3hr8jkEXEV6tJ2Y9vuroh53AAeLoXL0E_8Q904yCuF4Hoh7zMun6cRwNlMvUgXFmWv_663_ELaR4CjmndRjuswNa5T70g-jiF4c', NULL, '2024-02-26 18:17:32', '2024-02-26 18:28:05', NULL),
(51, 'Lewiskamu', NULL, '0768604938', NULL, 'profile_pictures/6qTD90VXfJFceZSqSarzkF7whsCPKmznwTOZRCZg.jpg', 'mcheshi. com😁😁', '0710426568', '2002-05-10', 'student', 0, 0, NULL, '$2y$10$Ru8exVNWS8JCvniKzEEbyOItT7LzdvD4JVoS3sakE73D5TitTib1C', NULL, NULL, 'cf2BATy6SSqpcR8eG1DfW4:APA91bE76CVdK09RsxIfGPTD6Twyx8W1P89E8lgdA3hr8jkEXEV6tJ2Y9vuroh53AAeLoXL0E_8Q904yCuF4Hoh7zMun6cRwNlMvUgXFmWv_663_ELaR4CjmndRjuswNa5T70g-jiF4c', NULL, '2024-02-26 18:30:00', '2024-02-26 18:35:09', NULL),
(52, 'ernestt', NULL, '0623849938', NULL, 'profile_pictures/tCohuJPWXBYQtcOZwzsiJuROXrTPCSGndBhD5HrX.png', 'sorry kwa kusubiri sunajua foleni', '0710426568', '2002-05-10', 'student', 0, 0, NULL, '$2y$10$ScKZEGaAyeSGeR.FNXgMQe0zUX/7bkVJ4aWuAC2SCbP1IO9xYa89q', NULL, NULL, 'cf2BATy6SSqpcR8eG1DfW4:APA91bE76CVdK09RsxIfGPTD6Twyx8W1P89E8lgdA3hr8jkEXEV6tJ2Y9vuroh53AAeLoXL0E_8Q904yCuF4Hoh7zMun6cRwNlMvUgXFmWv_663_ELaR4CjmndRjuswNa5T70g-jiF4c', NULL, '2024-02-26 18:36:39', '2024-02-26 18:39:46', NULL),
(53, 'mickifm', NULL, '0612581512', NULL, 'profile_pictures/JpOpgYY0QShun5lR8QXuvRVk7sGoVlBOk0PxQzaD.jpg', 'tuned', '0710426568', '2002-05-10', 'student', 0, 0, NULL, '$2y$10$Fsaalzg2RAeueiI8cqyQ9ekWKVni7TiuNt6ZZm1Zkvm2wMWEw0xye', NULL, NULL, 'cf2BATy6SSqpcR8eG1DfW4:APA91bE76CVdK09RsxIfGPTD6Twyx8W1P89E8lgdA3hr8jkEXEV6tJ2Y9vuroh53AAeLoXL0E_8Q904yCuF4Hoh7zMun6cRwNlMvUgXFmWv_663_ELaR4CjmndRjuswNa5T70g-jiF4c', NULL, '2024-02-26 18:41:00', '2024-02-26 18:44:31', NULL),
(54, 'faithf', NULL, '0614459447', NULL, 'profile_pictures/7DQIPU7ml64EyXDsNlw5QFId44nQScmi1LhCDd0g.jpg', 'intentions 🥰🥰🥰', '0710426568', '2002-05-10', 'student', 0, 0, NULL, '$2y$10$qXlje/TKWEiVofJTUKuct.aVIzGHCuyGJ2.6iT.s5zIvsPBQ2XS2G', NULL, NULL, 'cf2BATy6SSqpcR8eG1DfW4:APA91bE76CVdK09RsxIfGPTD6Twyx8W1P89E8lgdA3hr8jkEXEV6tJ2Y9vuroh53AAeLoXL0E_8Q904yCuF4Hoh7zMun6cRwNlMvUgXFmWv_663_ELaR4CjmndRjuswNa5T70g-jiF4c', NULL, '2024-02-26 18:46:17', '2024-02-26 18:49:14', NULL),
(55, 'Emanuel', NULL, '0775430326', NULL, 'profile_pictures/OheGAwEv0wI5gXvs5Ix3hkSRU4bQDNBGlN36Xppv.png', 'player', '0710426568', '2024-01-10', 'kenny', 0, 0, NULL, '$2y$10$IsF6vgxfKpfFBx8qoSWAqevckvaGG.FWlajEA6Mj/H4zvZw6mrmwG', NULL, NULL, 'c0aw74gUQiqnexJYZknB0X:APA91bHaOYuV42SuJVccHMl7IA69jkigpIsYCmZCZbeXpzijRhY1hClCNYit3a3wRsiw3bYhyugEr2HvBBo-5RkKpYqMi7tQYjCKzXxUi76iV_Igxl8TG2Z18yC88koX1ktmGRW2MojZ', NULL, '2024-02-26 19:10:47', '2024-02-26 19:18:50', NULL),
(56, 'ibrahim', NULL, 'ibraahherry@gmail.com', NULL, 'profile_pictures/U0wSvotUhrIW5bEreamZwxJixwtpsbjxCrrioBBQ.jpg', 'busness', '0710426568', '2024-02-26', 'busness', 0, 0, NULL, '$2y$10$ZdfqQQhnbpt870yJ5Slvs.O7odnP4erkyWfzKazt93hh1iElp3QRq', NULL, NULL, 'fbPZFKu7RJSGHRyJLQZlsF:APA91bFknhvs8MWOZfna9qpgq53eYODe_tvjnKD6mzn3H7n2b_qUL1zSdwM1QYDHoE8bEtvbt7bTHzJNkFXYIh_EExwa209MoqzFm04y8zU8yxArooBpcXbSYMuJNhArv6lfrCs-s-WB', NULL, '2024-02-26 19:17:29', '2024-02-26 19:23:04', NULL),
(57, 'Michael', NULL, '0748497142', NULL, NULL, 'trainer', '0710426568', '2024-02-26', 'Gym', 0, 0, NULL, '$2y$10$fMav6EOTK7kebxyx4K654OkgmPZmx7Ou8kpiLEiPC4j/lpGuuRXvK', NULL, NULL, 'f4LQyohKRtS66nvIyOh2L5:APA91bEURJgeHt661uCJQ1Rg-D-3AHkjH2rsvYG1Mdis8Q6ZEJODZymtbEVxP9jrakfaZm5ocuBti8ptP5EK4OEy5gtJDDlyOjzNKyajr671cIayXDtRzUMlA_Pg8pv5sA36gLQMhEig', NULL, '2024-02-26 19:19:13', '2024-02-26 19:20:12', NULL),
(58, 'jaden', NULL, '0684793115', NULL, NULL, 'driving', '0710426568', '2024-03-20', 'driving', 0, 0, NULL, '$2y$10$wB2d9Ii3XRr1aUzLmqAe9ufpMf8x.wCwIe1NfShi6zDkY/ZX0E/BO', NULL, NULL, 'djbrLt53ce5ve8-W8ahch_:APA91bGL1W4npfCCPTo3Q5haLDN72zN2Cgj5w9Qz5vnU5N9bMQWSyu3kY_rkj86MUNmxpqoUNM9iiQ_-9RInutNAmPyOnfaZBcfRqDhWWvXnGaLcy4jE3m26T15-0Eqblv64mGfse99g', NULL, '2024-02-27 11:15:56', '2024-02-27 11:19:03', NULL),
(59, 'Aretiussostenes', NULL, '0712388043', NULL, NULL, 'Business', '0710426568', '2024-02-27', 'Business', 0, 0, NULL, '$2y$10$K.pcKlXFu/t7eCOxzeW7cekVbuP0UfYnsif47/nOGYvZQ.22lUAiy', NULL, NULL, 'ev_Onuj-SSWsRfG21YX41L:APA91bFtX9MWJGRQSdLxNJQ53SqxLWjUs-20LQ_rOjOE_XZIs0gdxTbbduRfjwTfQ2_0gSJy9-yFlm_hvImMWZCUv51Ie7YW5_8ta5Qzt3cmmPIqBkDD95_ZogspDzS_-0yOjW0egSaW', NULL, '2024-02-27 11:19:42', '2024-02-27 11:25:24', NULL),
(60, 'poncianp', NULL, '0693410654', NULL, 'profile_pictures/PLYTBpbxMjcnxFwbmTpHwGYQ3SD6EcnDrqkQsLRo.jpg', 'kipara boy', '0710426568', '1997-04-17', 'student', 0, 0, NULL, '$2y$10$V8eA922G285wFQEYiMYmh.lPaQBcpKYCPSMCNp3z5d7FygsK23xW6', NULL, NULL, 'cf2BATy6SSqpcR8eG1DfW4:APA91bE76CVdK09RsxIfGPTD6Twyx8W1P89E8lgdA3hr8jkEXEV6tJ2Y9vuroh53AAeLoXL0E_8Q904yCuF4Hoh7zMun6cRwNlMvUgXFmWv_663_ELaR4CjmndRjuswNa5T70g-jiF4c', NULL, '2024-02-27 12:19:14', '2024-02-27 12:23:01', NULL),
(61, 'abedboy', NULL, '0748822949', NULL, 'profile_pictures/PsCpxL01lROCrSHt2t93UPgxJMX6ded9qsE7pRG3.jpg', 'kidogodogo', '0710426568', '1997-04-17', 'student', 0, 0, NULL, '$2y$10$8z580LyfHEUviWMIB.dq8.siIS8ChxPRqQQ6VEjPT1JqNoKsmAqLO', NULL, NULL, 'cf2BATy6SSqpcR8eG1DfW4:APA91bE76CVdK09RsxIfGPTD6Twyx8W1P89E8lgdA3hr8jkEXEV6tJ2Y9vuroh53AAeLoXL0E_8Q904yCuF4Hoh7zMun6cRwNlMvUgXFmWv_663_ELaR4CjmndRjuswNa5T70g-jiF4c', NULL, '2024-02-27 12:24:34', '2024-02-27 12:27:50', NULL),
(62, 'bitelove', NULL, '0679936727', NULL, 'profile_pictures/eMrBMf9jtGWi87kcaaXgONK7S1e36VvIyJJIw6f7.jpg', 'kasichana 🥰🥰', '0710426568', '1997-04-17', 'student', 0, 0, NULL, '$2y$10$E5BrUG9skw5kOSjliFzzleiePVqT8AruWY.97Ksh4RyCV6o2Q8bKi', NULL, NULL, 'cf2BATy6SSqpcR8eG1DfW4:APA91bE76CVdK09RsxIfGPTD6Twyx8W1P89E8lgdA3hr8jkEXEV6tJ2Y9vuroh53AAeLoXL0E_8Q904yCuF4Hoh7zMun6cRwNlMvUgXFmWv_663_ELaR4CjmndRjuswNa5T70g-jiF4c', NULL, '2024-02-27 12:30:49', '2024-02-27 12:34:13', NULL),
(63, 'davidd', NULL, '0695447060', NULL, 'profile_pictures/vkd1zQfnrnJYzkWEofWVUF5dlmlbazxQdbUcfh1K.jpg', 'Dave boe', '0710426568', '2002-04-27', 'student', 0, 0, NULL, '$2y$10$YxngsEl.voF06f/XApNReuGYaer6s8R.8V7u0uDLjzCzOvM0VtWJK', NULL, NULL, 'cf2BATy6SSqpcR8eG1DfW4:APA91bE76CVdK09RsxIfGPTD6Twyx8W1P89E8lgdA3hr8jkEXEV6tJ2Y9vuroh53AAeLoXL0E_8Q904yCuF4Hoh7zMun6cRwNlMvUgXFmWv_663_ELaR4CjmndRjuswNa5T70g-jiF4c', NULL, '2024-02-27 12:35:15', '2024-02-27 12:38:26', NULL),
(64, 'issanew', NULL, '0684851948', NULL, 'profile_pictures/2jAdFVV8A7Nago6qYWienmQT1X9h2G1bw6JabWQi.jpg', 'new boe', '0710426568', '2001-06-15', 'student', 0, 0, NULL, '$2y$10$xXh3vqyHf.5/PCC.0Ky6j.Hs7TWpnrep.ZucoQgi9OARbzXNffrdy', NULL, NULL, 'cf2BATy6SSqpcR8eG1DfW4:APA91bE76CVdK09RsxIfGPTD6Twyx8W1P89E8lgdA3hr8jkEXEV6tJ2Y9vuroh53AAeLoXL0E_8Q904yCuF4Hoh7zMun6cRwNlMvUgXFmWv_663_ELaR4CjmndRjuswNa5T70g-jiF4c', NULL, '2024-02-27 12:39:54', '2024-02-27 12:42:52', NULL),
(65, 'jescab', NULL, '0754421697', NULL, 'profile_pictures/Ept6cI9pJ7E1ESh8ij6ajEZ2Ei4g9KOYaJxECMnY.jpg', 'basketball favorite', '0710426568', '2001-06-15', 'student', 0, 0, NULL, '$2y$10$3s44Cy9xkz6u2TZOWEH4QOxiv7AzS4zTOeurTKVT6KMsAZbj86rpC', NULL, NULL, 'cf2BATy6SSqpcR8eG1DfW4:APA91bE76CVdK09RsxIfGPTD6Twyx8W1P89E8lgdA3hr8jkEXEV6tJ2Y9vuroh53AAeLoXL0E_8Q904yCuF4Hoh7zMun6cRwNlMvUgXFmWv_663_ELaR4CjmndRjuswNa5T70g-jiF4c', NULL, '2024-02-27 12:45:13', '2024-02-27 12:48:10', NULL),
(66, 'mariajose', NULL, '0676026916', NULL, 'profile_pictures/Qh8iS2C5kUL4nGPTJ8J3BXD8b6EbuQ2Gcutc4x5h.jpg', 'jozee', '0710426568', '2002-04-25', 'student', 0, 0, NULL, '$2y$10$iBvFHIXSFPZ5jxFQj5qcJe/D3bZY6h8prn1iSxn6PQ01YOHcTWZZu', NULL, NULL, 'cf2BATy6SSqpcR8eG1DfW4:APA91bE76CVdK09RsxIfGPTD6Twyx8W1P89E8lgdA3hr8jkEXEV6tJ2Y9vuroh53AAeLoXL0E_8Q904yCuF4Hoh7zMun6cRwNlMvUgXFmWv_663_ELaR4CjmndRjuswNa5T70g-jiF4c', NULL, '2024-02-27 12:50:33', '2024-02-27 12:53:11', NULL),
(67, 'lusajom', NULL, '0783500613', NULL, 'profile_pictures/4x9ZbzrM5BF7lbT1pYGKPlr1fUW2dSfdWMlP9E7v.jpg', 'mbeya finest', '0710426568', '2003-05-15', 'student', 0, 0, NULL, '$2y$10$4fS7j0p5CTitGw.uicIaK.FOz02hzVKA7NcVNY/Vk0Dgv7vdWjQue', NULL, NULL, 'cf2BATy6SSqpcR8eG1DfW4:APA91bE76CVdK09RsxIfGPTD6Twyx8W1P89E8lgdA3hr8jkEXEV6tJ2Y9vuroh53AAeLoXL0E_8Q904yCuF4Hoh7zMun6cRwNlMvUgXFmWv_663_ELaR4CjmndRjuswNa5T70g-jiF4c', NULL, '2024-02-27 12:57:32', '2024-02-27 13:00:10', NULL),
(68, 'njamaTz', NULL, '0656670102', NULL, NULL, NULL, '0710426568', NULL, NULL, 0, 0, NULL, '$2y$10$zwsiTMxJ8mZkG3yPdLcTfuL1qNS8tvQPpSlsadNKTeiABeYv3wuwG', NULL, NULL, 'cf2BATy6SSqpcR8eG1DfW4:APA91bE76CVdK09RsxIfGPTD6Twyx8W1P89E8lgdA3hr8jkEXEV6tJ2Y9vuroh53AAeLoXL0E_8Q904yCuF4Hoh7zMun6cRwNlMvUgXFmWv_663_ELaR4CjmndRjuswNa5T70g-jiF4c', NULL, '2024-02-27 13:01:43', '2024-02-27 13:01:48', NULL),
(69, 'njamapop', NULL, '0659232446', NULL, 'profile_pictures/x4iM21vPe0nptJ3JNLaYw6abpfju1SwX5XbOS3Wn.jpg', 'njama boi', '0710426568', '2003-05-15', 'student', 0, 0, NULL, '$2y$10$AccgZTg.qLlNW5ns3g7sqeuhQNXbMAX5uiAd.w3DVzJFNXk8NrJS6', NULL, NULL, 'cf2BATy6SSqpcR8eG1DfW4:APA91bE76CVdK09RsxIfGPTD6Twyx8W1P89E8lgdA3hr8jkEXEV6tJ2Y9vuroh53AAeLoXL0E_8Q904yCuF4Hoh7zMun6cRwNlMvUgXFmWv_663_ELaR4CjmndRjuswNa5T70g-jiF4c', NULL, '2024-02-27 13:04:32', '2024-02-27 13:06:12', NULL),
(70, 'shootertz', NULL, 'shooter12@gmail.com', NULL, 'profile_pictures/jkLyYnP8nzBGHaNxoryZRj0Hv9FY5I1mY8V0xA7T.jpg', 'sniperman', '0710426568', '2000-03-07', 'student', 0, 0, NULL, '$2y$10$g7A2dvnvt0EpTkGupA4uOuiBknktruu7KnIuAXED5JumInAviARfG', NULL, NULL, 'cf2BATy6SSqpcR8eG1DfW4:APA91bE76CVdK09RsxIfGPTD6Twyx8W1P89E8lgdA3hr8jkEXEV6tJ2Y9vuroh53AAeLoXL0E_8Q904yCuF4Hoh7zMun6cRwNlMvUgXFmWv_663_ELaR4CjmndRjuswNa5T70g-jiF4c', NULL, '2024-02-27 13:08:56', '2024-02-27 13:12:10', NULL),
(71, 'stellatz', NULL, '0748905972', NULL, 'profile_pictures/EZhvnbDDNoH4NYKCdjSPgaJhnDZlmnipgiqNheXy.jpg', 'beautiful girl', '0710426568', '2003-05-29', 'student', 0, 0, NULL, '$2y$10$o4R9SA7gLOiSjFUobBFhMev19eBwvkFsUd3tTbN63dsQwab1vWApa', NULL, NULL, 'cf2BATy6SSqpcR8eG1DfW4:APA91bE76CVdK09RsxIfGPTD6Twyx8W1P89E8lgdA3hr8jkEXEV6tJ2Y9vuroh53AAeLoXL0E_8Q904yCuF4Hoh7zMun6cRwNlMvUgXFmWv_663_ELaR4CjmndRjuswNa5T70g-jiF4c', NULL, '2024-02-27 13:13:27', '2024-02-27 13:16:42', NULL),
(72, 'thomasifm', NULL, '0655313800', NULL, NULL, 'Tomboyi', '0710426568', '2002-04-12', 'student', 0, 0, NULL, '$2y$10$nkmHdMqD/D//VLc2O1C1X.3V.JWFT2tTNe1m8BppgFPkasf1capqG', NULL, NULL, 'cf2BATy6SSqpcR8eG1DfW4:APA91bE76CVdK09RsxIfGPTD6Twyx8W1P89E8lgdA3hr8jkEXEV6tJ2Y9vuroh53AAeLoXL0E_8Q904yCuF4Hoh7zMun6cRwNlMvUgXFmWv_663_ELaR4CjmndRjuswNa5T70g-jiF4c', NULL, '2024-02-27 13:18:28', '2024-02-27 13:22:11', NULL),
(73, 'tseletz', NULL, '0766302664', NULL, NULL, 'karatu kwetu 😉😉', '0710426568', '2001-06-21', 'student', 0, 0, NULL, '$2y$10$BbFFCq/qZPDoIdp5/4lVpO42nrBUtI38xDkjourupFdDv5d4P4W.6', NULL, NULL, 'cf2BATy6SSqpcR8eG1DfW4:APA91bE76CVdK09RsxIfGPTD6Twyx8W1P89E8lgdA3hr8jkEXEV6tJ2Y9vuroh53AAeLoXL0E_8Q904yCuF4Hoh7zMun6cRwNlMvUgXFmWv_663_ELaR4CjmndRjuswNa5T70g-jiF4c', NULL, '2024-02-27 13:23:39', '2024-02-27 13:25:25', NULL),
(74, 'Ramadhanimagari', NULL, '0719925626', NULL, NULL, 'Business', '0710426568', '2024-02-28', 'Business', 0, 0, NULL, '$2y$10$ZkF75wDTLkg6/wA55rE3E.E.kcrBOEBq8j3joW0IVj4JYbPIGzOVK', NULL, NULL, 'f-ea0FzmSQ6kEuPJvqDVTD:APA91bFI6VQTnq1_5X5pIHKec_Q-6uE6ss35W3b9psRO8u6EBxrSCA8GyMxBza4rbiCSCfSzzpFVhv4yUdpwIVNnERQGd1YChrOUvGmQbssZ8QBl1NDaCOgJGNcVGJOWbYsyexQA4VZc', NULL, '2024-02-28 10:17:30', '2024-02-28 10:18:22', NULL),
(76, 'Benny Bonny', NULL, 'bennybonny374@gmail.com', NULL, 'profile_pictures/3zV1nKELdWyaNSYUY5dj51wsyUHG2huvlanptD3v.jpg', 'business', '0710426568', '2004-10-24', 'business', 0, 0, NULL, '$2y$10$92lmG/Xyo5ZA37l7oGcO6uQAaWbto0jX43TQh4WiUcy.p07xBZro6', NULL, NULL, 'fgTC5hTyQw680rVBoz8SQR:APA91bEUs28vj5HdJps3QrD6LRZVBYzs9hyZ-pmghoGduJdTScXIUVVY6_rpRhdWgPAvINff5i1Ioiny4a7xr24fIdubJ3M5WuWxi2fTa8CdiHaHKuN66-uNKj_bIYcCj0InKziVE_YK', NULL, '2024-02-28 17:47:39', '2024-02-28 17:52:32', NULL),
(77, 'AndeJohn', NULL, '0787656561', NULL, NULL, 'A filmmaker, media entertainment', '0710426568', '1975-11-30', 'Filmmaker', 0, 0, NULL, '$2y$10$hx1INFl8/Nq9t3rKNplt6eNqKcJn9At9uT1sjjF2C0CLXfJ0SNgq6', NULL, NULL, 'ct1XW9DXRR2J7oJeQo0ixU:APA91bFTB5nMPeDR9r49-Ied6jIb_1Ayg7-azLHXZyAyRsTSRnztxHXyAVbbbQf5N8phrE4W0EKxH9lCm6wOEVBuov3mzJJZj5j7rV4hWb4kCpPqqp4DtjFuYNgoCqnC8u9CfU_zTkyT', NULL, '2024-02-29 16:49:30', '2024-02-29 16:51:07', NULL),
(78, 'josephat', NULL, '0765808188', NULL, NULL, 'business', '0710426568', '2024-03-01', 'busness', 0, 0, NULL, '$2y$10$4rDjVq8bV33NzcHWaO9qeuL9uM2OVBhPmaey6xLRVoYYzmYlusOUS', NULL, NULL, 'eapLcUL3QOuMowguM4Tt01:APA91bHOb4KG8wqrecGgsr40_RxNP9E2ppF9jVGz_zKYakfGPY3qTg8uOlHLEd5lYMCsXZJi8FlimW-DuQwRBTHA0nb6kdhO4-1tsYnumop1hx-TZPke9s3t3jrygBMfPjJ-dpX1T7WW', NULL, '2024-03-01 10:45:09', '2024-03-01 10:45:42', NULL),
(79, 'daudimshihiri', NULL, '0766484796', NULL, 'profile_pictures/GD3Bl67KHZPpkMsPERBx6fWE4odWbD8khOylFw3o.jpg', 'Actor', '0710426568', '2024-03-01', 'Business', 0, 0, NULL, '$2y$10$wRgnBdeC4vD5YSZv5BlOIuKkj8zAp0QSnEJVXxcd0gbnz2.e8rCF6', 1, NULL, 'c_0ct-rwQpuAxhlhZoU1Cj:APA91bENG05dG2dkaeaKlYgRooCkVE3-Q4Ddz2eNIkNLQA_bm96cymgaH9vW4JwRxqb57ZMZ-dYSuWghv9urkGbGgVwuHOm-AM7BeDZ14KlQbUXFCca2u8Vn8NR-wJRduThU4OQw-vTR', NULL, '2024-03-01 11:28:13', '2024-03-07 15:11:55', NULL),
(80, 'ashirafu', NULL, 'ashirafuyasin7@gmail.com', NULL, NULL, 'business', '0710426568', '2024-03-01', 'business', 0, 0, NULL, '$2y$10$r7TFXy9UO7qDprf0w8mK0um9bRGbhDTneC215aHtFxGKZoAsF6Xea', NULL, NULL, 'c8rAcb_SRmCfFCGUoxjkoF:APA91bFDy_aSBqDNvMo3nkEEeKALIkAy5pK88Tml0j2Bgu-DJhJKxJ1jzzicrmt0bvs033pNyaSo7uV8po1_dnGdZNh8l5Aoo4p8Mkc77UDwa02itR-aElsDrcT4kHxZElnK60FZ8U3t', NULL, '2024-03-01 15:21:45', '2024-03-01 15:24:23', NULL),
(81, 'Manfredmkwembe', NULL, '0654680522', NULL, NULL, 'What and catch', '0710426568', '1990-05-22', 'Trainer', 0, 0, NULL, '$2y$10$295eq9VOsCwkTdU1XhdkNuElDpQStHzfL0xriSSwRFoSSERxtqTVi', NULL, NULL, 'fP1z33d8SaCfz3OAgHVWiQ:APA91bEUwYpSvFi7XzdkbB72ODpGqaByirEzTQZlDPGZhTpJpRDXd2XUe4Wsg9-KVDZ-w0c-twj6E_wAFqkiCtHU7Xcs25d_FxlNZlEa7xmP4Fl4bhOp7ClMbWmYK4bEbvdLH8xNuU5m', NULL, '2024-03-04 08:21:47', '2024-03-19 13:47:08', 'pvfy6Ws6phXYgS8vsBI9yRDKFaXYN7DY0Ic0VAmNGWBlP9QKpEbpcoRqmiyE'),
(82, 'MSUNGU', NULL, '0712100341', NULL, NULL, 'VOICE OF VOICE', '0710426568', '2000-07-19', 'TEACHER', 0, 0, NULL, '$2y$10$4db6gavJdVvx4aEb4hdSneU9Grxt1H43m7OTE52laV3BQtcaJAFcy', NULL, NULL, 'emh3RTJYRFSoUeWrSvEXi1:APA91bFPJ8uWGuUDmQ8IkOGP7OlD9J9ir-j5cWKrNQA4sv90KcGHYKgXb7xkM59zKI3N_ntpYrzp1CYy9i-iiD0aTweoDW-VrdIhYOJrpchYV5v5KFmiDLyEs9EGutKg4sKRCLotMP3a', NULL, '2024-03-04 17:45:54', '2024-03-04 17:47:36', NULL),
(83, 'jackline', NULL, 'martharichard159@gmail.com', NULL, NULL, 'business', '0710426568', '2024-03-04', 'business', 0, 0, NULL, '$2y$10$/V.YMb1RD/rZk57FtP1eSOsay2s8H0DDIC/f7QB/RXvrsEyfaGK3m', NULL, NULL, 'eWLTJ2EwRG2gBz25m0nkE7:APA91bGeo6h6PDPLVi2Y2qgI3qGade320QYTYZtrn8mD1juEQvRQg2qpXPS9EgqOZBg9USHAwQ9NOCNuDqcwW_mngWJlHuIyw65Kh843x26lk95Z33HmRu_I7JMoPom5CS-hfFfNAMDO', NULL, '2024-03-04 18:05:52', '2024-03-04 18:07:05', NULL),
(84, 'mectrida', NULL, '0787112056', NULL, NULL, 'business', '0710426568', '2024-03-05', 'business', 0, 0, NULL, '$2y$10$HGxYV4xOx/mUoO/iFtdddOQ3fndRjjvgWr3dR2drA0g9JZeQZpz1O', NULL, NULL, 'f6uPdl3FTfOyitu-_bPHzY:APA91bHfuDDr0M2GTwUqjpZXG16eHcvkKsP9tPxc58BOkUYmreI2BxJe82dJ2HfuRocIIkvrkz4Oqrllh_nggb-p1UUsIKyeCH9lILCSll_fH0dpfoVSeVL4DM-7KnOQCOE7nRBwbASw', NULL, '2024-03-05 06:26:14', '2024-03-05 06:26:53', NULL),
(85, 'ethel', NULL, '0763599149', NULL, NULL, 'business', '0710426568', '2024-03-08', 'business', 0, 0, NULL, '$2y$10$qdzcJgIYV3jQQZurkFGfA./sTXxrElNWEkUKSQVtTOskkQf4/styS', NULL, NULL, 'chvkArUJSFqvgBXgMCodg5:APA91bEG_u_LNJqzuizP3NJIHc37NKxpdGfNcXce8rE52V5q-PF_7LzNHH9gD9_BM0bE6oV9N35Wn9mIUBGAaZWhnheedrVFkdmkWxauQTAcEhEeuMsDx6WAViUlWQgwam3pRFpCGjex', NULL, '2024-03-08 10:06:08', '2024-03-08 10:09:35', NULL),
(86, 'Nenga', NULL, 'manfredmkwembe@gmail.com', NULL, 'profile_pictures/pfX6RB2IA5IAWTTr3LFb8F9DDgLXTXjyFBqSd1L5.jpg', 'take off', '0654680522', '1990-05-22', 'Got', 0, 0, 1000, '$2y$10$VLuIdGhRapenZGulpffZCuA5P.aN2J6uPzccGKm8/K96pgQJ82y8K', NULL, NULL, 'c42KrobHSfqqRnl0RuneEV:APA91bFrfhOUDNMeDj2tGMCoj1DaQUd_farF0s-ig52pcdbZyoNfHHXXqJvfGXihViSWSruIs9WLEY0BcR5omTnIoM6p0mO0gjAwEFHNpCKSnaUHWtEGInf1Dl2s7A9n6cOZMinV4Bz7', 1000, '2024-03-19 14:04:11', '2024-04-25 14:33:06', NULL),
(87, 'cassian', NULL, 'cassianshao19@gmail.com', NULL, NULL, 'them', '749321987', '2024-12-19', 'teacher', 0, 0, NULL, '$2y$10$Jj7FYJ7WnO2VoJXu0wHMGuwGuhubKgBrzLF41AAI7LODlHFxRghq2', NULL, NULL, 'cKD_RtLOShm5WmtxI35_4a:APA91bHBR5aeKIq1kY36Sd2ifz5ezbzEPuH-vMYVwgudVwJUwpR0IieDZfhcDMEkkfhFaXC6xL_ZRkdrK8PCcFHTwcuVFyoavzyMXwNwobE_r7EPJMNJWtK33D0wq2Hvo2cFwUEHhaD2', NULL, '2024-03-19 23:42:59', '2024-03-19 23:44:54', NULL),
(88, 'priscamanyerezi', NULL, 'pmanyerezi@gmail.com', NULL, 'profile_pictures/7J4MTOd7GzgY1bez7Bl9HpCiLS4DvjEOfjwZAxZn.jpg', 'crdb', '768359243', '2002-02-26', 'crdb', 0, 0, NULL, '$2y$10$v9eUGBTh26uP9lcnenYSeOqYGj5tnwTxk8OPpEkjySNxULnCZ6Wti', NULL, NULL, 'e3H4r51OQPq7O_b1w0bRjp:APA91bHGJit-9Ilt2n8r84KUNgW5HD1yqnuDx9xLOQPfWZMKkh2Au3l4Yy0rQ7z9G8S196kS6wclmIUJx9mPdrDJEuGoZELRgY-3r_1_dFcwREPao6vvEGYJvtmpyaCKI5mqzdYjBnvt', NULL, '2024-03-21 04:47:37', '2024-03-21 04:49:41', NULL),
(89, 'Kisoda', NULL, '0757884920', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, '$2y$10$tIPNOP5wVwz.bl3fW4NY6OkTF7A6nfp0p/8rWtqfRHOcQi0AslJK.', NULL, NULL, 'f3nlggKaQ0SGbh2o66iq3t:APA91bFM41Nm33DjSSFQ9G7ap6ar5xeDwk7gqqAhtfIlvn66s5c96By60NErpBIyAtCLGZ9bwsWP1yfxsBXWyGDdhZz7315A159gViIAXRf22XxWNnkvw7eaONNKnIS_beNqrhSRs_yx', NULL, '2024-03-29 20:05:55', '2024-03-29 20:05:56', NULL),
(90, 'Njungu', NULL, 'njungusangu@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, '$2y$10$LtUUaBZVroqzqTecNmng6OyOdh1Ns29lvHgecNJUJkHA9jHW5fzK.', NULL, NULL, 'f3nlggKaQ0SGbh2o66iq3t:APA91bFM41Nm33DjSSFQ9G7ap6ar5xeDwk7gqqAhtfIlvn66s5c96By60NErpBIyAtCLGZ9bwsWP1yfxsBXWyGDdhZz7315A159gViIAXRf22XxWNnkvw7eaONNKnIS_beNqrhSRs_yx', NULL, '2024-03-29 20:15:03', '2024-03-29 20:15:05', NULL),
(95, 'Sungu Sangu', NULL, 'sungusangu04@gmail.com', NULL, 'https://lh3.googleusercontent.com/a/ACg8ocLN-rNMEN_MfmO-_2-LccL5R6_mkKr0E39DeNurdD4l=s96-c', NULL, NULL, NULL, NULL, 0, 0, NULL, '$2y$10$o/4zrag4yNZJkB9N3bRcO.JrOYmxSL0FtT9Mp7f1G0uTfzru2n40y', NULL, NULL, 'fnI5l-YARPiNuruYC7gEsE:APA91bFNviKOZ_Mygc0P6jkpBDM97eUr-Uz28CP2FQC4y-HMgeFLgKfDK8LrsjcEmxXl9WQLWNDpVwv1rcWlymzfwFmyrRbnQ5TggfqKY5JOX3fRdRQ8nAOrfCMysYd-Fa3UGz_rrUoL', NULL, '2024-03-30 15:26:22', '2024-03-30 15:26:24', NULL),
(96, 'Aishashabani', NULL, 'ashaishabani@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, '$2y$10$4pV7kdt1sFPXLRo9YZyNc.Rgp8uU.XR5kh9YaXOHuEmZl6tC0Ksau', NULL, NULL, 'fMchzKcRRLKemAKXBtloWX:APA91bFA9xmZfLmrcV2xywjVjpCNr_nxuzAiNlsoEco2wg-uvL1E4B979Ze6_GNInDvwgksCK_3KtW_z8S5uokUeTQtqMn0LqloL293LCDTth-TaovnLFME0LUMVi_7JQf3YIMPdzO9-', NULL, '2024-04-13 05:23:34', '2024-04-13 05:23:35', NULL),
(97, 'fatmamustafa', NULL, 'mustafamatma@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, '$2y$10$bHUi/uhPziv1KvsZdruvUO9Sh0Ny9lg6jMYCrEYqKSSimKO9yjVG6', NULL, NULL, 'c30eIOn0SbSElctJ9TpMus:APA91bEG2rC5Ci544O-mBI7saL8uJRcEke2ouJQZst1jCDGSF68vGyslTQKcwn0fmxX9O1gKhGzIUuTUYxmwACjBhtwO78Sot7iphCtDWJL4vnaz_7Stz0Kv-7fiHLSS7pWq2aJFeZ0V', NULL, '2024-04-18 16:44:14', '2024-04-18 16:44:15', NULL),
(98, 'DiamondPlatnumz', NULL, '0785929950', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, '$2y$10$H2ilyTxBIkROQlUXMs1zxOxPM1nQN8ntm43NXbCP.Kj0K3u4QJ9G.', NULL, NULL, 'f1AxMX_bRYKOrVCpXFNyr7:APA91bEo-iF5Q9fCYlmXGtISz6SjIDdFlE5u7VO07hnNeg0k5oWA6i-L5KhVMECrWRYBFR5pCFur6LOWE5Eio1anPzm-bWP5kHRjnp58yrH3XUfQwgSYpE4mRB_GLO3EKPm4izXxKIke', NULL, '2024-04-22 10:23:39', '2024-04-22 10:23:40', NULL),
(99, 'Ireenuwoya', NULL, '0711925999', NULL, 'profile_pictures/7WUUabrB4pEQGjkFcs2AvPydqR6h67baMHvPzCG4.jpg', 'Business', '0711925999', '2000-04-22', 'Business', 0, 1, 1000, '$2y$10$qou8d8q1pMiPdP.ZcTWCxe/2wp7e/AIgj09lhwd4E4R/Y.mmjiNmy', NULL, NULL, 'eNRxfmd1QIqVgZkHN1aneZ:APA91bEoWX882vc-kvHw-8P7OxEd6xTDX_JR9KsHfIImtbNpqz29Vi77YoEHM_L9LJQcSI3yN-NdpIJSOTdJjUXbf_e9fraHi9wS4Zj16VDaCthPFyM1oSI-PYxIiQCj6fA_T-1TGAOe', NULL, '2024-04-22 14:18:46', '2024-04-23 18:51:00', NULL),
(100, 'chino', NULL, '0716607925', NULL, NULL, 'busness', '0716607925', '1985-04-22', 'busness', 0, 0, NULL, '$2y$10$x1knpvK06ci/VnkAwqWpi.ryI/26F2UXhH24z5kVCPJYshtg0Nlp.', NULL, NULL, 'fNOkQbh2Rb6w2MQlkTJ7Wa:APA91bHFtPE_utf0Iq7yUkOlDXr01tH25CgK292uKg-rrgL3fk0WU7K9sYPZo1So00wup0QQNk7xEWfmkwkYBTixLS5cl-981nCZ7tlivehfQNw2iE1ma5Oou2I-KoPfMUyZDKeKX9BO', NULL, '2024-04-22 14:32:13', '2024-04-22 14:55:33', NULL),
(101, 'Rayvanny', NULL, 'Shabanidavid80@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, '$2y$10$notOht2fyy8Ck8Mx1fSVYu5Jjp3JeJ.Xz3W1.2ZQiDnmvbHt0zu5e', NULL, NULL, 'c7RfHp6qQS6T20UqXqNdHo:APA91bHm1RLtC6EokVyKdynuP09PIH8XTMWH0zkh-uRwym7FEQjK4qWLqcXvqBdEcVnbtYME2VQ3pNNvrQVTCu27vNvgfaknjPu80saTfCrJ4uIFjL4Pslq7BbtNOd66ejhCUMskYLYQ', NULL, '2024-04-22 16:17:28', '2024-04-22 16:17:29', NULL),
(102, 'Billnass', NULL, '0614920592', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, '$2y$10$6ubG7S1eZ.b88N6KNJIoe.5U0/MmzStPOdPIe/EpGZm7.4igH1Kni', NULL, NULL, 'c7RfHp6qQS6T20UqXqNdHo:APA91bHm1RLtC6EokVyKdynuP09PIH8XTMWH0zkh-uRwym7FEQjK4qWLqcXvqBdEcVnbtYME2VQ3pNNvrQVTCu27vNvgfaknjPu80saTfCrJ4uIFjL4Pslq7BbtNOd66ejhCUMskYLYQ', NULL, '2024-04-22 16:31:35', '2024-04-22 16:31:36', NULL),
(103, 'David', NULL, 'davidmoris58@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, '$2y$10$yqrZQi/6IaX4ZFntst.UkeRSe0PBwF6eK3hFguikbRz21WVal28E2', NULL, NULL, 'c7RfHp6qQS6T20UqXqNdHo:APA91bHm1RLtC6EokVyKdynuP09PIH8XTMWH0zkh-uRwym7FEQjK4qWLqcXvqBdEcVnbtYME2VQ3pNNvrQVTCu27vNvgfaknjPu80saTfCrJ4uIFjL4Pslq7BbtNOd66ejhCUMskYLYQ', NULL, '2024-04-22 16:48:13', '2024-04-22 16:48:14', NULL),
(104, 'JUXJUMA', NULL, '0685675691', NULL, NULL, 'LIVE PERFORMANCE', '0685675691', '1988-06-08', 'BUSINESS', 0, 0, NULL, '$2y$10$ffFBBtKoYZRhlE9rmiC4LO/MfAE17jfADO.Qh.9Ye3i5riaumrQq6', NULL, NULL, 'ddrjE31ARhG1EMGPxe97j8:APA91bFDNEaoF2Kzvu12wU6RjuRqyTrcpcug_I0pCi7t6gjKGDZdimrWzztoeXncUxsHbTKuODysuKgFr3BLLc9ebtaASLCvqlpYgTmV6JCMnuoMYV5SWUkRQ9KFvQFmgDEeI97ZtxTG', NULL, '2024-04-22 16:52:04', '2024-04-22 16:56:02', NULL),
(105, 'Grace', NULL, 'gracegarcia76@icloud.com', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, '$2y$10$9XwSP7RBDX7ezbFsBE9N2OgKnjtJtnCDsJlL4qZ83VIan6n5gemFe', NULL, NULL, '', NULL, '2024-04-24 00:00:01', '2024-04-24 00:00:01', NULL),
(106, 'Carolyne', NULL, '0746853930', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, '$2y$10$bI2f3UM9YHFa177kPAHmJe2OKO73sf1yyZQO2/a/eiBy63x4fvhJu', NULL, NULL, 'dBPL5Vh_QPSwGs_nfPuQWd:APA91bEKzAV9sVXoazN3tZLiCXNyq9OGF9gHuBwNk4Luu0C0yUOhQTz998kfwezDj6vvojQppe2KYnfatEZb5gyx4bmOA3WsuRT6aVxxftPF31YyDvlo9dmE09HU6C2RNP_UvZCYAiAH', NULL, '2024-04-24 07:42:29', '2024-04-24 07:42:30', NULL),
(107, 'joh babai', NULL, '0693512884', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, '$2y$10$DSw2qWuxMdNouWZLnP92RuIkhl/n0CJ/2XMwX7mouH.mdhebS.9Yq', NULL, NULL, 'fvEBgRl2QLON0qZtiSaoXr:APA91bEOYZUTdCulyyIszKaLcInPsEPVF9yNm0dqB6tYYvxqPoz8ED5_yUyuaQhwBVEimOEMLDw6xwyfInneCO1sdOg6dvJ9_QG6jcVG-VawtUPV-FZaSNse72Nr5ZuE-TDOyOPWfvUR', NULL, '2024-04-24 08:58:21', '2024-04-24 08:58:24', NULL),
(108, 'BABAI', NULL, 'hrjoongwita@gmail.com', NULL, 'profile_pictures/7ceaBuEozDWUC3Bag1ozf5mZGX6ftF2dWQTabhAp.jpg', '🔹Pro-boxer 2-0🇹🇿\n🔹Fitness model\n🔹 AFRICAN 🇹🇿\n🔹 Technician Certificate in Shipping and Port management holder 🛳️🚢', NULL, '1998-02-12', 'Professional boxer', 0, 0, NULL, '$2y$10$PbVDkfgh3bfK.1IuH2JSxevWjyHkRt4HZM9Z7RUbR2aIInvM2tByu', NULL, NULL, 'fvEBgRl2QLON0qZtiSaoXr:APA91bEOYZUTdCulyyIszKaLcInPsEPVF9yNm0dqB6tYYvxqPoz8ED5_yUyuaQhwBVEimOEMLDw6xwyfInneCO1sdOg6dvJ9_QG6jcVG-VawtUPV-FZaSNse72Nr5ZuE-TDOyOPWfvUR', NULL, '2024-04-24 16:24:39', '2024-04-24 16:35:34', NULL),
(109, 'Sam', NULL, 'sam@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, '$2y$10$bmLyXTUypd1cTnlts4DNWOO4ik16Sn1/TXC6J2/Q2ErvPkkruMXqy', NULL, NULL, 'eNRxfmd1QIqVgZkHN1aneZ:APA91bEoWX882vc-kvHw-8P7OxEd6xTDX_JR9KsHfIImtbNpqz29Vi77YoEHM_L9LJQcSI3yN-NdpIJSOTdJjUXbf_e9fraHi9wS4Zj16VDaCthPFyM1oSI-PYxIiQCj6fA_T-1TGAOe', NULL, '2024-04-25 14:24:07', '2024-04-25 14:24:08', NULL),
(110, 'Samwel', NULL, 'Sam2@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, '$2y$10$qIBICTY05CQpm0v/9VBwf.TkwochWzWg6lEKPPYUmVWy06TUjweL2', NULL, NULL, 'eNRxfmd1QIqVgZkHN1aneZ:APA91bEoWX882vc-kvHw-8P7OxEd6xTDX_JR9KsHfIImtbNpqz29Vi77YoEHM_L9LJQcSI3yN-NdpIJSOTdJjUXbf_e9fraHi9wS4Zj16VDaCthPFyM1oSI-PYxIiQCj6fA_T-1TGAOe', NULL, '2024-04-25 15:06:17', '2024-04-25 15:06:18', NULL),
(111, 'Samk', NULL, 'Samk@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, '$2y$10$AuZBO1ggYOa0TbTFsUQ7z.eJSB.ZwAdnFtJ015k.COHx1jm7juHQW', NULL, NULL, 'eNRxfmd1QIqVgZkHN1aneZ:APA91bEoWX882vc-kvHw-8P7OxEd6xTDX_JR9KsHfIImtbNpqz29Vi77YoEHM_L9LJQcSI3yN-NdpIJSOTdJjUXbf_e9fraHi9wS4Zj16VDaCthPFyM1oSI-PYxIiQCj6fA_T-1TGAOe', NULL, '2024-04-25 15:13:40', '2024-04-25 15:13:42', NULL),
(112, 'K', NULL, 'K@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, '$2y$10$hG6Hap6vYg4/zzPfCPGo/.t0VFq1fsi3E6bZ8Ol.BqwaNu2mHWdcO', NULL, NULL, 'eNRxfmd1QIqVgZkHN1aneZ:APA91bEoWX882vc-kvHw-8P7OxEd6xTDX_JR9KsHfIImtbNpqz29Vi77YoEHM_L9LJQcSI3yN-NdpIJSOTdJjUXbf_e9fraHi9wS4Zj16VDaCthPFyM1oSI-PYxIiQCj6fA_T-1TGAOe', NULL, '2024-04-25 15:47:07', '2024-04-25 15:47:08', NULL),
(113, 'L', NULL, 'L@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, '$2y$10$dI7gZ7Q.r1xnMPDGbobZTu8NPuEd1fjjEKFPUbZyLhlGABySpWTLq', NULL, NULL, 'eNRxfmd1QIqVgZkHN1aneZ:APA91bEoWX882vc-kvHw-8P7OxEd6xTDX_JR9KsHfIImtbNpqz29Vi77YoEHM_L9LJQcSI3yN-NdpIJSOTdJjUXbf_e9fraHi9wS4Zj16VDaCthPFyM1oSI-PYxIiQCj6fA_T-1TGAOe', NULL, '2024-04-25 15:51:54', '2024-04-25 15:51:55', NULL),
(114, 'M', NULL, 'M@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, '$2y$10$2a6tD4UclUXqKScJJJ9FJufcL3g0TWodXWXaLXYqKh3Mh92RDPady', NULL, NULL, 'eNRxfmd1QIqVgZkHN1aneZ:APA91bEoWX882vc-kvHw-8P7OxEd6xTDX_JR9KsHfIImtbNpqz29Vi77YoEHM_L9LJQcSI3yN-NdpIJSOTdJjUXbf_e9fraHi9wS4Zj16VDaCthPFyM1oSI-PYxIiQCj6fA_T-1TGAOe', NULL, '2024-04-25 15:59:19', '2024-04-25 15:59:20', NULL),
(115, 'Mn', NULL, 'martink@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, '$2y$10$Uw0Pg2njOX.eVmZp8ga/.utANGleTpXtbYbiVMMPJ8GiaPvQakzfW', NULL, NULL, 'eNRxfmd1QIqVgZkHN1aneZ:APA91bEoWX882vc-kvHw-8P7OxEd6xTDX_JR9KsHfIImtbNpqz29Vi77YoEHM_L9LJQcSI3yN-NdpIJSOTdJjUXbf_e9fraHi9wS4Zj16VDaCthPFyM1oSI-PYxIiQCj6fA_T-1TGAOe', NULL, '2024-04-25 16:24:10', '2024-04-25 16:24:12', NULL),
(116, 'Mkk', NULL, 'Mkk@gmail.com', NULL, 'profile_pictures/ifPVLz9ef6NkpqUwkbX6B6uHNzViW2UH71co23vz.jpg', NULL, '0898789987', '2000-01-12', NULL, 0, 0, NULL, '$2y$10$/pp/wi.0qKLyxRYUBW6U6uTeNIDlzHSnN50Tnyl0eNZRal825LQQS', NULL, NULL, 'eNRxfmd1QIqVgZkHN1aneZ:APA91bEoWX882vc-kvHw-8P7OxEd6xTDX_JR9KsHfIImtbNpqz29Vi77YoEHM_L9LJQcSI3yN-NdpIJSOTdJjUXbf_e9fraHi9wS4Zj16VDaCthPFyM1oSI-PYxIiQCj6fA_T-1TGAOe', NULL, '2024-04-25 16:38:30', '2024-04-25 16:43:23', NULL),
(117, 'G', NULL, 'Mhh@gmail.com', NULL, 'profile_pictures/Y05BsdAEMg7RAUC9Ndkylxg72xDkhMjA9VzuHPek.jpg', 'I\'m a business man', '0789675567', '2000-01-05', 'Business', 0, 0, NULL, '$2y$10$ThHUdwba4wddT3cINAHYoe6v4BHnTegYtT40gRjV6tpugSDjA7nLS', NULL, NULL, 'eNRxfmd1QIqVgZkHN1aneZ:APA91bEoWX882vc-kvHw-8P7OxEd6xTDX_JR9KsHfIImtbNpqz29Vi77YoEHM_L9LJQcSI3yN-NdpIJSOTdJjUXbf_e9fraHi9wS4Zj16VDaCthPFyM1oSI-PYxIiQCj6fA_T-1TGAOe', NULL, '2024-04-25 16:45:39', '2024-04-25 16:46:59', NULL),
(118, 'Yhj', NULL, 'Hbbg@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, '$2y$10$Tr9gAckWKvfbBrHwgxPcLO76HDlc.CU9zulJPBBeuJ7ENAMBcjMBC', NULL, NULL, 'eNRxfmd1QIqVgZkHN1aneZ:APA91bEoWX882vc-kvHw-8P7OxEd6xTDX_JR9KsHfIImtbNpqz29Vi77YoEHM_L9LJQcSI3yN-NdpIJSOTdJjUXbf_e9fraHi9wS4Zj16VDaCthPFyM1oSI-PYxIiQCj6fA_T-1TGAOe', NULL, '2024-04-25 16:47:48', '2024-04-25 16:47:49', NULL),
(119, 'Bvvh', NULL, 'Bvvh@gmail.com', NULL, 'profile_pictures/PI3xJEkGginCVHipMD53XP00Gy0bVBjNp2k28XVF.jpg', 'This', '07085679767', '2000-01-12', 'This', 0, 0, NULL, '$2y$10$h7E5VcByTirjAXBD/LsuTetTdrEAARF8GD6.yYwVZbd9rWKcrhH.e', NULL, NULL, 'eNRxfmd1QIqVgZkHN1aneZ:APA91bEoWX882vc-kvHw-8P7OxEd6xTDX_JR9KsHfIImtbNpqz29Vi77YoEHM_L9LJQcSI3yN-NdpIJSOTdJjUXbf_e9fraHi9wS4Zj16VDaCthPFyM1oSI-PYxIiQCj6fA_T-1TGAOe', NULL, '2024-04-25 16:53:04', '2024-04-25 16:53:45', NULL),
(120, 'Tfhg', NULL, 'Fvgv@gmail.com', NULL, 'profile_pictures/rOBQfraad93QQHp4atTwycjxb0xQbY4itkYRgxDR.jpg', 'Fggghhg', '0868675678', '2000-01-05', 'Business', 0, 0, NULL, '$2y$10$rBU5sHLHixsuRoy/AZS9HOMOYE9w0NKZkhCYRh6.l3DFoTmWsv2x.', NULL, NULL, 'eNRxfmd1QIqVgZkHN1aneZ:APA91bEoWX882vc-kvHw-8P7OxEd6xTDX_JR9KsHfIImtbNpqz29Vi77YoEHM_L9LJQcSI3yN-NdpIJSOTdJjUXbf_e9fraHi9wS4Zj16VDaCthPFyM1oSI-PYxIiQCj6fA_T-1TGAOe', NULL, '2024-04-25 16:54:39', '2024-04-25 17:24:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_hobby`
--

CREATE TABLE `user_hobby` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `hobby_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_hobby`
--

INSERT INTO `user_hobby` (`id`, `user_id`, `hobby_id`, `created_at`, `updated_at`) VALUES
(1, 1, 3, NULL, NULL),
(2, 1, 4, NULL, NULL),
(3, 1, 14, NULL, NULL),
(4, 1, 17, NULL, NULL),
(5, 1, 22, NULL, NULL),
(6, 2, 17, NULL, NULL),
(7, 2, 25, NULL, NULL),
(8, 2, 28, NULL, NULL),
(9, 2, 36, NULL, NULL),
(10, 2, 44, NULL, NULL),
(11, 3, 16, NULL, NULL),
(12, 3, 21, NULL, NULL),
(13, 3, 24, NULL, NULL),
(14, 3, 25, NULL, NULL),
(15, 3, 44, NULL, NULL),
(16, 4, 7, NULL, NULL),
(17, 4, 11, NULL, NULL),
(18, 4, 16, NULL, NULL),
(19, 4, 17, NULL, NULL),
(20, 4, 39, NULL, NULL),
(21, 5, 6, NULL, NULL),
(22, 5, 28, NULL, NULL),
(23, 5, 32, NULL, NULL),
(24, 5, 40, NULL, NULL),
(25, 5, 49, NULL, NULL),
(26, 6, 6, NULL, NULL),
(27, 6, 14, NULL, NULL),
(28, 6, 15, NULL, NULL),
(29, 6, 20, NULL, NULL),
(30, 6, 21, NULL, NULL),
(31, 10, 6, NULL, NULL),
(32, 10, 15, NULL, NULL),
(33, 10, 33, NULL, NULL),
(34, 10, 39, NULL, NULL),
(35, 10, 46, NULL, NULL),
(36, 11, 4, NULL, NULL),
(37, 11, 24, NULL, NULL),
(38, 11, 26, NULL, NULL),
(39, 11, 43, NULL, NULL),
(40, 11, 46, NULL, NULL),
(41, 13, 7, NULL, NULL),
(42, 13, 24, NULL, NULL),
(43, 13, 31, NULL, NULL),
(44, 13, 39, NULL, NULL),
(45, 13, 44, NULL, NULL),
(46, 14, 1, NULL, NULL),
(47, 14, 22, NULL, NULL),
(48, 14, 25, NULL, NULL),
(49, 14, 43, NULL, NULL),
(50, 14, 51, NULL, NULL),
(51, 15, 5, NULL, NULL),
(52, 15, 10, NULL, NULL),
(53, 15, 14, NULL, NULL),
(54, 15, 15, NULL, NULL),
(55, 15, 49, NULL, NULL),
(56, 16, 4, NULL, NULL),
(57, 16, 10, NULL, NULL),
(58, 16, 23, NULL, NULL),
(59, 16, 24, NULL, NULL),
(60, 16, 28, NULL, NULL),
(61, 25, 6, NULL, NULL),
(62, 25, 10, NULL, NULL),
(63, 25, 41, NULL, NULL),
(64, 25, 48, NULL, NULL),
(65, 25, 53, NULL, NULL),
(66, 26, 15, NULL, NULL),
(67, 26, 17, NULL, NULL),
(68, 26, 20, NULL, NULL),
(69, 26, 26, NULL, NULL),
(70, 26, 45, NULL, NULL),
(71, 27, 4, NULL, NULL),
(72, 27, 11, NULL, NULL),
(73, 27, 26, NULL, NULL),
(74, 27, 34, NULL, NULL),
(75, 27, 48, NULL, NULL),
(76, 28, 3, NULL, NULL),
(77, 28, 12, NULL, NULL),
(78, 28, 14, NULL, NULL),
(79, 28, 15, NULL, NULL),
(80, 28, 35, NULL, NULL),
(81, 29, 4, NULL, NULL),
(82, 29, 11, NULL, NULL),
(83, 29, 14, NULL, NULL),
(84, 29, 32, NULL, NULL),
(85, 29, 39, NULL, NULL),
(86, 30, 8, NULL, NULL),
(87, 30, 9, NULL, NULL),
(88, 30, 18, NULL, NULL),
(89, 30, 24, NULL, NULL),
(90, 30, 28, NULL, NULL),
(91, 31, 4, NULL, NULL),
(92, 31, 6, NULL, NULL),
(93, 31, 22, NULL, NULL),
(94, 31, 34, NULL, NULL),
(95, 31, 46, NULL, NULL),
(96, 33, 1, NULL, NULL),
(97, 33, 2, NULL, NULL),
(98, 33, 3, NULL, NULL),
(99, 33, 12, NULL, NULL),
(100, 33, 52, NULL, NULL),
(101, 34, 16, NULL, NULL),
(102, 34, 26, NULL, NULL),
(103, 34, 34, NULL, NULL),
(104, 34, 36, NULL, NULL),
(105, 34, 48, NULL, NULL),
(106, 35, 13, NULL, NULL),
(107, 35, 18, NULL, NULL),
(108, 35, 33, NULL, NULL),
(109, 35, 45, NULL, NULL),
(110, 35, 47, NULL, NULL),
(111, 36, 10, NULL, NULL),
(112, 36, 12, NULL, NULL),
(113, 36, 20, NULL, NULL),
(114, 36, 38, NULL, NULL),
(115, 36, 48, NULL, NULL),
(116, 37, 2, NULL, NULL),
(117, 37, 28, NULL, NULL),
(118, 37, 41, NULL, NULL),
(119, 37, 43, NULL, NULL),
(120, 37, 52, NULL, NULL),
(121, 38, 17, NULL, NULL),
(122, 38, 33, NULL, NULL),
(123, 38, 40, NULL, NULL),
(124, 38, 42, NULL, NULL),
(125, 38, 48, NULL, NULL),
(126, 39, 10, NULL, NULL),
(127, 39, 11, NULL, NULL),
(128, 39, 17, NULL, NULL),
(129, 39, 21, NULL, NULL),
(130, 39, 51, NULL, NULL),
(131, 40, 22, NULL, NULL),
(132, 40, 31, NULL, NULL),
(133, 40, 42, NULL, NULL),
(134, 40, 43, NULL, NULL),
(135, 40, 50, NULL, NULL),
(136, 41, 12, NULL, NULL),
(137, 41, 22, NULL, NULL),
(138, 41, 29, NULL, NULL),
(139, 41, 43, NULL, NULL),
(140, 41, 49, NULL, NULL),
(141, 42, 2, NULL, NULL),
(142, 42, 5, NULL, NULL),
(143, 42, 9, NULL, NULL),
(144, 42, 14, NULL, NULL),
(145, 42, 22, NULL, NULL),
(146, 43, 2, NULL, NULL),
(147, 43, 5, NULL, NULL),
(148, 43, 8, NULL, NULL),
(149, 43, 19, NULL, NULL),
(150, 43, 24, NULL, NULL),
(151, 44, 3, NULL, NULL),
(152, 44, 28, NULL, NULL),
(153, 44, 29, NULL, NULL),
(154, 44, 39, NULL, NULL),
(155, 44, 47, NULL, NULL),
(156, 45, 32, NULL, NULL),
(157, 45, 41, NULL, NULL),
(158, 45, 42, NULL, NULL),
(159, 45, 43, NULL, NULL),
(160, 45, 49, NULL, NULL),
(161, 46, 1, NULL, NULL),
(162, 46, 9, NULL, NULL),
(163, 46, 25, NULL, NULL),
(164, 46, 41, NULL, NULL),
(165, 46, 51, NULL, NULL),
(166, 47, 5, NULL, NULL),
(167, 47, 21, NULL, NULL),
(168, 47, 24, NULL, NULL),
(169, 47, 31, NULL, NULL),
(170, 47, 42, NULL, NULL),
(171, 48, 16, NULL, NULL),
(172, 48, 19, NULL, NULL),
(173, 48, 21, NULL, NULL),
(174, 48, 23, NULL, NULL),
(175, 48, 27, NULL, NULL),
(176, 49, 1, NULL, NULL),
(177, 49, 31, NULL, NULL),
(178, 49, 35, NULL, NULL),
(179, 49, 37, NULL, NULL),
(180, 49, 39, NULL, NULL),
(181, 50, 2, NULL, NULL),
(182, 50, 3, NULL, NULL),
(183, 50, 12, NULL, NULL),
(184, 50, 18, NULL, NULL),
(185, 50, 39, NULL, NULL),
(186, 51, 3, NULL, NULL),
(187, 51, 20, NULL, NULL),
(188, 51, 24, NULL, NULL),
(189, 51, 26, NULL, NULL),
(190, 51, 51, NULL, NULL),
(191, 52, 9, NULL, NULL),
(192, 52, 11, NULL, NULL),
(193, 52, 31, NULL, NULL),
(194, 52, 42, NULL, NULL),
(195, 52, 43, NULL, NULL),
(196, 53, 15, NULL, NULL),
(197, 53, 19, NULL, NULL),
(198, 53, 25, NULL, NULL),
(199, 53, 37, NULL, NULL),
(200, 53, 52, NULL, NULL),
(201, 54, 3, NULL, NULL),
(202, 54, 10, NULL, NULL),
(203, 54, 17, NULL, NULL),
(204, 54, 30, NULL, NULL),
(205, 54, 41, NULL, NULL),
(206, 55, 17, NULL, NULL),
(207, 55, 25, NULL, NULL),
(208, 55, 26, NULL, NULL),
(209, 55, 37, NULL, NULL),
(210, 55, 41, NULL, NULL),
(211, 56, 8, NULL, NULL),
(212, 56, 33, NULL, NULL),
(213, 56, 35, NULL, NULL),
(214, 56, 51, NULL, NULL),
(215, 56, 53, NULL, NULL),
(216, 57, 5, NULL, NULL),
(217, 57, 12, NULL, NULL),
(218, 57, 17, NULL, NULL),
(219, 57, 34, NULL, NULL),
(220, 57, 47, NULL, NULL),
(221, 58, 3, NULL, NULL),
(222, 58, 22, NULL, NULL),
(223, 58, 29, NULL, NULL),
(224, 58, 40, NULL, NULL),
(225, 58, 51, NULL, NULL),
(226, 59, 1, NULL, NULL),
(227, 59, 7, NULL, NULL),
(228, 59, 18, NULL, NULL),
(229, 59, 28, NULL, NULL),
(230, 59, 34, NULL, NULL),
(231, 60, 6, NULL, NULL),
(232, 60, 14, NULL, NULL),
(233, 60, 19, NULL, NULL),
(234, 60, 33, NULL, NULL),
(235, 60, 53, NULL, NULL),
(236, 61, 4, NULL, NULL),
(237, 61, 5, NULL, NULL),
(238, 61, 6, NULL, NULL),
(239, 61, 35, NULL, NULL),
(240, 61, 39, NULL, NULL),
(241, 62, 12, NULL, NULL),
(242, 62, 21, NULL, NULL),
(243, 62, 23, NULL, NULL),
(244, 62, 42, NULL, NULL),
(245, 62, 44, NULL, NULL),
(246, 63, 2, NULL, NULL),
(247, 63, 25, NULL, NULL),
(248, 63, 28, NULL, NULL),
(249, 63, 38, NULL, NULL),
(250, 63, 53, NULL, NULL),
(251, 64, 13, NULL, NULL),
(252, 64, 19, NULL, NULL),
(253, 64, 21, NULL, NULL),
(254, 64, 27, NULL, NULL),
(255, 64, 39, NULL, NULL),
(256, 65, 22, NULL, NULL),
(257, 65, 27, NULL, NULL),
(258, 65, 34, NULL, NULL),
(259, 65, 46, NULL, NULL),
(260, 65, 48, NULL, NULL),
(261, 66, 8, NULL, NULL),
(262, 66, 10, NULL, NULL),
(263, 66, 21, NULL, NULL),
(264, 66, 35, NULL, NULL),
(265, 66, 45, NULL, NULL),
(266, 67, 9, NULL, NULL),
(267, 67, 12, NULL, NULL),
(268, 67, 24, NULL, NULL),
(269, 67, 47, NULL, NULL),
(270, 67, 49, NULL, NULL),
(271, 68, 28, NULL, NULL),
(272, 68, 33, NULL, NULL),
(273, 68, 34, NULL, NULL),
(274, 68, 47, NULL, NULL),
(275, 68, 52, NULL, NULL),
(276, 69, 29, NULL, NULL),
(277, 69, 32, NULL, NULL),
(278, 69, 42, NULL, NULL),
(279, 69, 43, NULL, NULL),
(280, 69, 51, NULL, NULL),
(281, 70, 17, NULL, NULL),
(282, 70, 19, NULL, NULL),
(283, 70, 27, NULL, NULL),
(284, 70, 32, NULL, NULL),
(285, 70, 34, NULL, NULL),
(286, 71, 12, NULL, NULL),
(287, 71, 14, NULL, NULL),
(288, 71, 21, NULL, NULL),
(289, 71, 24, NULL, NULL),
(290, 71, 49, NULL, NULL),
(291, 72, 21, NULL, NULL),
(292, 72, 34, NULL, NULL),
(293, 72, 35, NULL, NULL),
(294, 72, 42, NULL, NULL),
(295, 72, 50, NULL, NULL),
(296, 73, 11, NULL, NULL),
(297, 73, 29, NULL, NULL),
(298, 73, 36, NULL, NULL),
(299, 73, 40, NULL, NULL),
(300, 73, 51, NULL, NULL),
(301, 74, 8, NULL, NULL),
(302, 74, 16, NULL, NULL),
(303, 74, 21, NULL, NULL),
(304, 74, 22, NULL, NULL),
(305, 74, 43, NULL, NULL),
(306, 76, 6, NULL, NULL),
(307, 76, 7, NULL, NULL),
(308, 76, 11, NULL, NULL),
(309, 76, 35, NULL, NULL),
(310, 76, 41, NULL, NULL),
(311, 77, 1, NULL, NULL),
(312, 77, 4, NULL, NULL),
(313, 77, 12, NULL, NULL),
(314, 77, 14, NULL, NULL),
(315, 77, 28, NULL, NULL),
(316, 78, 1, NULL, NULL),
(317, 78, 9, NULL, NULL),
(318, 78, 21, NULL, NULL),
(319, 78, 27, NULL, NULL),
(320, 78, 31, NULL, NULL),
(321, 79, 3, NULL, NULL),
(322, 79, 13, NULL, NULL),
(323, 79, 27, NULL, NULL),
(324, 79, 38, NULL, NULL),
(325, 79, 44, NULL, NULL),
(326, 80, 5, NULL, NULL),
(327, 80, 30, NULL, NULL),
(328, 80, 31, NULL, NULL),
(329, 80, 39, NULL, NULL),
(330, 80, 45, NULL, NULL),
(331, 81, 14, NULL, NULL),
(332, 81, 18, NULL, NULL),
(333, 81, 19, NULL, NULL),
(334, 81, 23, NULL, NULL),
(335, 81, 32, NULL, NULL),
(336, 82, 1, NULL, NULL),
(337, 82, 17, NULL, NULL),
(338, 82, 36, NULL, NULL),
(339, 82, 39, NULL, NULL),
(340, 82, 49, NULL, NULL),
(341, 83, 17, NULL, NULL),
(342, 83, 18, NULL, NULL),
(343, 83, 34, NULL, NULL),
(344, 83, 35, NULL, NULL),
(345, 83, 47, NULL, NULL),
(346, 84, 18, NULL, NULL),
(347, 84, 33, NULL, NULL),
(348, 84, 42, NULL, NULL),
(349, 84, 43, NULL, NULL),
(350, 84, 52, NULL, NULL),
(351, 85, 2, NULL, NULL),
(352, 85, 12, NULL, NULL),
(353, 85, 34, NULL, NULL),
(354, 85, 35, NULL, NULL),
(355, 85, 40, NULL, NULL),
(356, 86, 1, NULL, NULL),
(357, 86, 19, NULL, NULL),
(358, 86, 33, NULL, NULL),
(359, 86, 43, NULL, NULL),
(360, 86, 45, NULL, NULL),
(361, 87, 13, NULL, NULL),
(362, 87, 14, NULL, NULL),
(363, 87, 29, NULL, NULL),
(364, 87, 47, NULL, NULL),
(365, 87, 50, NULL, NULL),
(366, 88, 9, NULL, NULL),
(367, 88, 15, NULL, NULL),
(368, 88, 22, NULL, NULL),
(369, 88, 45, NULL, NULL),
(370, 88, 53, NULL, NULL),
(371, 89, 4, NULL, NULL),
(372, 89, 11, NULL, NULL),
(373, 89, 27, NULL, NULL),
(374, 89, 32, NULL, NULL),
(375, 89, 33, NULL, NULL),
(376, 90, 6, NULL, NULL),
(377, 90, 11, NULL, NULL),
(378, 90, 14, NULL, NULL),
(379, 90, 15, NULL, NULL),
(380, 90, 25, NULL, NULL),
(381, 95, 8, NULL, NULL),
(382, 95, 13, NULL, NULL),
(383, 95, 20, NULL, NULL),
(384, 95, 37, NULL, NULL),
(385, 95, 44, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `websockets_statistics_entries`
--

CREATE TABLE `websockets_statistics_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `app_id` varchar(191) NOT NULL,
  `peak_connection_count` int(11) NOT NULL,
  `websocket_message_count` int(11) NOT NULL,
  `api_message_count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `websockets_statistics_entries`
--

INSERT INTO `websockets_statistics_entries` (`id`, `app_id`, `peak_connection_count`, `websocket_message_count`, `api_message_count`, `created_at`, `updated_at`) VALUES
(1, '12345', 0, 0, 1, '2023-08-15 13:15:19', '2023-08-15 13:15:19'),
(2, '12345', 0, 0, 1, '2023-08-15 13:16:17', '2023-08-15 13:16:17'),
(3, '12345', 0, 0, 1, '2023-08-15 13:17:16', '2023-08-15 13:17:16'),
(4, '12345', 0, 0, 1, '2023-08-15 13:18:17', '2023-08-15 13:18:17'),
(5, '12345', 0, 0, 1, '2023-08-15 13:19:16', '2023-08-15 13:19:16'),
(6, '12345', 0, 0, 1, '2023-08-15 13:20:17', '2023-08-15 13:20:17'),
(7, '12345', 0, 0, 1, '2023-08-15 13:21:17', '2023-08-15 13:21:17'),
(8, '12345', 0, 0, 1, '2023-08-15 13:22:17', '2023-08-15 13:22:17'),
(9, '12345', 1, 8, 1, '2023-08-15 14:27:27', '2023-08-15 14:27:27'),
(10, '12345', 1, 1, 2, '2023-08-15 14:28:26', '2023-08-15 14:28:26'),
(11, '12345', 1, 1, 1, '2023-08-15 14:29:26', '2023-08-15 14:29:26'),
(12, '12345', 1, 1, 1, '2023-08-15 14:30:26', '2023-08-15 14:30:26'),
(13, '12345', 1, 2, 1, '2023-08-15 14:54:53', '2023-08-15 14:54:53'),
(14, '12345', 1, 2, 1, '2023-08-15 14:55:52', '2023-08-15 14:55:52'),
(15, '12345', 1, 1, 1, '2023-08-15 14:56:52', '2023-08-15 14:56:52'),
(16, '12345', 1, 1, 1, '2023-08-15 14:57:53', '2023-08-15 14:57:53'),
(17, '12345', 1, 2, 1, '2023-08-15 14:58:52', '2023-08-15 14:58:52'),
(18, '12345', 1, 1, 1, '2023-08-15 14:59:53', '2023-08-15 14:59:53'),
(19, '12345', 1, 2, 1, '2023-08-15 15:00:53', '2023-08-15 15:00:53'),
(20, '12345', 1, 2, 1, '2023-08-15 15:01:54', '2023-08-15 15:01:54'),
(21, '12345', 1, 1, 1, '2023-08-15 15:02:52', '2023-08-15 15:02:52'),
(22, '12345', 1, 1, 1, '2023-08-15 15:03:52', '2023-08-15 15:03:52'),
(23, '12345', 1, 2, 1, '2023-08-15 15:04:52', '2023-08-15 15:04:52'),
(24, '12345', 1, 1, 1, '2023-08-15 15:05:52', '2023-08-15 15:05:52'),
(25, '12345', 1, 1, 1, '2023-08-15 15:06:53', '2023-08-15 15:06:53'),
(26, '12345', 1, 2, 1, '2023-08-15 15:07:53', '2023-08-15 15:07:53'),
(27, '12345', 1, 2, 1, '2023-08-15 15:08:53', '2023-08-15 15:08:53'),
(28, '12345', 1, 1, 2, '2023-08-15 15:09:53', '2023-08-15 15:09:53'),
(29, '12345', 1, 1, 1, '2023-08-15 15:10:53', '2023-08-15 15:10:53'),
(30, '12345', 1, 1, 1, '2023-08-15 15:11:53', '2023-08-15 15:11:53'),
(31, '12345', 1, 2, 1, '2023-08-15 15:12:53', '2023-08-15 15:12:53'),
(32, '12345', 1, 1, 1, '2023-08-15 15:13:53', '2023-08-15 15:13:53'),
(33, '12345', 1, 1, 2, '2023-08-15 15:14:53', '2023-08-15 15:14:53'),
(34, '12345', 1, 1, 1, '2023-08-15 15:15:53', '2023-08-15 15:15:53'),
(35, '12345', 1, 1, 1, '2023-08-15 15:16:53', '2023-08-15 15:16:53'),
(36, '12345', 1, 2, 1, '2023-08-15 15:17:53', '2023-08-15 15:17:53'),
(37, '12345', 1, 1, 1, '2023-08-15 15:18:53', '2023-08-15 15:18:53'),
(38, '12345', 1, 1, 1, '2023-08-15 15:19:53', '2023-08-15 15:19:53'),
(39, '12345', 1, 2, 1, '2023-08-15 15:20:53', '2023-08-15 15:20:53'),
(40, '12345', 1, 1, 1, '2023-08-15 15:21:53', '2023-08-15 15:21:53'),
(41, '12345', 1, 1, 1, '2023-08-15 15:22:53', '2023-08-15 15:22:53'),
(42, '12345', 1, 1, 1, '2023-08-15 15:23:53', '2023-08-15 15:23:53'),
(43, '12345', 1, 1, 1, '2023-08-15 15:24:53', '2023-08-15 15:24:53'),
(44, '12345', 1, 1, 1, '2023-08-15 15:25:53', '2023-08-15 15:25:53'),
(45, '12345', 1, 1, 1, '2023-08-15 15:26:53', '2023-08-15 15:26:53'),
(46, '12345', 1, 2, 1, '2023-08-15 15:27:53', '2023-08-15 15:27:53'),
(47, '12345', 1, 1, 1, '2023-08-15 15:28:54', '2023-08-15 15:28:54'),
(48, '12345', 1, 2, 1, '2023-08-15 15:29:55', '2023-08-15 15:29:55'),
(49, '12345', 1, 0, 1, '2023-08-15 15:30:53', '2023-08-15 15:30:53'),
(50, '12345', 1, 1, 1, '2023-08-15 15:31:53', '2023-08-15 15:31:53'),
(51, '12345', 1, 1, 1, '2023-08-15 15:32:53', '2023-08-15 15:32:53'),
(52, '12345', 1, 1, 1, '2023-08-15 15:33:53', '2023-08-15 15:33:53'),
(53, '12345', 1, 1, 1, '2023-08-15 15:34:53', '2023-08-15 15:34:53'),
(54, '12345', 1, 1, 1, '2023-08-15 15:35:53', '2023-08-15 15:35:53'),
(55, '12345', 1, 1, 1, '2023-08-15 15:36:53', '2023-08-15 15:36:53'),
(56, '12345', 1, 1, 1, '2023-08-15 15:37:53', '2023-08-15 15:37:53'),
(57, '12345', 1, 1, 1, '2023-08-15 15:38:53', '2023-08-15 15:38:53'),
(58, '12345', 1, 1, 1, '2023-08-15 15:39:53', '2023-08-15 15:39:53'),
(59, '12345', 1, 1, 1, '2023-08-15 15:40:53', '2023-08-15 15:40:53'),
(60, '12345', 1, 1, 1, '2023-08-15 15:41:53', '2023-08-15 15:41:53'),
(61, '12345', 1, 2, 1, '2023-08-15 15:42:54', '2023-08-15 15:42:54'),
(62, '12345', 1, 2, 1, '2023-08-15 15:43:53', '2023-08-15 15:43:53'),
(63, '12345', 1, 1, 1, '2023-08-15 15:44:53', '2023-08-15 15:44:53'),
(64, '12345', 1, 1, 1, '2023-08-15 15:45:53', '2023-08-15 15:45:53'),
(65, '12345', 1, 1, 1, '2023-08-15 15:46:53', '2023-08-15 15:46:53'),
(66, '12345', 1, 1, 1, '2023-08-15 15:47:53', '2023-08-15 15:47:53'),
(67, '12345', 1, 1, 1, '2023-08-15 15:48:53', '2023-08-15 15:48:53'),
(68, '12345', 1, 2, 1, '2023-08-15 15:49:53', '2023-08-15 15:49:53'),
(69, '12345', 1, 1, 1, '2023-08-15 15:50:54', '2023-08-15 15:50:54'),
(70, '12345', 1, 2, 1, '2023-08-15 15:51:53', '2023-08-15 15:51:53'),
(71, '12345', 1, 1, 1, '2023-08-15 15:52:53', '2023-08-15 15:52:53'),
(72, '12345', 1, 1, 1, '2023-08-15 15:53:53', '2023-08-15 15:53:53'),
(73, '12345', 1, 1, 1, '2023-08-15 15:54:54', '2023-08-15 15:54:54'),
(74, '12345', 1, 1, 1, '2023-08-15 15:55:54', '2023-08-15 15:55:54'),
(75, '12345', 1, 1, 1, '2023-08-15 15:56:53', '2023-08-15 15:56:53'),
(76, '12345', 1, 1, 1, '2023-08-15 15:57:53', '2023-08-15 15:57:53'),
(77, '12345', 1, 1, 1, '2023-08-15 15:58:53', '2023-08-15 15:58:53'),
(78, '12345', 1, 1, 1, '2023-08-15 15:59:53', '2023-08-15 15:59:53'),
(79, '12345', 1, 1, 1, '2023-08-15 16:00:53', '2023-08-15 16:00:53'),
(80, '12345', 1, 1, 1, '2023-08-15 16:01:53', '2023-08-15 16:01:53'),
(81, '12345', 1, 1, 2, '2023-08-15 16:02:53', '2023-08-15 16:02:53'),
(82, '12345', 1, 1, 2, '2023-08-15 16:03:53', '2023-08-15 16:03:53'),
(83, '12345', 1, 1, 1, '2023-08-15 16:04:53', '2023-08-15 16:04:53'),
(84, '12345', 1, 1, 1, '2023-08-15 16:05:53', '2023-08-15 16:05:53'),
(85, '12345', 1, 1, 1, '2023-08-15 16:06:54', '2023-08-15 16:06:54'),
(86, '12345', 1, 2, 1, '2023-08-15 16:07:53', '2023-08-15 16:07:53'),
(87, '12345', 1, 1, 1, '2023-08-15 16:08:53', '2023-08-15 16:08:53'),
(88, '12345', 1, 1, 1, '2023-08-15 16:09:53', '2023-08-15 16:09:53'),
(89, '12345', 1, 1, 1, '2023-08-15 16:10:53', '2023-08-15 16:10:53'),
(90, '12345', 1, 1, 1, '2023-08-15 16:11:53', '2023-08-15 16:11:53'),
(91, '12345', 1, 1, 1, '2023-08-15 16:12:53', '2023-08-15 16:12:53'),
(92, '12345', 1, 1, 1, '2023-08-15 16:13:53', '2023-08-15 16:13:53'),
(93, '12345', 1, 1, 1, '2023-08-15 16:14:53', '2023-08-15 16:14:53'),
(94, '12345', 1, 2, 1, '2023-08-15 16:15:53', '2023-08-15 16:15:53'),
(95, '12345', 1, 1, 1, '2023-08-15 16:16:53', '2023-08-15 16:16:53'),
(96, '12345', 1, 1, 1, '2023-08-15 16:17:53', '2023-08-15 16:17:53'),
(97, '12345', 1, 1, 1, '2023-08-15 16:18:53', '2023-08-15 16:18:53'),
(98, '12345', 1, 1, 1, '2023-08-15 16:19:53', '2023-08-15 16:19:53'),
(99, '12345', 1, 1, 1, '2023-08-15 16:20:53', '2023-08-15 16:20:53'),
(100, '12345', 1, 1, 1, '2023-08-15 16:21:53', '2023-08-15 16:21:53'),
(101, '12345', 1, 1, 1, '2023-08-15 16:22:53', '2023-08-15 16:22:53'),
(102, '12345', 1, 2, 1, '2023-08-15 16:23:53', '2023-08-15 16:23:53'),
(103, '12345', 1, 1, 1, '2023-08-15 16:24:53', '2023-08-15 16:24:53'),
(104, '12345', 1, 1, 1, '2023-08-15 16:25:53', '2023-08-15 16:25:53'),
(105, '12345', 1, 1, 1, '2023-08-15 16:26:53', '2023-08-15 16:26:53'),
(106, '12345', 1, 1, 1, '2023-08-15 16:27:53', '2023-08-15 16:27:53'),
(107, '12345', 1, 1, 1, '2023-08-15 16:28:53', '2023-08-15 16:28:53'),
(108, '12345', 1, 1, 1, '2023-08-15 16:29:53', '2023-08-15 16:29:53'),
(109, '12345', 1, 1, 1, '2023-08-15 16:30:53', '2023-08-15 16:30:53'),
(110, '12345', 1, 1, 1, '2023-08-15 16:31:53', '2023-08-15 16:31:53'),
(111, '12345', 1, 1, 1, '2023-08-15 16:32:53', '2023-08-15 16:32:53'),
(112, '12345', 1, 1, 1, '2023-08-15 16:33:53', '2023-08-15 16:33:53'),
(113, '12345', 1, 1, 1, '2023-08-15 16:34:53', '2023-08-15 16:34:53'),
(114, '12345', 1, 1, 1, '2023-08-15 16:35:53', '2023-08-15 16:35:53'),
(115, '12345', 1, 1, 1, '2023-08-15 16:36:53', '2023-08-15 16:36:53'),
(116, '12345', 1, 1, 1, '2023-08-15 16:37:53', '2023-08-15 16:37:53'),
(117, '12345', 1, 1, 1, '2023-08-15 16:38:54', '2023-08-15 16:38:54'),
(118, '12345', 1, 1, 1, '2023-08-15 16:39:53', '2023-08-15 16:39:53'),
(119, '12345', 1, 1, 1, '2023-08-15 16:40:53', '2023-08-15 16:40:53'),
(120, '12345', 1, 1, 1, '2023-08-15 16:41:53', '2023-08-15 16:41:53'),
(121, '12345', 1, 1, 1, '2023-08-15 16:42:53', '2023-08-15 16:42:53'),
(122, '12345', 1, 2, 1, '2023-08-15 16:43:53', '2023-08-15 16:43:53'),
(123, '12345', 1, 1, 1, '2023-08-15 16:44:53', '2023-08-15 16:44:53'),
(124, '12345', 1, 1, 1, '2023-08-15 16:45:53', '2023-08-15 16:45:53'),
(125, '12345', 1, 1, 1, '2023-08-15 16:46:53', '2023-08-15 16:46:53'),
(126, '12345', 1, 1, 1, '2023-08-15 16:47:53', '2023-08-15 16:47:53'),
(127, '12345', 1, 1, 1, '2023-08-15 16:48:53', '2023-08-15 16:48:53'),
(128, '12345', 1, 1, 1, '2023-08-15 16:49:55', '2023-08-15 16:49:55'),
(129, '12345', 1, 2, 1, '2023-08-15 16:50:53', '2023-08-15 16:50:53'),
(130, '12345', 1, 1, 1, '2023-08-15 16:51:53', '2023-08-15 16:51:53'),
(131, '12345', 1, 1, 0, '2023-08-15 16:53:39', '2023-08-15 16:53:39'),
(132, '12345', 0, 1, 1, '2023-08-15 16:54:39', '2023-08-15 16:54:39'),
(133, '12345', 0, 2, 1, '2023-08-15 16:55:39', '2023-08-15 16:55:39'),
(134, '12345', 0, 2, 1, '2023-08-15 16:56:39', '2023-08-15 16:56:39'),
(135, '12345', 0, 2, 1, '2023-08-15 16:57:39', '2023-08-15 16:57:39'),
(136, '12345', 0, 2, 1, '2023-08-15 16:58:39', '2023-08-15 16:58:39'),
(137, '12345', 0, 2, 1, '2023-08-15 16:59:39', '2023-08-15 16:59:39'),
(138, '12345', 0, 2, 1, '2023-08-15 17:00:39', '2023-08-15 17:00:39'),
(139, '12345', 0, 2, 1, '2023-08-15 17:01:39', '2023-08-15 17:01:39'),
(140, '12345', 0, 2, 1, '2023-08-15 17:02:39', '2023-08-15 17:02:39'),
(141, '12345', 0, 2, 1, '2023-08-15 17:03:40', '2023-08-15 17:03:40'),
(142, '12345', 0, 2, 1, '2023-08-15 17:04:39', '2023-08-15 17:04:39'),
(143, '12345', 0, 2, 1, '2023-08-15 17:05:40', '2023-08-15 17:05:40'),
(144, '12345', 0, 2, 1, '2023-08-15 17:06:39', '2023-08-15 17:06:39'),
(145, '12345', 0, 2, 1, '2023-08-15 17:07:39', '2023-08-15 17:07:39'),
(146, '12345', 1, 0, 0, '2023-08-15 17:09:56', '2023-08-15 17:09:56'),
(147, '12345', 0, 2, 1, '2023-08-15 17:10:56', '2023-08-15 17:10:56'),
(148, '12345', 0, 2, 1, '2023-08-15 17:11:56', '2023-08-15 17:11:56'),
(149, '12345', 0, 2, 1, '2023-08-15 17:12:56', '2023-08-15 17:12:56'),
(150, '12345', 1, 9, 0, '2023-08-15 17:16:44', '2023-08-15 17:16:44'),
(151, '12345', 1, 1, 1, '2023-08-15 17:17:43', '2023-08-15 17:17:43'),
(152, '12345', 1, 1, 1, '2023-08-15 17:18:43', '2023-08-15 17:18:43'),
(153, '12345', 1, 1, 1, '2023-08-15 17:19:43', '2023-08-15 17:19:43'),
(154, '12345', 1, 1, 1, '2023-08-15 17:20:43', '2023-08-15 17:20:43'),
(155, '12345', 1, 1, 1, '2023-08-15 17:21:43', '2023-08-15 17:21:43'),
(156, '12345', 1, 1, 1, '2023-08-15 17:22:43', '2023-08-15 17:22:43'),
(157, '12345', 1, 1, 1, '2023-08-15 17:23:43', '2023-08-15 17:23:43'),
(158, '12345', 1, 1, 1, '2023-08-15 17:24:43', '2023-08-15 17:24:43'),
(159, '12345', 1, 1, 1, '2023-08-15 17:25:43', '2023-08-15 17:25:43'),
(160, '12345', 1, 1, 1, '2023-08-15 17:26:43', '2023-08-15 17:26:43'),
(161, '12345', 1, 1, 1, '2023-08-15 17:27:43', '2023-08-15 17:27:43'),
(162, '12345', 1, 1, 1, '2023-08-15 17:28:43', '2023-08-15 17:28:43'),
(163, '12345', 1, 0, 1, '2023-08-15 17:29:44', '2023-08-15 17:29:44'),
(164, '12345', 1, 2, 1, '2023-08-15 17:30:45', '2023-08-15 17:30:45'),
(165, '12345', 1, 1, 1, '2023-08-15 17:31:43', '2023-08-15 17:31:43'),
(166, '12345', 1, 1, 1, '2023-08-15 17:32:44', '2023-08-15 17:32:44'),
(167, '12345', 1, 1, 1, '2023-08-15 17:33:58', '2023-08-15 17:33:58'),
(168, '12345', 1, 1, 1, '2023-08-15 17:34:55', '2023-08-15 17:34:55'),
(169, '12345', 1, 1, 1, '2023-08-15 17:35:55', '2023-08-15 17:35:55'),
(170, '12345', 1, 1, 1, '2023-08-15 17:36:55', '2023-08-15 17:36:55'),
(171, '12345', 1, 0, 1, '2023-08-15 17:37:55', '2023-08-15 17:37:55'),
(172, '12345', 1, 0, 1, '2023-08-15 17:40:30', '2023-08-15 17:40:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `azampays`
--
ALTER TABLE `azampays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user` (`user_id`),
  ADD KEY `fk_post` (`post_id`);

--
-- Indexes for table `bang_battles`
--
ALTER TABLE `bang_battles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bang_inspirations`
--
ALTER TABLE `bang_inspirations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bang_updates`
--
ALTER TABLE `bang_updates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_id` (`user_id`);

--
-- Indexes for table `bang_update_comments`
--
ALTER TABLE `bang_update_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bang_update_comments_user_id_foreign` (`user_id`),
  ADD KEY `bang_update_comments_post_id_foreign` (`post_id`);

--
-- Indexes for table `bang_update_likes`
--
ALTER TABLE `bang_update_likes`
  ADD KEY `bang_update_likes_user_id_foreign` (`user_id`),
  ADD KEY `bang_update_likes_post_id_foreign` (`post_id`);

--
-- Indexes for table `bang_update_views`
--
ALTER TABLE `bang_update_views`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bang_update_views_user_id_foreign` (`user_id`),
  ADD KEY `bang_update_views_bang_update_id_foreign` (`bang_update_id`);

--
-- Indexes for table `battle_comments`
--
ALTER TABLE `battle_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `battle_comments_user_id_foreign` (`user_id`),
  ADD KEY `battle_comments_battles_id_foreign` (`battles_id`);

--
-- Indexes for table `battle_comment_replies`
--
ALTER TABLE `battle_comment_replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `battle_comment_replies_user_id_foreign` (`user_id`),
  ADD KEY `battle_comment_replies_comment_id_foreign` (`comment_id`);

--
-- Indexes for table `battle_likes`
--
ALTER TABLE `battle_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `battle_likes_user_id_foreign` (`user_id`),
  ADD KEY `battle_likes_battle_id_foreign` (`battle_id`);

--
-- Indexes for table `blocked_users`
--
ALTER TABLE `blocked_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blocked_users_user_blocked_id_foreign` (`user_blocked_id`),
  ADD KEY `blocked_users_user_id_foreign` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `challenges`
--
ALTER TABLE `challenges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `challenges_post_id_foreign` (`post_id`),
  ADD KEY `challenges_user_id_foreign` (`user_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_post_id_foreign` (`post_id`);

--
-- Indexes for table `comment_replies`
--
ALTER TABLE `comment_replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comment_replies_user_id_foreign` (`user_id`),
  ADD KEY `comment_replies_comment_id_foreign` (`comment_id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `conversations_user1_id_user2_id_unique` (`user1_id`,`user2_id`),
  ADD KEY `conversations_user2_id_foreign` (`user2_id`);

--
-- Indexes for table `deleted_posts`
--
ALTER TABLE `deleted_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deleted_posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `favorites_user_id_favorited_id_favorited_type_unique` (`user_id`,`favorited_id`,`favorited_type`);

--
-- Indexes for table `fewer_posts`
--
ALTER TABLE `fewer_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fewer_posts_user_id_foreign` (`user_id`),
  ADD KEY `fewer_posts_post_id_foreign` (`post_id`),
  ADD KEY `fewer_posts_user_post_id_foreign` (`user_post_id`);

--
-- Indexes for table `followers`
--
ALTER TABLE `followers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `followers_follower_id_foreign` (`follower_id`),
  ADD KEY `followers_following_id_foreign` (`following_id`);

--
-- Indexes for table `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hobbies`
--
ALTER TABLE `hobbies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hobbies_name_unique` (`name`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `likes_user_id_foreign` (`user_id`),
  ADD KEY `likes_post_id_foreign` (`post_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_conversation_id_foreign` (`conversation_id`),
  ADD KEY `messages_sender_id_foreign` (`sender_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_user_id_foreign` (`user_id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `onesignal_user_mapping`
--
ALTER TABLE `onesignal_user_mapping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `post_views`
--
ALTER TABLE `post_views`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_views_user_id_foreign` (`user_id`),
  ADD KEY `post_views_post_id_foreign` (`post_id`);

--
-- Indexes for table `reported_posts`
--
ALTER TABLE `reported_posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reported_posts_post_id_user_id_unique` (`post_id`,`user_id`),
  ADD KEY `reported_posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscriptions_subscriber_id_foreign` (`subscriber_id`),
  ADD KEY `subscriptions_user_id_foreign` (`user_id`);

--
-- Indexes for table `update_comment_replies`
--
ALTER TABLE `update_comment_replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `update_comment_replies_user_id_foreign` (`user_id`),
  ADD KEY `update_comment_replies_comment_id_foreign` (`comment_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_name_unique` (`name`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_hobby`
--
ALTER TABLE `user_hobby`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_hobby_user_id_hobby_id_unique` (`user_id`,`hobby_id`),
  ADD KEY `user_hobby_hobby_id_foreign` (`hobby_id`);

--
-- Indexes for table `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `azampays`
--
ALTER TABLE `azampays`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `bang_battles`
--
ALTER TABLE `bang_battles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `bang_inspirations`
--
ALTER TABLE `bang_inspirations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `bang_updates`
--
ALTER TABLE `bang_updates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=318;

--
-- AUTO_INCREMENT for table `bang_update_comments`
--
ALTER TABLE `bang_update_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `bang_update_views`
--
ALTER TABLE `bang_update_views`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;

--
-- AUTO_INCREMENT for table `battle_comments`
--
ALTER TABLE `battle_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `battle_comment_replies`
--
ALTER TABLE `battle_comment_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `battle_likes`
--
ALTER TABLE `battle_likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- AUTO_INCREMENT for table `blocked_users`
--
ALTER TABLE `blocked_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `challenges`
--
ALTER TABLE `challenges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=310;

--
-- AUTO_INCREMENT for table `comment_replies`
--
ALTER TABLE `comment_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `deleted_posts`
--
ALTER TABLE `deleted_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=305;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fewer_posts`
--
ALTER TABLE `fewer_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `followers`
--
ALTER TABLE `followers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `friends`
--
ALTER TABLE `friends`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `hobbies`
--
ALTER TABLE `hobbies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=907;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=901;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `onesignal_user_mapping`
--
ALTER TABLE `onesignal_user_mapping`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1106;

--
-- AUTO_INCREMENT for table `post_views`
--
ALTER TABLE `post_views`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;

--
-- AUTO_INCREMENT for table `reported_posts`
--
ALTER TABLE `reported_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `update_comment_replies`
--
ALTER TABLE `update_comment_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `user_hobby`
--
ALTER TABLE `user_hobby`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=386;

--
-- AUTO_INCREMENT for table `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `azampays`
--
ALTER TABLE `azampays`
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `bang_updates`
--
ALTER TABLE `bang_updates`
  ADD CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `bang_update_comments`
--
ALTER TABLE `bang_update_comments`
  ADD CONSTRAINT `bang_update_comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `bang_updates` (`id`),
  ADD CONSTRAINT `bang_update_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `bang_update_likes`
--
ALTER TABLE `bang_update_likes`
  ADD CONSTRAINT `bang_update_likes_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `bang_updates` (`id`),
  ADD CONSTRAINT `bang_update_likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `bang_update_views`
--
ALTER TABLE `bang_update_views`
  ADD CONSTRAINT `bang_update_views_bang_update_id_foreign` FOREIGN KEY (`bang_update_id`) REFERENCES `bang_updates` (`id`),
  ADD CONSTRAINT `bang_update_views_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `battle_comments`
--
ALTER TABLE `battle_comments`
  ADD CONSTRAINT `battle_comments_battles_id_foreign` FOREIGN KEY (`battles_id`) REFERENCES `bang_battles` (`id`),
  ADD CONSTRAINT `battle_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `battle_comment_replies`
--
ALTER TABLE `battle_comment_replies`
  ADD CONSTRAINT `battle_comment_replies_comment_id_foreign` FOREIGN KEY (`comment_id`) REFERENCES `battle_comments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `battle_comment_replies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `battle_likes`
--
ALTER TABLE `battle_likes`
  ADD CONSTRAINT `battle_likes_battle_id_foreign` FOREIGN KEY (`battle_id`) REFERENCES `bang_battles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `battle_likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blocked_users`
--
ALTER TABLE `blocked_users`
  ADD CONSTRAINT `blocked_users_user_blocked_id_foreign` FOREIGN KEY (`user_blocked_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `blocked_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `challenges`
--
ALTER TABLE `challenges`
  ADD CONSTRAINT `challenges_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `challenges_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `fk_comments_post_id` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comment_replies`
--
ALTER TABLE `comment_replies`
  ADD CONSTRAINT `comment_replies_comment_id_foreign` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comment_replies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `conversations`
--
ALTER TABLE `conversations`
  ADD CONSTRAINT `conversations_user1_id_foreign` FOREIGN KEY (`user1_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `conversations_user2_id_foreign` FOREIGN KEY (`user2_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `deleted_posts`
--
ALTER TABLE `deleted_posts`
  ADD CONSTRAINT `deleted_posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `fewer_posts`
--
ALTER TABLE `fewer_posts`
  ADD CONSTRAINT `fewer_posts_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fewer_posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fewer_posts_user_post_id_foreign` FOREIGN KEY (`user_post_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `followers`
--
ALTER TABLE `followers`
  ADD CONSTRAINT `followers_follower_id_foreign` FOREIGN KEY (`follower_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `followers_following_id_foreign` FOREIGN KEY (`following_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_conversation_id_foreign` FOREIGN KEY (`conversation_id`) REFERENCES `conversations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `messages_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `post_views`
--
ALTER TABLE `post_views`
  ADD CONSTRAINT `post_views_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `post_views_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `reported_posts`
--
ALTER TABLE `reported_posts`
  ADD CONSTRAINT `reported_posts_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reported_posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD CONSTRAINT `subscriptions_subscriber_id_foreign` FOREIGN KEY (`subscriber_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subscriptions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `update_comment_replies`
--
ALTER TABLE `update_comment_replies`
  ADD CONSTRAINT `update_comment_replies_comment_id_foreign` FOREIGN KEY (`comment_id`) REFERENCES `bang_update_comments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `update_comment_replies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_hobby`
--
ALTER TABLE `user_hobby`
  ADD CONSTRAINT `user_hobby_hobby_id_foreign` FOREIGN KEY (`hobby_id`) REFERENCES `hobbies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_hobby_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
