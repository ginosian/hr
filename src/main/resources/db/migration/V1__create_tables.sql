CREATE TABLE `persistent_logins` (
  `username` varchar(64) NOT NULL,
  `series` varchar(64) NOT NULL,
  `token` varchar(64) NOT NULL,
  `last_used` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`series`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8

-- CREATE TABLE `authority` (
--   `id` bigint(20) NOT NULL,
--   `created_at` datetime DEFAULT NULL,
--   `removed` tinyint(1) NOT NULL DEFAULT '0',
--   `ssn` varchar(255) DEFAULT NULL,
--   `updated_at` datetime DEFAULT NULL,
--   `role` varchar(255) NOT NULL,
--   PRIMARY KEY (`id`),
--   UNIQUE KEY `UK_g6g6arw2xba1pirbuf4ig44jq` (`ssn`)
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8
--
-- CREATE TABLE `company_config` (
--   `id` bigint(20) NOT NULL,
--   `created_at` datetime DEFAULT NULL,
--   `removed` tinyint(1) NOT NULL DEFAULT '0',
--   `ssn` varchar(255) DEFAULT NULL,
--   `updated_at` datetime DEFAULT NULL,
--   `email` varchar(255) DEFAULT NULL,
--   `half_day_off` tinyint(1) NOT NULL DEFAULT '0',
--   `is_active` tinyint(1) NOT NULL DEFAULT '0',
--   `lunch_duration` double DEFAULT NULL,
--   `lunch_start` time DEFAULT NULL,
--   `name` varchar(255) DEFAULT NULL,
--   `dispose_type_employee` varchar(255) DEFAULT NULL,
--   `dispose_type_hr` varchar(255) DEFAULT NULL,
--   `vacation_in_advance` tinyint(1) NOT NULL DEFAULT '1',
--   `vacation_per_month` double DEFAULT NULL,
--   `valid_vacation_period` double DEFAULT NULL,
--   `defaultWorkingHoursScheme_id` bigint(20) DEFAULT NULL,
--   PRIMARY KEY (`id`),
--   UNIQUE KEY `UK_qyyp9i29y64d0vf8c4xua2vkk` (`ssn`),
--   KEY `FKpgspf0rbagbnl51jrniyhps03` (`defaultWorkingHoursScheme_id`),
--   CONSTRAINT `FKpgspf0rbagbnl51jrniyhps03` FOREIGN KEY (`defaultWorkingHoursScheme_id`) REFERENCES `working_hours_scheme` (`id`)
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8
--
-- CREATE TABLE `hibernate_sequence` (
--   `next_val` bigint(20) DEFAULT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8
--
-- CREATE TABLE `individual_time_off` (
--   `id` bigint(20) NOT NULL,
--   `created_at` datetime DEFAULT NULL,
--   `removed` tinyint(1) NOT NULL DEFAULT '0',
--   `ssn` varchar(255) DEFAULT NULL,
--   `updated_at` datetime DEFAULT NULL,
--   `approved` tinyint(1) DEFAULT '0',
--   `comment` varchar(255) DEFAULT NULL,
--   `disposed` tinyint(1) DEFAULT '0',
--   `disposed_hr` tinyint(1) DEFAULT '0',
--   `end` datetime DEFAULT NULL,
--   `end_hr` datetime DEFAULT NULL,
--   `start` datetime DEFAULT NULL,
--   `start_hr` datetime DEFAULT NULL,
--   `reason_id` bigint(20) DEFAULT NULL,
--   `user_id` bigint(20) DEFAULT NULL,
--   PRIMARY KEY (`id`),
--   UNIQUE KEY `UK_gkwp8su4j5rux0uev03wdnr5` (`ssn`),
--   KEY `FKo7i3qmq0dnqd05gjfqlyoti2y` (`reason_id`),
--   KEY `FKmhmjx5pwccl0exas5e5guy7xw` (`user_id`),
--   CONSTRAINT `FKmhmjx5pwccl0exas5e5guy7xw` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
--   CONSTRAINT `FKo7i3qmq0dnqd05gjfqlyoti2y` FOREIGN KEY (`reason_id`) REFERENCES `time_off_reason` (`id`)
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8
--
-- CREATE TABLE `password_reset_token` (
--   `id` bigint(20) NOT NULL,
--   `created_at` datetime DEFAULT NULL,
--   `removed` tinyint(1) NOT NULL DEFAULT '0',
--   `ssn` varchar(255) DEFAULT NULL,
--   `updated_at` datetime DEFAULT NULL,
--   `expiry_date` datetime DEFAULT NULL,
--   `token` varchar(255) DEFAULT NULL,
--   `user_id` bigint(20) NOT NULL,
--   PRIMARY KEY (`id`),
--   UNIQUE KEY `UK_s1lpbyg2tdcdxqf3ccnc61fs0` (`ssn`),
--   KEY `FK5lwtbncug84d4ero33v3cfxvl` (`user_id`),
--   CONSTRAINT `FK5lwtbncug84d4ero33v3cfxvl` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8
--
-- CREATE TABLE `schema_version` (
--   `installed_rank` int(11) NOT NULL,
--   `version` varchar(50) DEFAULT NULL,
--   `description` varchar(200) NOT NULL,
--   `type` varchar(20) NOT NULL,
--   `script` varchar(1000) NOT NULL,
--   `checksum` int(11) DEFAULT NULL,
--   `installed_by` varchar(100) NOT NULL,
--   `installed_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
--   `execution_time` int(11) NOT NULL,
--   `success` tinyint(1) NOT NULL,
--   PRIMARY KEY (`installed_rank`),
--   KEY `schema_version_s_idx` (`success`)
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8
--
-- CREATE TABLE `time_off_reason` (
--   `id` bigint(20) NOT NULL,
--   `created_at` datetime DEFAULT NULL,
--   `removed` tinyint(1) NOT NULL DEFAULT '0',
--   `ssn` varchar(255) DEFAULT NULL,
--   `updated_at` datetime DEFAULT NULL,
--   `title` varchar(255) DEFAULT NULL,
--   `disposable_from_vacation` tinyint(1) DEFAULT '1',
--   `is_paid` tinyint(1) DEFAULT '1',
--   `is_valid` tinyint(1) DEFAULT '1',
--   PRIMARY KEY (`id`),
--   UNIQUE KEY `UK_nk5h437b1bha1pt1trvgkqati` (`ssn`)
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8
--
-- CREATE TABLE `user` (
--   `DTYPE` varchar(31) NOT NULL,
--   `id` bigint(20) NOT NULL,
--   `created_at` datetime DEFAULT NULL,
--   `removed` tinyint(1) NOT NULL DEFAULT '0',
--   `ssn` varchar(255) DEFAULT NULL,
--   `updated_at` datetime DEFAULT NULL,
--   `non_expired` bit(1) DEFAULT NULL,
--   `non_locked` bit(1) DEFAULT NULL,
--   `approved` bit(1) DEFAULT NULL,
--   `credentials_non_expired` bit(1) DEFAULT NULL,
--   `enabled` bit(1) DEFAULT NULL,
--   `joining_date` datetime DEFAULT NULL,
--   `leaving_date` datetime DEFAULT NULL,
--   `name` varchar(255) DEFAULT NULL,
--   `password` varchar(255) DEFAULT NULL,
--   `phone` varchar(255) DEFAULT NULL,
--   `username` varchar(255) DEFAULT NULL,
--   `job_title` varchar(255) DEFAULT NULL,
--   `individualWorkingHoursScheme_id` bigint(20) DEFAULT NULL,
--   `user_id` bigint(20) DEFAULT NULL,
--   PRIMARY KEY (`id`),
--   UNIQUE KEY `UK_t8tbwelrnviudxdaggwr1kd9b` (`ssn`),
--   UNIQUE KEY `UK_sb8bbouer5wak8vyiiy4pf2bx` (`username`),
--   KEY `FKbhwv581rkgdk6ywqi3hg6cvgt` (`individualWorkingHoursScheme_id`),
--   KEY `FKt9wuqjt6rirunsy64ube6e9ri` (`user_id`),
--   CONSTRAINT `FKbhwv581rkgdk6ywqi3hg6cvgt` FOREIGN KEY (`individualWorkingHoursScheme_id`) REFERENCES `working_hours_scheme` (`id`),
--   CONSTRAINT `FKt9wuqjt6rirunsy64ube6e9ri` FOREIGN KEY (`user_id`) REFERENCES `individual_time_off` (`id`)
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8
--
-- CREATE TABLE `user_authority` (
--   `user_id` bigint(20) NOT NULL,
--   `grantedAuthorities_id` bigint(20) NOT NULL,
--   KEY `FKeg5tn8sm1nkuja6fvw57cwk1u` (`grantedAuthorities_id`),
--   KEY `FKpqlsjpkybgos9w2svcri7j8xy` (`user_id`),
--   CONSTRAINT `FKeg5tn8sm1nkuja6fvw57cwk1u` FOREIGN KEY (`grantedAuthorities_id`) REFERENCES `authority` (`id`),
--   CONSTRAINT `FKpqlsjpkybgos9w2svcri7j8xy` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8
--
-- CREATE TABLE `verification_token` (
--   `id` bigint(20) NOT NULL,
--   `created_at` datetime DEFAULT NULL,
--   `removed` tinyint(1) NOT NULL DEFAULT '0',
--   `ssn` varchar(255) DEFAULT NULL,
--   `updated_at` datetime DEFAULT NULL,
--   `expiry_date` datetime DEFAULT NULL,
--   `token` varchar(255) DEFAULT NULL,
--   `user_id` bigint(20) NOT NULL,
--   PRIMARY KEY (`id`),
--   UNIQUE KEY `UK_ihbmbaw79llj87cxytnwh70n4` (`ssn`),
--   KEY `FKrdn0mss276m9jdobfhhn2qogw` (`user_id`),
--   CONSTRAINT `FKrdn0mss276m9jdobfhhn2qogw` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8
--
-- CREATE TABLE `working_hours_scheme` (
--   `id` bigint(20) NOT NULL,
--   `created_at` datetime DEFAULT NULL,
--   `removed` tinyint(1) NOT NULL DEFAULT '0',
--   `ssn` varchar(255) DEFAULT NULL,
--   `updated_at` datetime DEFAULT NULL,
--   `title` varchar(255) DEFAULT NULL,
--   `is_valid` tinyint(1) DEFAULT '1',
--   `number_of_hours_for_period` smallint(6) DEFAULT NULL,
--   `working_day_end` time DEFAULT NULL,
--   `working_day_start` time DEFAULT NULL,
--   PRIMARY KEY (`id`),
--   UNIQUE KEY `UK_k59ygsrndyx1q94uf9jj2y9je` (`ssn`)
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8
--
--
