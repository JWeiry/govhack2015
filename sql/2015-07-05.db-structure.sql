-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 05, 2015 at 05:42 AM
-- Server version: 5.5.43-0+deb7u1
-- PHP Version: 5.4.41-0+deb7u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `govhack_ip`
--

-- --------------------------------------------------------

--
-- Table structure for table `ipgod101`
--

CREATE TABLE IF NOT EXISTS `ipgod101` (
  `id` int(11) NOT NULL,
  `australian_appl_no` bigint(20) DEFAULT NULL,
  `australian_date` bigint(20) DEFAULT NULL,
  `australian_year` bigint(20) DEFAULT NULL,
  `country` varchar(2) DEFAULT NULL,
  `state` varchar(3) DEFAULT NULL,
  `postcode` varchar(4) DEFAULT NULL,
  `patent_type` varchar(11) DEFAULT NULL,
  `primary_ipc_mark` varchar(14) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `non_opi` bigint(20) DEFAULT NULL,
  `applicant_no` bigint(20) DEFAULT NULL,
  `australian` bigint(20) DEFAULT NULL,
  `entity` bigint(20) DEFAULT NULL,
  `big` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ipgod102`
--

CREATE TABLE IF NOT EXISTS `ipgod102` (
  `id` int(11) NOT NULL,
  `ipa_applt_id` varchar(255) DEFAULT NULL,
  `australian_appl_no` bigint(20) DEFAULT NULL,
  `appln_type` varchar(255) DEFAULT NULL,
  `name` text,
  `cleanname` varchar(255) DEFAULT NULL,
  `clean_soundex` varchar(10) NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `australian` varchar(255) DEFAULT NULL,
  `entity` varchar(255) DEFAULT NULL,
  `ipa_id` varchar(255) DEFAULT NULL,
  `abn` varchar(255) DEFAULT NULL,
  `acn` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `big` varchar(255) DEFAULT NULL,
  `ultimate` varchar(255) DEFAULT NULL,
  `lat` varchar(255) DEFAULT NULL,
  `lon` varchar(255) DEFAULT NULL,
  `qg` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ipgod103`
--

CREATE TABLE IF NOT EXISTS `ipgod103` (
  `australian_appl_no` bigint(20) DEFAULT NULL,
  `wipo_appl_number` varchar(255) DEFAULT NULL,
  `old_wipo_appl_number` varchar(255) DEFAULT NULL,
  `pct_appl_number` varchar(255) DEFAULT NULL,
  `old_pct_appl_number` varchar(255) DEFAULT NULL,
  `old_patent_appl_number` varchar(255) DEFAULT NULL,
  `mainframe_appl_number` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ipgod104`
--

CREATE TABLE IF NOT EXISTS `ipgod104` (
  `australian_appl_no` bigint(20) DEFAULT NULL,
  `ipc_mark_value` varchar(255) DEFAULT NULL,
  `edited_ipc_mark_value` varchar(255) DEFAULT NULL,
  `ipc_class_version_date` varchar(255) DEFAULT NULL,
  `section_code` varchar(255) DEFAULT NULL,
  `class_code` varchar(255) DEFAULT NULL,
  `subclass_code` varchar(255) DEFAULT NULL,
  `main_group_code` varchar(255) DEFAULT NULL,
  `subgroup_code` varchar(255) DEFAULT NULL,
  `full_mark_value` varchar(255) DEFAULT NULL,
  `ipc_mark_type_code` varchar(255) DEFAULT NULL,
  `classification_level_code` varchar(255) DEFAULT NULL,
  `classification_code` varchar(255) DEFAULT NULL,
  `action_date` varchar(255) DEFAULT NULL,
  `generating_office_country_code` varchar(255) DEFAULT NULL,
  `classification_type_code` varchar(255) DEFAULT NULL,
  `classification_source_code` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ipgod107`
--

CREATE TABLE IF NOT EXISTS `ipgod107` (
  `australian_appl_no` bigint(20) DEFAULT NULL,
  `source_data_key_code` varchar(255) DEFAULT NULL,
  `mainframe_patent_number` int(6) DEFAULT NULL,
  `patent_type` varchar(255) DEFAULT NULL,
  `search_completed_date` varchar(255) DEFAULT NULL,
  `exam_request_date` varchar(255) DEFAULT NULL,
  `exam_request_filing_date` varchar(255) DEFAULT NULL,
  `requested_exam_type` varchar(255) DEFAULT NULL,
  `exam_status_type` varchar(255) DEFAULT NULL,
  `deferement_request_date` varchar(255) DEFAULT NULL,
  `first_report_issue_date` varchar(255) DEFAULT NULL,
  `further_report_issue_date` varchar(255) DEFAULT NULL,
  `examination_section_name` varchar(255) DEFAULT NULL,
  `acceptance_postponed_ind` varchar(255) DEFAULT NULL,
  `search_results_received_date` varchar(255) DEFAULT NULL,
  `thrd_prty_exam_request_date` varchar(255) DEFAULT NULL,
  `citing_application_numbers` varchar(255) DEFAULT NULL,
  `expiry_date` varchar(255) DEFAULT NULL,
  `earliest_priority_date` varchar(255) DEFAULT NULL,
  `acceptance_published_date` varchar(255) DEFAULT NULL,
  `sealing_date` varchar(255) DEFAULT NULL,
  `wipo_publication_date` varchar(255) DEFAULT NULL,
  `effective_patent_date` varchar(255) DEFAULT NULL,
  `opi_published_in_journal_date` varchar(255) DEFAULT NULL,
  `continue_renew_fee_paid_date` varchar(255) DEFAULT NULL,
  `in_force_to_date` varchar(255) DEFAULT NULL,
  `opi_date` varchar(255) DEFAULT NULL,
  `npe_date` varchar(255) DEFAULT NULL,
  `filing_date` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ipgod108`
--

CREATE TABLE IF NOT EXISTS `ipgod108` (
  `﻿"MASTER_ID"` varchar(255) DEFAULT NULL,
  `"RECORD_TYPE"` varchar(255) DEFAULT NULL,
  `"OPPOSITION_ID"` varchar(255) DEFAULT NULL,
  `"APPLICATION_NUMBER"` varchar(255) DEFAULT NULL,
  `"PATENT_NUMBER"` varchar(255) DEFAULT NULL,
  `"OPPOSITION_TYPE"` varchar(255) DEFAULT NULL,
  `"LAST_OPPOSITION_LODGE_DATE"` varchar(255) DEFAULT NULL,
  `"NOTICE_FILED_DATE"` varchar(255) DEFAULT NULL,
  `"NOTICE_SERVED_DATE"` varchar(255) DEFAULT NULL,
  `"JOURNAL_NAME"` varchar(255) DEFAULT NULL,
  `"JOURNAL_PUBLISHED_DATE"` varchar(255) DEFAULT NULL,
  `"GROUNDS_STATEMENT_DUE_DATE"` varchar(255) DEFAULT NULL,
  `"GROUNDS_STATEMENT_FILED_DATE"` varchar(255) DEFAULT NULL,
  `"GROUNDS_STATEMENT_SERVED_DATE"` varchar(255) DEFAULT NULL,
  `"SUPPORT_EVIDENCE_DUE_DATE"` varchar(255) DEFAULT NULL,
  `"SUPPORT_EVIDENCE_FILED_DATE"` varchar(255) DEFAULT NULL,
  `"SUPPORT_EVIDENCE_SERVED_DATE"` varchar(255) DEFAULT NULL,
  `"ANSWER_EVIDENCE_DUE_DATE"` varchar(255) DEFAULT NULL,
  `"ANSWER_EVIDENCE_FILED_DATE"` varchar(255) DEFAULT NULL,
  `"ANSWER_EVIDENCE_SERVED_DATE"` varchar(255) DEFAULT NULL,
  `"INTENT_NOTICE_DUE_DATE"` varchar(255) DEFAULT NULL,
  `"INTENT_NOTICE_FILED_DATE"` varchar(255) DEFAULT NULL,
  `"INTENT_NOTICE_SERVED_DATE"` varchar(255) DEFAULT NULL,
  `"REPLY_EVIDENCE_DUE_DATE"` varchar(255) DEFAULT NULL,
  `"REPLY_EVIDENCE_FILED_DATE"` varchar(255) DEFAULT NULL,
  `"REPLY_EVIDENCE_SERVED_DATE"` varchar(255) DEFAULT NULL,
  `"ACCEPTANCE_ADVERTISED_DATE"` varchar(255) DEFAULT NULL,
  `"OPPOSITION_STATUS_TYPE"` varchar(255) DEFAULT NULL,
  `"OPP_REC_VER_NO"` varchar(255) DEFAULT NULL,
  `"PCT_APPLICATION_IND"` varchar(255) DEFAULT NULL,
  `"FILING_DATE"` varchar(255) DEFAULT NULL,
  `"OPI_DATE"` varchar(255) DEFAULT NULL,
  `"NPE_DATE"` varchar(255) DEFAULT NULL,
  `"HEARING_ID"` varchar(255) DEFAULT NULL,
  `"HEARING_TYPE"` varchar(255) DEFAULT NULL,
  `"STATUS_CODE"` varchar(255) DEFAULT NULL,
  `"HEARING_DATE"` varchar(255) DEFAULT NULL,
  `"LOCATION_NAME"` varchar(255) DEFAULT NULL,
  `"DECISION_ISSUED_DATE"` varchar(255) DEFAULT NULL,
  `"RESULT_TYPE"` varchar(255) DEFAULT NULL,
  `"HEAR_RECORD_VER_NO"` varchar(255) DEFAULT NULL,
  `"OPPONENT_ID"` varchar(255) DEFAULT NULL,
  `"NAME_ADDRESS_ID"` varchar(255) DEFAULT NULL,
  `"ENTITY_TYPE_CODE"` varchar(255) DEFAULT NULL,
  `"COMPANY_OR_SURNAME_NAME"` varchar(255) DEFAULT NULL,
  `"SUBURB_NAME"` varchar(255) DEFAULT NULL,
  `"STATE_NAME"` varchar(255) DEFAULT NULL,
  `"POST_CODE"` varchar(255) DEFAULT NULL,
  `"COUNTRY_NAME"` varchar(255) DEFAULT NULL,
  `"HEAR_OPP_APP_INFO_VER_NO"` varchar(255) DEFAULT NULL,
  `"EXTRACTED_DATE"` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ipgod109`
--

CREATE TABLE IF NOT EXISTS `ipgod109` (
  `australian_appl_no` bigint(20) DEFAULT NULL,
  `action_date` varchar(255) DEFAULT NULL,
  `published_date` varchar(255) DEFAULT NULL,
  `certification_date` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ipgod120`
--

CREATE TABLE IF NOT EXISTS `ipgod120` (
  `australian_appl_no` bigint(20) DEFAULT NULL,
  `accepted_claims_count` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ipgod121`
--

CREATE TABLE IF NOT EXISTS `ipgod121` (
  `australian_appl_no` bigint(20) DEFAULT NULL,
  `extension_from_date` varchar(255) DEFAULT NULL,
  `extension_status_type` varchar(255) DEFAULT NULL,
  `tga_approval_date` varchar(255) DEFAULT NULL,
  `expiry_date` varchar(255) DEFAULT NULL,
  `application_receipt_date` varchar(255) DEFAULT NULL,
  `receipt_published_date` varchar(255) DEFAULT NULL,
  `acceptance_date` varchar(255) DEFAULT NULL,
  `acceptance_published_date` varchar(255) DEFAULT NULL,
  `opposition_filed_date` varchar(255) DEFAULT NULL,
  `opposition_allowed_status` varchar(255) DEFAULT NULL,
  `opposition_decision_date` varchar(255) DEFAULT NULL,
  `refusal_date` varchar(255) DEFAULT NULL,
  `refusal_published_date` varchar(255) DEFAULT NULL,
  `withdrawl_date` varchar(255) DEFAULT NULL,
  `withdrawl_published_date` varchar(255) DEFAULT NULL,
  `granted_date` varchar(255) DEFAULT NULL,
  `granted_published_date` varchar(255) DEFAULT NULL,
  `pharmaceutical_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ipgod122`
--

CREATE TABLE IF NOT EXISTS `ipgod122` (
  `australian_appl_no` bigint(20) DEFAULT NULL,
  `status_type` varchar(255) DEFAULT NULL,
  `application_filed_date` varchar(255) DEFAULT NULL,
  `application_published_date` varchar(255) DEFAULT NULL,
  `opposition_filed_date` varchar(255) DEFAULT NULL,
  `opposition_decision_date` varchar(255) DEFAULT NULL,
  `opposition_decision_type` varchar(255) DEFAULT NULL,
  `restoration_date` varchar(255) DEFAULT NULL,
  `published_date` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ipgod124`
--

CREATE TABLE IF NOT EXISTS `ipgod124` (
  `australian_appl_no` bigint(20) DEFAULT NULL,
  `third_party_right_type` varchar(255) DEFAULT NULL,
  `third_party_names` varchar(255) DEFAULT NULL,
  `status_type` varchar(255) DEFAULT NULL,
  `license_term_type` varchar(255) DEFAULT NULL,
  `license_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ipgod125`
--

CREATE TABLE IF NOT EXISTS `ipgod125` (
  `australian_appl_no` bigint(20) DEFAULT NULL,
  `request_filed_date` varchar(255) DEFAULT NULL,
  `name_change_date` varchar(255) DEFAULT NULL,
  `advertised_date` varchar(255) DEFAULT NULL,
  `change_reason_type` varchar(255) DEFAULT NULL,
  `assignment_validated_date` varchar(255) DEFAULT NULL,
  `document_description` varchar(255) DEFAULT NULL,
  `name_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ipgod126`
--

CREATE TABLE IF NOT EXISTS `ipgod126` (
  `converted_date` varchar(255) DEFAULT NULL,
  `conv_from_appl_number` varchar(255) DEFAULT NULL,
  `old_conv_from_appl_number` varchar(255) DEFAULT NULL,
  `conv_from_appl_type` varchar(255) DEFAULT NULL,
  `conv_to_appl_number` varchar(255) DEFAULT NULL,
  `old_conv_to_appl_number` varchar(255) DEFAULT NULL,
  `conv_to_appl_type` varchar(255) DEFAULT NULL,
  `conv_to_appl_status_type` varchar(255) DEFAULT NULL,
  `conv_to_filed_date` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ipgod127`
--

CREATE TABLE IF NOT EXISTS `ipgod127` (
  `australian_appl_no` varchar(255) DEFAULT NULL,
  `application_status_type` varchar(255) DEFAULT NULL,
  `applied_date` varchar(255) DEFAULT NULL,
  `reason_description` varchar(255) DEFAULT NULL,
  `published_date` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ipgod101`
--
ALTER TABLE `ipgod101`
  ADD PRIMARY KEY (`id`),
  ADD KEY `australian_appl_no` (`australian_appl_no`),
  ADD KEY `australian_appl_no_2` (`australian_appl_no`);

--
-- Indexes for table `ipgod102`
--
ALTER TABLE `ipgod102`
  ADD PRIMARY KEY (`id`),
  ADD KEY `australian_appl_no` (`australian_appl_no`),
  ADD FULLTEXT KEY `fulltext_index` (`name`,`abn`);

--
-- Indexes for table `ipgod103`
--
ALTER TABLE `ipgod103`
  ADD KEY `australian_appl_no` (`australian_appl_no`);

--
-- Indexes for table `ipgod104`
--
ALTER TABLE `ipgod104`
  ADD KEY `australian_appl_no` (`australian_appl_no`),
  ADD KEY `australian_appl_no_2` (`australian_appl_no`);

--
-- Indexes for table `ipgod107`
--
ALTER TABLE `ipgod107`
  ADD KEY `australian_appl_no` (`australian_appl_no`),
  ADD KEY `mainframe_patent_number` (`mainframe_patent_number`),
  ADD KEY `australian_appl_no_2` (`australian_appl_no`);

--
-- Indexes for table `ipgod109`
--
ALTER TABLE `ipgod109`
  ADD KEY `australian_appl_no` (`australian_appl_no`);

--
-- Indexes for table `ipgod120`
--
ALTER TABLE `ipgod120`
  ADD KEY `australian_appl_no` (`australian_appl_no`);

--
-- Indexes for table `ipgod121`
--
ALTER TABLE `ipgod121`
  ADD KEY `australian_appl_no` (`australian_appl_no`);

--
-- Indexes for table `ipgod122`
--
ALTER TABLE `ipgod122`
  ADD KEY `australian_appl_no` (`australian_appl_no`);

--
-- Indexes for table `ipgod124`
--
ALTER TABLE `ipgod124`
  ADD KEY `australian_appl_no` (`australian_appl_no`);

--
-- Indexes for table `ipgod125`
--
ALTER TABLE `ipgod125`
  ADD KEY `australian_appl_no` (`australian_appl_no`);

--
-- Indexes for table `ipgod127`
--
ALTER TABLE `ipgod127`
  ADD KEY `australian_appl_no` (`australian_appl_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ipgod101`
--
ALTER TABLE `ipgod101`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ipgod102`
--
ALTER TABLE `ipgod102`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
