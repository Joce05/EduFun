-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Nov 2024 pada 07.55
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `edufun`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_10_31_155425_create_writers_table', 1),
(5, '2024_10_31_155524_create_mscategories_table', 1),
(6, '2024_10_31_155537_create_msposts_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mscategories`
--

CREATE TABLE `mscategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `mscategories`
--

INSERT INTO `mscategories` (`id`, `category`, `created_at`, `updated_at`) VALUES
(1, 'Interactive Multimedia', '2024-10-31 10:41:01', '2024-10-31 10:41:01'),
(2, 'Software Engineering', '2024-10-31 10:41:01', '2024-10-31 10:41:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `msposts`
--

CREATE TABLE `msposts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `categoryId` bigint(20) UNSIGNED NOT NULL,
  `userId` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `msposts`
--

INSERT INTO `msposts` (`id`, `title`, `description`, `categoryId`, `userId`, `created_at`, `updated_at`) VALUES
(1, 'Pattern Software Design', 'Voluptas est et dolores quis tenetur. Enim asperiores consequatur aut voluptatem. Eos eveniet distinctio quas. Consequuntur et voluptas facilis qui nihil.', 2, 1, '2024-10-31 10:41:01', '2024-10-31 10:41:01'),
(2, 'Agile Software Development', 'Cumque consequuntur soluta molestias et expedita voluptatem corrupti. Est alias aperiam dolorem illum eligendi aut. Iure id aperiam velit optio itaque.', 2, 5, '2024-10-31 10:41:01', '2024-10-31 10:41:01'),
(3, 'Code Reengineering', 'Omnis est molestiae deleniti natus. Laudantium a nihil totam illo et minus. Quas mollitia perspiciatis ipsum perspiciatis voluptas qui.', 2, 10, '2024-10-31 10:41:01', '2024-10-31 10:41:01'),
(4, 'Omnis pariatur iste suscipit modi qui.', 'Minima impedit voluptas pariatur voluptatibus modi velit enim. Dolore blanditiis omnis vel deserunt. Minima repellendus porro voluptatum hic vel.', 2, 10, '2024-10-31 10:41:01', '2024-10-31 10:41:01'),
(5, 'Human and Computer Interaction', 'Temporibus ut cupiditate eos et similique veniam adipisci. Pariatur ut nulla minus consectetur officia ut et. Tempore explicabo et modi sint.', 1, 6, '2024-10-31 10:41:01', '2024-10-31 10:41:01'),
(6, 'Minus quaerat aut error autem.', 'Soluta eos dolorem est unde tempora. Expedita ut laudantium minus. Magni veritatis rerum exercitationem delectus. Eos quo voluptatem et atque esse rerum.', 2, 2, '2024-10-31 10:41:01', '2024-10-31 10:41:01'),
(7, 'Veniam explicabo ab quo dolores optio debitis.', 'Qui et labore eius pariatur laboriosam. Dignissimos tempore quis non tempora.', 2, 9, '2024-10-31 10:41:01', '2024-10-31 10:41:01'),
(8, 'User Experience', 'Eius impedit nihil harum quis velit. Eaque sed culpa et vero. Quam neque perspiciatis id dolores.', 1, 2, '2024-10-31 10:41:01', '2024-10-31 10:41:01'),
(9, 'Voluptatem porro et eaque repellat.', 'Aut qui ipsum corrupti itaque consequatur. Rerum consequatur voluptatem sint soluta. Nostrum quod est praesentium repellendus eius quia molestias quos.', 2, 5, '2024-10-31 10:41:01', '2024-10-31 10:41:01'),
(10, 'User Experience for Digital Immersive Technology', 'Aut et alias quos omnis doloremque. Corporis illo sed dolorem in in. Quia amet sunt necessitatibus id. Necessitatibus et officiis quia ut.', 1, 3, '2024-10-31 10:41:01', '2024-10-31 10:41:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('A4KgsvFAa1kSXI9jVbwJuUGzkF9k4t18DPQcQqbm', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:131.0) Gecko/20100101 Firefox/131.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUHR5S2d3OGYzY0s0TENoQ1h1RzF5cEJZeEdXTlBDSnl2TGRBMWxKMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9wb3B1bGFyP3BhZ2U9MyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1730529462),
('DujUIE8MYYGZKkMEgGP8WfscqcG2I0vun5SbwbWN', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:131.0) Gecko/20100101 Firefox/131.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNGxTemRwd2dpa0lzeHNFUTZoRlg5dEtzanNFMGV4Z1NDeG92QWN1ZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9hYm91dCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1730482547);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `writers`
--

CREATE TABLE `writers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `specialist` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `writers`
--

INSERT INTO `writers` (`id`, `name`, `specialist`, `created_at`, `updated_at`) VALUES
(1, 'Febi Lintang Lestari S.Farm', 'Promotor Acara', '2024-10-31 10:41:01', '2024-10-31 10:41:01'),
(2, 'Almira Elisa Aryani M.Farm', 'Montir', '2024-10-31 10:41:01', '2024-10-31 10:41:01'),
(3, 'Manah Mansur', 'Desainer', '2024-10-31 10:41:01', '2024-10-31 10:41:01'),
(4, 'Darsirah Waluyo S.Pt', 'Pramusaji', '2024-10-31 10:41:01', '2024-10-31 10:41:01'),
(5, 'Estiono Budiman', 'Pengacara', '2024-10-31 10:41:01', '2024-10-31 10:41:01'),
(6, 'Gawati Lili Laksmiwati', 'Buruh Tani / Perkebunan', '2024-10-31 10:41:01', '2024-10-31 10:41:01'),
(7, 'Banawi Firmansyah S.Farm', 'Paraji', '2024-10-31 10:41:01', '2024-10-31 10:41:01'),
(8, 'Lidya Shania Lailasari S.E.I', 'Guru', '2024-10-31 10:41:01', '2024-10-31 10:41:01'),
(9, 'Hasim Teguh Latupono S.IP', 'Hakim', '2024-10-31 10:41:01', '2024-10-31 10:41:01'),
(10, 'Najwa Mandasari', 'Karyawan Swasta', '2024-10-31 10:41:01', '2024-10-31 10:41:01');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mscategories`
--
ALTER TABLE `mscategories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `msposts`
--
ALTER TABLE `msposts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `msposts_categoryid_foreign` (`categoryId`),
  ADD KEY `msposts_userid_foreign` (`userId`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `writers`
--
ALTER TABLE `writers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `mscategories`
--
ALTER TABLE `mscategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `msposts`
--
ALTER TABLE `msposts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `writers`
--
ALTER TABLE `writers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `msposts`
--
ALTER TABLE `msposts`
  ADD CONSTRAINT `msposts_categoryid_foreign` FOREIGN KEY (`categoryId`) REFERENCES `mscategories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `msposts_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `writers` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
