-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2022 at 11:57 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vendor`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`) VALUES
(1, 'Backpacks'),
(2, 'Weekend Bags'),
(3, 'Briefcases'),
(4, 'Wallets'),
(5, 'Items'),
(6, 'TestCategory'),
(7, 'TestCategory'),
(8, 'TestCategory'),
(9, 'My Category'),
(10, 'Some category');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userid`, `status`, `date`) VALUES
(2, 80, 'Finished', '11/08/2021, 08:55'),
(3, 49, 'Finished', '17/08/2021, 19:45'),
(4, 18, 'Finished', '19/08/2021, 18:31'),
(5, 92, 'In Transit', '22/08/2021, 18:50'),
(6, 57, 'In Transit', '23/08/2021, 16:16'),
(7, 20, 'Cancelled', '25/08/2021, 10:01'),
(8, 20, 'Cancelled', '25/08/2021, 10:05'),
(9, 20, 'In Transit', '25/08/2021, 10:20'),
(10, 20, 'In Transit', '25/08/2021, 18:19'),
(11, 80, 'In Transit', '26/08/2021, 11:09'),
(12, 5, 'Cancelled', '26/08/2021, 12:10'),
(13, 66, 'In Transit', '26/08/2021, 14:15'),
(14, 66, 'Cancelled', '26/08/2021, 15:00'),
(15, 66, 'Cancelled', '26/08/2021, 19:11'),
(16, 51, 'Processing', '27/08/2021, 11:11'),
(17, 50, 'Processing', '31/08/2021, 18:00');

-- --------------------------------------------------------

--
-- Table structure for table `orders_products`
--

CREATE TABLE `orders_products` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders_products`
--

INSERT INTO `orders_products` (`order_id`, `product_id`, `quantity`) VALUES
(2, 1, 1),
(2, 2, 4),
(2, 10, 2),
(2, 20, 5),
(3, 5, 1),
(4, 8, 2),
(4, 9, 1),
(4, 30, 1),
(4, 31, 1),
(5, 1, 1),
(5, 12, 1),
(6, 19, 1),
(7, 22, 1),
(7, 23, 1),
(7, 25, 2),
(7, 29, 1),
(8, 1, 1),
(8, 10, 1),
(8, 28, 1),
(8, 29, 2),
(9, 1, 1),
(9, 4, 1),
(9, 5, 1),
(9, 11, 10),
(9, 12, 4),
(9, 33, 3),
(10, 1, 1),
(10, 2, 1),
(10, 32, 1),
(10, 33, 1),
(11, 9, 1),
(12, 9, 1),
(12, 14, 1),
(12, 18, 1),
(12, 19, 1),
(12, 31, 1),
(13, 7, 1),
(13, 9, 1),
(13, 16, 1),
(13, 26, 2),
(14, 10, 1),
(14, 26, 1),
(15, 1, 1),
(15, 11, 18),
(15, 15, 1),
(15, 19, 1),
(16, 5, 1),
(16, 9, 1),
(16, 11, 1),
(16, 22, 2),
(16, 26, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `title` varchar(45) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `title`, `price`, `description`, `category`, `stock`) VALUES
(1, 'Mountain Hike', 299, 'High-performance mountain backpack. Functionality includes gear loops, cord detailing, compressions straps, large front pocket and smaller pocket in the lid. Expertly crafted from sustainable fabrics, with technical details and function at its core.', 1, 0),
(2, 'Forest Hike', 199, 'Technical rolltop backpack. Expertly crafted from sustainable fabrics, with technical details and function at its core.', 1, 1),
(3, 'Bernt', 149, 'This water-resistant and functional backpack from our Urban Outdoor series is constructed with Cordura® EcoMade polyester and leather patch details. It features a 15\" laptop compartment and can carry up to 20 L. The versatile and practical features along with heritage leather details make this bag a modern classic to be worn everyday or for those weekend hikes.', 1, 0),
(4, 'Tony', 99, 'This minimalistic backpack from our Ground series is produced from an organic cotton and recycled polyester mix, here updated with details in polyester making it 100% vegan. The bag features a 15\" laptop pocket, one outer zipper pocket and can carry up to 13 L. With the top and side handle you can carry the backpack as a tote or a briefcase as well, perfect for the daily commute.', 1, 1),
(5, 'Ruben 2.0', 179, 'This water-resistant and functional rolltop backpack from our Stream series is constructed from recycled polyester with a waterproof TPU coating and can carry up to 21 L. It features a 13\" laptop compartment and is designed with YKK® AquaGuard zippers. The webbing is reflective, keeping you visible at night. Continue exploring with a functional and durable bag that will keep your belongings safe and dry.', 1, 1),
(6, 'Johannes', 159, 'This water-resistant and functional backpack from our Urban Outdoor series is constructed from Cordura® EcoMade polyester with leather patch accents. It features a 13\" laptop compartment, practical cord detailing and can carry up to 15 L. The versatile features combined with heritage details make this bag a modern companion to be worn both in the city and on those weekend hikes.', 1, 1),
(7, 'Erland Lightweight', 99, 'This lightweight and functional backpack with zipper closure from our Lightweight series is made from 100% recycled nylon ripstop. It can be folded and tucked into the inner zipper pocket, making packing that much easier. The versatile and practical features, alongside it being super lightweight and packable makes this bag a classic to be worn everyday.', 1, 1),
(8, 'Baetis', 249, 'This rolltop backpack is made in collaboration with fly fishing collective Podsol. It is constructed from 100% recycled heavy-duty water-resistant polyester with leather patch accents and water resistant PU screen print coating on the bottom. The bag comes with an additional dry bag with shoulder strap and is equipped with rod tube holders on the side, a d-ring for your fishing net and a leather holder for floatant and spool holder. The bag features a 13\" laptop compartment, practical cord detailing and can carry up to 25 L.', 1, 1),
(9, 'Atle', 159, 'This water-resistant backpack from our Stream series is constructed from recycled polyester with a waterproof TPU coating. It features a 13\" laptop compartment, can carry up to 16 L and is designed with YKK® AquaGuard zippers. The webbing is reflective, keeping you visible at night. Continue exploring with a functional and durable bag that will keep your belongings safe and dry.', 1, 1),
(10, 'Zeke', 199, 'This water-resistant and functional backpack from our Aerial series is constructed from recycled polyester. The 13\" laptop compartment, two handles, double main opening options and compression straps are all key for that perfectly packed bag. A vegan backpack where utility and function are in focus.', 1, 1),
(11, 'Christoffer', 179, 'This water-resistant and functional rolltop backpack from our Urban Outdoor series is constructed from Cordura® EcoMade polyester with leather patch accents. It features a 13\" laptop compartment, practical cord detailing and can carry up to 27 L. The versatile features combined with heritage details make this bag a modern companion to be worn both in the city and on those weekend hikes.', 1, 1),
(12, 'Alva', 219, 'This high-quality backpack from our Classics series is made with organic cotton canvas and high-quality leather and can carry up to 11 L. The front roller buckle closure lends an elegant and timeless look. The inner laptop compartment fits most 13\" models. A great backpack for work and leisure, matching both your dressed and casual outfits.', 1, 1),
(13, 'Hege', 219, 'This high-quality, spacious backpack from our Classics series is made with organic cotton canvas and high-quality leather and can carry up to 18 L. The double roller buckle closure on the thick leather lid lends a timeless look. An inner laptop compartment fits most 15\" models. Functionality combined with sophisticated design make this the perfect everyday bag for work as well as leisure.', 1, 1),
(14, 'Milton', 149, 'This water-resistant and spacious weekend bag from our Urban Outdoor series is constructed in Cordura® EcoMade polyester with leather patch details. Can carry up to 30 L and features interior pockets for keeping your passport and wallet within reach. Can be brought as carry on luggage. The durable material allows your bag to stay good looking regardless of how many times you travel with it.', 2, 1),
(15, 'Leopold', 179, 'This water-resistant duffel bag from our Stream series doubles as a backpack. It is constructed from recycled polyester with a waterproof TPU coating and can carry up to 27 L. The bag is designed with YKK® AquaGuard zippers and the webbing is reflective, keeping you visible at night. Continue exploring with a functional and durable bag that will keep your belongings safe and dry.', 2, 1),
(16, 'Hailey', 179, 'This spacious weekend bag from our Fusion series is made with recycled nylon and high-quality leather details. Outer slip pockets with magnetic closure and inner zipper pockets. The bag features two large handles and a removable and adjustable shoulder strap. Lightweight, comfortable and spacious, making it the perfect bag for both the gym as well as for weekend travels.', 2, 1),
(17, 'Astrid', 199, 'This oversized tote bag from our Fusion series is made with recycled nylon and high-quality leather details. One main compartment with a hidden magnet closure, inner and outer zipper pockets. Lightweight, comfortable and elegant, making it the perfect bag to accompany you wherever you go.', 2, 1),
(18, 'Zack New', 189, 'This water-resistant and very spacious 41 L backpack from our Aerial series is constructed from recycled polyester. The 15\" laptop compartment, several handles, hidden outer pockets and compression straps are all key for that perfectly-packed bag. A vegan backpack where utility and function are key.', 2, 1),
(19, 'Dal', 159, 'This water-resistant briefcase from our Stream series is constructed from recycled polyester with a waterproof TPU coating. It features an 13\'\' laptop compartment, two outer zipper pockets and can carry up to 12 L and is designed with YKK® AquaGuard zippers. Reflective webbing on the side. Continue exploring with a functional and durable bag that will keep your belongings safe and dry.', 3, 1),
(20, 'Emil', 129, 'This sleek briefcase from our Ground series is produced from an organic cotton and recycled polyester mix with smooth leather details. The bag features a 15\" laptop pocket, one large outer zipper pocket and can carry up to 12 L. Functional and with a minimal yet stylish approach to design, this bag is a perfect companion for work and school.', 3, 1),
(21, 'Seth Twill', 289, 'This structured briefcase is crafted from recycled/organic polycotton twill with high-quality leather details for a timeless look and carries up to 10 L. The bag features a 15\" laptop compartment, convenient pockets and an adjustable and removable shoulder strap, making it ideal for the daily commute.', 3, 1),
(22, 'Alice', 299, 'This structured shoulder bag is crafted from full grain aniline-dyed Scandinavian leather with strap detailing on the front for a timeless look and carries up to 6 L. The bag features a 13\'\' laptop compartment, sleek handles and a leather shoulder strap. A modern classic that will never go out of style.', 3, 1),
(23, 'Jones Metal Hook', 279, 'This multifunctional take on a classic doctor\'s bag, now updated with metal hook closure, made with organic cotton and high-quality leather. Carries up to 18 L. Featuring adjustable and removable shoulder straps, it can be worn as a backpack, shoulder bag or briefcase. The laptop compartment fits most 15\" models. Functionality combined with sophisticated design make this the perfect everyday bag.', 3, 1),
(24, 'Fred Sunset Pink', 39, 'This card holder is crafted from full grain aniline-dyed Scandinavian leather. It features five card slots. Personalize your style and add some beautiful detail to your look with a high-quality leather card holder that will age beautifully over time.', 4, 1),
(25, 'Fred Black', 39, 'This card holder is crafted from full grain aniline-dyed Scandinavian leather. It features five card slots. Personalize your style and add some beautiful detail to your look with a high-quality leather card holder that will age beautifully over time.', 4, 1),
(26, 'Manfred', 69, 'This exclusive wallet is crafted from full grain aniline-dyed Scandinavian leather. It features six card slots, one bill sleeve and two inner slip pockets. Personalize your style and add some detail to your look with a high-quality leather wallet that will age beautifully over time.', 4, 1),
(27, 'Mona', 89, 'This exclusive wallet is crafted from full grain aniline-dyed Scandinavian leather with zipper closure for a timeless look. It features twelve card slots, two bill pockets and one inner zipper pocket. Personalize your style and add some beautiful detail to your look with a high-quality leather wallet that will age beautifully over time.', 4, 1),
(28, 'Rani', 69, 'This exclusive cart holder is crafted from full grain aniline-dyed Scandinavian leather and lined with 100% organic cotton. It features four card slots and a magnet button closure. Personalize your style and add some beautiful detail to your look with a high-quality leather wallet that will age beautifully over time.', 4, 1),
(29, 'Running Cap', 39, '', 5, 1),
(30, '23oz Bottle', 39, 'Insulated bottle in collaboration with MiiR. Made in durable stainless steel, a bottle that will keep your beverage cold for 24+ hours and hot for up to 12 hours. Clip the lid to your backpack and bring our bottle along on the hike.', 5, 1),
(31, 'Camp Cup', 29, 'Insulated camp cup in collaboration with MiiR. Made in durable stainless steel, a cup that will keep your beverage that perfect temperature for longer. Clip the handle to your backpack and bring our camp cup along on the hike.', 5, 1),
(32, '12oz Travel Tumbler', 39, 'Insulated travel tumbler in collaboration with MiiR. Made in durable stainless steel, a tumbler that will keep your beverage that perfect temperature for longer.', 5, 1),
(33, 'Bucket Hat', 39, 'Bucket hat made with 100% recycled nylon ripstop. The bucket hat has an elastic cord detail with a cord lock and fits most.', 5, 1),
(38, 'Prod Z', 11, 'my product 111111', 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `text` varchar(1000) DEFAULT NULL,
  `rating` tinyint(3) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`product_id`, `user_id`, `text`, `rating`) VALUES
(1, 5, 'If you love the outdoors, then you\'ll love our ultralight backpack. It\'s expertly crafted from sustainable fabrics and has technical details and function at its core. Explore the outdoors with Mountain Hike!', 5),
(1, 8, 'Mountain Hike is a high-performance backpack for the adventuresome traveler. It offers unparalleled durability and functionality with a minimalistic and sustainable design. It\'s the perfect backpack for all your outdoor adventures.', 5),
(1, 80, 'For the backcountry explorer who wants to be free to explore the world and live a life full of adventure, the mountain hike backpack is built for alpinists, climbers, and adventurers alike. The perfect balance of weight, durability, and performance have made this one of our most popular backpacks.', 5),
(4, 88, 'This is the perfect everyday backpack for work, school, or travel. With a 15\" laptop pocket and plenty of storage, this versatile bag will meet all your needs.', 5),
(4, 89, 'Tony is the perfect bag for your next adventure. This 100% vegan backpack is made from an organic cotton and recycled polymate mix, and features a 15\" laptop pocket, one outer zipper pocket, and can carry up to a 15\" laptop- or two iPads.', 4),
(24, 18, 'When you want to look your best and need a sharp, chic, and practical accessory, this is the one for you. The Fred Sunset Pink card holder is made of high-quality leather and features 5 card slots, all perfect for sorting your cards into \'work\' and \'play.\'', 3),
(24, 22, 'This card holder is perfect for the woman who values quality over quantity and style over trend. It features a beautiful color, five card slots, and a sleek design. Fred Sunset Pink is crafted from full grain aniline-dyed Scandinavian leather and will age beautifully over time with use.', 2),
(24, 51, 'Card carrying never looked so good. This card holder is designed with a sleek Scandinavian touch and features five card slots to keep your essentials neatly organized. With a beautiful aniline-dyed finish, it will age beautifully over time to become a treasured accessory for years to come.', 5),
(32, 5, 'Whether you\'re taking a trip or feeling like one, 12oz Travel Tumblers are your perfect travel accessory. This stainless steel tumbler will keep your drink at the right temperature for longer, and it looks great too. Comes in six different colors to match any mood.', 5),
(32, 18, 'Take this tumbler with you on your next big adventure. It\'s durable, keeps liquids hot or cold for hours, and blends in well with any scenery.', 4);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `postcode` varchar(12) DEFAULT NULL,
  `address1` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `password`, `email`, `phone`, `city`, `postcode`, `address1`) VALUES
(1, 'Odessa', 'bcvbcvb', '709450 1355', 'ghg', '(069) 75867501', 'Marabá', '1436', 'P.O. Box 514, 4766 Neque. Road'),
(3, 'Xaviera', 'Dominguez', '194583 4552', 'quam.Pellentesque.habitant@dignissimlacus.co.', '(012) 98282375', 'Hull', '44551', 'Ap #944-5899 Ut Street'),
(4, 'Victor', 'West', '797054 1285', 'congue.turpis.In@acipsumPhasellus.net', '(047) 13544374', 'Ahmedabad', '6006 QV', 'Ap #552-2618 Sed, Ave'),
(5, 'Adrienne', 'Foster', '349014 1771', 'dis.parturient.montes@enimnonnisi.com', '(076) 56422680', 'Victoria', '2047 AW', 'P.O. Box 790, 1235 Mus. Av.'),
(6, 'Dawn', 'Heath', '147225 9520', 'diam.eu@nonsollicitudina.co.uk', '(009) 20822331', 'Manchester', '3508', 'P.O. Box 624, 614 Et Avenue'),
(7, 'Alice', 'Parks', '419767 3900', 'neque.pellentesque@arcuVivamus.co.uk', '(001) 73536768', 'Baardegem', '46614', '819-6743 Ipsum. Ave'),
(8, 'Simon', 'Cleveland', '629792 9512', 'mollis@ante.co.uk', '(099) 24182032', 'Rives', '8428 KC', 'Ap #825-7380 Sed Av.'),
(9, 'Tatiana', 'Wooten', '492364 6980', 'Lorem@tristiquesenectuset.org', '(010) 94257159', 'Andalo', '9920', 'P.O. Box 937, 1412 Faucibus Rd.'),
(10, 'Doris', 'Clements', '739418 8051', 'pharetra@sapienNuncpulvinar.org', '(060) 24422719', 'Tofield', '3309 JE', '3606 Mi Avenue'),
(11, 'Nicholas', 'Duke', '122347 9849', 'gravida.Praesent.eu@eunullaat.edu', '(095) 12178733', 'Avellino', '8796', '210-4130 Luctus Av.'),
(12, 'Coby', 'Duncan', '584820 2163', 'orci.luctus.et@egetvenenatis.co.uk', '(094) 88943708', 'Kitimat', '48229', '6626 Fermentum Road'),
(13, 'Joshua', 'Cummings', '198494 0617', 'ac.ipsum.Phasellus@vulputate.co.uk', '(076) 16028940', 'Balashikha', '7604', '454-5873 Erat, St.'),
(14, 'Christen', 'Doyle', '248671 9913', 'eros.Nam.consequat@litoratorquent.net', '(050) 24080681', 'Ucluelet', '6788', 'P.O. Box 162, 8930 Commodo Road'),
(15, 'Cheyenne', 'Madden', '598649 8128', 'Phasellus.vitae@Integerid.ca', '(006) 68452632', 'Penhold', '9289 PU', '4633 Risus. Av.'),
(16, 'Chaim', 'Middleton', '214127 9279', 'Nam@ipsumsodales.org', '(033) 72965195', 'Istanbul', '1722 GF', 'Ap #839-1597 Pellentesque Av.'),
(17, 'Isaac', 'Hebert', '002133 6714', 'Sed.diam.lorem@aliquetmolestietellus.edu', '(000) 53784989', 'Monticelli d\'Ongina', '6924 GK', 'Ap #657-9680 Ultricies Ave'),
(18, 'Aspen', 'Wiley', '492394 9210', 'vulputate.dui.nec@enim.co.uk', '(078) 69975678', 'Aberdeen', '00008', '9692 Pede. Ave'),
(19, 'Jescie', 'Ballard', '388152 5301', 'sem.mollis.dui@cursusetmagna.edu', '(029) 42713095', 'Orciano Pisano', '8371', '713-3154 Elit. Rd.'),
(20, 'Velma', 'Dickerson', '953691 5276', 'Cum.sociis@Aliquam.co.uk', '(060) 79946583', 'Vidisha', '71555', 'P.O. Box 671, 776 Eget, St.'),
(21, 'Hayley', 'Calderon', '613682 1045', 'Maecenas@nonummyFuscefermentum.edu', '(013) 34387565', 'Gosselies', '33969', 'P.O. Box 521, 1972 Laoreet Avenue'),
(22, 'Raymond', 'Keith', '992991 4902', 'Nam@dictumaugue.ca', '(006) 70007554', 'Bertiolo', '7215', '526-7495 Eu Av.'),
(23, 'Sophia', 'Sweeney', '174154 4850', 'facilisis.lorem.tristique@ornare.edu', '(090) 71193459', 'Asse', '02765', 'Ap #724-7966 Eleifend. Street'),
(24, 'Jonah', 'Smith', '145718 3570', 'congue.turpis@convallisdolorQuisque.edu', '(081) 84119051', 'Keiem', '4696', 'P.O. Box 383, 3082 Phasellus St.'),
(25, 'Caesar', 'Brown', '776430 9543', 'dictum@necanteblandit.org', '(025) 71138175', 'Roccalumera', '97270', '2630 Integer Road'),
(26, 'Vernon', 'Martin', '814760 0111', 'egestas@Duis.edu', '(070) 65155529', 'Banff', '99475', 'Ap #848-7337 Varius Av.'),
(27, 'Carson', 'Munoz', '109989 9872', 'Mauris@velconvallis.ca', '(064) 44285070', 'Beypazarı', '3395', 'P.O. Box 356, 1283 Libero Av.'),
(28, 'Felicia', 'Paul', '858928 6072', 'urna.suscipit.nonummy@vitae.edu', '(030) 03318880', 'Castor', '3593 RZ', '514-3789 Eu Ave'),
(29, 'Nathaniel', 'Hampton', '128358 9321', 'egestas.Sed.pharetra@erat.co.uk', '(050) 73834639', 'Kurgan', '8720', 'Ap #205-8927 At Street'),
(30, 'Warren', 'Oneil', '338572 7635', 'vitae.mauris.sit@euismod.org', '(022) 18825028', 'Ponoka', '37377', '716-7043 Ipsum. St.'),
(31, 'Vance', 'Rivas', '212893 5448', 'urna.Ut@sed.org', '(032) 77873596', 'Katav-Ivanovsk', '9413', 'Ap #698-7133 Ad Ave'),
(32, 'Lacy', 'Mcintosh', '539824 1645', 'porttitor@nisidictumaugue.co.uk', '(024) 63739584', 'Llandovery', '2357', 'P.O. Box 873, 9311 Luctus, Ave'),
(33, 'Lev', 'Tate', '735700 0228', 'lorem.semper@sodales.ca', '(017) 24044913', 'Panguipulli', '79095', '2328 Ornare, Avenue'),
(34, 'Ira', 'Sheppard', '988779 0369', 'pede@nonlobortis.org', '(090) 46380896', 'Huntsville', '72451', '924-8003 Sed St.'),
(35, 'Colton', 'Sullivan', '106593 7995', 'quam.a.felis@NullamenimSed.co.uk', '(065) 79338225', 'Ham-sur-Heure-Nalinnes', '40959', '625-6163 Gravida Av.'),
(36, 'Ashton', 'Spencer', '265749 9394', 'dis.parturient@hendreritaarcu.com', '(027) 44411239', 'Columbus', '4253', '868-9599 Per Avenue'),
(37, 'Wynter', 'Aguilar', '163695 0279', 'lectus@vulputate.edu', '(024) 96681719', 'Lodine', '1533', '369-3800 Et Street'),
(38, 'Belle', 'Merrill', '502104 1040', 'dolor@afelisullamcorper.edu', '(089) 48968009', 'Vanier', '2748 UL', 'P.O. Box 173, 988 Diam Av.'),
(39, 'Carson', 'Ramirez', '287529 9725', 'vulputate@tortordictum.org', '(047) 11525658', 'Spaniard\'s Bay', '6806', '4594 Eu Ave'),
(40, 'Uta', 'Jefferson', '974329 5702', 'luctus@Crasconvallis.co.uk', '(007) 01003681', 'Ereğli', '1874', 'Ap #206-2501 In Rd.'),
(41, 'Sonya', 'Knox', '367768 1193', 'Etiam.ligula@loremauctorquis.co.uk', '(099) 25388439', 'NeuprŽ', '1464', 'P.O. Box 417, 1498 Faucibus St.'),
(42, 'Maris', 'Albert', '345545 2643', 'justo.faucibus@Donecnibh.edu', '(080) 78737929', 'Tarvisio', '3902 ST', '599-9142 Praesent Avenue'),
(43, 'Tyler', 'Morgan', '249957 0626', 'libero.est.congue@Nullasempertellus.net', '(035) 41819246', 'Pitalito', '8627', 'P.O. Box 389, 5047 Commodo Av.'),
(44, 'Leslie', 'Hicks', '558292 1796', 'mollis@diam.com', '(072) 23736159', 'Bad Nauheim', '8694 QY', 'Ap #352-2432 Proin Avenue'),
(45, 'Rae', 'Atkins', '865949 9746', 'euismod.urna.Nullam@loremvehicula.net', '(015) 83504238', 'Coquitlam', '5256', '791-6060 A Rd.'),
(46, 'Hop', 'Vaughan', '154421 9312', 'Duis.sit@accumsan.net', '(071) 25996277', 'Concepción', '6982', '323-4153 Est. Avenue'),
(47, 'Buffy', 'Flowers', '292194 4894', 'tellus@Duis.ca', '(000) 14744695', 'Thirimont', '92253', 'P.O. Box 736, 1958 Nunc St.'),
(48, 'Daniel', 'Reeves', '276438 2301', 'rutrum.Fusce@tempor.ca', '(091) 38545800', 'Lille', '00187', 'P.O. Box 966, 2741 Quis, Street'),
(49, 'Benedict', 'Huffman', '702809 6993', 'est@consectetuereuismod.co.uk', '(027) 14900506', 'Lissewege', '3738', 'Ap #961-9727 Purus Ave'),
(50, 'Ariel', 'Bell', '713539 1733', 'orci.adipiscing.non@duinec.org', '(093) 45486543', 'Adria', '66413', '9334 Aliquet Street'),
(51, 'Silas', 'Webster', '899153 7443', 'non@quislectus.ca', '(031) 08426288', 'Chattanooga', '2404', '302-7173 Nec Rd.'),
(52, 'Katelyn', 'Ballard', '487479 1181', 'Cras@ultricies.net', '(054) 89947252', 'Daman', '9234', '216-7231 Ac Road'),
(53, 'Len', 'Knapp', '118566 0535', 'amet.consectetuer.adipiscing@augueutlacus.ca', '(064) 41322448', 'Virginia Beach', '75870', 'P.O. Box 647, 492 Nunc Street'),
(54, 'Irene', 'Battle', '735101 2963', 'dignissim.magna.a@nunc.edu', '(010) 85114171', 'Hull', '73419', '726-4743 Mollis Street'),
(55, 'Kato', 'Simon', '605838 1879', 'sagittis@vulputateposuere.com', '(087) 00288194', 'San Martino in Badia/St. Martin in Thurn', '3732 LT', '642-8328 Massa. St.'),
(56, 'Jakeem', 'Puckett', '148131 7145', 'amet.orci.Ut@tellussem.co.uk', '(002) 55276695', 'Frederick', '22079', '6171 Aliquam Rd.'),
(57, 'Myles', 'Morrison', '078623 5689', 'turpis.vitae.purus@Quisqueporttitor.edu', '(039) 71476936', 'Bludenz', '6522 BD', '255-2636 Malesuada Rd.'),
(58, 'Briar', 'Alvarado', '832703 8827', 'non.sapien.molestie@mattisCraseget.org', '(043) 21633787', 'Labico', '9137', '7347 Mi St.'),
(59, 'Quamar', 'Wolfe', '695093 0484', 'bibendum.Donec.felis@id.edu', '(021) 80334795', 'La Reina', '1475', '539-6011 Sapien Av.'),
(60, 'Lance', 'Huber', '893836 9090', 'ut.sem.Nulla@Cum.co.uk', '(094) 98502329', 'Sachs Harbour', '77247', 'Ap #792-4358 Iaculis Rd.'),
(61, 'Jana', 'Hansen', '632942 0597', 'sed.dolor.Fusce@Donecnonjusto.org', '(085) 43019960', 'Milazzo', '7449', 'Ap #551-3921 Urna Rd.'),
(62, 'Sandra', 'Mueller', '417127 3404', 'vitae.aliquet.nec@vulputateullamcorper.org', '(048) 39286188', 'Newport News', '04108', '8516 Vehicula Road'),
(63, 'Karleigh', 'Montoya', '468740 0848', 'gravida@Vestibulumanteipsum.net', '(015) 07439874', 'Sirsa', '4900 XR', 'P.O. Box 526, 8435 Sagittis Street'),
(64, 'Caryn', 'Murray', '548128 7844', 'montes.nascetur@faucibuslectusa.edu', '(055) 29748886', 'White Rock', '56221', '980 Sapien. Av.'),
(65, 'Dora', 'Curry', '548263 9316', 'Fusce.mi.lorem@mollisDuis.edu', '(033) 67022188', 'Bon Accord', '2918', 'P.O. Box 861, 7575 Eget Road'),
(66, 'Zenaida', 'Ortiz', '179739 0018', 'mus.Donec@utnulla.co.uk', '(052) 39492560', 'Mombaruzzo', '7538', 'Ap #298-967 Augue, Road'),
(67, 'Harriet', 'Horn', '159061 5108', 'Nulla.tempor@Aliquamadipiscinglobortis.ca', '(070) 89947061', 'Cap-Rouge', '55236', 'P.O. Box 799, 5766 Et Road'),
(68, 'Noelani', 'Stout', '714785 5279', 'nec@orci.ca', '(082) 06566221', 'Cardiff', '16014', '6173 Aliquam Rd.'),
(69, 'Simone', 'Knox', '609913 9732', 'quam@Aliquamerat.net', '(053) 57785027', 'Feldkirch', '55428', '8635 Mollis Av.'),
(70, 'Blake', 'Henderson', '183750 9551', 'congue.turpis@rutrum.org', '(039) 46081757', 'Barahanagar', '1390', '947-7461 Convallis Street'),
(71, 'Maryam', 'Baxter', '354225 4671', 'mi@dictum.co.uk', '(069) 86955314', 'Kasli', '5683 XA', '5998 Nisi Rd.'),
(72, 'Melissa', 'Abbott', '759428 5665', 'non.bibendum.sed@antebibendum.edu', '(011) 44407782', 'Flin Flon', '4767 DF', 'P.O. Box 221, 9584 Accumsan Av.'),
(73, 'Lev', 'Pate', '277224 0236', 'et@nonenim.ca', '(013) 06541824', 'Bruderheim', '47886', 'P.O. Box 127, 2525 Porttitor St.'),
(74, 'Karleigh', 'Oconnor', '469027 0196', 'malesuada@fringillaDonec.com', '(002) 08270396', 'Aubagne', '14676', '841-868 Posuere Ave'),
(75, 'Steel', 'Olson', '135337 0933', 'ipsum@aliquetmolestie.co.uk', '(023) 01660339', 'Huntsville', '76685', 'Ap #185-9259 Ut St.'),
(76, 'Raphael', 'Weeks', '259617 7606', 'enim.Sed.nulla@velitjustonec.ca', '(035) 47472859', 'Iowa City', '7404 BM', 'P.O. Box 552, 2502 Donec Rd.'),
(77, 'Gillian', 'Harding', '215145 2253', 'nunc.interdum.feugiat@nequevitae.org', '(035) 56749226', 'Dipignano', '9273', '495-8270 Blandit. Ave'),
(78, 'Lisandra', 'Mills', '805077 9969', 'a@loremluctusut.org', '(074) 68415725', 'Domodedovo', '3433', '1779 Fermentum Road'),
(79, 'Sloane', 'Irwin', '054295 4847', 'nascetur.ridiculus.mus@molestietellus.ca', '(007) 15446909', 'Cellara', '9134', 'Ap #370-3524 Duis Street'),
(80, 'Miriam', 'Byers', '642517 0039', 'Mauris.magna@adipiscingelit.net', '(099) 96830095', 'Acciano', '0498 NP', 'P.O. Box 580, 7172 Aliquet Avenue'),
(81, 'Uma', 'Houston', '099723 9769', 'non.lacinia.at@Nuncullamcorper.ca', '(052) 45789189', 'Cittanova', '89433', 'P.O. Box 607, 7410 Ut Road'),
(82, 'Kirestin', 'Mcclain', '867677 9807', 'dis@vitae.net', '(028) 61815290', 'Haren', '3691', '224-8791 Mauris Av.'),
(83, 'Libby', 'Knapp', '224640 8203', 'enim.sit.amet@quamdignissimpharetra.edu', '(067) 89817313', 'Gondiya', '2507', '4765 Enim, Av.'),
(84, 'Mechelle', 'Freeman', '866838 0952', 'Etiam.bibendum@viverraMaecenasiaculis.edu', '(077) 78273011', 'Elgin', '9690', 'P.O. Box 370, 6164 Est. St.'),
(85, 'Kieran', 'Ingram', '207023 2075', 'vitae@tinciduntpedeac.co.uk', '(057) 76568704', 'Guna', '70929', '300 Eget, Road'),
(86, 'Maxine', 'Bush', '983293 3429', 'ultrices.mauris.ipsum@ut.com', '(007) 66538522', 'Newmarket', '6932 OD', '341-6459 Donec Street'),
(87, 'Nevada', 'Cole', '629237 8087', 'purus@venenatis.co.uk', '(052) 22469171', 'Castiglione a Casauria', '1365 RZ', 'Ap #694-8462 Commodo Rd.'),
(88, 'Christopher', 'Cook', '518994 8812', 'cursus.luctus@fringillaeuismodenim.edu', '(038) 59701810', 'Henstedt-Ulzburg', '44049', 'P.O. Box 170, 221 Elementum Rd.'),
(89, 'Victor', 'Higgins', '499034 3982', 'dictum.ultricies.ligula@Quisqueimperdieterat.', '(013) 39756292', 'Wolfville', '5832', 'P.O. Box 128, 9307 Lacinia. Rd.'),
(90, 'Bryar', 'Larson', '849925 5571', 'orci.tincidunt.adipiscing@non.ca', '(030) 79976303', 'Borgone Susa', '67984', '8051 Mi Avenue'),
(91, 'Kameko', 'Norton', '908535 1949', 'nulla@cursuspurusNullam.org', '(089) 48448073', 'Louth', '95171', '669 Curabitur Road'),
(92, 'Rose', 'Moody', '174598 5554', 'at@Curabitur.edu', '(057) 91037182', 'Owerri', '27621', '362-477 Mauris. Av.'),
(93, 'Wylie', 'Mathis', '982712 7300', 'sit.amet.faucibus@Nuncsollicitudincommodo.co.', '(009) 12272821', 'Nanaimo', '1363 IM', '3527 At, Road'),
(94, 'Reece', 'Rowe', '568008 5676', 'at.arcu@scelerisque.net', '(035) 56809075', 'Stornaway', '30847', '440-1493 Arcu. Street'),
(95, 'Flynn', 'Sherman', '349449 6932', 'nisi.a.odio@asollicitudinorci.org', '(069) 24763810', 'Bolinne', '6778', 'Ap #811-3463 Eu Avenue'),
(96, 'Derek', 'Cameron', '058546 6113', 'eleifend.egestas@idmollisnec.co.uk', '(064) 84546300', 'Cumberland', '1472 DA', 'P.O. Box 752, 7095 Velit. Rd.'),
(97, 'Dana', 'French', '576046 2704', 'nec@lobortisquispede.co.uk', '(059) 06473966', 'Lakeland County', '13344', 'Ap #706-8615 Non Ave'),
(98, 'Quail', 'William', '657704 4263', 'accumsan@per.ca', '(005) 36535309', 'Braunau am Inn', '6528', '9328 Magna. Rd.'),
(99, 'Jennifer', 'Byrd', '797954 5626', 'tellus.id.nunc@Sedneque.ca', '(032) 07330846', 'Marchihue', '57921', 'P.O. Box 769, 3357 Ultricies St.'),
(100, 'Rudyard', 'Miles', '115512 5840', 'Donec@euodioPhasellus.edu', '(083) 70044114', 'Bergen', '42627', '981-5612 Amet St.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_products`
--
ALTER TABLE `orders_products`
  ADD PRIMARY KEY (`order_id`,`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `FKtng6hvelpjyy7el0f5eq93nq4` (`category`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`product_id`,`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `FKtng6hvelpjyy7el0f5eq93nq4` FOREIGN KEY (`category`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
