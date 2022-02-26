-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: arbaint-db
-- Waktu pembuatan: 25 Feb 2022 pada 23.59
-- Versi server: 8.0.28
-- Versi PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arbaint`
--
CREATE DATABASE IF NOT EXISTS `arbaint` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `arbaint`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `_product`
--

CREATE TABLE `_product` (
  `id` int NOT NULL,
  `category` int NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `_product`
--

INSERT INTO `_product` (`id`, `category`, `name`, `description`) VALUES
(1, 2, 'Huhu', 'Huhu haha');

-- --------------------------------------------------------

--
-- Struktur dari tabel `_product_category`
--

CREATE TABLE `_product_category` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `createdAt` timestamp NOT NULL,
  `updatedAt` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `_product_category`
--

INSERT INTO `_product_category` (`id`, `name`, `slug`, `createdAt`, `updatedAt`) VALUES
(1, 'Kurta', 'kurta', '2022-02-02 22:49:34', '2022-02-02 22:49:34'),
(2, 'Koko', 'koko', '2022-02-02 22:50:25', '2022-02-02 22:50:25'),
(3, 'Sirwal', 'sirwal', '2022-02-02 22:51:09', '2022-02-02 22:51:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `_product_option`
--

CREATE TABLE `_product_option` (
  `id` int NOT NULL,
  `product` int NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `_product_option`
--

INSERT INTO `_product_option` (`id`, `product`, `name`) VALUES
(1, 1, 'Warna'),
(2, 1, 'Ukuran');

-- --------------------------------------------------------

--
-- Struktur dari tabel `_product_option_value`
--

CREATE TABLE `_product_option_value` (
  `id` int NOT NULL,
  `product` int NOT NULL,
  `option` int NOT NULL,
  `value` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `_product_option_value`
--

INSERT INTO `_product_option_value` (`id`, `product`, `option`, `value`) VALUES
(1, 1, 1, 'Merah'),
(2, 1, 1, 'Hitam'),
(3, 1, 2, 'S'),
(4, 1, 2, 'M'),
(5, 1, 2, 'L'),
(6, 1, 2, 'XL');

-- --------------------------------------------------------

--
-- Struktur dari tabel `_product_sku`
--

CREATE TABLE `_product_sku` (
  `id` int NOT NULL,
  `product` int NOT NULL,
  `sku` varchar(100) NOT NULL,
  `buy_price` int NOT NULL,
  `price` int NOT NULL,
  `createdAt` timestamp NOT NULL,
  `updatedAt` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `_product_sku`
--

INSERT INTO `_product_sku` (`id`, `product`, `sku`, `buy_price`, `price`, `createdAt`, `updatedAt`) VALUES
(1, 1, 'WMUS', 0, 0, '2022-02-02 23:02:44', '2022-02-02 23:02:44'),
(2, 1, 'WHUS', 0, 0, '2022-02-02 23:02:44', '2022-02-02 23:02:44'),
(5, 1, 'WMUM', 0, 0, '2022-02-02 23:03:44', '2022-02-02 23:03:44'),
(6, 1, 'WHUM', 0, 0, '2022-02-02 23:03:44', '2022-02-02 23:03:44'),
(7, 1, 'WMUL', 0, 0, '2022-02-02 23:05:55', '2022-02-02 23:05:55'),
(8, 1, 'WHUL', 0, 0, '2022-02-02 23:05:55', '2022-02-02 23:05:55'),
(9, 1, 'WMUX', 0, 0, '2022-02-02 23:06:39', '2022-02-02 23:06:39'),
(10, 1, 'WHUX', 0, 0, '2022-02-02 23:06:39', '2022-02-02 23:06:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `_product_sku_value`
--

CREATE TABLE `_product_sku_value` (
  `id` int NOT NULL,
  `product` int NOT NULL,
  `option` int NOT NULL,
  `sku` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `_product_sku_value`
--

INSERT INTO `_product_sku_value` (`id`, `product`, `option`, `sku`) VALUES
(1, 1, 1, 1),
(2, 1, 1, 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `_product`
--
ALTER TABLE `_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category` (`category`);

--
-- Indeks untuk tabel `_product_category`
--
ALTER TABLE `_product_category`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `_product_option`
--
ALTER TABLE `_product_option`
  ADD KEY `product` (`product`),
  ADD KEY `id` (`id`) USING BTREE;

--
-- Indeks untuk tabel `_product_option_value`
--
ALTER TABLE `_product_option_value`
  ADD KEY `product` (`product`),
  ADD KEY `option` (`option`),
  ADD KEY `id` (`id`);

--
-- Indeks untuk tabel `_product_sku`
--
ALTER TABLE `_product_sku`
  ADD KEY `product` (`product`),
  ADD KEY `id` (`id`) USING BTREE;

--
-- Indeks untuk tabel `_product_sku_value`
--
ALTER TABLE `_product_sku_value`
  ADD KEY `product` (`product`),
  ADD KEY `option` (`option`),
  ADD KEY `sku` (`sku`),
  ADD KEY `id` (`id`) USING BTREE;

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `_product`
--
ALTER TABLE `_product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `_product_category`
--
ALTER TABLE `_product_category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `_product_option`
--
ALTER TABLE `_product_option`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `_product_sku`
--
ALTER TABLE `_product_sku`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `_product`
--
ALTER TABLE `_product`
  ADD CONSTRAINT `_product_ibfk_1` FOREIGN KEY (`category`) REFERENCES `_product_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `_product_option`
--
ALTER TABLE `_product_option`
  ADD CONSTRAINT `_product_option_ibfk_1` FOREIGN KEY (`product`) REFERENCES `_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `_product_option_value`
--
ALTER TABLE `_product_option_value`
  ADD CONSTRAINT `_product_option_value_ibfk_1` FOREIGN KEY (`option`) REFERENCES `_product_option` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `_product_option_value_ibfk_2` FOREIGN KEY (`product`) REFERENCES `_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `_product_sku`
--
ALTER TABLE `_product_sku`
  ADD CONSTRAINT `_product_sku_ibfk_1` FOREIGN KEY (`product`) REFERENCES `_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `_product_sku_value`
--
ALTER TABLE `_product_sku_value`
  ADD CONSTRAINT `_product_sku_value_ibfk_1` FOREIGN KEY (`product`) REFERENCES `_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `_product_sku_value_ibfk_2` FOREIGN KEY (`option`) REFERENCES `_product_option` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `_product_sku_value_ibfk_3` FOREIGN KEY (`sku`) REFERENCES `_product_sku` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
