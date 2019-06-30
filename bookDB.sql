-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2019 at 11:27 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_book`
--

-- --------------------------------------------------------

--
-- Table structure for table `longestbooks`
--

CREATE TABLE `longestbooks` (
  `bookID` bigint(20) DEFAULT NULL,
  `title` text DEFAULT NULL,
  `authors` text DEFAULT NULL,
  `average_rating` double DEFAULT NULL,
  `isbn` text DEFAULT NULL,
  `isbn13` bigint(20) DEFAULT NULL,
  `language_code` text DEFAULT NULL,
  `# num_pages` bigint(20) DEFAULT NULL,
  `ratings_count` bigint(20) DEFAULT NULL,
  `text_reviews_count` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `longestbooks`
--

INSERT INTO `longestbooks` (`bookID`, `title`, `authors`, `average_rating`, `isbn`, `isbn13`, `language_code`, `# num_pages`, `ratings_count`, `text_reviews_count`) VALUES
(24520, 'The Complete Aubrey/Maturin Novels (5 Volumes)', 'Patrick O\'Brian', 4.7, '039306011X', 9780393060119, 'eng', 6576, 1287, 82),
(25587, 'The Second World War', 'Winston S. Churchill-John Keegan', 4.44, '039541685X', 9780395416853, 'eng', 4736, 1437, 94),
(18796, 'In Search of Lost Time (6 Volumes)', 'Marcel Proust-C.K. Scott Moncrieff-Andreas Mayor-Terence Kilmartin-D.J. Enright-Richard Howard', 4.34, '0812969642', 9780812969641, 'eng', 4211, 7255, 333),
(47174, 'The Norton Anthology of English Literature  Vols A-C: The Middle Ages Through the Restoration and the Eighteenth Century', 'M.H. Abrams-Stephen Greenblatt-James Noggle-James Simpson-Jon Stallworthy-Jack Stillinger-Carol T. Christ-Lawrence Lipking-Jahan Ramazani-George M. Logan-Alfred David-Katharine Eisaman Maus-Barbara Kiefer Lewalski-Deidre Shauna Lynch-Catherine Robson', 4.21, '0393928330', 9780393928334, 'eng', 3956, 44, 0),
(44613, 'Remembrance of Things Past (Boxed Set)', 'Marcel Proust-C.K. Scott Moncrieff-Frederick A. Blossom-Joseph Wood Crutch', 4.34, '0701125594', 9780701125592, 'eng', 3400, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `popularlanguages`
--

CREATE TABLE `popularlanguages` (
  `bookID` bigint(20) DEFAULT NULL,
  `title` text DEFAULT NULL,
  `authors` text DEFAULT NULL,
  `average_rating` double DEFAULT NULL,
  `isbn` text DEFAULT NULL,
  `isbn13` bigint(20) DEFAULT NULL,
  `language_code` text DEFAULT NULL,
  `# num_pages` bigint(20) DEFAULT NULL,
  `ratings_count` bigint(20) DEFAULT NULL,
  `text_reviews_count` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `popularlanguages`
--

INSERT INTO `popularlanguages` (`bookID`, `title`, `authors`, `average_rating`, `isbn`, `isbn13`, `language_code`, `# num_pages`, `ratings_count`, `text_reviews_count`) VALUES
(3, 'Harry Potter and the Sorcerer\'s Stone (Harry Potter  #1)', 'J.K. Rowling-Mary GrandPré', 4.47, '0439554934', 9780439554930, 'eng', 320, 5629932, 70390),
(41865, 'Twilight (Twilight  #1)', 'Stephenie Meyer', 3.59, '0316015849', 9780316015844, 'eng', 498, 4367341, 93619),
(5907, 'The Hobbit or There and Back Again', 'J.R.R. Tolkien', 4.26, '0618260307', 9780618260300, 'eng', 366, 2364968, 31664),
(5107, 'The Catcher in the Rye', 'J.D. Salinger', 3.8, '0316769177', 9780316769174, 'eng', 277, 2318478, 42016),
(960, 'Angels & Demons (Robert Langdon  #1)', 'Dan Brown', 3.88, '1416524797', 9781416524793, 'eng', 736, 2279854, 20851),
(47212, 'Storm Front (The Dresden Files  #1)', 'Jim Butcher', 4.01, '0451457811', 9780451457813, 'en-US', 322, 231728, 11362),
(378, 'The Phantom Tollbooth', 'Norton Juster-Jules Feiffer', 4.21, '0394820371', 9780394820378, 'en-US', 256, 206193, 8290),
(42155, 'Something Blue (Darcy & Rachel  #2)', 'Emily Giffin', 3.93, '0312323867', 9780312323868, 'en-US', 338, 186552, 6530),
(12873, 'Rebecca', 'Daphne du Maurier-Sally Beauman', 4.22, '1844080382', 9781844080380, 'en-US', 441, 179051, 8061),
(9742, 'The Audacity of Hope: Thoughts on Reclaiming the American Dream', 'Barack Obama', 3.73, '0307237699', 9780307237699, 'en-US', 375, 121607, 4379),
(4381, 'Fahrenheit 451', 'Ray Bradbury-Alfredo Crespo', 3.98, '0307347974', 9780307347978, 'spa', 175, 690801, 14489),
(7677, 'Jurassic Park (Jurassic Park  #1)', 'Michael Crichton', 4.01, '030734813X', 9780307348135, 'spa', 480, 452245, 3617),
(10603, 'Cujo', 'Stephen King', 3.7, '0307348245', 9780307348241, 'spa', 432, 185847, 2537),
(10585, 'Insomnia', 'Stephen King-Bettina Blanch Tyroller', 3.81, '8497597729', 9788497597722, 'spa', 890, 113304, 1873),
(41716, 'Sahara (Dirk Pitt  #11)', 'Clive Cussler', 3.96, '030720961X', 9780307209610, 'spa', 400, 49716, 695),
(10629, 'Christine', 'Stephen King-Marie Milpois', 3.76, '2253147699', 9782253147695, 'fre', 411, 168523, 1911),
(11570, 'Dreamcatcher', 'Stephen King-William Olivier Desmond-Maria Teresa Marenco', 3.62, '2226131906', 9782226131904, 'fre', 688, 130976, 1505),
(9522, 'Persepolis  Volume 1', 'Marjane Satrapi', 4.24, '2844140580', 9782844140586, 'fre', 76, 60931, 368),
(23955, 'Trainspotting', 'Irvine Welsh-Eric Lindor Fall', 4.09, '2020336464', 9782020336468, 'fre', 344, 59187, 861),
(10882, 'Hell\'s Angels: A Strange and Terrible Saga', 'Hunter S. Thompson', 3.99, '222109073X', 9782221090732, 'fre', 295, 31796, 882),
(1633, 'Getting Things Done: The Art of Stress-Free Productivity', 'David    Allen', 3.99, '0142000280', 9780142000281, 'en-GB', 267, 95950, 3597),
(5205, 'A Map of the World', 'Jane Hamilton-Frank  Muller-C.J. Critt', 3.8, '0385720106', 9780385720106, 'en-GB', 400, 67012, 1433),
(18419, 'The Kissing Hand', 'Audrey Penn-Ruth E. Harper-Nancy M. Leak', 4.42, '1933718005', 9781933718002, 'en-GB', 32, 55801, 1528),
(6531, 'Point of Origin (Kay Scarpetta  #9)', 'Patricia Cornwell', 4.02, '0751530484', 9780751530483, 'en-GB', 440, 51974, 474),
(13813, 'A Darkness At Sethanon (The Riftwar Saga  #4)', 'Raymond E. Feist', 4.19, '0586066888', 9780586066881, 'en-GB', 527, 49946, 421),
(17717, 'Labyrinths:  Selected Stories and Other Writings', 'Jorge Luis Borges-Donald A. Yates-James E. Irby-André Maurois', 4.46, '0811200124', 9780811200127, 'mul', 256, 22193, 905),
(46201, 'The Selected Poetry of Rainer Maria Rilke', 'Rainer Maria Rilke-Stephen Mitchell-Robert Hass', 4.41, '0679722017', 9780679722014, 'mul', 356, 12174, 267),
(11320, 'The Captain\'s Verses', 'Pablo Neruda-Donald Devenish Walsh', 4.25, '0811215806', 9780811215800, 'mul', 151, 4360, 156),
(1330, 'Euthyphro. Apology. Crito. Phaedo. Phaedrus.', 'Plato-Harold North Fowler', 4.36, '0674990404', 9780674990401, 'mul', 583, 998, 13),
(15647, 'The Inferno of Dante: A New Verse Translation (Bilingual Edition)', 'Dante Alighieri-Robert Pinsky-Michael Mazur', 4, '0374525315', 9780374525316, 'mul', 464, 653, 93),
(24861, 'Demian. Die Geschichte von Emil Sinclairs Jugend', 'Hermann Hesse', 4.12, '3518367064', 9783518367063, 'ger', 194, 43967, 1497),
(16707, 'Wonder Boys', 'Michael Chabon-Hans Hermann', 3.93, '3423124172', 9783423124171, 'ger', 383, 26013, 1239),
(2896, 'Das Parfum: Die Geschichte eines Mörders', 'Patrick Süskind', 4.02, '3257228007', 9783257228007, 'ger', 321, 8579, 303),
(35090, 'Der Richter und sein Henker', 'Friedrich Dürrenmatt-John J. Neumaier-William Gillis', 3.73, '0395044995', 9780395044995, 'ger', 208, 5035, 74),
(4485, 'Herr Lehmann', 'Sven Regener', 3.86, '3442453305', 9783442453306, 'ger', 286, 3896, 83),
(4315, 'Zaat', 'Sonallah Ibrahim-??? ???? ???????-Anthony Calderbank', 3.55, '9774248449', 9789774248443, 'ara', 349, 125, 13),
(981, '????? ???????', 'Dan Brown-??? ?????-????? ??????-???? ???? ???????', 3.7, '9953299072', 9789953299075, 'ara', 471, 43, 4),
(47425, 'Chocolate (Chocolat  #1)', 'Joanne Harris-Teresa Casal', 3.96, '9724120600', 9789724120607, 'por', 259, 875, 33),
(14775, 'Neuromancer', 'William Gibson-Alex Antunes-Maya Sangawa', 3.89, '8585887907', 9788585887902, 'por', 303, 528, 60),
(45624, 'O Leão  a Feiticeira e o Guarda-Roupa (As Crónicas de Nárnia  #2)', 'C.S. Lewis-Pauline Baynes-Ana Falcão Bastos', 4.21, '9722330209', 9789722330206, 'por', 135, 447, 29),
(45623, 'O Sobrinho do Mágico (As Crónicas de Nárnia  #1)', 'C.S. Lewis-Pauline Baynes-Ana Falcão Bastos', 4.03, '9722329987', 9789722329989, 'por', 147, 363, 35),
(45640, 'Entrevista com o vampiro (As Crônicas Vampirescas  #1)', 'Anne Rice-Clarice Lispector', 3.99, '8532501028', 9788532501028, 'por', 334, 328, 16),
(1558, 'Oedipus Rex (Greek and Latin Classics)', 'Sophocles-Roger D. Dawe', 3.69, '0521617359', 9780521617352, 'grc', 214, 209, 1),
(1475, 'Medea', 'Euripides-Donald J. Mastronarde', 3.85, '0521643864', 9780521643863, 'grc', 431, 199, 9),
(1572, 'Clouds/Wasps/Peace', 'Aristophanes-Jeffrey Henderson', 4.12, '0674995376', 9780674995376, 'grc', 624, 68, 10),
(1579, 'Frogs/Assemblywomen/Wealth (Loeb Classical Library 180)', 'Aristophanes-Jeffrey Henderson', 4.19, '0674995961', 9780674995963, 'grc', 608, 57, 3),
(1332, 'Parmenides/Philebus/Symposium/Phaedrus/Alcibiades 1-2/Hipparchus/Amatores (Platonis Opera  #2)', 'Plato-John Burnet-Hipparchus', 4.87, '0198145411', 9780198145417, 'grc', 410, 15, 0),
(4451, 'People of the Lie: The Hope for Healing Human Evil', 'M. Scott Peck', 3.98, '0684848597', 9780684848594, 'en-CA', 272, 6001, 426),
(2819, 'A Circle of Quiet (Crosswicks Journals #1)', 'Madeleine L\'Engle', 4.21, '0062545035', 9780062545039, 'en-CA', 246, 4985, 473),
(44628, 'The Last Shot: City Streets  Basketball Dreams', 'Darcy Frey', 4.16, '0618446710', 9780618446711, 'en-CA', 233, 4979, 152),
(21829, 'Creepers', 'David Morrell', 3.65, '1593153570', 9781593153571, 'en-CA', 388, 4364, 502),
(5327, 'A Christmas Carol', 'Charles Dickens-P.J. Lynch', 4.04, '0763631205', 9780763631208, 'en-CA', 160, 4201, 325),
(2711, 'The Riverside Chaucer', 'Geoffrey Chaucer-Larry Dean Benson-F.N. Robinson', 4.18, '0395290317', 9780395290316, 'enm', 1327, 7643, 147),
(32816, 'The Canterbury Tales: Fifteen Tales and the General Prologue', 'Geoffrey Chaucer-V.A. Kolve-Glending Olson', 3.95, '0393925870', 9780393925876, 'enm', 600, 1063, 40),
(2701, 'The Canterbury Tales (original-spelling edition)', 'Geoffrey Chaucer-Jill Mann', 3.49, '014042234X', 9780140422344, 'enm', 1254, 765, 60),
(2886, 'Death Note  Vol. 4: ?? (Death Note  #4)', 'Tsugumi Ohba-Takeshi Obata', 4.39, '4088736710', 9784088736716, 'jpn', 204, 451, 12),
(2887, 'Death Note  Vol. 3: ?? (Death Note  #3)', 'Tsugumi Ohba-Takeshi Obata', 4.43, '4088736524', 9784088736525, 'jpn', 194, 396, 9),
(13609, '????? 22??????', 'Yumi Hotta-Yumi Hotta', 4.2, '4088734327', 9784088734323, 'jpn', 189, 320, 4),
(13600, '????? 14?sai vs toya koyo', 'Yumi Hotta-Yumi Hotta', 4.23, '4088731697', 9784088731698, 'jpn', 189, 319, 6),
(13601, '????? 17????????', 'Yumi Hotta-Yumi Hotta', 4.24, '4088732685', 9784088732688, 'jpn', 205, 302, 7),
(2977, 'Drageløberen', 'Khaled Hosseini-Alis Friis Caspersen', 4.28, '8777147200', 9788777147203, 'dan', 258, 11, 0),
(6003, '????? (????  #4)', 'J.K. Rowling-J.K.??-???', 4.55, '9573318318', 9789573318316, 'zho', 768, 82, 1),
(5991, '??????? (????  #6)', 'J.K. Rowling-J.K.??-?????-???-???-???-???', 4.56, '9573321742', 9789573321743, 'zho', 735, 69, 0),
(4931, '?????? ?', 'Haruki Murakami-????-???', 4.07, '9571338400', 9789571338408, 'zho', 328, 66, 6),
(19546, '??? (???????????????????  #36)', 'Maurice Sendak', 4.22, '9575881044', 9789575881047, 'zho', 36, 25, 4),
(15294, '??????????', 'J.R.R. Tolkien-???-Alan  Lee-???', 4.35, '9570823364', 9789570823363, 'zho', 608, 22, 0),
(44094, 'Blauwe maandagen', 'Arnon Grunberg', 3.11, '9038826702', 9789038826707, 'nl', 271, 2009, 42),
(44095, 'Figuranten', 'Arnon Grunberg', 3.12, '9038826818', 9789038826813, 'nl', 300, 946, 20),
(17844, 'De slinger van Foucault', 'Umberto Eco-Yond Boeke-Patty Krone', 3.9, '9035107004', 9789035107007, 'nl', 663, 252, 12),
(5230, 'Vergeef me', 'Wally Lamb-Inge de Heer', 4.18, '9022530078', 9789022530078, 'nl', 744, 55, 7),
(45534, 'Montaillou: Een ketters dorp in de Pyreneeën 1294-1324', 'Emmanuel Le Roy Ladurie-Claire den Boer-Roland Fagel', 3.97, '9060196821', 9789060196823, 'nl', 500, 32, 4),
(19164, 'Purgatorio (La Divina Commedia #2)', 'Dante Alighieri-Robert M. Durling', 4.02, '0195087453', 9780195087451, 'ita', 704, 15177, 234),
(43508, 'Harry Potter e il Calice di Fuoco', 'J.K. Rowling-Serena Daniele-Beatrice Masini-Serena Riglietti', 4.55, '888451049X', 9788884510495, 'ita', 627, 4983, 157),
(10522, 'Il nome della rosa', 'Umberto Eco', 4.12, '8845246345', 9788845246340, 'ita', 533, 3973, 170),
(15954, 'Le pagine della nostra vita', 'Nicholas Sparks-Lisa Morpurgo', 4.08, '8878249416', 9788878249417, 'ita', 208, 644, 32),
(6737, 'Angeli e demoni', 'Dan Brown-Annamaria Biavasco', 3.88, '0828855498', 9780828855495, 'ita', 562, 492, 12),
(15880, 'Harrius Potter et Philosophi Lapis', 'J.K. Rowling-Peter Needham', 4.47, '1582348251', 9781582348254, 'lat', 249, 185, 25),
(15882, 'Harrius Potter et Camera Secretorum', 'J.K. Rowling-Peter Needham', 4.41, '159990067X', 9781599900674, 'lat', 277, 82, 5),
(7796, 'Cattus Petasatus: The Cat in the Hat in Latin', 'Dr. Seuss-Jennifer Morrish Tunberg-Terence Tunberg-Terence O. Tunberg-Guenevera Tunberg-Terentio Tunberg', 4.16, '0865164711', 9780865164710, 'lat', 75, 62, 10),
(10200, 'Venac sonetnih venaca; Puz?eva srma', 'Dobrica Eri?', 0, '8644101277', 9788644101277, 'srp', 222, 0, 0),
(19104, 'The Overcoat and Other Short Stories', 'Nikolai Gogol', 4.22, '0486270572', 9780486270579, 'rus', 103, 8529, 187),
(34260, '????? ?????? ? ????? ??????? (????? ?????? #5)', 'J.K. Rowling-??.?. ??????-???????? ??????-?????? ???????-?????? ???????', 4.49, '5353014359', 9785353014355, 'rus', 828, 560, 5),
(43507, '????? ?????? ? ??????????? ?????? (Harry Potter  #1)', 'J.K. Rowling-??.?. ??????-?.?. ?????????', 4.47, '535300308X', 9785353003083, 'rus', 400, 425, 7),
(46524, '???????', 'Alexandre Dumas-Alexandre Dumas', 4.03, '5170110502', 9785170110506, 'rus', 474, 303, 4),
(13116, '???? ? ????????? ????? ?? ??????????', 'Robert M. Pirsig', 3.77, '5890911856', 9785890911858, 'rus', 512, 81, 13),
(41909, 'Harry Potter ve S?rlar Odas? (Harry Potter  #2)', 'J.K. Rowling-Sevin Okyay', 4.41, '3570211029', 9783570211021, 'tur', 403, 823, 36),
(22119, 'Zaman Tüneli', 'Michael Crichton', 3.84, '9751017025', 9789751017024, 'tur', 544, 18, 1),
(41912, 'Harry Potter ve Felsefe Ta??', 'J.K. Rowling', 4.47, '3570211010', 9783570211014, 'tur', 353, 12, 0),
(22277, 'Kenang-Kenangan Seorang Geisha (Memoirs of a Geisha)', 'Arthur Golden', 4.1, '9833346685', 9789833346684, 'msa', 784, 27, 6),
(39797, 'The Return of the Dancing Master', 'Henning Mankell-Laurie Thompson', 3.9, '1400076951', 9781400076956, 'swe', 406, 5191, 306),
(25893, 'Ondskan', 'Jan Guillou', 3.81, '911811332X', 9789118113321, 'swe', 283, 4945, 77),
(25892, 'Arvet efter Arn (The Crusades Trilogy  #4)', 'Jan Guillou', 3.76, '9164200035', 9789164200037, 'swe', 425, 1976, 24),
(25891, 'Vendetta: Coq Rouge VI', 'Jan Guillou', 3.78, '9119030320', 9789119030320, 'swe', 478, 714, 3),
(22748, 'Vattenmelonen', 'Marian Keyes-Lina Erkelius', 3.78, '9176435245', 9789176435243, 'swe', 518, 94, 3),
(23090, '¿Qué me quieres  amor?', 'Manuel Rivas', 3.62, '8420482277', 9788420482279, 'glg', 216, 450, 19),
(23108, 'O lapis do carpinteiro', 'Manuel Rivas', 3.6, '8483022613', 9788483022610, 'glg', 152, 181, 13),
(23114, 'Os libros arden mal', 'Manuel Rivas', 3.35, '849782461X', 9788497824613, 'glg', 741, 33, 2),
(23112, 'A man dos paiños', 'Manuel Rivas', 3.46, '8483025914', 9788483025918, 'glg', 142, 24, 0),
(23129, 'El perquè de tot plegat', 'Quim Monzó', 3.8, '8477271054', 9788477271055, 'cat', 176, 333, 22),
(23147, 'Guadalajara', 'Quim Monzó', 3.77, '847727164X', 9788477271642, 'cat', 199, 28, 2),
(23155, 'Self Service', 'Quim Monzó-Biel Mesquida', 2, '8473110102', 9788473110105, 'cat', 256, 1, 0),
(25426, 'Delwau Duon: Peintiadau Nicholas Evans = Symphonies in Black: The Paintings of Nicholas Evans', 'Nicholas    Evans-Rhonda  Evans', 5, '0862431352', 9780862431358, 'wel', 150, 1, 0),
(27575, '????? ?? ???? ?????', 'Amos Oz-???? ???', 4.22, '9650710744', 9789650710743, 'heb', 593, 95, 7),
(32592, 'In Wonderland', 'Knut Hamsun-Sverre Lyngstad', 3.59, '0970312555', 9780970312556, 'nor', 185, 86, 8),
(43504, 'Harry Potter and the Philosopher\'s Stone (Harry Potter  #1)', 'J.K. Rowling', 4.47, '158234681X', 9781582346816, 'gla', 250, 11, 0),
(44012, 'Shield of Thunder (Troy  #2)', 'David Gemmell', 4.36, '0345477014', 9780345477019, 'ale', 512, 99, 15);

-- --------------------------------------------------------

--
-- Table structure for table `popular_books`
--

CREATE TABLE `popular_books` (
  `bookID` bigint(20) DEFAULT NULL,
  `title` text DEFAULT NULL,
  `authors` text DEFAULT NULL,
  `average_rating` double DEFAULT NULL,
  `isbn` text DEFAULT NULL,
  `isbn13` bigint(20) DEFAULT NULL,
  `language_code` text DEFAULT NULL,
  `# num_pages` bigint(20) DEFAULT NULL,
  `ratings_count` bigint(20) DEFAULT NULL,
  `text_reviews_count` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `popular_books`
--

INSERT INTO `popular_books` (`bookID`, `title`, `authors`, `average_rating`, `isbn`, `isbn13`, `language_code`, `# num_pages`, `ratings_count`, `text_reviews_count`) VALUES
(3, 'Harry Potter and the Sorcerer\'s Stone (Harry Potter  #1)', 'J.K. Rowling-Mary GrandPré', 4.47, '0439554934', 9780439554930, 'eng', 320, 5629932, 70390),
(41865, 'Twilight (Twilight  #1)', 'Stephenie Meyer', 3.59, '0316015849', 9780316015844, 'eng', 498, 4367341, 93619),
(5907, 'The Hobbit or There and Back Again', 'J.R.R. Tolkien', 4.26, '0618260307', 9780618260300, 'eng', 366, 2364968, 31664),
(5107, 'The Catcher in the Rye', 'J.D. Salinger', 3.8, '0316769177', 9780316769174, 'eng', 277, 2318478, 42016),
(960, 'Angels & Demons (Robert Langdon  #1)', 'Dan Brown', 3.88, '1416524797', 9781416524793, 'eng', 736, 2279854, 20851);

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `test` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `longestbooks`
--
ALTER TABLE `longestbooks`
  ADD KEY `ix_longestbooks_bookID` (`bookID`);

--
-- Indexes for table `popularlanguages`
--
ALTER TABLE `popularlanguages`
  ADD KEY `ix_popularlanguages_bookID` (`bookID`);

--
-- Indexes for table `popular_books`
--
ALTER TABLE `popular_books`
  ADD KEY `ix_popular_books_bookID` (`bookID`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
