-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 14, 2021 lúc 03:59 PM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `blog`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `postID` int(11) NOT NULL,
  `commentID` int(11) NOT NULL,
  `commentDesc` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `commentAuthor` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `commentTime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`postID`, `commentID`, `commentDesc`, `commentAuthor`, `commentTime`) VALUES
(2, 3, 'yuppy', 'qt', '2015-08-22 12:36:50'),
(2, 4, 'nice :-)', 'qt', '2015-08-22 12:36:59'),
(2, 5, 'nice op you are great !!', 'qt', '2015-08-22 12:37:21'),
(6, 7, 'nice :P', 'qt', '2015-08-22 12:41:19'),
(6, 8, 'cuteee :P', 'qt', '2015-08-22 12:55:13'),
(6, 9, 'Very good line The college has well-established Central Learning resource centers like Central library, Central Computer Centre, Entrepreneurship Development Cell, Continuing Education Centre and Physical Education Section. The college also has a very active Training & Placement section. ', 'qt', '2015-08-22 13:05:11'),
(6, 10, 'My comment', 'qt', '2015-08-22 13:14:45'),
(6, 11, '          Really appriciable _/\\_', 'rtkasodariya', '2015-08-22 13:17:38'),
(0, 12, 'dklvn', 'qt', '2015-08-22 13:34:42'),
(6, 13, '          test comment', 'rtkasodariya', '2015-08-23 08:10:05'),
(6, 14, '          opps', 'rtkasodariya', '2015-08-23 16:30:09'),
(6, 15, '          I am witness', 'qt', '2015-08-30 13:36:24'),
(7, 16, '    Thanks', 'qt', '2015-09-02 08:00:32'),
(7, 17, '          Nice Explanation :-)', 'rtkasodariya', '2015-09-02 08:01:13'),
(2, 18, '          Very well... Good start..', 'rtkasodariya', '2015-09-02 08:05:22'),
(22, 20, '          Bình luận 1', 'duong', '2021-03-28 02:52:53'),
(22, 21, '          Bình luận của Dương 2', 'duong2', '2021-03-28 03:03:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `message`, `time`) VALUES
(1, ' rtkasodariya', 'kasodariyarajan@gmail.com', 'dfvd', '2015-09-06 20:03:55'),
(2, ' spy_007', 'yashgolechha@ymail.com', 'popat', '2015-09-06 20:03:55'),
(3, ' duong', 'd18071999@gmail.com', 'hello', '2021-02-14 20:00:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `postID` int(11) NOT NULL,
  `postTitle` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `postDesc` varchar(10000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `postTime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `postTag` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `postAuthor` varchar(40) NOT NULL,
  `postImage` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`postID`, `postTitle`, `postDesc`, `postTime`, `postTag`, `postAuthor`, `postImage`) VALUES
(22, 'Bài viết 1', '<p>Nội dung b&agrave;i viết 1</p>\r\n', '2021-03-28 02:52:26', '', 'duong', NULL),
(24, 'Bài viết 2', '<p>Nội dung b&agrave;i viết 2</p>\r\n', '2021-03-28 04:05:19', '', 'duong', NULL),
(31, 'Đăng ảnh 1', '', '2021-03-28 08:14:00', '', 'duong', '../assets/images/napoleon.jpg'),
(32, 'Bài viết 4', '<p>Nội dung b&agrave;i viết 4</p>\r\n', '2021-04-13 13:46:48', '', 'duong', ''),
(33, 'Bài viết 3', '<p>Nội dung b&agrave;i viết 3</p>\r\n', '2021-04-13 13:50:28', '', 'duong', ''),
(34, 'Bài viết 5', '<p>Nội dung b&agrave;i viết 5</p>\r\n', '2021-04-13 13:50:05', '', 'duong', ''),
(36, 'Bài viết có tag 2', '<p>Nội dung b&agrave;i viết c&oacute; tag 2</p>\r\n', '2021-04-13 13:59:35', 'Bạo lực học đường', 'duong', ''),
(37, 'Bài viết có tag 3', '<p>Nội dung b&agrave;i viết c&oacute; tag 3</p>\r\n', '2021-04-13 14:01:08', 'Xâm hại tình dục', 'duong', ''),
(38, 'Bài viết có tag 4', '<p>Nội dung b&agrave;i viết c&oacute; tag 4</p>\r\n', '2021-04-13 14:07:27', 'Bạo lực học đường', 'duong', ''),
(39, 'Bài đăng 1', '<p>Nội dung b&agrave;i đăng 1</p>\r\n', '2021-04-13 14:30:59', 'Bạo lực học đường', 'duong', ''),
(40, 'Viết bài', '<p>Viết b&agrave;i</p>\r\n', '2021-04-13 14:48:25', 'Bạo lực học đường', 'duong', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts_buffer`
--

CREATE TABLE `posts_buffer` (
  `postID` int(11) NOT NULL,
  `postTitle` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `postDesc` varchar(5000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `postTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `postTag` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `postAuthor` varchar(20) NOT NULL,
  `postImage` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `firstname` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(40) NOT NULL,
  `emailid` varchar(40) NOT NULL,
  `createdon` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `usertype` varchar(50) NOT NULL DEFAULT 'normal'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `firstname`, `password`, `emailid`, `createdon`, `usertype`) VALUES
(6, 'admin', 'admin', 'admin', 'admin@admin.com', '2015-08-22 13:34:00', 'admin'),
(8, 'duongnb', 'duong', '123456', 'd18071999@gmail.com', '2021-02-06 07:21:40', 'normal'),
(9, 'duong', 'duong', '123456', 'd18071999@gmail.com', '2021-02-14 12:57:16', 'normal'),
(11, 'duong2', 'Dương', '123456', 'd218071999@gmail.com', '2021-03-28 03:03:11', 'normal');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users_buffer`
--

CREATE TABLE `users_buffer` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `firstname` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(40) NOT NULL,
  `emailid` varchar(40) NOT NULL,
  `createdon` timestamp NOT NULL DEFAULT current_timestamp(),
  `usertype` varchar(20) NOT NULL DEFAULT 'nornal'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_post`
--

CREATE TABLE `user_post` (
  `postAuthor` varchar(40) NOT NULL,
  `postID` int(11) NOT NULL,
  `postLikes` int(11) NOT NULL DEFAULT 0,
  `postDisLikes` int(11) NOT NULL,
  `postComments` int(11) NOT NULL DEFAULT 0,
  `postViews` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='User and Post relation Table';

--
-- Đang đổ dữ liệu cho bảng `user_post`
--

INSERT INTO `user_post` (`postAuthor`, `postID`, `postLikes`, `postDisLikes`, `postComments`, `postViews`) VALUES
('qt', 1, 4, 0, 0, 20),
('sai', 2, 0, 0, 0, 7),
('expcode', 5, 0, 0, 0, 48),
('qt', 6, 0, 0, 0, 127),
('qt', 7, 0, 0, 0, 11),
('qt', 16, 0, 0, 0, 1),
('duong', 22, 0, 0, 0, 12);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD UNIQUE KEY `commentID` (`commentID`);

--
-- Chỉ mục cho bảng `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`postID`),
  ADD UNIQUE KEY `postTitle` (`postTitle`);

--
-- Chỉ mục cho bảng `posts_buffer`
--
ALTER TABLE `posts_buffer`
  ADD PRIMARY KEY (`postID`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Chỉ mục cho bảng `users_buffer`
--
ALTER TABLE `users_buffer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`,`emailid`);

--
-- Chỉ mục cho bảng `user_post`
--
ALTER TABLE `user_post`
  ADD PRIMARY KEY (`postID`),
  ADD UNIQUE KEY `postID` (`postID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `commentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `postID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `posts_buffer`
--
ALTER TABLE `posts_buffer`
  MODIFY `postID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `users_buffer`
--
ALTER TABLE `users_buffer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
