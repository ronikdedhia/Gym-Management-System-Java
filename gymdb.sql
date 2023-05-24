-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2021 at 01:55 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gymdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `name` varchar(30) NOT NULL,
  `pword` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`name`, `pword`) VALUES
('aaa', 'aaa'),
('admin', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `memberdetails`
--

CREATE TABLE `memberdetails` (
  `id` int(10) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `contact_number` varchar(20) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `registered_on` date DEFAULT NULL,
  `registered_by` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `memberdetails`
--

INSERT INTO `memberdetails` (`id`, `name`, `contact_number`, `address`, `registered_on`, `registered_by`) VALUES
(13, 'jude', '09272777334', 'himamaylan city', '2021-07-02', 'admin'),
(14, 'james', '212121', 'asd', '2021-07-02', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `morememberdetails`
--

CREATE TABLE `morememberdetails` (
  `id` int(20) NOT NULL,
  `nic` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `emcontact` varchar(20) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `height` double NOT NULL,
  `weight` double NOT NULL,
  `bmi` int(11) NOT NULL,
  `remarks` varchar(500) DEFAULT NULL,
  `lastUpdated` date DEFAULT NULL,
  `membership_cat` varchar(30) DEFAULT NULL,
  `recipt_no` varchar(30) DEFAULT NULL,
  `payment_plan` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `morememberdetails`
--

INSERT INTO `morememberdetails` (`id`, `nic`, `email`, `emcontact`, `gender`, `height`, `weight`, `bmi`, `remarks`, `lastUpdated`, `membership_cat`, `recipt_no`, `payment_plan`) VALUES
(13, '12', 'jude@yahoo.com', '09123456789', 'Male', 53, 50, 0, 'gwapo ko', '2021-07-02', 'Sports facilities', '222', '6 months'),
(14, '22', 'asd', '123', 'Male', 32, 50, 0, 'as', '2021-07-02', 'Personal training', '333', '6 months');

-- --------------------------------------------------------

--
-- Table structure for table `pay`
--

CREATE TABLE `pay` (
  `id` int(10) NOT NULL,
  `count` int(10) NOT NULL,
  `reciptNo` varchar(30) DEFAULT NULL,
  `payment` double DEFAULT NULL,
  `date` date NOT NULL,
  `added_by` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pay`
--

INSERT INTO `pay` (`id`, `count`, `reciptNo`, `payment`, `date`, `added_by`) VALUES
(13, 8, '212', 1000, '2021-07-02', 'admin'),
(13, 9, '1122', 500, '2021-07-02', 'admin'),
(14, 10, '11', 500, '2021-07-02', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `pictures`
--

CREATE TABLE `pictures` (
  `id` int(11) NOT NULL,
  `picture` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pictures`
--

INSERT INTO `pictures` (`id`, `picture`) VALUES
(5, 0xffd8ffe000104a46494600010100000100010000ffdb008400090607080706090807080a0a090b0d160f0d0c0c0d1b14151016201d2222201d1f1f2428342c242631271f1f2d3d2d3135373a3a3a232b3f443f384334393a37010a0a0a0d0c0d1a0f0f1a37251f253737373737373737373737373737373737373737373737373737373737373737373737373737373737373737373737373737ffc00011080048004803012200021101031101ffc4001c0000020203010100000000000000000000000705060103040208ffc40035100002010303010604030803000000000001020300041105122131060713415161227181911432a11533426272b1c1f02352e1ffc400190100020301000000000000000000000000020501030400ffc4001d110003000301010101000000000000000000010203112112310441ffda000c03010002110311003f00beab4fc6739ce1b68040f97ad57fb777b7ba7696b35b5dfe19cf1bb7639fd73f2a9c86d658e657dca4190bbfcf180452b7be4d4a51aa5adb24988bc123e13ee377df201fe9a36422997dda0d4ee2e0cbfb56fcb0e03f8eca7e7c1c75a8b9e6691fc49a579246392ccd927dc9f335a5ced2429c835827c4c96f614249ef7aeee01c1eb5b607f0e7cab1033c11d6b4a9554605739fca7d0d795f6ae387cf765dbb37f0c963ad5f249709f12398c86c7f36063ea3d4533b208054e41e4115f1fdadc4f692acd6d234722f4653835f4df603584d534181448649208d51dbdf144990d16614565466b352095f59e3c06c9009e0e2941df624235bd3e48d1433db10c42fe6c379fcbfcd38162418c0e9d3da973df569719d1f4fbe4501ade7319e7f8594ff00951f7ae7f094286d6ce6bd955225273d4fa55a61ec9c971022c702647f116e4d79ecd418b7438e4d30b4952b1a91fad61cb95fad218e2c33e3d328c9d8968a3267639e7f28e9501ab692b62c485629edce29c9a9e648791e5e954bd56d4346e197af1f4a19cb4abac3ac10e3885f9709b402197d714f5ee32457d12f613f9d2605beaa3ff6916f1f8570f1e320374f4a7f7727a6f81d9d9af987c5753100ff002af1fdf35b57d1752d218aa0562b6014519595e14b7efabf12fa75946b2116c589751d0b67009fb8fb9a63a9c9aacf785a7c97ba3a98d37ed6da57fa88c1fa103ef519393b2cc493ad0a5b5b99b4f8960b70c5d6327000c614649e7afd2a7342ed0deb9845cc404328ff008e455237738f97515d7a7d95adf2aa4f0872bea3a1aebbbb2b7b3f082c2a9971ce2975dcbdf3a339c752d7786bd775abbb6716f6f12c921e30d9fec2aaebac5ddc5cbdbdceef103942a817018678c727cbad5b9d61b9d44a4c81cb71835d93e9f6f6b1788902ab0e8714335297505514eb8c56eb36662bb49795f1480401ce7da9fbdd7ea9692e9d368f13137360d99411ff0063faf39a57cb6b0dddfa4b30222b6064e9c647233f6aba772118b86d7753da434d3aa0cfa72df7e6b5e1a74cc59e14a63505159a2b418cae018a8ded36a16da768b712ddac8d1b0118112ee62cc7031f5e7e9520a49a89ed7c514bd9cbbf16e12db6852933a6e08db86de3cf278fad1bf872fa2d74cb89e29e4755cee66238c6464f97fbd2a42e2e12ee45dd328643e78e2b5e9b6d7771d9bbf9a4401f46b864570bfbc5cfc60fa9cfc5f53eb5ce96e976e2e62da4b0f4a5b963cd6c6d8327a9d3fe1df70c82512dc4f16ee0f18038af335ccd2dbe637dd13700b1ad5269dbc0de9b57cf9273f535cf7d72462da0e59479797b9aab48b9bd1073a5c5c5fcb6f6ee4f8882265cf527a71e7d69efddee843b3fd98b6b470bf887ccb39073963efedd2921d9f9acadb5d6b8bf86e24d93ecb73111fbcd8c41f7e831ee453e3b156d7769d98b08efe4924b9f0f73990e58679c1f9531c69685195b6dec9d145028a32bd15c55e6b875ed222d66c56d2e1d96213c72b8519de11836d3ec714514441173ea704fdde6a17b2c296c2e24b8445c63792c554fccf14b9b469eda55681c00dc904719a28ac5fa5f50c7f22e364a5ddcdf5c4383e044beaa4b13fa0ae782d4456cc792cdc963d49a28ac7e99b7ca3776674eb5b8b2d71e3446d6a143369e19b077ec2a481d0914e3d16f64fd9164d7e8eb31853c56c701b1cd14530c76fc8af3c2564924d1b86656185ea7d28a28ab1d14a8d9ffd9),
(8, 0xffd8ffe000104a46494600010100000100010000ffdb008400090607080706090807080a0a090b0d160f0d0c0c0d1b14151016201d2222201d1f1f2428342c242631271f1f2d3d2d3135373a3a3a232b3f443f384334393a37010a0a0a0d0c0d1a0f0f1a37251f253737373737373737373737373737373737373737373737373737373737373737373737373737373737373737373737373737ffc00011080048004803012200021101031101ffc4001c0000010403010000000000000000000000000405060701030802ffc4003410000201030302030703030501000000000102030004110512213141061351142232617191f00742b181a1c123245282d116ffc400190100030101010000000000000000000000020304010005ffc40020110002020202020300000000000000000000010211032112323141041322ffda000c03010002110311003f00b6a21c578beb94b3b7f364e1772a67b02c428cfcb2456c845447f523535b3d22e219964f2e55d83dd251d4f0cac4743dc74e8003d6a21fec8bf8dbc6924ba835b69f231b4c2895925d8428ceff00780c8ce71fd00ef8aace7d52599e66dc228ff6bc987772327bfee39eb4e88e970ab733477b3008708d11d991ef1e5727e2fa63e54c0e93dd2b2450398f276851d3f3fc5363481926fc09e5bf9e7506699ca863805b9edd3d2b7e93adde69170b3d8ccc8eacafd7a9073ffa3e848ef5a5f48b98d433ae33d05269e092023cc5233eb5b71902e338eda3a23f4ffc65178b6c2412288efedc299e3030307382bea38fcef24905509fa477e2cfc6b68376d1748f6e7e79c103eea2afd9054f9234c645da12b8a2bd38a294307884714c9e3bb433f86af64489e578e3de510e3701cf3f21d7fa53dc1d2bc6a6b23e9b74b147e6bb44c0267e2e3a550bc0ab183c3ba5dbff00f396e8d123f98a5896507249a8e6ada4416f3958618d4f4015452ab3d5356d33c376d6b0590f3d5e48f6dc121f8662ab81dc2e39240a61d1757d47c4b15ecbb0433c485d53cbda0fcb92695915ad15627b23dad5b793294e37af503b545b5881a5b7ca2e5979e2945dc973a8ddccd333338076abb10b9cf4e08f9d7ab6b468d092bb4f700920fdeb22b86ec293e771a193c37762c75fd32e4b88d62bb89d9cfed01c64fdaba99c82323a1e95cacb64659a51d396c0c75c7a5750d94a27b28650bb4320c0ce703eb4ecad3f04708b4b60f4565eb1538d43ac06940349203d28bdbf82c4279c4ee7385451926aa8ec4b092de2549032821fa03f403f803ed4c7670697a68bd6063572a4313c16e09c7db26b7cdaf4724e2028a8a481bd9bed483580fecf77670d93b2ba06328915064f53b8f3918ec0d0e44e2d5a1f85f2548a7a5100d52708414ded8c1ce39ac5dbf5c74acea7094bd768a255f52b36ecff006eb49e56c2fbc7802a6657756867bfbd1667fd34066272091c01deadbf0378e3487d1edad752d5185e8cef7b94d8bc93801be1c018f4aa6f55dadb5dbae78fa7e62934523270a78f4eb5528a713cfc936a67526f49143c6caca7a1539068ae72d275ed4b4c7dd61773db8eeaafee9ffa9045140f1333ec474e432048cb31c00326abdf1feb7716b147344cbbddf6648384e7bf1c71fc54c6f662967b41f79ce0738aae3c432b5d58ea36e1d96686412afcd4f04e3d07f9aa70afcd8bc8f742bd2247d66d7d86d489e668d1709851b89cb64e3000007e71532b41a958da8835f82393042c72dbbb386181f1120739cf3f4a83fe8dadd5ecb7866f691691ae0cb1f2a1fddc27d71cf4faf5e66be21d55ed926d1d5ae5dd938b97033cf6e00fbd0e692ad8cc117768abfc6da922ea1228b4f671b8e17cbdb51192e1a63c9f77d2a5dacacb710b45a97fb968c615c9c37c893dea1f7a91da1054b15233cf6a9234cae6daf7a106a472f18f404d24535996469a52c7a9ede95852003deac8aa54413972958aa21bd801c0cf24d14a2dc2416e2695463f68ff0091a2b413a035bb820431038dc0927fb7f2455757b3efd73cb9dc06923685dfe10ebfb48f9ee500fe0a28a3c7d11d3ecc9a7e957b1e8de119aecdd4fbe49a496e2ddd78046546c1c1e42af393d0f4a699afa5b99de796e19de473c31f87e545150e793e745df1e2b858d9acc31c96eef9391d00ef55f7882370137646ded8ea2b345660ee6e7e8c645f84b1adb6cbba4518ce4d1455acf3c572b7b45c2c2bcc5176f5acd14571c7ffd9),
(9, 0xffd8ffe000104a46494600010100000100010000ffdb008400090607080706090807080a0a090b0d160f0d0c0c0d1b14151016201d2222201d1f1f2428342c242631271f1f2d3d2d3135373a3a3a232b3f443f384334393a37010a0a0a0d0c0d1a0f0f1a37251f253737373737373737373737373737373737373737373737373737373737373737373737373737373737373737373737373737ffc00011080048004803012200021101031101ffc4001c0000010403010000000000000000000000000405060701020308ffc40037100002010302040305060505000000000001020300041105210612314113517107224261a1148191b1c1e108152332331662b2d1f0ffc400190100020301000000000000000000000000010400020305ffc4001d110003000301000300000000000000000000010203041112223141ffda000c03010002110311003f00aeae788756d3a745bb8e0752b8c28c736d8ebe7526d0352b6d463e785265923fef8dbe1c83f9e7e94c37ba7c97b1c12dc055e46c9007d3d3a6f4f1c2b1f2dd4f214e5692143eb827feeb39bef11ade3e759240289668edd39e670a3e7deb1e2c6a18b363941273f2a47a6d9cba95cfda2e06c7fb14fc22a65c8a17418b13c95c3abdec4def1865298c671fa56c3c2b88c18d5d9549dc79d3ccba247f67200eddea37711c9a74fceacc106e71dc5618f65d3e319cba8a5750e76c8a8ec111c677248eb8a52050c40df3b79d08cadba9c8a7044d80a28474906636561b1c839ebb8a2a10aff51b830884b48522f107315ee3b67e54e9c34035ddc32b02ab1803073d4fed5169ecee2fec649e0b892548a728e18811e41e83b9d88a97f0bdc24b6de1b2aadc44a0385f897b1fbbf5ac26526ba31791d4b156a4d9b49884070c324374df1fa7d2a47c39e0ff004a2596312851cc9cc339a69963416f220033232753b001f27f334f6d0ac366b2eea8464280a41fc46dea08ac361f6b8c6b525f9f4891dca95b72709803a922a0bc466130128c8e73cbeeb03bd3d33cb706de19d81e68b7ca8619ee483b1a43ad5a08922e45cbf888170a077db60297949319bf5e59c87bb0018dd5402338c5725e5f10110b1380720e7d3f2a51334572d2ac6dee2be3d307f6a4e2d1b9c913381924004f7fdeba92fb29b38d492a691a2411af2e627ce73d3bf5efe828a590c6d1860ce5b27233dbe54558a9596bf66dc3bae9b2b7322d94f8758f24804ec71f3c8fc2b30ea06d14df59c8ac6219d8ecdf23eb5d75cd57f9c681a4ea7cca750b390c336dd5970cadf781f8e698f882316f7864b61c96d7d125c041d0736e47dcc0d51c75f4d26f8b84deef5e85adb4fba5205b4cea5989dd3b1cfa1ebe9530b890985139d996418ca91eefa0ff00d9aa822b78e7b2d3ec3c54f1679177072b1f3b6c4fa646455bcfa3cfa3e9f6b372bc960b122349824c0c060f37fb48e87b743db38e7c6dfc90c6ae453f17fa289647592de5901e654e5509115cfcc934d1c69ac3e9763f69328332905360493db3f3ef4bee754b0283ecd2a4ce07ba887249ad6eb8346b5a6c67564c4d7595b72a4ff4090795879efd73d47dd8c31c7bb1bd8c8a21f18d9a0dc35c592486208a573d73934e83ad565a5717ea1a720b59ede0709b6194ab03e44e7f4a7eb5e3ab52545e59cd167ab46c1c0fc8d740e4931cd6291586ab63a847e25a5cc722e40eb839db6c1dfbd150052f6b298d5d0f3153f08e86955cdccd750dac52840b6d1f8719037c673bd691c216b322e71b74a0132a0c6bccac5587423a835e9aff005868ba370be9dabea13158afe1578a28d399e425724051e59dc9c01e75e613b74e82ae2e13d163e37f65d1da2b46baae933c91db4d26472e487e4247c255b1f2c03da885096fbda0c3aa6af6d1687c2ecefcecc904b29632e067fc68363b13b12302a23c43c4fc55ab5fbff36bfbb81e3620dac598122f9726df5c9a76f67fa06a90fb44b2173657319b29d8dd650e211e1b1193d304f4f3ced9ab0fda2fb3e9388f5bd3f51d3dd2262560bf04e098b3b38f3603231df23ca8294be82eaabed9e7db91fd4ef83e75bc5924fbdcc31e5525f693c349c2fc45fcbe09a49e0685258e4900e620961838dbe1a8d463144a8a74f95e0d4ada6b7ff32cabcb83d77e9f7f4a2935acfe05e413152fc9323728ead86071f4a2810df3b0a31b5145421cd8636ab67f87fd439350d534b77c09a249d14f9a121be8cbf85145121766d827bd6ac366c75ac5150b14aff101028d5b489d46f25bc887d15811ff0033554b6ca68a2a32a39f0e6812eaba95a41cfe1977e71f203decfd0514514b6cdd4525237af8e6e7ad1fffd9),
(10, 0xffd8ffe000104a46494600010100000100010000ffdb008400090607080706090807080a0a090b0d160f0d0c0c0d1b14151016201d2222201d1f1f2428342c242631271f1f2d3d2d3135373a3a3a232b3f443f384334393a37010a0a0a0d0c0d1a0f0f1a37251f253737373737373737373737373737373737373737373737373737373737373737373737373737373737373737373737373737ffc00011080048004803012200021101031101ffc4001c0000010403010000000000000000000000000506070802030401ffc400361000020103030301050604070000000000010203000411050612213141071314225161718191a1b1d1233282f015162425446272ffc40014010100000000000000000000000000000000ffc40014110100000000000000000000000000000000ffda000c03010002110311003f009aabdc80327b5619a86bd63f51e6b47bddafa75bb46e542dc5cb30c90c01c2e0f4efdcf5fa503b3787aaba26dab94b58d1f5098b32c82060163231d09fbfc67b534e6f5ee3592710e865d7a7b0cdc633f3e5d2a0d777918b3b163f326bc5462700505a0da3ea8e99afc44dddbbe9ac1c27f19f2a720f5e581fd9a7c5a5ddbde45ed2d668e64edc9181155234b17634f920498afb6fe45e5d09f183e3c7e34e5f4fb735fe8b7f1ccf21c6783c7c98f203b86ee3f6fca82ccd15a2c6ee2beb486eaddb9452a0653f6d6fa028a28a04cd4e7920d3ee668119e58e2664541924807000f9d539ba927b8bb95ee39b4eee4bf3ee5b3d73f5ab53ea1ea33699b3b54bab4ba5b6b848731b31ea4e4640fa919aab7a58326a56e0e4b34833f5a05ad23676a1a9022331c67fef9a75d87a57a8492afb4b94e4483f08c018f34ebda912008c700b605481648a1d4e3ae7bd047ba5fa5490480dcde1654979aa01fca324fedf80a43f51f617f97f403a86913cdc239b32a3367e16f3f8d4e23872fad70ee3b04d4b43bcb474e4248c8c7ccd031fd10bdd4628aef4abfe460f6627b625b217ae19479f20d4af50b6c4d4ce99bc62b1914476c43292fd020299073f3e98f9107c1a99e370e8197383db34195145140cbf5136fc1b8b6d5d41303ca143344ca7043283f8f9aae5a1d8496db916d2e0709533907c1c55b36008208c823045421bb36c49a2ee87d5668d9e09a5e2260a70a186173e3a1007f51f95074685aabdb5c48b358ce163380ecc880fd9c9866a42d275a86ec2c6f6f3c12603289147c7e3a107af714dad1ac6dae1c5c4e88e48038b75ec73fad6edc9aa243abe991c67e259c3b11f5e8681dba8ea7fe151991ad9d947762718aedd36ee5bc4591923e0c3a717c91f6822b6c90c5751a34a8af81e573deb70e2880280aaa3c78140c8da3b73de2ee4d4a6706582e9d1195d9580562bd476391d2a441485a05c5bcec7dcdb3d7da4a547c196cf407cf5f952ed014514507031a47dd8e06dcd47921901818710339a5476ad32157051c02ac306822cd06fd621c6593820059dcf803bfea2b09254d4f745b4f0db3488ac0746c7051939fecd372e6e4e8fa95c59dd2f4824921c9eccb92307f2a76ed9904dfea63e6c3207c3215ebf6504976f750bc6beccfc200ea4d757b40caa57b77a4eb575f77fe221181d8b66b75a9251700f01f9d065b4ec26d3742b4b7bb005d08d7db71ec1b18c0fa52c544dea46fed576b6b7a58b3bbb768644669ed5e1072010325b39ebd718c76f3da97366faa9a06e43eef34a34dbde5810dcb8e327d55fb1fb3bd03fa8ac41c8145022c9281939e83bd45bea2fa9f0d847269bb76649af181592e90e561ffcfcdbf2145140c3d03fdeac5a3bb7696572c1a4762589ce724f7cf5ef4efd891de5b5e8b1628595b03dae41e9f5f3451412a416b2aa0f799158631c501fd6bb67b9b6d3ec25babc9920b785393c8e70140a28a0aafbdb5c1b8772df6a49cc452c8440afdd631d17f7fbe9049a28a077ed4f527726d8e115adefbc5a2ffc5ba1cd3ee3dd7ee38a28a283ffd9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `memberdetails`
--
ALTER TABLE `memberdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `added_by` (`registered_by`),
  ADD KEY `last_payments_on` (`registered_on`);

--
-- Indexes for table `morememberdetails`
--
ALTER TABLE `morememberdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `nic` (`nic`);

--
-- Indexes for table `pay`
--
ALTER TABLE `pay`
  ADD PRIMARY KEY (`count`),
  ADD KEY `count` (`count`);

--
-- Indexes for table `pictures`
--
ALTER TABLE `pictures`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `memberdetails`
--
ALTER TABLE `memberdetails`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pay`
--
ALTER TABLE `pay`
  MODIFY `count` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
