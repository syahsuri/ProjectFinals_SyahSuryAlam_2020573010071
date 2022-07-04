-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.33 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for laravel-theatermovinicus
CREATE DATABASE IF NOT EXISTS `laravel-theatermovinicus` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `laravel-theatermovinicus`;

-- Dumping structure for table laravel-theatermovinicus.casts
CREATE TABLE IF NOT EXISTS `casts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel-theatermovinicus.casts: ~3 rows (approximately)
/*!40000 ALTER TABLE `casts` DISABLE KEYS */;
INSERT INTO `casts` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
	(2, 'Robert Downey JR', 'https://resizing.flixster.com/bgIc-hhekZsp8oT8Twx0fRKubqQ=/300x300/v2/https://resizing.flixster.com/ZpdG8US3yMU_htl8D8YclxjpX_8=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzLzVjYzI1ZGY3LTI5ZTYtNGU4My1iMGM2LWU2ZDQ4ZDY4MzcyOS53ZWJw', '2022-07-04 18:17:04', '2022-07-04 18:17:04'),
	(3, 'Chirs Evan', 'data:image/jpeg;base64,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', '2022-07-04 18:24:30', '2022-07-04 18:24:30'),
	(4, 'Nur Fathiah Diaz', 'https://static.wikia.nocookie.net/boboiboy/images/d/da/Nurfathiah_Diaz.jpg/revision/latest/scale-to-width-down/250?cb=20180311074900&path-prefix=id', '2022-07-04 19:24:48', '2022-07-04 19:24:48');
/*!40000 ALTER TABLE `casts` ENABLE KEYS */;

-- Dumping structure for table laravel-theatermovinicus.cast_movie
CREATE TABLE IF NOT EXISTS `cast_movie` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `movie_id` bigint(20) unsigned NOT NULL,
  `cast_id` bigint(20) unsigned NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cast_movie_movie_id_foreign` (`movie_id`),
  KEY `cast_movie_cast_id_foreign` (`cast_id`),
  CONSTRAINT `cast_movie_cast_id_foreign` FOREIGN KEY (`cast_id`) REFERENCES `casts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `cast_movie_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel-theatermovinicus.cast_movie: ~4 rows (approximately)
/*!40000 ALTER TABLE `cast_movie` DISABLE KEYS */;
INSERT INTO `cast_movie` (`id`, `movie_id`, `cast_id`, `role`, `created_at`, `updated_at`) VALUES
	(2, 1, 2, 'Iron man', NULL, NULL),
	(3, 2, 2, 'Sherlock Holmes', NULL, NULL),
	(4, 1, 3, 'Captain America', NULL, NULL),
	(5, 5, 4, 'Boboboy', NULL, NULL);
/*!40000 ALTER TABLE `cast_movie` ENABLE KEYS */;

-- Dumping structure for table laravel-theatermovinicus.comments
CREATE TABLE IF NOT EXISTS `comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `movie_id` bigint(20) unsigned NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_user_id_foreign` (`user_id`),
  KEY `comments_movie_id_foreign` (`movie_id`),
  CONSTRAINT `comments_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`),
  CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel-theatermovinicus.comments: ~2 rows (approximately)
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` (`id`, `user_id`, `movie_id`, `content`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, 'A mega-budget action extravaganza that succeeds on just about every level, and it\'s one you should certainly go and see as soon as possible.', '2022-07-04 18:22:37', '2022-07-04 18:22:37'),
	(3, 2, 5, 'Film mantap !!!!', '2022-07-04 19:26:01', '2022-07-04 19:26:01');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;

-- Dumping structure for table laravel-theatermovinicus.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel-theatermovinicus.failed_jobs: ~0 rows (approximately)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Dumping structure for table laravel-theatermovinicus.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel-theatermovinicus.migrations: ~8 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2022_07_02_172903_create_movies_table', 1),
	(6, '2022_07_02_173051_create_casts_table', 1),
	(7, '2022_07_02_173158_create_comments_table', 1),
	(8, '2022_07_02_174107_create_cast_movie_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table laravel-theatermovinicus.movies
CREATE TABLE IF NOT EXISTS `movies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating_star` int(11) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel-theatermovinicus.movies: ~5 rows (approximately)
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` (`id`, `title`, `description`, `rating_star`, `image`, `created_at`, `updated_at`) VALUES
	(1, 'The Avengers', 'When Thor\'s evil brother, Loki (Tom Hiddleston), gains access to the unlimited power of the energy cube called the Tesseract, Nick Fury (Samuel L. Jackson), director of S.H.I.E.L.D., initiates a superhero recruitment effort to defeat the unprecedented threat to Earth. Joining Fury\'s "dream team" are Iron Man (Robert Downey Jr.), Captain America (Chris Evans), the Hulk (Mark Ruffalo), Thor (Chris Hemsworth), the Black Widow (Scarlett Johansson) and Hawkeye (Jeremy Renner).', 4, 'https://resizing.flixster.com/4QmGJFR39jMm8uYSeMv4Aop8w6I=/206x305/v2/https://flxt.tmsimg.com/assets/p8815512_p_v8_ax.jpg', '2022-07-03 09:19:08', '2022-07-03 09:19:08'),
	(2, 'Sherlock Holmes', 'Detective Sherlock Holmes and his stalwart partner Watson engage in a battle of wits and brawn with a nemesis whose plot is a threat to all of England.', 5, 'https://statik.tempo.co/data/2009/12/28/id_23766/23766_620.jpg', NULL, NULL),
	(3, 'Gundala', 'Indonesia\'s preeminent comic book superhero and his alter ego Sancaka enter the cinematic universe to battle the wicked Pengkor and his diabolical squad of orphan assassins.', 3, 'https://flxt.tmsimg.com/assets/p18091727_p_v11_ac.jpg', NULL, NULL),
	(4, 'Jurassic World (2019)', 'A new theme park, built on the original site of Jurassic Park, creates a genetically modified hybrid dinosaur, the Indominus Rex, which escapes containment and goes on a killing spree.', 2, 'https://flxt.tmsimg.com/assets/p10815284_p_v8_al.jpg', NULL, NULL),
	(5, 'Boboboy The Movie', 'Boboboy movie is worht to watch and fun', 5, 'https://m.media-amazon.com/images/M/MV5BMmNkOGM3MDYtZTM4MS00ZDhlLWEwYjctYjZjMWE4MTkxMzY1XkEyXkFqcGdeQXVyNjU3NjY0NzY@._V1_.jpg', '2022-07-04 19:23:19', '2022-07-04 19:23:19');
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;

-- Dumping structure for table laravel-theatermovinicus.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel-theatermovinicus.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table laravel-theatermovinicus.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel-theatermovinicus.personal_access_tokens: ~0 rows (approximately)
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;

-- Dumping structure for table laravel-theatermovinicus.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel-theatermovinicus.users: ~1 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Syah sury alam', 'syahsurialam98@yahoo.com', NULL, '$2y$10$OuQcMd6eHbIEkFSIwpWv0.MDi6nwbcCl.NyHXVxzPRF1EVKKhI.2a', NULL, '2022-07-03 09:17:31', '2022-07-03 09:17:31'),
	(2, 'Robert Pattison', 'robertaptt23@gmail.com', NULL, '$2y$10$6Jxm92KSHDzxMEbcbyP4RuavCabXmqOP8QSsKxqj2rIpRlZuOBf7W', NULL, '2022-07-04 19:20:40', '2022-07-04 19:20:40');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
