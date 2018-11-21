-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 21, 2018 lúc 09:40 AM
-- Phiên bản máy phục vụ: 10.1.35-MariaDB
-- Phiên bản PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `news`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `authors`
--

INSERT INTO `authors` (`id`, `name`, `username`) VALUES
(1, 'asdf', 'adfa'),
(2, 'admin 123', 'admin'),
(3, 'Nguyen Thu Hai', 'thuhai'),
(4, 'Le Mai Huong', 'maihuong'),
(5, 'Pham Thi Sac', 'phamsac'),
(6, 'Le Hong Trang', 'hongtrang');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`) VALUES
(1, 'ô tô', 'o-to'),
(2, 'Technology', 'technology'),
(3, 'Business', 'business'),
(4, 'Health', 'health'),
(5, 'Sports', 'sports'),
(6, 'Food', 'food'),
(7, 'Travel', 'travel'),
(8, 'Culture', 'culture'),
(9, 'Arts', 'arts'),
(10, 'Science', 'science'),
(11, 'Future', 'future');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `news_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`id`, `name`, `content`, `news_id`) VALUES
(1, '', 'bai viet rat hay', 1),
(2, '', 'Great article!', 3),
(3, '', 'Good idea!', 4),
(4, '', 'It has many creative statements.', 13),
(5, '', 'Wonderful benefits', 20),
(6, 'khanh', 'hay qua', 7),
(8, '', '', 7),
(9, 'khanh1212', 'hihi', 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `short_intro` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created` date NOT NULL,
  `author_id` int(11) NOT NULL,
  `cate_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `title`, `short_intro`, `content`, `created`, `author_id`, `cate_id`) VALUES
(1, '', 'hay lam', 'xem đìaádfád', '2018-11-07', 1, 1),
(2, '', 'tin mới nhất', 'tin mới 12fadsnfnasdfka sadfasdf\r\nádfasdfasd\r\ndaâd', '2018-11-01', 2, 1),
(3, 'Mark Zuckerberg Defends Facebook as Furor Over Its Tactics Grows', 'This is a hot news about technology.', 'WASHINGTON — On Thursday, Mark Zuckerberg, Facebook’s chief executive and chairman, held a conference call with reporters to discuss how the social network manages problematic posts and its community standards.\r\n\r\nThe call quickly went sideways. For more than an hour, the 34-year-old billionaire instead fielded questions about how he and his No. 2, Sheryl Sandberg, obfuscated problems such as Russian interference on Facebook and how the company had gone on the attack against rivals and critics. In response, Mr. Zuckerberg — at times defiant and at times conciliatory — defended the social network, Ms. Sandberg and his own record.', '2018-11-10', 3, 2),
(4, 'Google Cloud Executive Who Sought Pentagon Contract Steps Down', 'This is useful information of Google.', 'SAN FRANCISCO — Diane Greene, whose pursuit of Pentagon contracts for artificial intelligence technology sparked a worker uprising at Google, is stepping down as chief executive of the company’s cloud computing business.\r\n\r\nMs. Greene said she would stay on as chief executive until January. She will be replaced by Thomas Kurian, who oversaw product development at Oracle until his resignation in October. Ms. Greene will remain a board director at Google’s parent company, Alphabet.', '2018-11-10', 3, 2),
(5, 'The Week in Tech: Amazon Finally Makes an HQ2 Decision', 'An interesting article', 'Each week, technology reporters and columnists from The New York Times review the week’s news, offering analysis and maybe a joke or two about the most important developments in the tech industry. Want this newsletter in your inbox? Sign up here.\r\n\r\nHello from Seattle. I’m Karen Weise, the new tech correspondent here. As you might imagine, the announcement of Amazon’s decision in what it had billed as a search for a second headquarters, a.k.a. HQ2, has dominated news here this week.', '2018-11-11', 4, 2),
(6, 'Nissan Chairman, Carlos Ghosn, Is Arrested Over Financial Misconduct Allegations', 'An article abut business', 'TOKYO — Carlos Ghosn, who created an alliance between Nissan and Renault that made it effectively the world’s largest carmaker, was arrested by the authorities in Japan on Monday in a remarkable tumble for one of the industry’s most powerful and admired leaders.\r\n\r\nMr. Ghosn, a larger-than-life figure widely hailed for saving Nissan, reviving Renault, and rethinking how automakers could share technologies, was detained after an internal company inquiry found that he had underreported his compensation to the Japanese government for several years.', '2018-11-12', 5, 3),
(7, 'A $12 Billion Program to Help Farmers Stung by Trump’s Trade War Has Aided Few', 'Elon Musk renames his BFR spacecraft Starship', 'Elon Musk has changed the name of his forthcoming passenger spaceship from Big Falcon Rocket (BFR) to Starship.\r\nThe entrepreneur would not reveal why he had renamed the craft, which has not yet been built, but added its rocket booster will be called Super Heavy.\r\nIn September, Mr Musk\'s SpaceX company announced that Japanese billionaire Yusaku Maezawa had signed up to be the first passenger to travel on the ship.\r\nThe mission is planned for 2023 if the spaceship is built by that time.\r\n\r\n', '2018-11-12', 6, 3),
(8, 'France set to remove Carlos Ghosn from Renault after arrest', 'Carlos Ghosn should not remain in charge of Renault following his arrest in Japan over claims of \"misconduct\"', 'Bruno Le Maire said he was \"no longer in a position\" to lead the carmaker in which the French state has a 15% stake.\r\nThe Renault board is due to meet on Tuesday to discuss temporarily replacing Mr Ghosn as chief executive.\r\nThe minister hinted that directors could ask Renault chief operating officer Thierry Bollore to step up.\r\n', '2018-11-12', 5, 3),
(9, 'The crunch of an apple makes me want to run away', 'Margot Noel has a condition called misophonia, which literally means \"hatred of sound\". It can be so disturbing that she has to wear headphones or ear plugs to protect herself.', 'Someone takes a bite out of an apple.\r\nThere\'s a drawn-out crunch as the teeth break through the tough skin of the fruit.\r\nThe noise is unbearable for 28-year-old Margot Noel.\r\n\"I have to leave or cover my ears. I just cannot hear it,\" she says.\r\n\"It puts me in a state of distress, it makes me really anxious. My body feels there\'s danger - I need to leave or I need to protect myself.\"\r\nMargot has misophonia, which she describes as a brain dysfunction that causes common sounds to produce an intense emotional response - such as anger, panic, fear or distress.', '2018-11-13', 3, 4),
(10, 'Should we pay people for donating blood?', 'Scotty Hearron says he was a \"broke college student\" the first time he got paid for donating some of his blood plasma.', 'This was a few years ago when he was at university in Oregon.\r\nHaving plasma extracted eight times over a four-week period (the maximum allowed in the US) he could earn $280 (£216) every month.\r\nNow a 23-year-old high school teacher, he says it wasn\'t an experience he minded.\r\n\"You felt like you were making an impact, and it was nice to get a bit of cash on the side,\" he says.\r\nMr Hearron adds that the other donors of plasma - the straw-coloured liquid that makes up 55% of your blood\'s volume - were \"generally working-class folk or fellow students\".', '2018-11-14', 5, 4),
(11, 'Could these beautiful islands help stop killer diseases?', 'Travellers to the remote African islands of Bijagos can expect to find a tropical paradise of pristine beaches and lush rainforest.', 'But the islands are not just beautiful. They are also a natural laboratory, providing a unique setting in which to study cures for some of the world\'s deadliest diseases.\r\nA collection of 18 islands and 70 islets off the coast of Guinea-Bissau, West Africa, the Bijagos are home to about 30,000 people with their own language and unique traditions.\r\nThey also teem with wildlife, including the rare saltwater hippopotamus and giant sea turtle, which thrive in this remote spot.', '2018-11-14', 6, 4),
(12, 'Virgil van Dijk: Netherlands defender consoles official after Germany draw', 'Romanian referee Ovidiu Hategan was consoled by Virgil van Dijk after the Netherlands 2-2 draw with Germany on Monday.', 'It is understood the 38-year-old official had discovered his mother had died in the build-up to the match.\r\nAnd the Liverpool defender showed his human side, embracing the emotional Hategan at the final whistle.\r\n\"That man broke down, stood with tears in his eyes because he had just lost his mother,\" Van Dijk said.\r\n\"I wished him strength and said he had refereed well. It\'s a small thing, but I hope it helped him.\"', '2018-11-15', 4, 5),
(13, 'LA Rams 54-51 Kansas City Chiefs: Rams edge high-scoring classic', 'The Los Angeles Rams won a clash of two Super Bowl favourites as they beat the Kansas City Chiefs 54-51 in the third-highest scoring NFL game of all time.', 'Rams quarterback Jared Goff threw four touchdowns including the winning score with 1 minute 49 seconds left.\r\nIt is the first time two teams have scored more than 50 points in a match.\r\n\"It was a whirlwind,\" said Rams head coach Sean McVay, whose side improved to 10-1. \"Until the final few seconds you weren\'t really able to breathe.\"\r\nThe match between the league\'s two highest-scoring offenses was moved to Los Angeles Memorial Coliseum after concerns over the pitch at Mexico City\'s Azteca Stadium.', '2018-11-16', 6, 5),
(14, 'Steve Smith, David Warner & Cameron Bancroft bans not reduced', 'The bans on Steve Smith, David Warner and Cameron Bancroft will not be reduced, says Cricket Australia (CA).', 'Smith and Warner were suspended for 12 months and Bancroft for nine for ball-tampering in South Africa in March.\r\nThe Australian Cricketers\' Association (ACA) wanted the punishment lifted after an independent review into CA found it to be partly to blame.\r\nCA interim chair Earl Eddings said that \"it is not appropriate to make any changes to the sanctions\".\r\nThe ACA said the decision was \"disappointing\" but, while \"the ACA respectfully disagrees with CA\'s decision, it is accepted\".', '2018-11-16', 3, 5),
(15, 'How to eat fat and stay healthy?', 'The Mediterranean diet, rich in healthy fats from olive oil, nuts, seeds and fish, has been shown to decrease the risk of heart disease and stroke.', 'All food contains fat – even carrots and lettuce have a tiny amount – but some fats are better for you than others. Of course fats provide a lot of calories per gram, but they can be loaded with nutrients too. In fact, some are described as \'essential fats\' and it is crucial you include them in your diet\r\nNo more than 35% of your daily calories should come from fat (around 70g for women or 90g for men). While many of us don\'t exceed this, we are commonly eating too much of the wrong type of fat and not enough of the good stuff.', '2018-11-16', 4, 6),
(16, 'Can a vitamin pill a day keep the doctor away?', 'The vitamin industry is booming and we Brits have bought into it in a big way.', 'Nearly half of us take a vitamin and/or mineral supplement every day according to Mintel. Many of us aren\'t taking them to treat a deficiency – we\'re popping pills in the belief they will boost our health. With so many supplements available, lots of which combine different vitamins and minerals into multivitamins, it\'s difficult to know which (if any) will do you good.\r\nYou need 13 vitamins to maintain health, but should you take any of them in supplement form?', '2018-11-17', 3, 6),
(17, 'Are you fooled by superfoods?', 'More than 60% of us say we have purchased a food because it is labelled as a \'superfood\'. Are you fooled by marketing or can you spot a fad a mile away? Take out test to find out.', 'Quinoa\r\nQuinoa is hailed by many, particularly vegetarians, for its high protein content and being one of the only plant-based foods to provide all the essential amino acids. However, you can also get these amino acids, as well as protein, from combining lentils and rice (or even beans on toast!).\r\n\r\nCoconut oil\r\nCoconut oil has increased in popularity, thanks to claims that it can speed up metabolism and reduce weight and cholesterol. But research suggests these claims are unfounded. It is high in saturated fat, which the NHS and British Heart Foundation recommend we reduce. It is also low in monounsaturated fat, which helps lower cholesterol and potentially reduce risk of heart disease. Swap coconut oil for rapeseed oil, which contains significantly more monounsaturated fat and much less saturated fat than coconut oil.', '2018-11-17', 5, 6),
(18, 'The buried secrets of the deadliest location on earth', 'Chicxulub Puerto, Mexico, is the centre of the impact crater that scientists believe was made when the asteroid that wiped out the dinosaurs smashed into the Earth’s surface.', 'In the mid-1980s, as a group of American archaeologists pored over satellite images showing Mexico’s Yucatan Peninsula, they did not know what to make of one unexpected pattern: a near-perfect ring, about 200km across.\r\nCenotes, the blue water sinkholes that are a staple of Yucatan tourist brochures, dot this arid landscape, opening up seemingly at random as you trek across the vast flatlands of the Yucatan, a dogleg of low, dry forest on Mexico’s eastern edge. But seen from space, they cluster together to form a pattern: an arc, articulating nearly half a circle, as if a drawing compass had been stuck into the map on the shores of the Gulf of Mexico and spun around until running out of land.', '2018-11-16', 6, 7),
(19, 'Switzerlands artfully tedious job', 'The tradition of tavillonnage, or wood-shingled roofs, can only be found across the landscape of French-speaking Fribourg and Vaud, two of Switzerland’s western cantons.', 'The clang of a hammer rang out from the chalet roof and echoed against the serene Pre-Alps of Fribourg, Switzerland. Vincent Gachet, one of the country’s few remaining master tavillonneurs, or traditional Swiss roof architects and shingle-makers, carefully placed a wooden shingle on the roof frame. He’d finally completed a square metre – a labour-intensive task that took an hour and required 250 shingles, of which only 12 were visible – and he needed to do 200 more to finish the job. This artful but tedious work of Gachet and other tavillonneurs like him are what keep this Swiss living tradition alive. ', '2018-11-17', 3, 7),
(20, 'The last velvet merchant of Venice', 'This is a good article about traveling.', 'Velvet was once among the most coveted fabrics in the world, but now only one family in Italy produces it the traditional way – and can trace its textile tradition back to 1499.', '2018-11-16', 4, 7),
(21, 'Striking photos of human scars on earth.', 'Edward Burtynsky’s images show ‘the indelible marks left by humankind on the geological face of our planet’. They are surreal and glorious at first sight, writes Cameron Laux.', 'The Canadian photographer Edward Burtynsky is a master of the post-industrial sublime. His sweeping point of view is, at the very least, ambivalent. His shots, most recently taken from the coolest possible standpoint of a helicopter and sometimes a satellite, are at first sight surreal and glorious, but they have an ominous documentary undertow.', '2018-11-15', 5, 8),
(22, 'Anni albers and the forgotten women of the bauhaus', 'Many brilliant female designers were part of the famously forward-thinking German movement. But how progressive was it really? By Dominic Lutyens', 'The Bauhaus, the interwar German design school that profoundly influenced later developments in art, architecture, product design and typography, was a complex, contradictory crucible of ideas.\r\nFounded by architect Walter Gropius in 1919 on the principle of the Gesamtkunstwerk – a total work of art that fused art, architecture and design – the school theoretically treated these disciplines in a non-hierarchical way. In practice, however, the Bauhaus viewed architecture as the apogee of these fields, even though its architecture department didn’t open until 1927.', '2018-11-18', 3, 8),
(23, 'Yayoi kusamas extraordinary survival story', 'The Japanese artist famed for her Instagrammable artworks overcame childhood trauma, prejudice and mental illness to become a sensation late in life, writes Cath Pound.', 'Yayoi Kusama is the biggest-selling female artist in the world. And in her bright-red wig and quirky polka-dot ensembles, she is also one of the most instantly recognisable. At almost 90 years old she is still astonishingly prolific. Her upcoming show at the Victoria Miro gallery in London is bound to draw crowds around the block, desperate to be photographed inside her new, fabulously Instagrammable Infinity Room.', '2018-11-18', 6, 8),
(24, 'A true Marvel: How Stan Lee led the 1960s superhero revolution', 'The legendary Marvel Comics writer Stan Lee has died, aged 95. Without his pioneering work on superhero titles in the 1960s, today\'s cultural landscape would look very different, with no Iron Man, Spider-Man, Hulk, Black Panther or X-Men, writes BRUCE MUNRO.', 'In The Stan Lee Story, Roy Thomas offers his readers Stan Lee\'s own account of the turning point of his comic book career in the early 1960s.\r\nWhy don’t you write one the way you want to write it? You’re going to quit anyway, so if he fires you, who cares?\r\nJoan Lee\r\nLee said: \"Well, I had been in the business for a million years and I was ready to quit because I didn’t like the stuff we were publishing.\r\n\r\n', '2018-11-18', 4, 9),
(25, 'Star Trek to Scots: How Chris Pine nailed Outlaw King\'s accent', 'Film fans and critics are quick to mock a bad accent. When preparing for a challenging role, actors turn to specialist coaches for help.', 'Barbara Berkery tells BRUCE MUNRO how she helps famous names to transform their voices on screen, including Chris Pine in new film Outlaw King.\r\nChris Pine told Graham Norton that it was the combination of great coaching and Scottish castmates that helped him perfect his Scottish accent.', '2018-11-18', 6, 9),
(26, 'How WWI remembrance monuments created beauty from chaos', 'The memorials to the missing and dead of World War I are among the most haunting British architecture of the 20th century. ', 'TONY LAW looks at the products of this humanitarian building mission, described by the writer Rudyard Kipling as the greatest work \'since any of the Pharaohs\'.The American architect John Russell Pope was advised by Paul Cret of the American Battle Monuments Committee in 1925: ‘‘Do something beautiful. This is the most important monument and for this reason it has been entrusted to you.’’', '2018-11-19', 3, 9),
(27, 'Nasa 2020 robot rover to target Jezero \'lake\' crater', 'The American space agency (Nasa) says it will send its 2020 Mars rover to a location known as Jezero Crater.', 'Nasa believes the rocks in this nearly 50km-wide bowl could conceivably hold a record of ancient life on the planet.\r\nSatellite images of Jezero point to river water having once cut through its rim and flowed via a delta system into a big lake.\r\nIt is the kind of environment that might just have supported microbes some 3.5-3.9 billion years ago.\r\nThis was a period when Mars was much warmer and wetter than it is today.', '2018-11-19', 6, 10),
(28, 'Climate change: Report raises new optimism over industry', 'A new report on the potential of heavy industry to combat climate change offers a rare slice of optimism.', 'Sectors like steel, chemicals, cement, aviation and aluminium face a huge challenge in cutting carbon emissions.\r\nBut a group including representatives from business concludes it is both practical and affordable to get their emissions down to virtually zero by the middle of the next century.\r\nThe report\'s been described as wishful thinking by some environmentalists.', '2018-11-19', 3, 10),
(29, 'UK industry to make new \'Hotbirds\'', 'British industry is going to build two new spacecraft for the big Paris-based telecoms operator Eutelsat.', 'Airbus will be the manufacturer, which will be supplying its new \"all electric\" Eurostar Neo model.\r\nDeveloped in a European Space Agency R&D programme, Neo promises a faster build with a 30% reduction in cost.\r\nEutelsat will use the two spacecraft to replace its flagship \"Hotbird\" TV distribution network positioned high above the equator at 13 degrees East.', '2018-11-19', 4, 10),
(30, 'Anti fat bias round shapes are sold to overweight customers', 'Anti-fat bias can surface in surprising ways – even changing the shape of objects that salespeople recommend, from watches to perfume bottles.', 'Overweight people face a barrage of prejudice in many areas of life – from being less likely to be offered a job to being unfairly judged as lazy or weak-willed. In shops, for example, sales assistants are less likely to meet their eyes or smile.\r\nAn undercover shopping experiment has now shown that this bias even extends to the shapes of products that customers are recommended: customers of a greater weight are encouraged to buy rounder items.', '2018-11-19', 3, 11),
(31, 'Does the birth control pill make you fat', 'Many women believe that the pill can cause weight gain. Research hasn’t found this – but it has found that it can change body shape (and fat storage) in other surprising ways.', 'It’s been blamed for polluting our rivers, destroying our marriages and – ironically – killing our sex drives. It’s been called a conspiracy by the patriarchy. It’s even be accused of making women fancy ugly men. But for many women, one of the most off-putting charges against the contraceptive pill is that it makes us fat.', '2018-11-20', 6, 11),
(32, 'This jordan greenhouse uses solar power to grow crops', 'An ambitious project plans to use seawater and solar power for agriculture. But is it technically feasible?', 'Inside the greenhouse, tiny leaves of wild rocket, iceberg lettuce and pak choi poke through the dirt, each as small as a fingernail. Planters hold calla lilies and dragonfruit, sea samphire and gerberas. Bright strawberries dot buttery green leaves. And there are row after row of vines, draped over wires, leaves as big as dinner plates: snack cucumbers and fragrant basil and nine varieties of tomatoes.', '2018-11-20', 5, 11);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`) VALUES
(1, 'ô tô', 'o-to'),
(2, 'Mark Zuckerberg', 'mark-zuckerberg'),
(3, 'Facebook', 'facebook'),
(4, 'Google Cloud', 'google-cloud'),
(5, 'Ms.Greene', 'ms-greene'),
(6, 'San Francisco', 'San-Francisco'),
(7, 'Amazon', 'Amazon'),
(8, 'HQ2', 'HQ2'),
(9, 'Karen Weise', 'Karen-Weise'),
(13, 'Nissan Chairman', 'Nissan-Chairman'),
(14, 'Carlos Ghosn', 'Carlos-Ghosn'),
(15, 'financial', 'financial'),
(16, '$12', '$12'),
(17, 'Margot Noel', 'Margot-Noel'),
(18, 'the teeth break', 'the-teeth-break'),
(19, 'donating blood', 'donating-blood'),
(20, 'Scotty Hearron', 'Scotty-Hearron'),
(21, 'broke college student', 'broke-college-student'),
(22, 'beautiful islands', 'beautiful-islands'),
(23, 'diseases', 'diseases'),
(24, 'African islands', 'African-islands'),
(25, 'Virgil van Dijk', 'Virgil-van-Dijk'),
(26, 'Netherlands', 'Netherlands'),
(27, 'Germany ', 'Germany '),
(28, 'Steve Smith', 'Steve-Smith'),
(29, 'David Warner', 'David-Warner'),
(30, 'Cameron Bancroft', 'Cameron-Bancroft'),
(31, 'The Los Angeles Rams', 'The-Los-Angeles-Rams'),
(32, 'Kansas City Chiefs 54-51 ', 'Kansas-City-Chiefs-54-51 '),
(33, 'eat fat', 'eat-fat'),
(34, 'stay healthy', 'stay-healthy'),
(35, 'vitamin', 'vitamin'),
(36, 'a big way', 'a-big-way'),
(37, 'superfoods', 'superfoods'),
(38, 'Quinoa', 'Quinoa'),
(39, 'Chicxulub Puerto', 'Chicxulub-Puerto'),
(40, 'American archaeologists pored over satellite images ', 'American-archaeologists-pored-over- satellite-images '),
(41, 'Mexico’s-Yucatan-Peninsula', 'Mexico’s-Yucatan-Peninsula'),
(42, 'Switzerland', 'Switzerland'),
(43, 'Vincent Gachet', 'Vincent-Gachet'),
(44, 'South African', 'South-African'),
(45, 'Edward Burtynsky', 'Edward-Burtynsky'),
(46, ' large format photos', ' large-format-photos'),
(47, 'standpoint of a helicopter', 'standpoint-of-a-helicopter'),
(48, 'Walter Gropius', 'Walter-Gropius'),
(49, ' Gesamtkunstwerk ', ' Gesamtkunstwerk '),
(50, 'German design', 'German-design'),
(51, 'Yayoi Kusama', 'Yayoi-Kusama'),
(52, 'Japanese artist', 'Japanese-artist'),
(53, 'A true Marvel', 'A-true-Marvel'),
(54, 'Spider-Man', 'Spider-Man'),
(55, 'BRUCE MUNRO', 'BRUCE-MUNRO'),
(56, 'Star Trek to Scots', 'Star-Trek-to-Scots'),
(57, 'Film fans and critics', 'Film-fans-and-critics'),
(58, 'WWI ', 'WWI '),
(59, 'TONY LAW', 'TONY-LAW'),
(60, 'John Russell Pope', 'John-Russell-Pope'),
(61, 'Nasa 2020', 'Nasa-2020'),
(62, 'robot', 'robot'),
(63, 'Jezero-Crater', 'Jezero-Crater'),
(64, ' heavy industry ', ' heavy-industry '),
(65, 'carbon emissions', 'carbon-emissions'),
(66, 'Hotbird', 'Hotbird'),
(67, 'European Space Agency', 'European-Space-Agency'),
(68, 'Anti-fat bias ', 'Anti-fat-bias '),
(69, 'Overweight people', 'Overweight-people'),
(70, 'change body shape ', 'change-body-shape '),
(71, 'surprising ', 'surprising '),
(72, 'ugly man', 'ugly-man'),
(73, 'greenhouse', 'greenhouse'),
(74, 'iceberg lettuce', 'iceberg lettuce');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tags_news`
--

CREATE TABLE `tags_news` (
  `id` int(11) NOT NULL,
  `tags_id` int(11) NOT NULL,
  `news_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tags_news`
--

INSERT INTO `tags_news` (`id`, `tags_id`, `news_id`) VALUES
(1, 16, 7),
(2, 36, 22),
(3, 16, 14);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_id` (`news_id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author_id` (`author_id`),
  ADD KEY `cate_id` (`cate_id`);

--
-- Chỉ mục cho bảng `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tags_news`
--
ALTER TABLE `tags_news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tags_id` (`tags_id`),
  ADD KEY `news_id` (`news_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT cho bảng `tags_news`
--
ALTER TABLE `tags_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`);

--
-- Các ràng buộc cho bảng `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_ibfk_1` FOREIGN KEY (`cate_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `news_ibfk_2` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`);

--
-- Các ràng buộc cho bảng `tags_news`
--
ALTER TABLE `tags_news`
  ADD CONSTRAINT `tags_news_ibfk_1` FOREIGN KEY (`tags_id`) REFERENCES `tags` (`id`),
  ADD CONSTRAINT `tags_news_ibfk_2` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
