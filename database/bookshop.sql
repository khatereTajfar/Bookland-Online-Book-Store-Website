-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2019 at 09:39 AM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_isbn` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `book_title` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `book_author` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `book_image` varchar(40) COLLATE latin1_general_ci DEFAULT NULL,
  `book_descr` longtext COLLATE latin1_general_ci DEFAULT NULL,
  `book_price` decimal(6,2) NOT NULL,
  `publisherid` int(10) UNSIGNED NOT NULL,
  `categoryid` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_isbn`, `book_title`, `book_author`, `book_image`, `book_descr`, `book_price`, `publisherid`, `categoryid`) VALUES
('978-0-321-94786-4', 'THE FAST 800 RECIPE BOOK: AUSTRALIAN AND NEW ZEALAND EDITION', 'Dr Clare Bailey', 'the 800 fast recipe book.jpg', 'The companion to the No.1 bestseller The Fast 800. 150 delicious new recipes to help you combine rapid weight loss and intermittent fasting for long term good health. Foreword by Dr Michael Mosley.\r\n\r\nThis companion cookbook to the international bestseller The Fast 800 by Dr Michael Mosley is filled with delicious, easy, low carb recipes and essential weekly meal planners, all carefully formulated by Dr Clare Bailey and Justine Pattison to help you lose weight, improve mood and reduce blood pressure, inflammation and blood sugars. Studies show that 800 calories is the magic number when it comes to successful dieting. Its high enough to be manageable, but low enough to speed weight loss and trigger a range of positive metabolic changes. In The Fast 800, Dr Michael Mosley brought together all the latest science, including Time Restricted Eating, to create an easy-to-follow programme, and this collection of all-new recipes, all photographed in full colour, will help you achieve all your goals. Every recipe is also calorie coded and noted with nutrition metrics to help you on your path to long term health.\r\n\r\nThis diet changed my life Denise Bach, aged 51', '23.99', 8, 1),
('978-0-7303-1484-4', 'THE FAST DIET RECIPE BOOK (THE OFFICIAL 5:2 DIET)', 'Mimi Spencer, Sarah Schenker', 'the fast diet recipe book.jpg', 'Following the #1 bestselling The Fast Diet, this fabulous cookbook offers 150 carefully crafted, nutritious, low-calorie recipes to enable you to incorporate the 5:2 weight-loss system into your daily life.\r\n\r\nAs revealed by Dr Michael Mosley in The Fast Diet, scientific trials have revealed that if you eat normally for five days a week but reduce your calorie intake for only two days, you will not only lose weight but potentially lower your risk of cancer, diabetes and other age-related diseases.\r\n\r\nThe recipes here range from simple breakfasts to leisurely suppers and warming winter stews, all expertly balanced and calorie-counted by leading nutritionist Dr Sarah Schenker. Theres also a month of meal plans for men and women and Mimi Spencer, co-writer of The Fast Diet, offers a groundbreaking guide to following this diet in a safe, effective and sustainable way - you will never have to worry about planning your fast days again. There are plenty of encouraging tips - including kitchen cupboard essentials and a whole section of speedy meals that can be quickly made for those busier days.\r\n\r\nThis book offers a wonderful companion guide to the groundbreaking Fast Diet, with recipes so delicious youll find yourself looking forward to your Fast Days. Youll lose weight, and enjoy doing it.', '24.99', 8, 1),
('978-1-118-94924-5', 'THE GOOD THIEVES', 'Katherine Rundell', 'the good theives.jpg', 'An amazing adventure story, told with sparkling style and sleight of hand JACQUELINE WILSON\r\n\r\nVita set her jaw, and nodded at New York City in greeting, as a boxer greets an opponent before a fight.\r\n\r\nFresh off the boat from England, Vita Marlowe has a job to do. Her beloved grandfather Jack has been cheated out of his home and possessions by a notorious conman with Mafia connections. Seeing Jack spirit is broken, Vita is desperate to make him happy again, so she devises a plan to outwit his enemies and recover his home.\r\nShe finds a young pickpocket, working the streets of the city. And, nearby, two boys with highly unusual skills and secrets of their own are about to be pulled into her lawless, death-defying plan.\r\n\r\nKatherine Rundells fifth novel is a heist as never seen before - the story of a group of children who will do anything to right a wrong.', '11.99', 7, 2),
('978-1-1180-2669-4', 'FIVE FEET APART', 'Rachael Lippincott, Mikki Daughtry, Tobias Iaconis', 'five feet apart.jpg', 'In this moving story thats perfect for fans of John Greens The Fault in Our Stars, two teens fall in love with just one minor complication-they cant get within a few feet of each other without risking their lives. Can you love someone you can never touch? Stella Grant likes to be in control-even though her totally out of control lungs have sent her in and out of the hospital most of her life. At this point, what Stella needs to control most is keeping herself away from anyone or anything that might pass along an infection and jeopardize the possibility of a lung transplant. Six feet apart. No exceptions. The only thing Will Newman wants to be in control of is getting out of this hospital. He couldnt care less about his treatments, or a fancy new clinical drug trial. Soon, hell turn eighteen and then hell be able to unplug all these machines and actually go see the world, not just its hospitals. Wills exactly what Stella needs to stay away from. If he so much as breathes on Stella she could lose her spot on the transplant list. Either one of them could die. The only way to stay alive is to stay apart. But suddenly six feet doesnt feel like safety. It feels like punishment. What if they could steal back just a little bit of the space their broken lungs have stolen from them? Would five feet apart really be so dangerous if it stops their hearts from breaking too?', '16.99', 7, 4),
('978-1-44937-019-0', 'KINGDOM OF ASH (BOOK 6, THRONE OF GLASS)', 'Sarah J. Maas', 'kingdom if ash.jpg', 'Aelin Galathynius s journey from slave to assassin to queen reaches its heart-rending finale as war erupts across her world -\r\nShe has risked everything to save her people but at a tremendous cost. Locked in an iron coffin by the Queen of the Fae, Aelin must draw upon her fiery will to endure the months of torture inflicted upon her. The knowledge that yielding to Maeve will doom those she loves keeps her from breaking, but her resolve is unravelling with each passing day -\r\nWith Aelin imprisoned, Aedion and Lysandra are the last line of defence keeping Terrasen from utter destruction. But even the many allies they ve gathered to battle Erawan s hordes might not be enough to save the kingdom. Scattered throughout the continent and racing against time, Chaol, Manon, and Dorian must forge their own paths to meet their destinies. And across the sea Rowan hunts to find his captured wife and queen before she is lost to him.\r\nSome bonds will deepen and others be severed forever, but as the threads of fate weave together at last, all must fight if they are to find salvation and a better world.\r\nYears in the making,Kingdom of Ashis the unforgettable conclusion to Sarah J. Maas s #1New York Timesbestselling Throne of Glass series.', '19.99', 2, 6),
('978-1-44937-075-6', 'CITY OF ASHES (THE MORTAL INSTRUMENTS BOOK 2)', 'Cassandra Clare', 'city of ashes.jpg', 'Discover more secrets about the Shadowhunters as they fight to protect the world from demons in the second book in the internationally bestselling Mortal Instruments series.Love and power are the deadliest temptationsâ€¦ Haunted by her past, Clary is dragged deeper into New York Citys terrifying underworld of demons and Shadowhunters â€“ but can she control her feelings for a boy who can never be hers? Read all the sensational books in The Shadowhunter Chronicles: The Mortal Instruments, The Infernal Devices, Tales From the Shadowhunter Academy, The Bane Chronicles and The Shadowhunters Codex.', '19.99', 1, 5),
('978-1-4571-0402-2', 'ATLAS OF MONSTERS AND GHOSTS', 'Lonely Planet', 'monsters and ghosts.jpg', 'If you believe that all you need to fight an evil bloodthirsty fiend is garlic or holy water, think again. What you need is to keep a cool head and reach for your copy of Atlas of Monsters and Ghosts!\r\n\r\nHave you heard of the headless man roaming Edinburgh Castle? Or the mysterious girl who asks for a ride to the cemetery and then disappears into the night? What about orcs, trolls, gremlins, krakens, bunyips and the Yara-Ma-Yha-Who?\r\n\r\nJoin famous monster hunter Van Helsing on a trip around the globe to find haunted castles, restless spirits, terrifying dragons, wicked witches, and more. Learn the defining characteristics of each beast, where it can be found and â€“ most importantly â€“ how to defeat it.\r\n\r\nOrganised by continent for easy monster-tracking, Lonely Planet Kids Atlas of Monsters and Ghosts gives you the lowdown on the worlds most famous ghosts and mythological creatures, each brought to life by Laura Brenllas beautiful illustrations.\r\n\r\nAbout Lonely Planet Kids: Lonely Planet Kids â€“ an imprint of the worlds leading travel authority Lonely Planet â€“ published its first book in 2011. Over the past 45 years, Lonely Planet has grown a dedicated global community of travellers, many of whom are now sharing a passion for exploration with their children. Lonely Planet Kids educates and encourages young readers at home and in school to learn about the world with engaging books on culture, sociology, geography, nature, history, space and more. We want to inspire the next generation of global citizens and help kids and their parents to approach life in a way that makes every day an adventure. Come explore!', '26.99', 11, 2),
('978-1-484216-40-8', 'BECOMING', 'Michelle Obama', 'becoming.jpg', 'This memoir will chronicle the former First Ladys life from a childhood on the South Side of Chicago to her years as an executive balancing the demands of motherhood and work, as well as her time in the White House.\r\n\r\nIn a statement, she said: Writing Becoming has been a deeply personal experience. It has allowed me, for the very first time, the space to honestly reflect on the unexpected trajectory of my life.\r\n\r\nâ€œIn this book, I talk about my roots and how a little girl from the South Side of Chicago found her voice and developed the strength to use it to empower others. I hope my journey inspires readers to find the courage to become whoever they aspire to be. I cant wait to share my story.', '49.99', 2, 9),
('978-1-484217-26-9', 'GOOD NIGHT STORIES FOR REBEL GIRLS 2', 'Elena Favilli & Francesca Cavallo, Elena Favilli', 'goodnight stories for rebel girls.jpg', '100 new bedtime stories, each inspired by the life and adventures of extraordinary women from Nefertiti to Beyonce. The unique narrative style of \"Good Night Stories for Rebel Girls\" transforms each biography in a fairy-tale, filling the readers with wonder and with a burning curiosity to know more about each hero.', '49.99', 7, 2),
('9780575081406', 'The Name of the Wind (The Kingkiller Chronicle Book 1)', 'Patrick Rothfuss', 'the name of the wind.jpg', 'The Name of the Wind is fantasy at its very best, and an astounding must-read title.\r\n\r\nI have stolen princesses back from sleeping barrow kings. I burned down the town of Trebon. I have spent the night with Felurian and left with both my sanity and my life. I was expelled from the University at a younger age than most people are allowed in. I tread paths by moonlight that others fear to speak of during day. I have talked to Gods, loved women, and written songs that make the minstrels weep.\r\n\r\nMy name is Kvothe.\r\n\r\nYou may have heard of me\r\n\r\nSo begins the tale of Kvothe - currently known as Kote, the unassuming innkeepter - from his childhood in a troupe of traveling players, through his years spent as a near-feral orphan in a crime-riddled city, to his daringly brazen yet successful bid to enter a difficult and dangerous school of magic. In these pages you will come to know Kvothe the notorious magician, the accomplished thief, the masterful musician, the dragon-slayer, the legend-hunter, the lover, the thief and the infamous assassin.\r\n\r\nThe Name of the Wind is fantasy at its very best, and an astounding must-read title.', '19.99', 7, 1),
('9781409178811', 'Broken Throne', 'Victoria Aveyard', 'broken throne.jpg', 'The stunning sequel to Sarah J. Maas New York Times bestselling A Court of Thorns and Roses and a No.1 New York Times bestseller.Feyre survived Amaranthas clutches to return to the Spring Court - but at a steep cost. Though she now has the powers of the High Fae, her heart remains human, and it cant forget the terrible deeds she performed to save Tamlins people.Nor has Feyre forgotten her bargain with Rhysand, High Lord of the feared Night Court. As Feyre navigates its dark web of politics, passion, and dazzling power, a greater evil looms - and she might be key to stopping it. But only if she can harness her harrowing gifts, heal her fractured soul, and decide how she wishes to shape her future - and the future of a world cleaved in two.With more than a million copies sold of her beloved Throne of Glass series, Sarah J. Maass masterful storytelling brings this second book in her seductive and action-packed series to new heights. Older teens will love A Court of Mist and Fury.Contains mature content. Not suitable for younger readers.', '17.99', 10, 2);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `customerid` int(10) UNSIGNED NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `customerid`, `date`) VALUES
(23, 7, '2019-07-05 15:21:55'),
(24, 7, '2019-07-05 15:22:25'),
(25, 7, '2019-07-05 15:22:55'),
(26, 6, '2019-07-05 16:32:04');

-- --------------------------------------------------------

--
-- Table structure for table `cartitems`
--

CREATE TABLE `cartitems` (
  `id` int(10) NOT NULL,
  `cartid` int(10) UNSIGNED NOT NULL,
  `productid` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `quantity` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `cartitems`
--

INSERT INTO `cartitems` (`id`, `cartid`, `productid`, `quantity`) VALUES
(24, 23, '978-0-321-94786-4', 1),
(25, 23, '9781409178811', 1),
(26, 23, '978-1-484217-26-9', 5),
(27, 26, '978-1-44937-019-0', 10);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `categoryid` int(10) NOT NULL,
  `category_name` varchar(60) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryid`, `category_name`) VALUES
(1, 'Fiction'),
(2, 'Children'),
(3, 'Education'),
(4, 'Health And Diet'),
(5, 'Arts And Entertainments'),
(6, 'Cooking,Food And Drink'),
(9, 'Non-Fiction');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) NOT NULL,
  `firstname` varchar(40) NOT NULL,
  `lastname` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `address` varchar(120) NOT NULL,
  `city` varchar(40) NOT NULL,
  `zipcode` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `firstname`, `lastname`, `email`, `password`, `address`, `city`, `zipcode`) VALUES
(6, 'amir', 'hassankhani', 'amir@amir.com', '111', 'Poonak square', 'tehran', '1483834541'),
(7, 'khatere', 'Tajfar', 'tajfar@yahoo.com', '111', 'Sadeqie square - Ayatollah Kashani Street - North Sazman Barname - 8th Central Alley', 'Tehran', '1483834541');

-- --------------------------------------------------------

--
-- Table structure for table `expert`
--

CREATE TABLE `expert` (
  `name` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `pass` varchar(40) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `expert`
--

INSERT INTO `expert` (`name`, `pass`) VALUES
('expert', 'expert');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `name` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `pass` varchar(40) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`name`, `pass`) VALUES
('manager', 'manager');

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `publisherid` int(10) UNSIGNED NOT NULL,
  `publisher_name` varchar(60) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`publisherid`, `publisher_name`) VALUES
(2, 'Wiley'),
(7, 'OReilly Media'),
(8, 'Paper Back'),
(10, 'Bloomsbury Publishing PLC'),
(11, 'Wrox');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_isbn`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cartitems`
--
ALTER TABLE `cartitems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryid`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`publisherid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `cartitems`
--
ALTER TABLE `cartitems`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `categoryid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `publisherid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
