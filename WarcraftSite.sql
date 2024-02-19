-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 30 2022 г., 18:23
-- Версия сервера: 8.0.30
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `WarcraftSite`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Article`
--

CREATE TABLE `Article` (
  `id` int NOT NULL,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `info1` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `info2` varchar(3000) COLLATE utf8mb4_general_ci NOT NULL,
  `info3` varchar(3000) COLLATE utf8mb4_general_ci NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `author` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `Article`
--

INSERT INTO `Article` (`id`, `title`, `info1`, `info2`, `info3`, `date`, `author`) VALUES
(1, 'Как играть на бистмастере?', 'Как играть на бистмастере?Как играть на бистмастере?', 'Как играть на бистмастере?Как играть на бистмастере?Как играть на бистмастере?', 'Как играть на бистмастере?Как играть на бистмастере?Как играть на бистмастере?Как играть на бистмастере?Как играть на бистмастере?', '2022-12-28 16:57:16', 'chirok2021'),
(3, 'Расходы', 'Сегодня мы поговорим о такой немаловажной механике игры как расходы.', 'Сегодня мы поговорим о такой немаловажной механике игры как расходы. Сегодня мы поговорим о такой немаловажной механике игры как расходы.', 'Сегодня мы поговорим о такой немаловажной механике игры как &quot;расходы&quot;.', '2022-12-28 18:35:24', 'chirok2021'),
(4, 'Расходы', 'В этой статье я познакомлю вас с очень интересной механикой РАСХОДЫ', 'The armies that wage war on the battlefield exact a heavy toll on the economies that support them. Even the lowliest of fighters has living expenses that must be met. Their armor must be oiled, their bows strung, and their weapons kept in clean condition. In short, these armies require Upkeep. In Warcraft III, Upkeep takes the form of a tax on your Gold mining that is automatically deducted from all Gold you gather. As you produce more units, the tax on your Gold income increases.\r\n\r\nThere are three levels of Upkeep:\r\n\r\nNo Upkeep (0-50 Food: 100% income)\r\nNo Upkeep occurs when you have an army consuming 50 food or less. At this level, there is no tax on your Gold mining, so your workers bring in 100 percent of their Gold.\r\nLow Upkeep (51-80 Food: 70% income)\r\nLow Upkeep arises when your army consumes between 51 and 80 food. The tax on your economy is modest, draining a small percentage of Gold from everything you mine.\r\n\r\nHigh Upkeep (81-100 Food: 40% income)\r\nHigh Upkeep is reached when your army grows beyond 80 food. Your Upkeep needs are so great that the tax levied on your Gold mining is enormous. A large percentage of Gold is taken from your workers before they ever deliver it into your coffers.', 'Upkeep has been included to improve tactical management for players while fostering a more aggressive style of gameplay. Players are more aggressive and turtle far less in their bases, and it gives players real strategic decisions to make about how many units they wish to control with pros and cons to each. Upkeep is also instituted to focus the game on smaller numbers of units. The more units that are allowed in the game, the less powerful Heroes will be relative to your army. This is simple math. High Upkeep is MEANT to be very punishing. Players should not be in it for long, but we didn\'t want to set the harsh unit cap at 80.\r\nDuring play, it is wise to stay in Low Upkeep, and just jump to the High Upkeep tier before a major attack. Try not to enter High Upkeep unless you have 2-3+ Expansions.\r\n\r\nIf you find you are not collecting enough Gold, try to drop to a lower level of Upkeep or gain control of additional Gold Mines to counter the reduced income.', '2022-12-28 18:45:10', 'chirok2021'),
(5, 'Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3', 'В ЭТОЙ СТАТЬЕ Я РАССКАЖУ НАСКОЛЬКО СИЛЬНО МНЕ НРАВИТСЯ ЭТА ИГРА', 'Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3', 'Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3Я ОЧЕНЬ ЛЮБЛЮ ВАРКРАФТ 3', '2022-12-29 01:45:38', 'chirok2022'),
(6, 'Анти... Демонхантер. (или как там?)', 'Один из лучших героев варкрафта.', 'Демонхантер мой любимый герой в игре. Он имеет отличный потенциал к концу игры. Единственный его минус - это 2 способность, которая почти бесполезна, от чего этот факт не делает его топ-1 героем в игре. Но почему же он мне нравится, спросите вы? А я отвечу, все дело в его базовых характеристиках, а именно большой урон от атаки уже на 1 уровне героя, маленькая задержка перед ударом, замечательный прирост ловкости, относительно высокая скорость передвижения. Но кроме этого у демонхантера есть и крутые скилы, как же без них. По моему мнению одна из самых сильных способностей - это промахи по герою. Их попросту нечем переигрывать (контрить), нет такого предмета, юнита или героя, который бы не промахивался по демонхантеру. Вторая замечательная способность - это выжигание маны. Данная способность является универсальной и всегда полезной. Да, эта способность не наносит ни большого урона, ни отключает героя или юнтиов,но она делает бесполезным героя любой расы, а также затрачивает всего 50 ед. маны. Ну и вишенка на торте - ультимейт, что о нем говорить, одна из самых сильных ультов в игре. Ко всему этому я хочу добавить сферу яда, так как она есть у эльфов. Сфера не имба, как у орков, например, но с ней на демоне играть приятнее. Итог: антимаг - герой, которого можно брать в любой ситуации, а другими словами: он универсальный боец, имеющий самую быструю атаку в игре (без баффов) и отличный урон &quot;с руки&quot;.', 'Я не шарю, просто иногда играю по фану с знаменитым игроком Windiwalker. Сhirok вонючка, не играет с нами никогда. &quot;ГДЕ ДЕМОНЫ? Я НЕ ГЛУХОЙ. Я НЕ ВИДЕЛ. Х^2+const, ну что там?&quot; - мои любимые фразы этого героя.(кому это интересно?!). Всем баффы куркумина и ежовика за мой счёт!', '2022-12-29 16:45:46', 'Саша'),
(7, 'Тестовая запись на демонхантара и бистмастера', 'просто тестирую))', 'ПРОВОЖУ ТЕСТЫ ТАК СКАЗАТЬ) ЗАОДНО ДОБАВИЛ В ТЕГ БИСТМАСТЕРА', 'САМОЕ ГЛАВНОЕ ЧТО ЭТО ТЕСТ, НЕ НУЖНО УДЕЛЯТЬ ЭТОМУ БОЛЬШОЕ ВНИМАНИЕ', '2022-12-29 18:42:31', 'chirok202'),
(8, 'Публикация статьи для примера курсача)', 'Публикация статьи для примера курсача)', 'Публикация статьи для примера курсача)', 'Публикация статьи для примера курсача)', '2022-12-30 05:58:18', 'NICKNAME'),
(9, 'Еще одна публикация для курсача', 'Еще одна публикация для курсача', 'Еще одна публикация для курсача', 'Еще одна публикация для курсача', '2022-12-30 06:00:20', 'NICKNAME');

-- --------------------------------------------------------

--
-- Структура таблицы `ArticleRating`
--

CREATE TABLE `ArticleRating` (
  `user` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `articleId` int NOT NULL,
  `term` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `ArticleRating`
--

INSERT INTO `ArticleRating` (`user`, `articleId`, `term`) VALUES
('chirok202', 3, 0),
('chirok202', 5, -1),
('chirok202', 6, -1),
('chirok202', 7, 0),
('chirok2021', 5, 1),
('chirok2021', 6, 1),
('chirok2022', 1, 1),
('chirok2022', 3, -1),
('chirok2022', 4, 1),
('chirok2022', 5, -1),
('chirok2022', 6, 1),
('chirok20222', 5, 1),
('chirok202222', 5, -1),
('NICKNAME', 8, 1),
('NICKNAME', 9, 0),
('Саша', 6, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `Comment`
--

CREATE TABLE `Comment` (
  `id` int NOT NULL,
  `content` varchar(3000) COLLATE utf8mb4_general_ci NOT NULL,
  `author` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `articleId` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `Comment`
--

INSERT INTO `Comment` (`id`, `content`, `author`, `date`, `articleId`) VALUES
(1, 'sadfgh', 'chirok2021', '2022-12-28 21:29:24', 4),
(2, 'sadfg', 'chirok2021', '2022-12-28 21:30:29', 4),
(3, 'asdfghj', 'chirok2021', '2022-12-28 21:30:33', 4),
(4, 'СТАТЬЯ КРУУУУУТЬ!!!!! СТАВЛЮ +++++++++', 'chirok2021', '2022-12-28 21:35:47', 4),
(5, 'СТАТЬЯ КРУУУУУТЬ!!!!! СТАВЛЮ +++++++++', 'chirok2021', '2022-12-28 21:36:37', 4),
(6, 'СТАТЬЯ ОЧЕНЬ ПЛОХАЯ Я ВИДЕЛ ЕЕ НА ДРУГОМ САЙТЕ СТАВЛЮ МИНУС!!!!!', 'chirok2021', '2022-12-28 21:37:17', 4),
(7, ' ВИДЕЛ ЕЕ НА ДРУГОМ САЙТЕ СТАВЛЮ МИНУС!!!!!', 'chirok2021', '2022-12-28 21:37:41', 4),
(9, 'СПААСИБО МНЕ ТОЖЕ НРАВИТСЯ ЭТА ИГРА ПЛЮСУЮ', 'chirok2022', '2022-12-29 01:46:04', 5),
(10, 'Григорий, вам не зачёт! Всем остальным соболезную.', 'Саша', '2022-12-29 16:46:36', 4),
(13, 'Статья на лича не прошла на антиплагиат, переписывайте! ', 'Саша', '2022-12-29 16:49:04', 4),
(14, 'Хорошая статья, Александр, продолжайте в том же духе!', 'chirok2021', '2022-12-29 16:50:07', 6),
(15, 'Хорошая статья!', 'chirok202', '2022-12-30 05:39:21', 7),
(16, 'Комментарий для примера курсача\r\n', 'NICKNAME', '2022-12-30 05:59:21', 8);

-- --------------------------------------------------------

--
-- Структура таблицы `CommentRating`
--

CREATE TABLE `CommentRating` (
  `user` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `commentId` int NOT NULL,
  `term` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `CommentRating`
--

INSERT INTO `CommentRating` (`user`, `commentId`, `term`) VALUES
('chirok202', 1, 1),
('chirok202', 10, 0),
('chirok202', 15, 1),
('chirok2021', 9, 1),
('chirok2022', 1, 1),
('chirok2022', 9, 1),
('chirok20222', 2, 1),
('chirok20222', 10, -1),
('chirok2022222', 1, -1),
('chirok2022222', 2, 1),
('chirok2022222', 10, -1);

-- --------------------------------------------------------

--
-- Структура таблицы `Hero`
--

CREATE TABLE `Hero` (
  `id` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `race` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `info1` varchar(5000) COLLATE utf8mb4_general_ci NOT NULL,
  `info2` varchar(5000) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `Hero`
--

INSERT INTO `Hero` (`id`, `race`, `name`, `info1`, `info2`) VALUES
('alchemist', 'neutral', 'Goblin Alchemist', 'In this unconventional pairing, a fanatical Goblin master rides on the back of his Ogre slave. Despite undergoing a series of chemical \\\"treatments\\\" to enforce compliance, the Ogre sometimes shows signs of independence and even outright defiance. However, these outbursts are swiftly quelled by the Goblin master, who can be like his concoctions -- harsh and volatile. Though personal differences may at times distract this duo, when it comes to biological warfare and raw, brute strength, the Goblin Alchemist and his Ogre slave are truly at the top of their game!', 'New Hero added August, 2004. Try him out! Attacks land and air units thanks to its special second attack type.'),
('archmage', 'human', 'Archmage', 'Hailing from the magical kingdom of Dalaran, the Archmagi represent the pinnacle of magical power. Weaving their intricate enchantments, these crotchety old wizards are called upon to defend humanity with all the magical powers at their disposal. Mounted atop their trusty steeds, the Archmagi brandish ancient staves that serve to channel their fierce energies in battle. Though gruff and slightly aloof, these experienced wizards are a heartening sight upon any battlefield where the fate of humanity lies in peril.', 'The Archmage is one of the most popular Human Heroes. Most Human players choose the Archmage as their first Hero. Human players love the Archmage\'s Water Elementals because they can really help assist Footmen in the early portion of the game where the Humans can be kind of weak. Water Elementals are great for soloing Creeps at the start of the game. Water Elementals are great for rushing the enemy and can be used to attack air units. With the Brilliance Aura, Archmages can keep several Water Elementals active at once and can regenerate the Mana of Heroes, Sorceresses, and Priests. The Archmage\'s Blizzard spell is also very powerful, especially in large team games. The Archmage\'s Ultimate Mass Teleport ability can allow the Humans to teleport around the map wherever they want and can allow them to instantly defend expansions without the use of Town Portal Scrolls. The Archmage is very easy to kill. Like the Undead Lich, the Archmage can be killed in 1-2 seconds when surrounded, sometimes before he can even think about Teleporting away. Whenever possible give the Archmage items that increase his Health, which will allow him to last long enough to get away. Always keep the Archmage away from the enemy and run whenever melee units attack or attempt to surround him. Players with poor control will find they lose the Archmage a lot when facing good players. Water Elementals are great but they can be dispelled. Some races can easily dispel Water Elementals such as Night Elf Dryads using Abolish Magic. Water Elementals also give the enemy Heroes good experience. When you suicide Water Elementals into an army or use them to scout they just hand over big chunks of experience to the enemy Heroes. Water Elementals can be very good warriors however if the enemy is not dispelling them. Blizzard is useful against large packs of enemies, especially in team games. Blizzard is very useful against low hit point units such as ranged units including spells casters. A Blizzard can easily kill a large group of Archers, Footmen, or Ghouls. With the Brilliance Aura Archmages can almost always cast Blizzard. Blizzard also scares the enemy into running. It wouldn\'t be smart for them to stand in the Blizzard but when they run you can often take free shots on the enemy as they run away. Blizzard can also force the enemy to separate as they are trying to run away which will allow you to swarm pockets of the enemy army with superior numbers. On some maps and in some player\'s towns you can set up a situation where the enemy cannot retreat. In that case you can Blizzard them and they just have to take it since they can\'t run. In those situations Blizzard is much more useful than Water Elementals. Blizzard can be a game winner. Typically players use Water Elementals in 1 vs. 1 and 2 vs. 2 and use Blizzard in 3 vs. 3 and 4 vs. 4. Some players use Blizzard AND Water Elemental if there is another player to give the Brilliance Aura or give Mana to the Archmage.'),
('beastmaster', 'neutral', 'Beastmaster', 'A warrior Hero, able to call forth the creatures of the forest to serve him. These lone wandering forest dwellers come from all backgrounds and cultures, seeking the essence of combat through the mimicry of wild beasts. Attacks land units.', 'The Beastmaster is the master of Summonable units. The Beastmaster can have multiple summonables of each type at once. The Beastmaster is cool because he can have a Bear, Quilbeast, and Hawk at the same time (making him the Beastmaster!). The Beastmaster\'s ultimate ability summons a stampede of exploding lizards! All of his summonables require a lot of mana to cast, so it’s important to choose the creature that suits your race and army well. Early on, the Bear seems like the best unit. He has a lot of hit points and good damage. However, if you look in the long run, all three of them are powerful in their own way. The Bear gains a lot of hit points at higher levels and deals pretty good damage, plus he can move around well with Blink. Take Bear if you want an early edge in units, for example if you are playing Night Elf and need an extra tank unit on your front line. The Quilbeast is a damage maven; it deals the best damage at level three because of his growth and because of Frenzy. Take Quilbeast if you find yourself up against air units or against other units weak to piercing. The Hawk may seem weak at first (sort of a poor version of Priestess of the Moon’s Scout), but eventually you can use its fast speed and good damage to hassle or finish off enemy units. Select Hawk if you are good enough to be able to manage him and micromanage him while managing other things. His speed is 350, which is faster than all Heroes except Heroes with boots or with speed auras. Use this speed to finish off nearly dead units. At 35 damage per second, the Spirit Hawk has just enough punch to finish off a fleeing hero or force the hero to waste a town portal scroll or potion. His ultimate, Stampede, deals a large and mostly mindless amount of damage. Its area is like a very wide version of Tauren Chieftain’s Shockwave. The Beastmaster is most useful in smaller games such as 1 vs. 1 and 2 vs. 2 where his Summonables can contribute more. To play the Beastmaster effectively you need to invest more in getting Mana back. This can take the form of Mana Potions and/or Clarity potions at player-built shops. There are other methods for regaining Mana in the game that you can also use.'),
('blademaster', 'orc', 'Blademaster', 'Though their numbers are few, the seasoned Blademasters represent an elite fighting force within the Horde. These skilled swordsmen were once part of the ill-fated Burning Blade Clan which consumed itself in the throes of Demonic corruption. With their Clan scattered and broken, the proud Blademasters swore a grim oath to free themselves and their brethren from Demonic control once and for all. Under Thrall\'s command, the Blademasters have once again joined the Horde and serve as the young Warchief\'s personal honor guard.', 'The Blademaster is a favorite Hero of many Orc commanders. The Blademaster is one of the most powerful melee Heroes when combined with Mirror Image and Critical Strike. Blademasters can quickly destroy enemy units and buildings when they are powered up with items and levels. The Blademaster\'s greatest advantage is Mirror Image, which confuses the enemy and focuses their attention on fake copies of the Blademaster. Critical Strike allows the Blademaster to do very high damage attacks. Wind Walk can allow the Blademaster to go invisible and run away when he\'s about to die or sneak into enemy towns. The Blademaster\'s Bladestorm ultimate ability can do serious damage. There are many point spending strategies with the Blademaster. Typically players first place points in Mirror Image and then place points in Critical Strike. But other players who wish to Hero rush or do hit and run attacks in the enemy towns or against Creeps sometimes place their first point in Wind Walk then follow in Critical Strike. Buy up items at the Goblin Merchant and Marketplace to further enhance the Blademaster\'s power.'),
('bloodmage', 'human', 'Blood Mage', 'Many of the stoic high elves, reeling from the loss of their ancient homeland, Quel\'Thalas, have given in to their hatred and despair and embraced the dark side of their magical natures. Calling themselves \'Blood Elves\' - these cold hearted refugees seek to expand their remaining magical powers at any cost - even if it means courting the infernal powers of the Burning Legion! Though still loyal to the Alliance, the Blood Elves\' passions will lead them not only to the highest pinnacles of power, but to the darkest depths of madness.', 'A mystical Hero, adept at controlling magic and ranged assaults. Though still members of the Alliance, the Blood Elves have begun to turn to the darkest parts of magic, abandoning the water and frost spells of the Kirin Tor for the fire and heat of what some people fear to be Demonic magic. Attacks land and air units.'),
('chieftain', 'orc', 'Tauren Chieftain', 'These elder Tauren warriors lead their Tribes in daily life as well as in battle. Ceremoniously decked with the ancient totems of their Tribes, Chiefs uphold the honor and simplicity of Tauren culture. When roused by battle, the gigantic Chiefs employ enormous warblades which are capable of tearing through solid trees with one mighty swipe. The Chiefs are fascinated by the Orcs, especially their young leader, Thrall. The Chiefs see an opportunity to help the Orcs return to their traditional roots by providing a strong example of honor and courage through all Tauren warriors.', 'The Tauren Chieftain (Marn) is useful for both War Stomp and the Endurance Aura. Due to the Tauren Chieftain\'s large size many players have difficulty controlling him. They don\'t understand how to use him correctly and fail to use him to his full potential. The key is to either keep Marn away from the enemy, toward the rear of the battle, or to rush him straight into the middle of the enemy then use War Stomp. Whenever he becomes \\\"stuck\\\" use War Stomp to clear some room. Top players have excellent success with Marn. War Stomp is a great ability. At its highest level War Stomp stuns for as long as 5 seconds and does 75 damage. This can allow your other units to pick off defenseless units before they can recover from the stun. Shockwave is also useful against lines of enemy units, including weak units such as ranged units and spellcasters. It takes some skills to use it effectively and to the maximum effect. The Endurance Aura is especially helpful to both Orcs and allied units. In large team games the Endurance Aura can have a noticeable effect. Reincarnation is also useful to bring the Tauren Chieftain back to life after he has died. This saves the cost of reviving him. For point spending strategies players often pick War Stomp first followed by Endurance Aura. If you\'re a Shockwave fan you can try Shockwave and Endurance Aura. A more rare combination can also be used with Shock Wave and War Stomp although you\'re unlikely to have enough Mana for both. The Tauren Chieftain\'s Endurance Aura can actually help Peons mine Gold more efficently, and harvest Lumber faster.'),
('cryptlord', 'undead', 'Crypt Lord', 'These ancient, evil behemoths were once the mighty kings of the subterranean spider kingdom of Azjol-Nerub. Though the Nerubians fell before the wrath of the Lich King during the fabled War of the Spider, the insidious Crypt Lords were swayed over to the Lich King\'s ranks and granted considerable power and the immortality of undeath. Now the giant, thundering beasts serve as the Lich King\'s mightiest warriors and the guardians of the Scourge\'s holdings in Northrend.', 'A warrior Hero, adept at summoning insect minions and crushing enemies. Betraying the Nerubian people, the Crypt Lords have sacrificed the lifeblood of thousands to bolster the Undead armies of Ner\'zhul, winning an eternal life of servitude in his name. Attacks land units.'),
('darkranger', 'neutral', 'Dark Ranger', 'A cunning Hero, adept at manipulating opponents. Forcibly raised from the dead, the former Rangers of Quel\'Thalas enjoy nothing more than sowing dissension and hatred within the enemy ranks. Attacks land and air units.', 'The Dark Ranger is a very cool ranged Hero. She has an interesting variety of support skills that allow her to serve a number of different purposes in your army. Her Silence skill makes her an effective anti-caster, a role that many races would like early on. Her Black Arrow allows her to creep and rush early on by summoning extra skeletons to boost your numbers. Her Life Drain skill allows her to survive attacks that most ranged Heroes are forced to flee from. Finally, her Charm Ultimate gives you access to enemy spell casters or help you turn the tide against heavy melee or heavy air. It is important to remember that Dark Ranger is a ranged hero when choosing her skills. Her Life Drain skill is only worthwhile if you expect her to take a large amount of damage. Knowing this, you can accurately prepare your skills. If you get her early on, you can use her to summon Skeletons with Black Arrow and wipe out tier 1 melee with Life Drain. If you get her later on, you can use her to deal damage with Black Arrow and Silence to bolster your anti-caster powers. Remember that the enemy needs to be killed by Black Arrow to get a skeleton; you should pick good targets for the Dark Ranger to ensure that you are getting lots of finishing blows in. If you are unsure in which skills you want, remember that both Life Drain and Silence are both quite good at low level, it is not uncommon for Dark Ranger to take 3 levels of Black Arrow and one of each Life Drain and Silence. Her Ultimate is a must-take, applying it to your strategy is also important. Once she is high enough level, you should save some of your mana to be able to cast Charm. Charm is a spell that is familiar to Undead players, as it is a lot like Possess but without the drawback. In large team games (3 vs. 3 and 4 vs. 4) you might find it useful to focus on Silence and either Life Drain or Black Arrow. It\'s common in large team games to see a lot of spellcasters in which case the Dark Ranger\'s Silence ability can be VERY effective and help win the game. Depending on the enemy Heroes you are facing it is not always useful to put your first point in Silence. The second point, rather, should be placed in Silence. However, if the Dark Ranger is a second Hero then the first point should be put into Silence since this is later on in the game.'),
('deathknight', 'undead', 'Death Knight', 'Death Knights were once virtuous defenders of Humanity. However, once the Paladin ranks were disbanded by the failing Alliance, many of these holy warriors traveled to the quarantined lands to ease the suffering of those left within the plague-ridden colonies. Though the Paladins were immune to disease of any kind, they were persecuted by the general populace who believed that they had been infected by the foul plague. A small band of Paladins, embittered by society\'s cruelty, traveled north to find the plague\'s source. These renegade Paladins succumbed to bitter hatred over the course of their grueling quest. When they finally reached Ner\'zhul\'s icy fortress in Northrend they had become dark and brooding. The Lich King offered them untold power in exchange for their services and loyalty. The weary, vengeful warriors accepted his dark pact, and although they retained their humanity, their twisted souls were bound to his evil will for all time. Bestowed with black, vampiric Runeblades and shadowy steeds, Death Knights serve as the Scourge\'s mightiest generals.', 'The Death Knight is a melee Hero but attacks very slowly making him one of the lesser melee Heroes. The Death Knight is typically the second Hero built by Undead players with the Dread Lord being the first Hero. The Death Knight works very well with Ghouls because of his Unholy Aura, which also combines well with the Dread Lord\'s Vampiric Aura. Death Coil is useful for healing the Death Knight\'s army or allied Undead Heroes. Death Coil is also useful for attacking enemy Heroes or units. Death Pact is rarely used but can help keep the Death Knight alive by eating Skeleton Warriors. Animate Dead can be very powerful depending on the units raised and the timing. Some jokingly refer to him as the healing Knight because 3 of his abilities (Death Coil, Death Pact, Unholy Aura) can be used to heal damage. The Death Knight\'s Death Coil ability makes him useful for healing units and for attacking other Heroes. His Unholy Aura ability makes him helpful in large allied games where his aura can help a lot of units.Although the Death Knight is a melee guy it\'s best to watch him very closely and remove him from battle if attacked. He can be easily killed.For skill point spending strategies most players research either Unholy Aura or Death Coil first and maximize those stopping only to get Animate Dead at Level 6.'),
('demonhunter', 'elf', 'Demon Hunter', 'Demon Hunters are dark, shadowy warriors who are shunned by the greater Night Elf society. They made a pact, long ago, to fight against the forces of chaos using its own terrible powers against it. These mysterious warriors ritually blind themselves so that they develop \'spectral sight\' that enables them to see demons and undead with greater clarity. They wield demonically charged warblades in battle and even call upon demonic energies to augment their formidable combat skills. Although they are counted as some of the mightiest warriors within the Night Elves\' society, the Demon Hunters are always maligned and misunderstood for making their selfless pact with darkness.', 'The Demon Hunter\'s focus is hunting Demons but he\'s also great at fighting Heroes! Fans of custom Hero Arena maps have discovered that the Demon Hunter is one of the best Hero killers. The Demon Hunter is one of the toughest melee Heroes and also has the Mana Burn ability, which instantly takes away mana from enemy Heroes that could be otherwise used against you. Mana Burn also damages the health of the enemy Hero that softens them up for you to finish off. The Demon Hunter can remove 150 Mana with level 3 Mana Burn. The Demon Hunter can also use Evasion to reduce the amount of damage received and can later become very powerful with Metamorphosis. To use the Demon Hunter effectively players will need to control him well. The Demon Hunter can be very weak against focused fire ranged units or melee units that surround him. It\'s important to use hit-and-run attacks and to run whenever the enemy focuses their army on the Demon Hunter. The Demon Hunter can also use Druid of the Claw Rejuvenation and items such as Healing Potions to stay alive under fierce attack. Experts are divided as to how to properly spend points with the Demon Hunter. Some argue that the Immolation is a waste for early Creep hunting since the Demon Hunter can just heal with Moon Wells. Immolation can be good against tightly packed units, especially if they try to surround and kill the Demon Hunter. Some prefer to spend points in Mana Burn, then Evasion, then Mana Burn, until 6 for Metamorphosis. Others prefer to focus in Immolation and Evasion. Still other players like to spread points around with some in Mana Burn and some in Immolation. One option suggested by TillerMaN is mixing Mana Burn and Immolation since higher level Mana Burn generates a reserve of unused Mana. The Demon Hunter is very good at Creeping at the start of the game. Use him to take out powerful Item dropping Creeps, grab the item and run back to Moon Wells for healing. You can even lead Creeps back to the Moon Wells and fight them there. You can even use Mana Burn against Creeps with Mana depending on the map. The Demon Hunter is one of the best Heroes to have when the enemy Hero rushes you at the start of the game. When the enemy comes in you can Mana Burn them and that will greatly reduce the amount of damage they can do against you. You can also combine with Wisp Detonate to further take away more Mana. You can refill the Demon Hunter with the Moon Wells and continue to use Mana Burn. The Demon Hunter is weak against Dread Lord\'s Sleep and the Keeper of the Grove\'s Entangle but can use units to wake him from Sleep and can use Moon Wells to heal after Entangling Roots. In a duel with a Dread Lord using Sleep it\'s important to Mana Burn him before he can put you to Sleep. Wake up your Demon Hunter with an Archer or Huntress if he puts you to sleep. The Demon Hunter is also slightly weak to the Mountain King\'s Storm Bolt but can also use Moon Wells in defense and Mana Burn. The Demon Hunter is also an excellent Hero rusher as he can deal with most enemy Heroes, kill buildings, and enemy workers. One downside of the Demon Hunter is his lack of an Aura. This can make quite a difference in large team games. In later stages of the game you should take advantage of a second hero with either Thorns if they have a lot of melee units or Trueshot Aura for your Huntresses, Archers, or Dryads. The Demon Hunter needs lots of support with Archers, Dryads, and Huntresses to distract the enemy so he can sneak in and clean up. The Demon Hunter becomes very powerful with Metamorphosis. He receives a 500 hit point bonus, splash damage, and faster Hit Point Regeneration. His attack range also increases to a long range and his damage type changes to Chaos Damage. Chaos damage does full damage against all types of armor. It might be best to run away until the Metamorphosis wears off when facing him in this form.'),
('dreadlord', 'undead', 'Dread Lord', 'Dread Lords are incredibly powerful demons who wield the powers of darkness and mental domination. These cunning, malefic beings once served as the demon Kil\'jaeden\'s most trusted lieutenants. Yet, at Kil\'jaeden\'s request, the vampiric Dread Lords were sent to watch over the Lich King Ner\'zhul, and ensure that he carried out his orders to sow chaos in the mortal world. Though Dread Lords have been known to revel in the gore of single combat, they generally prefer to manipulate and beguile their enemies from the shadows.', 'The Dread Lord is a powerful and popular Hero. Typically most Undead players pick the Dread Lord as their first Hero followed by the Death Knight or Lich. All of his abilities are especially useful. The main reason players pick the Dread Lord first is for Sleep, which is useful against enemy Hero rushes and for disabling powerful Creeps for the early Creeping part of the game. The Vampiric Aura also heals Ghouls when they attack the Creeps and enemy units that do not have Spell Immunity. Vampiric Aura is very useful in team games. Carrion Swarm can be used to damage collections of units. Inferno is helpful for clearing trees and for summoning the powerful Infernal. Inferno can also be used to break the spell channeling of enemy Heroes. While the Dread Lord has a melee attack he isn\'t the best melee fighter. It\'s better to keep the Dread Lord away from combat when facing large opposition. Also, be sure to run away if attacked. It\'s best to give caster items to the Dread Lord rather than melee items but melee items can help.'),
('farseer', 'orc', 'Far Seer', 'Far Seers are ancient Orcs who represent the pinnacle of Shamanistic power. These powerful Shamans are counted amongst Thrall\'s closest advisors and are constantly in tune with the workings and maneuverings of the Horde. Far Seers are not only tied to the elements of the earth and sky, but are also adept at foretelling the future.', 'The Far Seer is a very popular hero. For many Orc players it is their first Hero choice. The Far Seer has a collection of great abilities. Almost all Far Seer users start with a point in Feral Spirit. Feral Spirits are great for attacking your first group of Creeps, for Hero Rushes, defending against Hero Rushes, and for scouting the map to discover the enemies\' locations and races. Next comes Chain Lightning which can cause serious damage on the enemy. Chain Lightning is especially effective on low hit point units such as ranged units and spellcasters. Some dispute the use of Far Sight but Far Sight is excellent for the final stages of the game. At this point the enemy can be attempting to hide expansions, units, and buildings. Far Sight can reveal a HUGE portion of the map (much better than Reveal or anything else) which will allow you see what the enemy is up to. This is especially useful in team games. Far Sight is also for revealing invisible units such as Night Elves that are hiding. Finally Earthquake is a good counter against enemies building lots of Towers which often happens at the end of a game. The Far Seer is very good for Hero rushes. The Far Seer can use two Spirit Wolves and their own attack to kill enemy workers as they are trying to build their town. This can also be combined with offensive towering. The Far Seer is also useful for defending against Hero rushes for these same reasons. The Far Seer can solo pretty easily using Spirit Wolves. At Level 2 the Far Seer can also combine Chain Lightning and the Spirit Wolves to make quite an army at that point in the game. The Far Seer is a weak caster so keep him away from any enemies. The Far Seer is easily killed when surrounded by melee units or attacked with focus fire by ranged units. Be ready to run at all times.'),
('firelord', 'neutral', 'Firelord', 'Long ago, when the world was in a state of constant turmoil, the Elementals (Earth, Wind, Fire and Water) faithfully served their Old-God masters. When the Old Gods were defeated by the coming of the Titans, the Elementals were banished to an alternate plane of existence. Over time the world became Azeroth, where Human wizards learned how to call back the Elementals through the art of summoning. The Firelord is one of these liberated Elementals. Consumed by hatred for all organic life, he roams the world he once called home, sewing chaos, wreaking vengeance, and inflicting pain with extreme prejudice.', 'The Firelord is a new Hero added in August, 2004. Try him out!'),
('keeperofthegrove', 'elf', 'Keeper of the Grove', 'The enchanted Keepers are the favored sons of the demigod Cenarius. Like their lesser Dryad sisters, the Keepers appear to be half Night Elf, half stag. They have enormous antlers and manes of leaves that flow down their backs. Their right hands are disfigured and twisted - as if they had become like the gnarled root-claws of the Treants. Keepers possess many strange powers over nature and the animals. Though they typically remain within the sacred Moon Groves of Ashenvale forest, the Keepers always heed the call to arms when the greater lands of Kalimdor are threatened.', 'The Keeper of the Grove is a great Hero! All four of his abilities are extremely useful. Entangling Roots can be used to stop melee units in their tracks allowing the Night Elves to pick them off at range with Archers, Huntresses, or Dryads. Force of Nature can be used to create Treants, which can complement your army. Force of Nature can also be used to remove trees allowing you to reach Gold Mines surrounded by trees. Thorns are very useful when facing lots of melee units. Tranquility can be used during battle to determine the outcome and to repair units such as Glaive Thrower while they assault a town. It\'s best to keep the Keeper of the Grove away from enemy units and Heroes, as he is more of a weak spell caster type Hero. If the enemy tries to attack him run away or out of range. The Keeper of the Grove is somewhat large so it\'s easy to get stuck if you\'re not careful. Leave plenty of room around him for escape. Be sure to keep the Keeper behind your army and out of danger. There are several point spending strategies with the Keeper of the Grove. Some players focus on Entangling Roots followed by Thorns if the enemy is using melee units. It\'s very important to not waste points in Thorns if the enemy is using mostly ranged units. In large team games Thorns can be very effective as it protects multiple armies. If you are not going to use Thorns you can place points in Entangling Roots and Force of Nature. But If you use a lot of Entangling Roots you may find you never have mana for Force of Nature and vice versa. The other option for the Keeper of the Grove is to place points in Force of Nature and Thorns. Keepers that focus in Force of Nature make great early soloing Heroes. The Keeper can use the Treants and an Archer or two to solo Creeps at the start of the game. Entangling Roots can also work as the Keeper can put the most powerful Creep leader out of action (unless Spell Immune) and finish off the leftovers. Focusing on Entangling Roots will require more control and more \\\"dancing\\\" on the part of the player. The Keeper of the Grove is an excellent Hero rusher with Entangling Roots. He can run in and Entangle enemy Peons and melee units such as Grunts and Footmen at the start of the game. He can run in and Entangle something then run. The Keeper of the Grove is also useful at preventing Hero rushes when using Entangling Roots on enemy Heroes. When selecting items for the Keeper of the Grove, pick \\\"caster\\\" type items that help his mana and intelligence.'),
('lich', 'undead', 'Lich', 'During his mortal life as the Warchief of the Orcish Horde of Draenor; Ner\'zhul commanded a number of Orcish Warlocks and Shamans. Yet, when these wicked sorcerers were captured by Kil\'jaeden and the Legion after the destruction of Draenor, they were transformed into twisted aberrations of their former selves. These Liches possessed tremendous magical powers, yet their immortal, undead bodies were bound to the iron will of Ner\'zhul. Since the Liches showed unswerving loyalty to their master, Ner\'zhul granted them control over the furious elements of the cold north. Now, Liches wield frost magic along with their own considerable necromantic spells.', 'The Lich is the least used Undead Hero, partly because it is difficult for beginners to use him properly. The Lich is a great first or second Hero mainly for his Frost Nova ability. Frost Nova is one of the uber abilities in the game, especially when combined with the Archmage\'s Brilliance Aura, Mana Potions, or Dark Ritual. Frost Armor can be useful on allied Heroes, Abominations, or Frost Wyrms. Dark Ritual is rarely used but is very powerful in a skilled player\'s hands. Dark Ritual works very well with Necromancers because the Lich can sacrifice Skeleton Warriors. Death and Decay can be used to attack tightly packed enemy buildings or towers. The Lich is a very fragile caster like the Human Archmage. He can easily and quickly be killed. You can attempt to counter that by casting Frost Armor on him or healing him with Death Coil. The most common way to protect him is to do a lot of running away and never get close to enemy ranged or melee units whenever possible.'),
('mountainking', 'human', 'Mountain King', 'The Mountain Kings, or \'Thanes\' as they are known in Khaz Modan, are the mightiest Dwarven warriors under the mountain. Wielding both enchanted warhammers and hand axes, these fierce fighters live to test themselves against worthy opponents. Unconcerned with their race\'s preoccupation with mechanical devices and mining precious minerals, Mountain Kings live only for battle. Dedicated to safeguarding the Alliance which saved their kingdom during the Second War, the Mountain Kings can be counted upon to rally behind any banner that stands between freedom and the ever looming shadow of evil.', 'The Mountain King is one of the top melee Heroes along with the Night Elf Demon Hunter and the Orc Blademaster. In one on one Hero Matches the Mountain King can be one of the best Hero killers with his Storm Bolt ability. Heroes that attempt to run away or try to use spells that require spell channeling can be stopped quickly with Storm Bolt. Storm Bolt is also useful for putting powerful enemy units out of action quickly. But some top Human players such as TillerMaN and Maynard prefer to use Thunder Clap. \\\"Thunder Clap is the best\\\" - Maynard. At higher levels Thunderclap can destroy low hit point units such as Ghouls, and Archers. For other units it can slow them and bring their hit points down. The Mountain King can also stun units with Bash and eventually use Avatar to be even more powerful. If you are using a Mountain King with an Archmage using Brilliance you can skip Bash and focus on Storm Bolt and Thunder Clap. With the Archmage generating Mana he can have enough to use Storm Bolt instead of Bash. Storm Bolt is also more controllable than the randomness of Bash.'),
('paladin', 'human', 'Paladin', 'Although the Paladins were once loved and revered throughout the lands of Lordaeron, they have since fallen on hard times. The entire Order of the Silver Hand was disbanded for refusing to kill innocent townsfolk who were believed to be contaminated by the dreaded Undead plague. Disenfranchised and driven from their former homes, the Paladins still work selflessly to protect humanity from the gnawing jaws of evil. Empowered by the Light, these mighty warriors brandish both warhammer and holy fire in battle against all who would trample the meek and innocent.', 'The Paladin is a melee hero but isn\'t quite as powerful as the Demon Hunter, Blademaster, or Mountain King. The Paladin is more of a background support Hero with a melee attack. The Paladin\'s spells are all useful. Holy Light is very useful for healing units during combat, especially at the start of the game against Creeps. Holy Light also rules for healing allied Heroes or your own Heroes. It\'s much cheaper to heal a unit and have it continue than replace it. The Paladin\'s Divine Shield can save him if he is about to die or can allow him to do hit-and-run attacks. The Devotion Aura is useful when combined with Knights and Footmen and especially useful in allied games with lots of allied units. Resurrection is also really good because it can bring 6 units back to life. At it\'s best you can return say 6 Knights, or a mix of powerful allied units back to life.'),
('pandarenbrewmaster', 'neutral', 'Pandaren Brewmaster', 'A warrior Hero, able to call forth the creatures of the forest to serve him. These lone wandering forest dwellers come from all backgrounds and cultures, seeking the essence of combat through the mimicry of wild beasts. Attacks land units.', 'The Beastmaster is the master of Summonable units. The Beastmaster can have multiple summonables of each type at once. The Beastmaster is cool because he can have a Bear, Quilbeast, and Hawk at the same time (making him the Beastmaster!). The Beastmaster\'s ultimate ability summons a stampede of exploding lizards! All of his summonables require a lot of mana to cast, so it’s important to choose the creature that suits your race and army well. Early on, the Bear seems like the best unit. He has a lot of hit points and good damage. However, if you look in the long run, all three of them are powerful in their own way. The Bear gains a lot of hit points at higher levels and deals pretty good damage, plus he can move around well with Blink. Take Bear if you want an early edge in units, for example if you are playing Night Elf and need an extra tank unit on your front line. The Quilbeast is a damage maven; it deals the best damage at level three because of his growth and because of Frenzy. Take Quilbeast if you find yourself up against air units or against other units weak to piercing. The Hawk may seem weak at first (sort of a poor version of Priestess of the Moon’s Scout), but eventually you can use its fast speed and good damage to hassle or finish off enemy units. Select Hawk if you are good enough to be able to manage him and micromanage him while managing other things. His speed is 350, which is faster than all Heroes except Heroes with boots or with speed auras. Use this speed to finish off nearly dead units. At 35 damage per second, the Spirit Hawk has just enough punch to finish off a fleeing hero or force the hero to waste a town portal scroll or potion. His ultimate, Stampede, deals a large and mostly mindless amount of damage. Its area is like a very wide version of Tauren Chieftain’s Shockwave. The Beastmaster is most useful in smaller games such as 1 vs. 1 and 2 vs. 2 where his Summonables can contribute more. To play the Beastmaster effectively you need to invest more in getting Mana back. This can take the form of Mana Potions and/or Clarity potions at player-built shops. There are other methods for regaining Mana in the game that you can also use.'),
('pitlord', 'neutral', 'Pit Lord', 'A warrior hero, exceptional at weakening enemies and melee combat. These massive Demons take sadistic pleasure from instilling crazed terror, and then slaughtering their enemies. Attacks land units.', 'The Pit Lord is a ferocious Strength hero! He can cast Rain of Fire from a distance to burn up low hit point units. He has Howl of Terror to lower the effectiveness of enemy troops. His Cleaving Attack gives him an edge when wallowing in hordes of enemy troops. His ultimate Dooms an enemy to a fate of unholy servitude to your Pit Lord. Like most Neutral heroes, using the Pit Lord is a matter of choosing between his two big spells and then putting spare points in his minor skill. The \\\"Rain Pit Lord\\\" uses Rain to soften up enemy troops once or twice and then charges in with Cleaving Attack to finish them off. The \\\"Howling Pit Lord\\\" is the first one to enter combat and stays in the front line until he or his enemies die. His Doom ultimate is another tool for players (especially Banshee-using Undead players) to swing a large conflict to your favor from the outset. Remember that the Pit Lord has a better-than-average Cooldown and benefits greatly from Claws of Attack or other attack-boosting items. Pit Lord can be healed by Death Coil and is harmed by Holy Light; this makes him a natural choice for Undead and a poor choice for Human players.'),
('priestessofthemoon', 'elf', 'Priestess of the Moon', 'During his mortal life as the Warchief of the Orcish Horde of Draenor; Ner\'zhul commanded a number of Orcish Warlocks and Shamans. Yet, when these wicked sorcerers were captured by Kil\'jaeden and the Legion after the destruction of Draenor, they were transformed into twisted aberrations of their former selves. These Liches possessed tremendous magical powers, yet their immortal, undead bodies were bound to the iron will of Ner\'zhul. Since the Liches showed unswerving loyalty to their master, Ner\'zhul granted them control over the furious elements of the cold north. Now, Liches wield frost magic along with their own considerable necromantic spells.', 'The Priestess of the Moon is often an overlooked Night Elf Hero. While many prefer the Keeper of the Grove or the Demon Hunter for their Entangling Roots and Mana Burn, the Priestess can do very well when controlled properly. It can take some time to learn how to use the Priestess of the Moon effectively, but once you do you can rip things up. The Priestess of the Moon is a great focused fire Hero and unit killer, sometimes killing many more enemy Heroes than other allied Heroes in team games. The Demon Hunter and Keeper of the Grove have to get up close to enemy units while the Priestess can bomb them from long distances. The Priestess is also great at delivering killing blows using Searing Arrow to enemy Heroes or units running away. The Priestess is also good for her Trueshot Aura, which adds damage to ranged units. She becomes even more effective when sharing the Aura with multiple allied teammates to increase the damage of their ranged units as well. If the Priestess of the Moon is able to reach level 6 and Starfall she becomes a huge powerhouse. While good enemy players can cancel the Starfall shortly after it begins, against lesser players and with allied support you can kill plenty of enemy units with Starfall. The key to doing well with the Priestess of the Moon is to use her like an Archer. Use the typical ranged unit tactics as you do with other ranged units. Make sure she is always toward the rear of the army and that melee units cannot reach her. Run away when units attempt to surround her or focus fire on her with ranged units. Even with these methods you may still find you lose her against good Undead players using Dread Lord\'s Sleep, or Night Elf Keeper of the Grove\'s Entangle. But you can also protect her with a Demon Hunter to Mana Burn enemy Heroes. Some top Night Elf players recommend first placing points in Trueshot Aura followed by Searing Arrows and then Starfall at Level 6. You may find Owl useful in large games, or after Searing Arrows and Trueshot Aura is maxed. You can also scout using Huntress Sentinel and combat units or Wisps instead of using Owls. The Benefit of Owls is that they are easy to use and the enemy can\'t cast spells on them. The Priestess of the Moon is often a good second Hero choice. She can instantly give the Trueshot Aura to your existing units at level 1 and can support your primary Demon Hunter or Keeper of the Grove Hero. The downside of picking her second is that is slower to reach Level 6 and Starfall. Picking the Priestess as the first and only Hero can allow you to reach Starfall much faster. This can be especially effective in 2 vs. 2, 3 vs. 3, and 4 vs. 4 games. The Priestess can also be a great primary Hero when teaming with other Night Elf players since it helps them both. Make use of Hide with the Priestess of the Moon. Attack the enemy, then Hide, attack then Hide. If the Priestess is about to die at night, use Hide to avoid dying. This works very well. You can then run back home when it is safe. You can use Hide with your entire army of Archers and Huntresses since all have Shadowmeld. If you find a Cloak of Shadows you can even use this with your second Hero as well. Give the Priestess combat items such as Claws, Gloves of Haste, Agility Items, and other items that add to her damage and combat ability. Some players think of her as a caster type Hero but she can actually take advantage of combat items, especially when combined with Searing Arrow. Use Moon Wells with the Priestess to heal her and recover mana. When Searing Arrows are activated, the Priestess of the Moon will continue to drain mana. This can conflict with Starfall sometimes because you will not have enough mana to cast it. If you wish to use Starfall but cannot seem to gain enough mana to cast it, deactivate Searing Arrows. You can also buy a few Mana Potions so that you can use Starfall and Searing Arrows and not worry about having enough Mana.'),
('seawitch', 'neutral', 'Naga Sea Witch', 'A mystical Hero, adept at ranged combat. These scaly denizens of the ocean have often been associated with the coming of prodigious storms, but few have actually seen them rise from the sea and lived to tell the tale. Attacks land and air units.', 'The Naga Sea Witch is an exceptionally powerful Neutral Hero. While she isn\'t a great melee fighter, the Sea Witch is useful for ranged assaults and staying back behind the melee units in battle. The Sea Witch is a great Hero and unit killer, mainly because of her Frost Arrows\' slow effect, which prevents enemies from fleeing from battles as easily. By the time the other player realizes their hero is almost dead, it will be too late and they\'ll be too slow to run away. The Sea Witch is also great at delivering high damage to enemy Heroes or clumped units with her Forked Lightning skill. She should target one of the most powerful enemies first, to make sure it is hit by the lightning. She becomes even more effective for combat with the Mana Shield. Basically, the Sea Witch uses mana as hit points with this ability, allowing her Intelligence to act for her instead of Strength. With it, she can become at least partially decent for melee combat. Once the Sea Witch gets to level 6, she can effectively destroy enemy buildings with her Tornado skill. It can be stopped with a number of enemy spells, but most players won\'t act in time to stop the Naga from using her Tornado with maximum efficiency. Some good ideas for use of the Sea Witch\'s skill points, are the following: First try placing points in Forked Lightning for a good basic spell, followed by Frost Arrows or Mana Shield if you plan on having fewer damage absorbing units. You may find Mana Shield less useful in team games, because your allies will probably have at least one warrior Hero for damage absorption. You can also try to max out Frost Arrows for anti-hero uses. The benefit of this is that if you have your army still intact, the Sea Witch can chase the enemy hero and slow it while the rest of your forces catch up and surround it. The Naga Sea Witch is usually a good second Hero choice. Her Forked Lightning can instantly give a fair amount of damage to 3 enemy units, but Frost Arrows is also a good first support spell. Picking the Sea Witch first can, however, give certain advantages, as Frost Arrows makes her a good hero killer, and Mana Shield increases her life in a way. These spells can also be used to prevent enemies from doing as much to her as normal. If you see a fast hero or unit coming at your Naga, shoot it once with Frost Arrows and run away. The distance you cover just after that might be enough to get your Naga to safety. Give the Sea Witch speed boosting items such as Gloves of Haste and Boots of Speed that add to her quickness in and out of combat. When you want to cast Forked Lightning or Tornado, turn off Frost Arrows because they drain a lot of mana. This will often keep you from being able to cast Forked Lightning or Tornado, and can leave you in a tough spot.'),
('shadowhunter', 'orc', 'Shadow Hunter', 'These reclusive, wily jungle trolls are considered to be the highest authority within their respective warbands. They are masters of voodoo magics who can use their spirit-powers to both heal their allies and place curses upon their hapless enemies. The Shadow Hunters walk the line between darkness and light in hopes of salvaging the future for their savage brethren.', 'A cunning Hero, adept at healing magics and voodoo curses. Channeling the spirits of their dark gods, the Shadow Hunters walk the line between darkness and light in the hope of salvaging the future for their savage brethren. Attacks land and air units.'),
('tinker', 'neutral', 'Tinker', 'Goblins are known for their mechanical expertise and clever, though sometimes peculiar, inventions, and the Tinker is certainly no exception. With his Claw-Pack/Hammer-Tank combo, the Tinker\'s ingenuity is undeniable. Though his parts may sometimes fail and the occasional explosion does occur, the spirit and enthusiasm of this Hero are never diminished. There truly is more to the Goblin Tinker than meets the eye!', 'Not much is known about the Goblin Tinker except that he is a tricky guy!'),
('warden', 'elf', 'Warden', 'The mysterious wardens serve as the night elves\' special police force in Kalimdor. Set apart from the militant Sentinels, wardens are usually employed as jailors, assassins, and bounty hunters. When loosed upon escaped criminals, wardens employ a number of supernatural powers that enable them to recapture their prey and mete out the night elves\' justice. Wardens have a line of sight teleport ability called \\\"blink\\\", which they can use to outmaneuver even the quickest of foes.', 'The mysterious wardens serve as the night elves\' special police force in Kalimdor. Set apart from the militant Sentinels, wardens are usually employed as jailors, assassins, and bounty hunters. When loosed upon escaped criminals, wardens employ a number of supernatural powers that enable them to recapture their prey and mete out the night elves\' justice. Wardens have a line of sight teleport ability called \\\"blink\\\", which they can use to outmaneuver even the quickest of foes.');

-- --------------------------------------------------------

--
-- Структура таблицы `SkillLink`
--

CREATE TABLE `SkillLink` (
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `heroId` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `SkillLink`
--

INSERT INTO `SkillLink` (`name`, `heroId`) VALUES
('acidbomb', 'alchemist'),
('chemicalrage', 'alchemist'),
('healingspray', 'alchemist'),
('transmute', 'alchemist'),
('blizzard', 'archmage'),
('brilliance', 'archmage'),
('massteleport', 'archmage'),
('summonwaterelemental', 'archmage'),
('stampede', 'beastmaster'),
('summonbear', 'beastmaster'),
('summonhawk', 'beastmaster'),
('summonQuillbeast', 'beastmaster'),
('bladestorm', 'blademaster'),
('criticalstrike', 'blademaster'),
('mirrorimage', 'blademaster'),
('windwalk', 'blademaster'),
('banish', 'bloodmage'),
('flamestrike', 'bloodmage'),
('markoffire', 'bloodmage'),
('siphonmana', 'bloodmage'),
('command', 'chieftain'),
('reincarnation', 'chieftain'),
('shockwave', 'chieftain'),
('warstomp', 'chieftain'),
('carrionbeetles', 'cryptlord'),
('impale', 'cryptlord'),
('locustswarm', 'cryptlord'),
('spikedcarapase', 'cryptlord'),
('blackarrow', 'darkranger'),
('charm', 'darkranger'),
('lifedrain', 'darkranger'),
('silence', 'darkranger'),
('animatedead', 'deathknight'),
('deathcoil', 'deathknight'),
('deathpact', 'deathknight'),
('unholyaura', 'deathknight'),
('evasion', 'demonhunter'),
('immolation', 'demonhunter'),
('manaburn', 'demonhunter'),
('metamorphosis', 'demonhunter'),
('carrionswarm', 'dreadlord'),
('infernal', 'dreadlord'),
('sleep', 'dreadlord'),
('vampiricaura', 'dreadlord'),
('chainlightning', 'farseer'),
('earthquake', 'farseer'),
('farsight', 'farseer'),
('feralspirit', 'farseer'),
('incinerateauto', 'firelord'),
('lavaspawn', 'firelord'),
('soulburn', 'firelord'),
('volcano', 'firelord'),
('entanglingroots', 'keeperofthegrove'),
('forceofnature', 'keeperofthegrove'),
('thornsaura', 'keeperofthegrove'),
('tranquility', 'keeperofthegrove'),
('darkritual', 'lich'),
('deathanddecay', 'lich'),
('frostarmor', 'lich'),
('frostnova', 'lich'),
('avatar', 'mountainking'),
('bash', 'mountainking'),
('stormbolt', 'mountainking'),
('thunderclap', 'mountainking'),
('devotion', 'paladin'),
('divineshield', 'paladin'),
('holybolt', 'paladin'),
('ressurection', 'paladin'),
('breathoffire', 'pandarenbrewmaster'),
('drunkenbrawler', 'pandarenbrewmaster'),
('drunkenhaze', 'pandarenbrewmaster'),
('stormearth&fire', 'pandarenbrewmaster'),
('cleavingattack', 'pitlord'),
('doom', 'pitlord'),
('howlofterror', 'pitlord'),
('reignoffire', 'pitlord'),
('scout', 'priestessofthemoon'),
('searingarrows', 'priestessofthemoon'),
('starfall', 'priestessofthemoon'),
('trueshotaura', 'priestessofthemoon'),
('coldarrows', 'seawitch'),
('forkedlightning', 'seawitch'),
('manashield', 'seawitch'),
('tornado', 'seawitch'),
('bigbadvoodoospell', 'shadowhunter'),
('healingwave', 'shadowhunter'),
('hex', 'shadowhunter'),
('serpentward', 'shadowhunter'),
('clusterrockets', 'tinker'),
('engineeringupgrade', 'tinker'),
('pocketfactory', 'tinker'),
('robogoblin', 'tinker'),
('blink', 'warden'),
('fanofknives', 'warden'),
('shadowstrike', 'warden'),
('vengeance', 'warden');

-- --------------------------------------------------------

--
-- Структура таблицы `Tag`
--

CREATE TABLE `Tag` (
  `articleId` int NOT NULL,
  `heroId` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `Tag`
--

INSERT INTO `Tag` (`articleId`, `heroId`) VALUES
(5, 'alchemist'),
(5, 'archmage'),
(1, 'beastmaster'),
(5, 'beastmaster'),
(7, 'beastmaster'),
(5, 'blademaster'),
(5, 'bloodmage'),
(5, 'chieftain'),
(5, 'cryptlord'),
(6, 'demonhunter'),
(7, 'demonhunter'),
(9, 'firelord'),
(5, 'mountainking'),
(3, 'paladin'),
(4, 'pandarenbrewmaster');

-- --------------------------------------------------------

--
-- Структура таблицы `User`
--

CREATE TABLE `User` (
  `nickname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `User`
--

INSERT INTO `User` (`nickname`, `password`) VALUES
('chirok202', '$2y$10$D0hbj8I0Hd.bjoTpRr6rzeemDsf6xMnPvIo0YCbvQlDE13aJFoOj2'),
('chirok2021', '$2y$10$6qx1D3TLwxZTuM/2aLYRBeN36RICacvc3Ogq.vwrnIWjJ9b5ZoCaK'),
('chirok2022', '$2y$10$OArMLf4z.GyGaaoxYk.3/eIvCKIjnxEHRLNo144.Cu5K5ej9Utzza'),
('chirok20222', '$2y$10$A41pFyq0OSZK46MuvMP/a.kNugAzW92/EPo//G8/cJNNSoRKKvOWm'),
('chirok202222', '$2y$10$E/89fPA8zj5pwb5RX4Ncu.Du7Q7kBOIvgiaG/YPKpJFnqNZsMmORu'),
('chirok2022222', '$2y$10$BNW0bl1.6x6Jdz0Skxc/4O7RqNBCgLLhCJc2hTmc.csRC4fmkX.8.'),
('NICKNAME', '$2y$10$FEsuPVrobxNOtfSs8.qo0.phiyE9WzUhY7wAxS0QNrElp9M2gd1Ii'),
('Саша', '$2y$10$UxVNBssZNcU0wkfG5kUp0uVd4gKV9fkEBhNujjTP05Gws7u1h6pD2'),
('сделал курсач!', '$2y$10$4FwM.M4BFyMqYFKGt2gwSuJOLoO7e04i9x0LEnG3lDIt7oUsjA3iS'),
('Я ЛЮБЛЮ БД', '$2y$10$VHPDD2xLJz/mmACUtyIUJu0l/WTQZ05jHeKjRDsK71bxPDLKMmNTW');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Article`
--
ALTER TABLE `Article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author` (`author`);

--
-- Индексы таблицы `ArticleRating`
--
ALTER TABLE `ArticleRating`
  ADD PRIMARY KEY (`user`,`articleId`),
  ADD KEY `articleId` (`articleId`);

--
-- Индексы таблицы `Comment`
--
ALTER TABLE `Comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author` (`author`),
  ADD KEY `articleId` (`articleId`);

--
-- Индексы таблицы `CommentRating`
--
ALTER TABLE `CommentRating`
  ADD PRIMARY KEY (`user`,`commentId`),
  ADD KEY `commentId` (`commentId`);

--
-- Индексы таблицы `Hero`
--
ALTER TABLE `Hero`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `SkillLink`
--
ALTER TABLE `SkillLink`
  ADD PRIMARY KEY (`name`,`heroId`),
  ADD KEY `heroId` (`heroId`);

--
-- Индексы таблицы `Tag`
--
ALTER TABLE `Tag`
  ADD PRIMARY KEY (`articleId`,`heroId`),
  ADD KEY `heroId` (`heroId`);

--
-- Индексы таблицы `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`nickname`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `Article`
--
ALTER TABLE `Article`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `Comment`
--
ALTER TABLE `Comment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `Article`
--
ALTER TABLE `Article`
  ADD CONSTRAINT `article_ibfk_1` FOREIGN KEY (`author`) REFERENCES `User` (`nickname`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `ArticleRating`
--
ALTER TABLE `ArticleRating`
  ADD CONSTRAINT `articlerating_ibfk_1` FOREIGN KEY (`articleId`) REFERENCES `Article` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `articlerating_ibfk_2` FOREIGN KEY (`user`) REFERENCES `User` (`nickname`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `Comment`
--
ALTER TABLE `Comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`author`) REFERENCES `User` (`nickname`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`articleId`) REFERENCES `Article` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `CommentRating`
--
ALTER TABLE `CommentRating`
  ADD CONSTRAINT `commentrating_ibfk_1` FOREIGN KEY (`commentId`) REFERENCES `Comment` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `commentrating_ibfk_2` FOREIGN KEY (`user`) REFERENCES `User` (`nickname`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `SkillLink`
--
ALTER TABLE `SkillLink`
  ADD CONSTRAINT `skilllink_ibfk_1` FOREIGN KEY (`heroId`) REFERENCES `Hero` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `Tag`
--
ALTER TABLE `Tag`
  ADD CONSTRAINT `tag_ibfk_1` FOREIGN KEY (`articleId`) REFERENCES `Article` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `tag_ibfk_2` FOREIGN KEY (`heroId`) REFERENCES `Hero` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
