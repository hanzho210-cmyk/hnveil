-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 15, 2026 at 10:14 AM
-- Server version: 8.0.30
-- PHP Version: 8.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `veil_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `image`, `title`, `description`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'T1o5X8mFH6P9y62doqmbQq1eRXDVejee3Pytm4pY.jpg', 'Junghyuk mola-mola', 'si paling gampang mati. Tukang regresor, psikopat, ganteng sih...tapi medeni. Adhine 1, pernah ndwe bojo mbiyen, tapi saiki ora mbojo mnh, trauma kyk e, goro-goro mbien bojone mati. Padal bojone ayu, tapi lhapiye yo, jnenge ws rk ndwe perasaan mnh kok. De e saiki bestinan karo Dokja, nk kro Han Soyoung drung tpi, rpp. Delok mengkas de e bkl bestinan kro Han Soyoung barang. Junghyuk semangat, ojo mati mnh...', 5, '2026-07-16 14:01:10', '2026-07-16 14:41:18'),
(2, 'zvRk3ag8PTBMfVRMFarj8bZJxlATul41hpPtVkwQ.jpg', 'kim Dokja', 'The only reader. Pekerja kontrak di sebuah perusahaan besar, mengaku sebagai ordinary reader. But as time goes, he become the best reader. The Demonn King of Salvation, The King of Kingless World, The King of No Killing, The Ugliest King, Kim Dokeja adalah banya dari julukannya. Even tought he\'s not the best, but he\'s one of the best.', 3, '2026-07-20 03:26:34', '2026-07-20 03:26:34'),
(3, '01mEWfBQDeIyv2Re40EWunT3H00dyzuheXbKoIjr.jpg', 'Demon King of Salvation', 'uerhfiwahbfgaksruiekxm vsjkkfjlskccmd rjefkwidcmugvkofbv urhfowinvdv lkjg', 1, '2026-07-20 04:06:10', '2026-07-20 04:06:10'),
(4, 'bbYF3Ztf6S5s2gpbI9UB1YmL5wNk8zm6u2PD0cAo.jpg', 'cumi cumi', 'hudrh v3rijfeeino  ur irud 9euaqd', 5, '2026-07-20 04:06:44', '2026-10-06 02:26:04'),
(5, 'XZuvwLbmaBOlmRjw636Nzzcphu2fgCfZpVnIgX98.jpg', 'secretive plotter', 'dshffvnn vbwi  uurdo 83rfd qowqdm', 2, '2026-07-20 04:07:20', '2026-07-20 04:07:20'),
(6, 'jSkQAySzpF64OV7rFu1AkcA7WdgVI1TjCqdV080u.jpg', 'Han souyoung', 'ufw  ur f r yrejsidjce e n8uroewnf  wdkm', 3, '2026-07-20 04:08:01', '2026-07-20 04:08:01'),
(7, 'VdXW1VfKgzMjxLRtfTGi85ysQZ1tc1t2lxEzX4F2.png', 'trio orv', 'fih eu rfie ur wuedwpo4 9 ri9wk fhgios', 2, '2026-07-20 04:09:20', '2026-07-20 04:09:20'),
(8, 'Y9lBdBjo1o91dJMW5ew62I4qLzVnDaqHgc69nxHU.jpg', 'korea selatan', 'ihnfvs 3ru  9r u weoi jow qfierf', 6, '2026-07-20 04:10:06', '2026-07-20 04:10:06'),
(9, 'lnTQDbF0IIaV7UvO38zYzvDIkfAXbC3j6VRfYhXj.jpg', 'ghk d', 'jehguefvn   rif  ufhe i eisfv', 5, '2026-07-20 04:10:43', '2026-07-20 04:10:43'),
(10, 'dkdjGvMZ4YZBcC5c1uH2tnXC8n7WrZCJj1syjokU.jpg', 'vnbidov', 'kqhfnv ergh ier e iwjf', 4, '2026-07-20 04:11:07', '2026-07-20 04:11:07'),
(11, '4UpdNeweGKeS20Q6kGVPTJp5UPaU0Bmnv8gg9W1z.jpg', 'anake han kim', 'ansffhu urfh  uer fua  uhf', 3, '2026-07-20 04:12:48', '2026-07-20 04:12:48'),
(12, 'xzas8LYp2AFDmH0p7oyTDtYg9TYiiPuGfaXxTnc5.jpg', 'Demon', 'dkfnvx ruwoiifw u9riu wo ir 9uwo4 ru 3r3w e 848utji iu oiej uh uih u hi 8u no  i mklvk   jlcvmfgb;', 5, '2026-07-21 00:23:55', '2026-07-21 00:23:55'),
(13, 'BzPeWaxXHuovyzH2SgdgtK0rUJtG9kkvVwIFPVaM.jpg', 'The City Beneath the Sea', 'Heracleion, also known as Thonis-Heracleion, was an ancient Egyptian port city located near the Canopic branch of the Nile, close to present-day Alexandria. For centuries, the city was an important center of trade, religion, and cultural exchange between Egypt and the Greek world. Its strategic location made it one of Egypt’s major international trading ports, where merchants, travelers, and ships arrived from different parts of the Mediterranean.\r\n\r\nThe city was built across several islands and was connected by a network of canals, bridges, and waterways. At its center stood important religious complexes, including the great temple dedicated to Amun-Gereb. Heracleion was also associated with the worship of other Egyptian gods, particularly Osiris. Religious ceremonies and festivals attracted pilgrims from surrounding regions, making the city significant not only economically but also spiritually.\r\n\r\nHeracleion’s importance can be traced back to ancient times, and Greek historians such as Herodotus, Strabo, and Diodorus mentioned the city in their writings. Interestingly, the city was known by two names: **Thonis** in Egyptian tradition and **Heracleion** in Greek sources. For a long time, historians believed these were two different cities. This misunderstanding was finally resolved after archaeologists discovered an important stele at the submerged site, confirming that Thonis and Heracleion were actually the same place.\r\n\r\nThe city eventually began to decline as Alexandria became Egypt’s dominant port. However, the disappearance of Heracleion was not caused by a single event. Archaeological evidence suggests that a combination of natural disasters, including earthquakes, flooding, rising sea levels, and soil liquefaction, gradually destabilized the area. Around the beginning of the first century BC, parts of the city collapsed into the water. Over the following centuries, the remaining settlement slowly disappeared beneath the Mediterranean Sea. By around the eighth century AD, Heracleion had been completely submerged.\r\n\r\nFor more than a thousand years, Heracleion remained hidden beneath layers of water, sand, and sediment. Although ancient texts had preserved memories of the city, its exact location was eventually forgotten. The underwater ruins were rediscovered by a team led by French underwater archaeologist **Franck Goddio**, working together with the European Institute for Underwater Archaeology and Egyptian authorities. The search involved studying historical records and using advanced technologies such as sonar, magnetic surveys, satellite positioning, and underwater mapping to locate and document the remains.\r\n\r\nThe discovery revealed an extraordinary archaeological site. Divers found enormous statues, temples, coins, jewelry, religious objects, pottery, and remains of ancient ships. One of the most significant discoveries was the stele of Nectanebo I, which helped establish the connection between the names Thonis and Heracleion. Archaeologists also discovered numerous shipwrecks, including an ancient Greek-Egyptian warship, providing valuable evidence of the city’s maritime activities and its connections with both Egyptian and Greek cultures.\r\n\r\nThe artifacts also show that Heracleion was a multicultural and economically active city. Greek merchants and settlers lived alongside the Egyptian population, while Greek pottery, weapons, and other objects were found together with traditional Egyptian religious artifacts. This mixture demonstrates how trade and cultural interaction shaped life in the ancient port.\r\n\r\nDespite the remarkable discoveries already made, much of Heracleion remains unexplored. Only a small portion of the ancient city has been excavated, meaning that many structures and artifacts are still hidden beneath the seabed. Continuing underwater research may therefore reveal more about the city’s people, economy, religious practices, and eventual destruction.\r\n\r\nToday, Heracleion is considered one of the most remarkable examples of a lost city being recovered through underwater archaeology. Its rediscovery has transformed the understanding of Egypt’s ancient maritime history and revealed how closely Egyptian and Greek civilizations interacted. What was once thought to be only a legendary or forgotten city has emerged from beneath the sea as a remarkable archaeological record of the ancient Mediterranean world.', 6, '2026-10-06 02:09:33', '2026-10-06 02:16:25'),
(14, '6PP6UJikuBsarWZwu3ajQOohdNJ6buVzZWCeR4RN.jpg', 'Rose City', 'Petra lies in the Ma\'an Governorate of southern Jordan, roughly 240 km south of Amman and 120 km north of Aqaba (Petra by Night, 2026). It is known for its rock-cut architecture, its ancient water system, and monuments such as the Treasury, the Monastery (Ad Deir), the Siq canyon, and the Royal Tombs (Petra by Night, 2026). It was inscribed as a UNESCO World Heritage Site on 6 December 1985 and voted one of the New 7 Wonders of the World in 2007 (Wikipedia, n.d.).\r\n\r\nThe nickname \"Rose City\" comes from the colour of the stone. Harian Jogja (2024) explains that the city was cut from reddish sandstone cliffs, and Insight Vacations (2025) adds a geological explanation: the rock is ferruginous sandstone, and the oxidation of its iron content produces the pink and red tones. Smarthistory notes that Arabian light striking the Treasury\'s façade gives it its famed rose-red appearance (Macaulay, 2018). The name was not coined by the Nabataeans but adopted later by admiring visitors, and the city\'s original name was Raqmu or Raqemo, linked to its royal founder (Insight Vacations, 2025; Wikipedia, n.d.). The Greek name Petra simply means \"rock\" (Wikipedia, n.d.).\r\n\r\nThe area around Petra has been inhabited since very early times. The Indonesian-language Wikipedia entry places settlement as far back as 7000 BCE, while the news feature mentions habitation from about 1200 BCE (Wikipedia, n.d.; Harian Jogja, 2024). The Nabataeans, an Arab people who began as nomads, may have settled at the future capital as early as the 4th century BCE, although archaeological evidence of their presence dates firmly from the 2nd century BCE (Wikipedia, n.d.). Petra by Night (2026) gives the 4th century BCE as the founding period.\r\n\r\nPetra sits in a desert environment that is also prone to flash floods. The Nabataeans responded with channels and dams that stored rainwater and controlled flooding, allowing the city to keep water through the year and even improving local agriculture (Harian Jogja, 2024). Wikipedia (n.d.) likewise describes them as highly skilled in rainwater harvesting, agriculture, and stone carving, and a travel director interviewed by Insight Vacations (2025) stresses that they were already master carvers who knew exactly how to protect the city from floods.\r\n\r\nPetra\'s prosperity rested on its position at the crossroads of trade routes. Smarthistory states that the Nabataeans controlled the luxury incense trade during the late Hellenistic and early Roman periods, and that their great wealth paid for the spectacular architecture seen today (Macaulay, 2018). The news feature adds that merchants from China, Egypt, Greece, and India traded in the city and that its population reached about 30,000 (Harian Jogja, 2024). Wikipedia (n.d.) gives a lower estimate of about 20,000 at the city\'s height in the 1st century CE, when the Treasury, believed to be the tomb of King Aretas IV, was built.\r\n\r\nThe Nabataean kingdom became a client state of Rome in the 1st century BCE and lost its independence in 106 CE, when Emperor Trajan annexed it and created the province of Arabia, moving the provincial capital to Bosra in present-day southern Syria (Macaulay, 2018; Wikipedia, n.d.). Petra\'s importance then declined as sea trade routes emerged, and a major earthquake in 363 CE destroyed many buildings. Under Byzantine rule several Christian churches were built, but the city continued to shrink, and by the early Islamic period it was left to a few nomads (Wikipedia, n.d.). The news feature similarly notes that after trade routes shifted, the city was abandoned and by about the 8th century served only as temporary shelter for merchants and herders (Harian Jogja, 2024). This layering of Nabataean, Roman, and Byzantine phases is one reason the site shows such varied architectural styles.\r\n\r\nPetra is often called the \"Lost City,\" but the term needs qualification. Insight Vacations (2025) explains that local people and Bedouin always knew of the site; it was the Western world that lost track of it. Swiss explorer Johann Ludwig Burckhardt \"rediscovered\" it in 1812 after hearing rumours of a great ancient city (Insight Vacations, 2025; Wikipedia, n.d.). Systematic archaeological study began only in the late 19th century, and the news feature notes that organised excavation to restore the site started in 1929 (Wikipedia, n.d.; Harian Jogja, 2024).\r\n\r\nAfter UNESCO inscription, the Petra Archaeological Park became an autonomous legal entity responsible for managing the site in 2007. Conservation projects have included restoration of the Treasury\'s third pillar in 1958, work on the Siq floor from 1996, and preservation of wall paintings at Siq al-Barid (Wikipedia, n.d.). The main threats identified are collapsing structures, erosion from flooding and poor drainage, salt weathering, inappropriate restoration, and unsustainable tourism (Wikipedia, n.d.). The iron-rich sandstone is beautiful but vulnerable to weathering, and researchers continue to look for ways to protect it (Insight Vacations, 2025). The Siq is described as one of the site\'s most endangered areas, and UNESCO assessed unstable rock blocks there after a Jordanian government request in 2011 (Macaulay, 2018). Animal welfare is another concern, as the Wikipedia entry reports allegations of mistreatment of working animals used to carry tourists.\r\n\r\nPetra\'s heritage status also had human costs. The Bedouin community living in the caves was relocated to Umm Sayhoun in 1985, before the UNESCO designation process was complete (Wikipedia, n.d.), and the news feature also mentions the removal of nomadic residents (Harian Jogja, 2024). Visitor numbers peaked at about 1.1 million in 2019, collapsed during the COVID-19 pandemic, and had recovered to about 260,000 by 2021 (Wikipedia, n.d.). Practical guidance varies slightly: Petra by Night (2026) says most visitors spend one or two days and recommends spring and autumn, while Insight Vacations (2025) advises at least one full day for the highlights and about three days for the whole city, noting that the site is attractive in every season. The Petra by Night experience runs Sunday to Thursday evenings, with a candlelit walk through the Siq to the Treasury (Petra by Night, 2026). Petra has also appeared in popular culture, including Indiana Jones and the Last Crusade (Wikipedia, n.d.; Insight Vacations, 2025).\r\n\r\nComparing the five sources reveals several inconsistencies that readers should treat carefully. Peak population is given as about 30,000 by one source and about 20,000 by another. One source says Rome ruled for about 250 years before a large earthquake (Harian Jogja, 2024), another dates a destructive earthquake to 363 CE (Wikipedia, n.d.), and a third links abandonment to the 2nd century CE (Insight Vacations, 2025), which conflicts with evidence of Roman and Byzantine occupation. The Indonesian Wikipedia entry gives the Siq\'s length as 12 km, while the travel director describes a walk of at least two kilometres to the Treasury, so the former figure should be verified against a primary source such as UNESCO. The Treasury is generally understood as a monumental tomb (Macaulay, 2018), and the interview describes its name as a myth that stuck because it sounds attractive (Insight Vacations, 2025). The claim that 85% of Petra is still underground comes from a guide in a promotional context and is not backed by cited research. Source type also matters: the tourism-operator pages and the interview serve a commercial purpose, the art-history article is scholarly in tone, the news feature draws on other media, and the encyclopedic entry is a compilation whose quality varies by section.\r\n\r\nIn conclusion, Petra is a product of Nabataean ingenuity in trade, engineering, and stone carving, later reshaped by Roman and Byzantine rule, abandoned, and returned to global attention in the 19th century. Its present status as a World Heritage Site and tourist icon brings economic benefits but also real pressures on the rock itself, on animals, and on local communities. Sustainable management and careful verification of popular claims remain essential for protecting what UNESCO has described as one of humanity\'s most valuable cultural properties.', 6, '2026-10-06 02:30:50', '2026-10-06 02:30:50'),
(15, '6BaFEhbznNQrh5thMk24iDW70XCYqKeujSbzCD6Q.jpg', 'Mohenjo-daro — The City That Remained', 'Mohenjo-daro lies west of the Indus River in Larkana District, Sindh, about 28 km from the town of Larkana, on a Pleistocene ridge in the middle of the Indus flood plain (Sindhav, 2016; Wikipedia, n.d.). The ridge once lifted the city above the surrounding plain, but later flooding has buried most of it under silt, and the Ghaggar-Hakra riverbed is now dry. The Indonesian Wikipedia entry places it east of the site and Sindhav places it to the west, so a map would be needed to resolve the direction. The modern name is usually translated from Sindhi as \"Mound of the Dead,\" although Sindhav (2016) also notes an alternative reading as \"Mound of Mohan,\" and the city\'s original name is unknown. National Geographic describes the city as a Bronze Age urban marvel and a metropolis roughly 5,000 years old (National Geographic, n.d.). Its content could not be retrieved in full because it is an interactive graphic, so only its title and summary are used here.\r\n\r\nMost sources date the city\'s construction to around 2600 BCE, or the 26th century BCE (Wikipedia, n.d.; ECO Cultural Institute, 2026; Sindhav, 2016), although Sindhav\'s abstract gives 2500 BCE and elsewhere in the same article uses the 26th century. It was a major centre of a civilization that developed from about 3000 BCE and spread across much of present-day Pakistan and northwest India, from the Iranian border to Gujarat and north to an outpost in Bactria, with other major cities at Harappa, Lothal, Kalibangan, Dholavira, and Rakhigarhi (Sindhav, 2016). Population estimates vary: about 35,000 at the city\'s height according to Wikipedia (n.d.), and a \"weak\" estimate of about 40,000 reported by Sindhav (2016), who also gives the covered area as about 300 hectares in one place and about 100 hectares in another.\r\n\r\nThe city\'s most celebrated feature is its planning. It followed a grid of streets meeting at right angles, which the ECO Cultural Institute (2026) reads as evidence of a cohesive administrative system. It was divided into a raised Citadel and a Lower City, and the Citadel, a mud-brick mound about 12 metres high, held public baths, a large residential building for roughly 5,000 people, and two large assembly halls (Sindhav, 2016; Wikipedia, n.d.). Buildings used uniform bricks, which suggests building standards and central control (ECO Cultural Institute, 2026), though sources differ on whether the bricks were fired or sun-dried: Sindhav reports mostly fired and mortared brick with some mud-brick, while Wikipedia mentions sun-dried mud brick. Houses typically centred on courtyards, and wells supplied water throughout the city, with the popular essay claiming more than 700 wells, some used into the 1970s (Khan, 2023). Nearly every house had a bathing area connected to covered drains lining the streets (Sindhav, 2016; ECO Cultural Institute, 2026).\r\n\r\nThe Great Bath is the best-known structure. It is a brick pool about 12 m long, 7 m wide, and 2.4 m deep, reached by steps from a colonnaded courtyard and waterproofed with natural bitumen, and it was probably used for ritual purification (Sindhav, 2016; Wikipedia, n.d.). Nearby stands the building Mortimer Wheeler called the \"Great Granary,\" but Jonathan Mark Kenoyer pointed out that no grain was found there and suggested \"Great Hall\" as a more accurate name (Sindhav, 2016; Wikipedia, n.d.). Khan (2023), by contrast, still describes the building as the city\'s central bank, a claim not supported by the more cautious sources. The city had no continuous wall but was protected by guard towers to the west and defensive works to the south (Wikipedia, n.d.).\r\n\r\nSociety at Mohenjo-daro appears unusually restrained. Sindhav (2016) notes the absence of ostentatious palaces, temples, or monuments, no obvious seat of government, and no evidence of a king or queen, with standardized pottery, tools, seals, and weights suggesting tightly controlled trade. Kenoyer is cited as suggesting a city-state governed perhaps by elected officials or elites from each mound. The ECO Cultural Institute (2026) points to trade links with distant regions including Mesopotamia and to the lack of clear social stratification, while Khan (2023) cautiously adds that the civilization may have been centrally planned and later controlled by elites. Evidence of wealth does exist, such as beads of ivory, lapis, carnelian, and gold (Sindhav, 2016). Two famous artifacts are the 10.8 cm bronze \"Dancing Girl,\" found in 1926, and the 17.5 cm bearded \"Priest King\" statue found in 1927, a name given despite the absence of evidence for priests or kings (Wikipedia, n.d.). The Indus script remains undeciphered, which limits what can be said about beliefs and governance (ECO Cultural Institute, 2026; Khan, 2023).\r\n\r\nThe cause of decline is still debated. The city was abandoned around 1900 BCE as the wider civilization declined (Sindhav, 2016), although the Indonesian Wikipedia entry says it was vacated around 1500 BCE. Mohenjo-daro was destroyed and rebuilt at least seven times, each new city on top of the last, with Indus flooding suspected as the main cause (Sindhav, 2016; Wikipedia, n.d.). Researchers also consider river course changes, climate change, and depletion of agricultural resources, and the ECO Cultural Institute (2026) notes that foreign invasion is now a less accepted explanation. Khan (2023) likewise reports no obvious signs of conquest and mentions mass migration, flood and famine, and the arrival of Indo-Aryan peoples; the last is presented as a factor without supporting evidence and should be treated as speculation.\r\n\r\nRediscovery dates to the early 20th century. R. D. Banerji of the Archaeological Survey of India visited in 1919–20 and recognised the site\'s antiquity (Sindhav, 2016), though the Indonesian Wikipedia entry and the ECO Cultural Institute give 1922 as the discovery year. The Wikipedia entry adds that a Buddhist monk led Banerji to a mound believed to be a stupa, and Sindhav confirms a stupa of 150–500 CE at the site. Large excavations followed under Kashinath Narayan Dikshit (1924–25), John Marshall (1925–26 and the 1930s), Ernest Mackay, Ahmad Hasan Dani and Mortimer Wheeler (1945), and finally George F. Dales (1964–65). Khan\'s claim that the site was found while searching for traces of Alexander the Great is not corroborated by the other sources.\r\n\r\nConservation is now the central challenge. Major excavation was banned after 1965 because exposed structures were deteriorating, leaving only salvage digs, surface surveys, and conservation (Sindhav, 2016; Wikipedia, n.d.). German and Italian teams used less invasive methods in the 1980s, and core drilling in 2015 showed that the site extends beyond the excavated area (Sindhav, 2016). The site has been a UNESCO World Heritage Site since 1980 and is threatened by erosion and improper restoration (Sindhav, 2016; ECO Cultural Institute, 2026). Wikipedia (n.d.) records that maintenance stopped in December 1996 when funding ended, and that UNESCO financed a $10 million, 20-year flood-protection project in April 1997. Khan (2023) adds that the 2022 floods in Pakistan put the ruins at risk and that tourism has suffered from security conditions and weak oversight.\r\n\r\nComparing the sources shows several points needing caution. Dates for founding (2500 or 2600 BCE) and abandonment (1900 or 1500 BCE), population figures, and the year of discovery all vary. The popular essay\'s claim that Mohenjo-daro was the world\'s first grid-planned city is stronger than the academic sources support. The Indonesian Wikipedia entry presents the founders as Dravidian and describes the society as living entirely by science without religion, which is speculation rather than established fact. The source types also differ: the journal article and encyclopedic entry compile earlier scholarship, the ECO article is a short institutional overview, the essay is written by a self-described enthusiast, and the National Geographic feature could not be read in full.\r\n\r\nIn conclusion, Mohenjo-daro shows that a large Bronze Age city could be organised around planning, water management, and standardization rather than monumental display. Many questions remain open, notably who governed it, what its people believed, and why it was abandoned, and answering them depends on an undeciphered script and on a site that is itself eroding. Protecting the ruins from flooding and poor restoration is therefore as urgent as studying them.', 6, '2026-10-06 02:44:15', '2026-10-06 02:44:15');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Mythology', NULL, NULL),
(2, 'Mystery', NULL, NULL),
(3, 'History', NULL, NULL),
(4, 'Technology', NULL, NULL),
(5, 'Creatures', NULL, NULL),
(6, 'Places', NULL, NULL),
(8, 'Urban Legends', '2026-07-23 05:51:37', '2026-07-23 05:51:49');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `article_id` bigint UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `article_id`, `content`, `created_at`, `updated_at`) VALUES
(1, 3, 15, 'gvhgdtycvb', '2026-10-07 13:33:38', '2026-10-07 13:33:38'),
(2, 1, 11, 'fhbkbvcx', '2026-10-07 14:07:57', '2026-10-07 14:07:57'),
(3, 3, 6, 'tkjcfxjhn nhyfh ufygch n', '2026-10-07 14:15:51', '2026-10-07 14:15:51'),
(4, 3, 6, 'loppee youuu', '2026-10-08 02:06:03', '2026-10-08 02:06:03');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` smallint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2026_07_16_143000_create_categories_table', 1),
(5, '2026_07_16_143233_create_articles_table', 1),
(6, '2026_10_06_170041_add_role_to_users_table', 2),
(7, '2026_10_07_173330_create_reading_histories_table', 3),
(8, '2026_10_07_182346_add_read_count_to_reading_histories_table', 4),
(9, 'create_comments_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('cokolate819@gmail.com', '$2y$12$RR87YR5JrXGZpdgj9DY2gOUg8Ug/WbEymq4F5hAETCnwikLMiitTi', '2026-10-07 10:25:21'),
('hanzho210@gmail.com', '$2y$12$2H5rApLYQNVxyJuEc4wG8uK7l0b9dQAXC57VLa9lKbxQh9ZOyG8iW', '2026-10-06 11:53:18');

-- --------------------------------------------------------

--
-- Table structure for table `reading_histories`
--

CREATE TABLE `reading_histories` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `article_id` bigint UNSIGNED NOT NULL,
  `read_count` int UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reading_histories`
--

INSERT INTO `reading_histories` (`id`, `user_id`, `article_id`, `read_count`, `created_at`, `updated_at`) VALUES
(1, 3, 15, 6, '2026-10-07 10:41:54', '2026-10-07 13:37:15'),
(2, 3, 14, 3, '2026-10-07 10:42:06', '2026-10-07 11:29:13'),
(3, 3, 12, 2, '2026-10-07 10:42:16', '2026-10-07 11:28:57'),
(4, 3, 8, 2, '2026-10-07 10:42:27', '2026-10-07 11:29:04'),
(5, 1, 15, 3, '2026-10-07 11:18:56', '2026-10-07 12:21:09'),
(6, 1, 14, 3, '2026-10-07 11:27:02', '2026-10-07 11:27:36'),
(7, 1, 9, 1, '2026-10-07 11:27:10', '2026-10-07 11:27:10'),
(8, 1, 8, 1, '2026-10-07 11:27:18', '2026-10-07 11:27:18'),
(9, 1, 7, 1, '2026-10-07 11:27:47', '2026-10-07 11:27:47'),
(10, 1, 13, 1, '2026-10-07 11:27:54', '2026-10-07 11:27:54'),
(11, 1, 11, 3, '2026-10-07 11:28:02', '2026-10-07 14:07:57'),
(12, 3, 13, 1, '2026-10-07 11:29:44', '2026-10-07 11:29:44'),
(13, 1, 4, 1, '2026-10-07 12:55:33', '2026-10-07 12:55:33'),
(14, 3, 11, 1, '2026-10-07 14:02:56', '2026-10-07 14:02:56'),
(15, 3, 6, 5, '2026-10-07 14:03:47', '2026-10-08 02:06:04');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('B5yBUlGiZmI45G2gv5p1Un15rAVmG5HmpnfQHvem', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJoaWtHUzl2NUdDdlJIdWJ2TkVsc3J5eTlFMlZUb09Mc29ONFlvcE1PIiwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119LCJfcHJldmlvdXMiOnsidXJsIjoiaHR0cDpcL1wvbG9jYWxob3N0OjgwMDAiLCJyb3V0ZSI6ImhvbWUifSwibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiOjF9', 1792046251),
('tG3cLmQLkxNaLQLSCsrgaTtUr1AzOTlyfYz0ubXi', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJMNjFiUWZzeEhKY0FpMGhab0VOcUUzYlpZRzFhNGhFSzZnU3ZiZVdzIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cL2xvY2FsaG9zdDo4MDAwIiwicm91dGUiOiJob21lIn0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfX0=', 1792045266),
('uNd0hYEmxCAeUBWIoxqnvvGEcywFCGoHryxt66Lo', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJQcFFkN0NxN3BPRkhoczNlaVNsQ2JaU29WV2VtSzlTckZYc2xPcThHIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cL2xvY2FsaG9zdDo4MDAwXC9sb2dpbiIsInJvdXRlIjoibG9naW4ifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119LCJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI6MX0=', 1792045298),
('upF4rjtR30AWeVs9d92QVQWF527BjBG7G8LBSosS', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJMUFNvU1l6SHo1WDl5Mk5UT1N6YVJPUkNLRkRCdGtTbXNOVFFYNFh1IiwidXJsIjp7ImludGVuZGVkIjoiaHR0cDpcL1wvbG9jYWxob3N0OjgwMDBcL2Rhc2hib2FyZCJ9LCJfcHJldmlvdXMiOnsidXJsIjoiaHR0cDpcL1wvbG9jYWxob3N0OjgwMDAiLCJyb3V0ZSI6ImhvbWUifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119LCJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI6MX0=', 1791871548);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(1, 'admin', 'hanzho210@gmail.com', NULL, '$2y$12$BJaMGD1BItYV4OwgINPDDuxyOFcQpy.5NOm2ak2EG/MbhAfLIxF8O', 'l4I887QLSzUNlxOqWIwjmSBuT2KBajSPPGSOq55TK27EW0OPuCpvagH3gZR5', '2026-07-20 02:49:08', '2026-07-20 02:49:08', 'admin'),
(3, 'meh', 'cokolate819@gmail.com', NULL, '$2y$12$8ryc8rQhj4FqTkzWGF6osea6O3Ov.MK4kwKyAKajNVVFWJVKKAY8u', NULL, '2026-10-06 11:55:47', '2026-10-06 11:55:47', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_category_id_foreign` (`category_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_article_id_foreign` (`article_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`),
  ADD KEY `failed_jobs_connection_queue_failed_at_index` (`connection`,`queue`,`failed_at`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `reading_histories`
--
ALTER TABLE `reading_histories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reading_histories_user_id_article_id_unique` (`user_id`,`article_id`),
  ADD KEY `reading_histories_article_id_foreign` (`article_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `reading_histories`
--
ALTER TABLE `reading_histories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reading_histories`
--
ALTER TABLE `reading_histories`
  ADD CONSTRAINT `reading_histories_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reading_histories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
