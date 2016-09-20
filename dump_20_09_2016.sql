-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               10.1.10-MariaDB - mariadb.org binary distribution
-- ОС Сервера:                   Win32
-- HeidiSQL Версия:              9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Дамп структуры базы данных store_test
CREATE DATABASE IF NOT EXISTS `store_test` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `store_test`;


-- Дамп структуры для таблица store_test.brands
CREATE TABLE IF NOT EXISTS `brands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы store_test.brands: ~4 rows (приблизительно)
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` (`id`, `name`) VALUES
	(1, 'msi'),
	(2, 'hp'),
	(3, 'dell'),
	(4, 'lenovo'),
	(5, 'acer');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;


-- Дамп структуры для таблица store_test.goods
CREATE TABLE IF NOT EXISTS `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT '0',
  `image_id` int(11) DEFAULT '0',
  `brand_id` int(11) DEFAULT '0',
  `product_categories_id` int(11) DEFAULT '0',
  `description` text,
  `price` decimal(10,2) DEFAULT '0.00',
  `enabled` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`id`),
  KEY `FK_goods_images` (`image_id`),
  KEY `FK_goods_brands` (`brand_id`),
  KEY `FK_goods_product_categories` (`product_categories_id`),
  CONSTRAINT `FK_goods_brands` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  CONSTRAINT `FK_goods_images` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  CONSTRAINT `FK_goods_product_categories` FOREIGN KEY (`product_categories_id`) REFERENCES `product_categories` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы store_test.goods: ~9 rows (приблизительно)
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
INSERT INTO `goods` (`id`, `name`, `image_id`, `brand_id`, `product_categories_id`, `description`, `price`, `enabled`) VALUES
	(3, 'Lenovo IdeaPad 100-14, 80MH001BRK', 10, 4, 3, '<div style=\'margin: 0 0 16px 0\'>\r\nLenovo IdeaPad 100-14 имеет процессор Intel Celeron Dual Core 2160 МГц Bay Trail-M (N2840), а так же видеокарту Intel HD Graphics, в сочетании с 14.0 дюймовым экраном, пользователям доступны максимальные мультимедийные возможности. Ноутбук Lenovo 100-14, рассчитан на широкий круг аудитории, в том числе игровой и бизнес класса. На хранение данных и мультимедии отведен жесткий диск, емкостью 500 ГБ, это позволяет всегда иметь под рукой всю необходимую информацию и файлы, не зависимо от места нахождения. Автономная работа данной модели предполагает до 4 часов. Гарантия на ноутбук IdeaPad 100-14 составляет 1 год.\r\n</div>\r\n<table class="parametersInCard">\r\n<tr>\r\n<td COLSPAN="2">\r\n<div style="position: relative;"><div style="overflow: hidden; float: right; position: absolute; right: 0px; top: 8px;"><img src="http://www.intel.com/sites/sitewide/pix/badges/celeron/cp_78.gif" alt="Celeron"/></div></div>\r\n</td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Процессор: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>Intel</span>   <span>Celeron Dual Core</span> 2160 МГц <span>Bay Trail-M</span>  (N2840) </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Количество ядер: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td>2 </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Шина/Кеш: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td>1 Mb L2 (L3) Cache </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Оперативная память: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td>4096 Мб  <span>DDR3-1333МГц</span> </td>\r\n</tr>\r\n<tr><td colspan=\'2\'><hr></td></tr> \r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Экран: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td>14.0" <span>LED</span> <span>Зеркальный (Glare)</span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Разрешение: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>(1366x768)</span> <span>WXGA </span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Видеокарта: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>Intel</span> <span>HD Graphics</span>, 64+1632 Мб    </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Звуковая карта: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>Intel High-Definition Audio</span> </td>\r\n</tr>\r\n<tr><td colspan=\'2\'><hr></td></tr> \r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Жесткий диск: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td>500 Гб (<span>5400 rpm</span>),   <span>HDD</span> </td>\r\n</tr>\r\n<tr><td colspan=\'2\'><hr></td></tr> \r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Связь: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>lan 10/100/1000</span>  </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Беспроводная связь: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>WiFi (802.11 b/g/n)</span>     </td>\r\n</tr>\r\n<tr><td colspan=\'2\'><hr></td></tr> \r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Порты: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td>1x<span>USB 2.0</span>,  1x<span>USB 3.0</span>,    <span>Kensington security</span>, <span>Line-out</span>, <span>Mic-in</span>, <span>HDMI</span></span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Слоты расширения: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>Card Reader (SD/SDHC/SDXC)</span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Дополнительные устройства: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span><span>Camera (0.3)</span></span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Устройства ввода: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>Кл-ра Windows, Touch Pad</span> </td>\r\n</tr>\r\n<tr><td colspan=\'2\'><hr></td></tr> \r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Батарея: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td>Li-Polymer <span>2700</span> мАч  (до 4.0 часов)   </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Вес: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>1.900</span> кг </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong>Цвет:</strong></td>\r\n<td>Черный   </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong>Цвет клавиатуры:</strong></td>\r\n<td>Черный </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong>Материал крышки:</strong></td>\r\n<td><span> Пластик</span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Материал корпуса: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>Пластик</span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong>Корпус (Ш х В х Г):</strong></td>\r\n<td>340 x 20 x 237 мм </td>\r\n</tr>\r\n<tr><td colspan=\'2\'><hr></td></tr> \r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Программное обеспечение: <span class="chart_dict">[ ? ]</span></strong></span></strong></td>\r\n<td><span>Free DOS</span> </td>\r\n</tr>\r\n</table>', 15900.00, b'1'),
	(4, 'Dell Inspiron 3162, 3162-4797', 9, 3, 3, '<div style=\'margin: 0 0 16px 0\'>\r\nDell Inspiron 3162 построен на базе процессора Intel Celeron Dual Core, имеет 2 Гб оперативной памяти и жесткий диск, объемом 500 Гб. Гарантия производителя на ноутбук Dell 3162 составляет 1 год. Получить техническую поддержку покупатель может на официальном сайте производителя, или по телефону горячей линии.  Модель Inspiron 3162 является хорошим примером, когда начинка идет в один шаг с современными технологиями. Dell станет удачным выбором благодаря сбалансированному сочетанию потребительских свойств и высокому качеству продукта.\r\n</div>\r\n<table class="parametersInCard">\r\n<tr>\r\n<td COLSPAN="2">\r\n<div style="position: relative;"><div style="overflow: hidden; float: right; position: absolute; right: 0px; top: 8px;"><img src="http://www.intel.com/sites/sitewide/pix/badges/celeron/cp_78.gif" alt="Celeron"/></div></div>\r\n</td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Процессор: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>Intel</span>   <span>Celeron Dual Core</span> 1600 МГц <span>Braswell</span>  (N3050) </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Количество ядер: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td>2 </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Шина/Кеш: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td>2 Mb L2 (L3) Cache </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Оперативная память: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td>2048 Мб  <span>DDR3-1600МГц</span> </td>\r\n</tr>\r\n<tr><td colspan=\'2\'><hr></td></tr> \r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Экран: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td>11.6" <span>LED</span> <span>Матовый (No Glare)</span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Разрешение: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>(1366x768)</span> <span>WXGA </span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Видеокарта: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>Intel</span> <span>HD Graphics</span>, 64+1632 Мб    </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Звуковая карта: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span></span> </td>\r\n</tr>\r\n<tr><td colspan=\'2\'><hr></td></tr> \r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Жесткий диск: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td>500 Гб (<span>5400 rpm</span>),   <span>HDD</span> </td>\r\n</tr>\r\n<tr><td colspan=\'2\'><hr></td></tr> \r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Беспроводная связь: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>Bluetooth 4.0</span>, <span>WiFi (802.11 b/g/n)</span>     </td>\r\n</tr>\r\n<tr><td colspan=\'2\'><hr></td></tr> \r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Порты: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td>2x<span>USB 3.0</span>,    <span>Kensington security</span>, <span>Line-out</span>, <span>Mic-in</span>, <span>HDMI</span></span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Слоты расширения: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>Card Reader (SD/SDHC/SDXC)</span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Дополнительные устройства: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span><span>Camera (1.3)</span></span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Устройства ввода: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>Кл-ра Windows, Touch Pad</span> </td>\r\n</tr>\r\n<tr><td colspan=\'2\'><hr></td></tr> \r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Батарея: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td>Li-Ion <span>3950</span> мАч  (до 10.0 часов)   </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Вес: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>1.180</span> кг </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong>Цвет:</strong></td>\r\n<td>Белый   </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong>Цвет клавиатуры:</strong></td>\r\n<td>Черный </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong>Материал крышки:</strong></td>\r\n<td><span> Пластик</span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Материал корпуса: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>Пластик</span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong>Корпус (Ш х В х Г):</strong></td>\r\n<td>292 x 20 x 196 мм </td>\r\n</tr>\r\n<tr><td colspan=\'2\'><hr></td></tr> \r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Программное обеспечение: <span class="chart_dict">[ ? ]</span></strong></span></strong></td>\r\n<td><span>Linux OS</span> </td>\r\n</tr>\r\n</table>', 15900.00, b'1'),
	(7, 'HP 14-ac100ur, W7S20EA', 8, 2, 3, '<div style=\'margin: 0 0 16px 0\'>\r\nHP 14-ac100ur, на базе процессора Intel Celeron Dual Core имеет прекрасное соотношение цена - качество. Благодаря видеокарте Intel HD Graphics и оперативной памяти, объемом 2 ГБ модель 14-ac100ur рассчитана на широкий круг потребителей, как бизнес плана, так и игровой аудитории. Автономная работа до 5 часов, что позволяет работать длительное время без питания, для хранения данных, пользователям предоставлено 32 ГБ на жестком диске SSD.\r\n</div>\r\n<table class="parametersInCard">\r\n<tr>\r\n<td COLSPAN="2">\r\n<div style="position: relative;"><div style="overflow: hidden; float: right; position: absolute; right: 0px; top: 8px;"><img src="http://www.intel.com/sites/sitewide/pix/badges/celeron/cp_78.gif" alt="Celeron"/></div></div>\r\n</td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Процессор: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>Intel</span>   <span>Celeron Dual Core</span> 1600 МГц <span>Braswell</span>  (N3060) </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Количество ядер: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td>2 </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Шина/Кеш: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td>2 Mb L2 (L3) Cache </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Оперативная память: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td>2048 Мб  <span>DDR3-1600МГц</span> </td>\r\n</tr>\r\n<tr><td colspan=\'2\'><hr></td></tr> \r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Экран: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td>14.0" <span>LED</span> <span>Зеркальный (Glare)</span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Разрешение: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>(1366x768)</span> <span>WXGA </span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Видеокарта: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>Intel</span> <span>HD Graphics</span>, 64+1632 Мб    </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Звуковая карта: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>DTS Studio Sound</span> </td>\r\n</tr>\r\n<tr><td colspan=\'2\'><hr></td></tr> \r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Жесткий диск: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td>32 Гб (<span>5400 rpm</span>),   <span>SSD</span> </td>\r\n</tr>\r\n<tr><td colspan=\'2\'><hr></td></tr> \r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Связь: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>lan 10/100</span>  </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Беспроводная связь: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>Bluetooth 4.0</span>, <span>WiFi (802.11 b/g/n)</span>     </td>\r\n</tr>\r\n<tr><td colspan=\'2\'><hr></td></tr> \r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Порты: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td>2x<span>USB 2.0</span>,  1x<span>USB 3.0</span>,    <span>Kensington security</span>, <span>Line-out</span>, <span>Mic-in</span>, <span>HDMI</span>, <span>VGA</span></span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Слоты расширения: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>Card Reader (SD/SDHC/SDXC)</span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Дополнительные устройства: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span><span>Camera (1.3)</span></span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Устройства ввода: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>Кл-ра Windows, Touch Pad</span> </td>\r\n</tr>\r\n<tr><td colspan=\'2\'><hr></td></tr> \r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Батарея: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td>Li-Polymer <span>2620</span> мАч  (до 5.0 часов)   </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Вес: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>2.040</span> кг </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong>Цвет:</strong></td>\r\n<td>Черный   </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong>Цвет клавиатуры:</strong></td>\r\n<td>Черный </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong>Материал крышки:</strong></td>\r\n<td><span> Пластик</span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Материал корпуса: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>Пластик</span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong>Корпус (Ш х В х Г):</strong></td>\r\n<td>345 x 24 x 241 мм </td>\r\n</tr>\r\n<tr><td colspan=\'2\'><hr></td></tr> \r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Программное обеспечение: <span class="chart_dict">[ ? ]</span></strong></span></strong></td>\r\n<td><span>MS Windows 10 Home (64-bit)</span> </td>\r\n</tr>\r\n</table>', 16990.00, b'1'),
	(8, 'Acer Aspire E5-551G-F63G, NX.MLEER.010', 7, 5, 1, '<div style=\'margin: 0 0 16px 0\'>\r\nAcer Aspire E5-551G-F63G обладает 15.6 -дюймовым экраном. Данная модель находится в ценовой категории около 30 тысяч рублей. Ноутбук оснащен современным процессором AMD FX-Series 2100 МГц Kaveri (FX-7500), имеет небольшой вес, а также предустановленную операционную систему MS Windows 8.1 (64-bit). Модель Aspire E5-551G-F63G будет привлекательна для покупателей, часто пользующихся ноутбуком, как в помещении, так и вне его. Гарантия на ноутбук Acer E5-551G составляет 1 год. Обслуживание производится в авторизованных сервисных центрах на территории России. Ноутбуки Аcer пользуются стабильным спросом благодаря широкому выбору конфигураций, приемлемой цене и высочайшему качеству продукции.\r\n</div>\r\n<table class="parametersInCard">\r\n<tr>\r\n<td COLSPAN="2">\r\n</td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Процессор: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>AMD</span>   <span>FX-Series</span> 2100 МГц <span>Kaveri</span>  (FX-7500) </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Количество ядер: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td>4 </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Шина/Кеш: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td>4 Mb L2 (L3) Cache </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Оперативная память: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td>8192 Мб  <span>DDR3-1600МГц</span> </td>\r\n</tr>\r\n<tr><td colspan=\'2\'><hr></td></tr> \r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Экран: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td>15.6" <span>LED</span> <span>Матовый (No Glare)</span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Разрешение: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>(1366x768)</span> <span>WXGA </span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Видеокарта: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>AMD</span> <span>Radeon R7 M265</span>, 2048+1638 Мб   <b>Доп. карта:</b> <span>AMD Radeon R5 series, 512 + 1632 Мб</span>  </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Звуковая карта: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>Intel High-Definition Audio</span> </td>\r\n</tr>\r\n<tr><td colspan=\'2\'><hr></td></tr> \r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Жесткий диск: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td>1000 Гб (<span>5400 rpm</span>), 8 Гб (200 Мб/с)  <span>HDD</span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Оптический привод: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>DVD±RW</span> <span>(DL)</span>  </td>\r\n</tr>\r\n<tr><td colspan=\'2\'><hr></td></tr> \r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Связь: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>lan 10/100/1000</span>  </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Беспроводная связь: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>Bluetooth 4.0 + HS</span>, <span>WiFi (802.11 b/g)</span>     </td>\r\n</tr>\r\n<tr><td colspan=\'2\'><hr></td></tr> \r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Порты: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td>2x<span>USB 2.0</span>,  1x<span>USB 3.0</span>,    <span>Kensington security</span>, <span>Line-out</span>, <span>Mic-in</span>, <span>HDMI</span>, <span>VGA</span></span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Слоты расширения: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>Card Reader (SD/MMC/MS/SDHC/Pro)</span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Дополнительные устройства: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span><span>Camera (1.3)</span></span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Устройства ввода: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>Кл-ра Windows, Touch Pad</span> </td>\r\n</tr>\r\n<tr><td colspan=\'2\'><hr></td></tr> \r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Батарея: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td>Li-Ion <span>4700</span> мАч  (до 4.5 часов)   </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Вес: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>2.390</span> кг </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong>Цвет:</strong></td>\r\n<td>Черный   </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong>Цвет клавиатуры:</strong></td>\r\n<td>Черный </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong>Материал крышки:</strong></td>\r\n<td><span> Пластик</span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Материал корпуса: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>Пластик</span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong>Корпус (Ш х В х Г):</strong></td>\r\n<td>381 x 30 x 256 мм </td>\r\n</tr>\r\n<tr><td colspan=\'2\'><hr></td></tr> \r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Программное обеспечение: <span class="chart_dict">[ ? ]</span></strong></span></strong></td>\r\n<td><span>MS Windows 8.1 (64-bit)</span> </td>\r\n</tr>\r\n</table>', 36000.00, b'1'),
	(9, 'MSI GL72 6QC-046XRU, 9S7-179675-046', 6, 1, 1, '<div style=\'margin: 0 0 16px 0\'>\r\nMSI GL72 6QC-045RU с 17.3 дюймовым экраном, имеет максимальное разрешение 1600x900. Ноутбук GL72 6QC-045RU оснащен процессором Intel Core i5 2300 МГц Skylake (6300HQ), 4 ГБ оперативной памяти и достаточно мощной видеокартой NVIDIA GeForce GT 940MX. Результатом работы MSI стала продукция с высочайшей производительностью, проверенной надежностью, превосходными потребительскими качествами и выразительным стилем. Качество продукции MSI соответствует самым высоким стандартам. Гарантия на MSI GL72 составляет 1 год.\r\n</div>\r\n<table class="parametersInCard">\r\n<tr>\r\n<td COLSPAN="2">\r\n<div style="position: relative;"><div style="overflow: hidden; float: right; position: absolute; right: 0px; top: 8px;"><img src="/img/Ivy_intel_logos_78x59/core_i5.png" alt="Core i5"/></div></div>\r\n</td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Процессор: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>Intel</span>   <span>Core i5</span> 2300 МГц <span>Skylake</span>  (6300HQ) </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Количество ядер: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td>4 </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Шина/Кеш: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td>6 Mb L2 (L3) Cache </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Оперативная память: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td>4096 Мб  <span>DDR4-2133МГц</span> </td>\r\n</tr>\r\n<tr><td colspan=\'2\'><hr></td></tr> \r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Экран: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td>17.3" <span>LED</span> <span>Матовый (No Glare)</span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Разрешение: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>(1600x900)</span> <span>WXGA++</span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Видеокарта: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>NVIDIA</span> <span>GeForce GT 940MX</span>, 2048+1632 Мб   <b>Доп. карта:</b> <span>Intel HD Graphics 530, 64+1632 Мб</span>  </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Звуковая карта: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>Nahimic Audio Enhancer</span> </td>\r\n</tr>\r\n<tr><td colspan=\'2\'><hr></td></tr> \r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Жесткий диск: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td>750 Гб (<span>5400 rpm</span>),   <span>HDD</span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Оптический привод: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>DVD±RW</span> <span>(DL)</span>  </td>\r\n</tr>\r\n<tr><td colspan=\'2\'><hr></td></tr> \r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Связь: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>lan 10/100/1000</span>  </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Беспроводная связь: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>Bluetooth 4.0</span>, <span>WiFi (802.11 a/b/g/n/ac)</span>     </td>\r\n</tr>\r\n<tr><td colspan=\'2\'><hr></td></tr> \r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Порты: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td>1x<span>USB 2.0</span>,  2x<span>USB 3.0</span>,  1x<span>USB 3.1</span>,  <span>Kensington security</span>, <span>Line-out</span>, <span>Mic-in</span>, <span>HDMI</span>, <span>Mini DisplayPort</span></span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Слоты расширения: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>Card Reader (SD/SDHC/SDXC)</span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Дополнительные устройства: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span><span>Camera (1.3)</span></span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Устройства ввода: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>Кл-ра Windows, Touch Pad</span> </td>\r\n</tr>\r\n<tr><td colspan=\'2\'><hr></td></tr> \r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Батарея: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td>Li-Ion <span>4400</span> мАч  (до 3.0 часов)   </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Вес: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>2.800</span> кг </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong>Цвет:</strong></td>\r\n<td>Черный   </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong>Цвет клавиатуры:</strong></td>\r\n<td>Черный </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong>Материал крышки:</strong></td>\r\n<td><span> Пластик</span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Материал корпуса: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>Пластик</span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong>Корпус (Ш х В х Г):</strong></td>\r\n<td>420 x 37 x 287 мм </td>\r\n</tr>\r\n<tr><td colspan=\'2\'><hr></td></tr> \r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Программное обеспечение: <span class="chart_dict">[ ? ]</span></strong></span></strong></td>\r\n<td><span>Free DOS</span> </td>\r\n</tr>\r\n</table>', 52000.00, b'1'),
	(10, 'HP Pavilion 15-bc005ur, X7J02EA', 5, 2, 1, '<div style=\'margin: 0 0 16px 0\'>\r\nHP Pavilion 15-bc005ur, на базе процессора Intel Core i5 имеет прекрасное соотношение цена - качество. Благодаря видеокарте NVIDIA GeForce GTX 950M и оперативной памяти, объемом 8 ГБ модель 15-bc005ur рассчитана на широкий круг потребителей, как бизнес плана, так и игровой аудитории. Автономная работа до 4 часов, что позволяет работать длительное время без питания, для хранения данных, пользователям предоставлено 1000 ГБ на жестком диске.\r\n</div>\r\n<table class="parametersInCard">\r\n<tr>\r\n<td COLSPAN="2">\r\n<div style="position: relative;"><div style="overflow: hidden; float: right; position: absolute; right: 0px; top: 8px;"><img src="/img/Ivy_intel_logos_78x59/core_i5.png" alt="Core i5"/></div></div>\r\n</td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Процессор: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>Intel</span>   <span>Core i5</span> 2300 МГц <span>Skylake</span>  (6300HQ) </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Количество ядер: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td>4 </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Шина/Кеш: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td>6 Mb L2 (L3) Cache </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Оперативная память: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td>8192 Мб  <span>DDR4-2133МГц</span> </td>\r\n</tr>\r\n<tr><td colspan=\'2\'><hr></td></tr> \r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Экран: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td>15.6" <span>IPS (LED)</span> <span>Матовый (No Glare)</span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Разрешение: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>(1920x1080)</span> <span>Full HD</span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Видеокарта: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>NVIDIA</span> <span>GeForce GTX 950M</span>, 2048+1632 Мб   <b>Доп. карта:</b> <span>Intel HD Graphics 530, 64+1632 Мб</span>  </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Звуковая карта: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>Bang & Olufsen</span> </td>\r\n</tr>\r\n<tr><td colspan=\'2\'><hr></td></tr> \r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Жесткий диск: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td>1000 Гб (<span>7200 rpm</span>),   <span>HDD</span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Оптический привод: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>DVD±RW</span> <span>(DL)</span>  </td>\r\n</tr>\r\n<tr><td colspan=\'2\'><hr></td></tr> \r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Связь: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>lan 10/100/1000</span>  </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Беспроводная связь: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>Bluetooth 4.2</span>, <span>WiFi (802.11 a/b/g/n/ac)</span>     </td>\r\n</tr>\r\n<tr><td colspan=\'2\'><hr></td></tr> \r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Порты: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td>1x<span>USB 2.0</span>,  2x<span>USB 3.0</span>,    <span>Kensington security</span>, <span>Line-out</span>, <span>Mic-in</span>, <span>HDMI</span></span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Слоты расширения: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>Card Reader (SD/SDHC/SDXC)</span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Дополнительные устройства: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span><span>Camera (1.0)</span></span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Устройства ввода: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>Кл-ра Windows, Touch Pad</span> </td>\r\n</tr>\r\n<tr><td colspan=\'2\'><hr></td></tr> \r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Батарея: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td>Li-Ion <span>2800</span> мАч  (до 4.0 часов)   </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Вес: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>2.200</span> кг </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong>Цвет:</strong></td>\r\n<td>Серебристый   </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong>Цвет клавиатуры:</strong></td>\r\n<td>Серебристый </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong>Материал крышки:</strong></td>\r\n<td><span> Пластик</span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Материал корпуса: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>Пластик</span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong>Корпус (Ш х В х Г):</strong></td>\r\n<td>382 x 25 x 253 мм </td>\r\n</tr>\r\n<tr><td colspan=\'2\'><hr></td></tr> \r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Программное обеспечение: <span class="chart_dict">[ ? ]</span></strong></span></strong></td>\r\n<td><span>MS Windows 10 Home (64-bit)</span> </td>\r\n</tr>\r\n</table>', 71990.00, b'1'),
	(11, 'Lenovo IdeaPad Z5170, 80K6017DRK', 4, 4, 1, '<div style=\'margin: 0 0 16px 0\'>\r\nLenovo IdeaPad Z5170 имеет процессор Intel Core i7 2400 МГц Broadwell (5500U), а так же видеокарту AMD Radeon R9 M375, в сочетании с 15.6 дюймовым экраном, пользователям доступны максимальные мультимедийные возможности. Ноутбук Lenovo Z5170, рассчитан на широкий круг аудитории, в том числе игровой и бизнес класса. На хранение данных и мультимедии отведен жесткий диск, емкостью 1000 ГБ, это позволяет всегда иметь под рукой всю необходимую информацию и файлы, не зависимо от места нахождения. Автономная работа данной модели предполагает до 5 часов. Гарантия на ноутбук IdeaPad Z5170 составляет 1 год.\r\n</div>\r\n<table class="parametersInCard">\r\n<tr>\r\n<td COLSPAN="2">\r\n<div style="position: relative;"><div style="overflow: hidden; float: right; position: absolute; right: 0px; top: 8px;"><img src="/img/Ivy_intel_logos_78x59/core_i7.png" alt="Core i7"/></div></div>\r\n</td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Процессор: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>Intel</span>   <span>Core i7</span> 2400 МГц <span>Broadwell</span>  (5500U) </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Количество ядер: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td>2 </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Шина/Кеш: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td>4 Mb L2 (L3) Cache </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Оперативная память: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td>16384 Мб  <span>DDR3-1600МГц</span> </td>\r\n</tr>\r\n<tr><td colspan=\'2\'><hr></td></tr> \r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Экран: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td>15.6" <span>LED</span> <span>Матовый (No Glare)</span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Разрешение: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>(1920x1080)</span> <span>Full HD</span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Видеокарта: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>AMD</span> <span>Radeon R9 M375</span>, 4096+1632 Мб   <b>Доп. карта:</b> <span>Intel HD Graphics 5500, 64+1632 Мб</span>  </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Звуковая карта: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>Intel High-Definition Audio</span> </td>\r\n</tr>\r\n<tr><td colspan=\'2\'><hr></td></tr> \r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Жесткий диск: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td>1000 Гб (<span>5400 rpm</span>),   <span>HDD</span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Оптический привод: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>DVD±RW</span> <span>(DL)</span>  </td>\r\n</tr>\r\n<tr><td colspan=\'2\'><hr></td></tr> \r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Связь: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>lan 10/100/1000</span>  </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Беспроводная связь: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>Bluetooth 4.0</span>, <span>WiFi (802.11 b/g/n)</span>     </td>\r\n</tr>\r\n<tr><td colspan=\'2\'><hr></td></tr> \r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Порты: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td>1x<span>USB 2.0</span>,  2x<span>USB 3.0</span>,    <span>Kensington security</span>, <span>Line-out</span>, <span>Mic-in</span>, <span>HDMI</span>, <span>VGA</span></span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Слоты расширения: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>Card Reader (SD/MMC)</span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Дополнительные устройства: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span><span>Camera (1.0)</span></span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Дополнительно: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><b><span>Intel RealSense Camera (3D камера).</span></b>  </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Устройства ввода: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>Кл-ра Windows, Touch Pad</span> </td>\r\n</tr>\r\n<tr><td colspan=\'2\'><hr></td></tr> \r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Батарея: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td>Li-Ion <span>2200</span> мАч  (до 5.0 часов)   </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Вес: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>2.240</span> кг </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong>Цвет:</strong></td>\r\n<td>Белый   </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong>Цвет клавиатуры:</strong></td>\r\n<td>Черный </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong>Материал крышки:</strong></td>\r\n<td><span> Пластик</span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Материал корпуса: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>Алюминий</span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong>Корпус (Ш х В х Г):</strong></td>\r\n<td>381 x 25 x 265 мм </td>\r\n</tr>\r\n<tr><td colspan=\'2\'><hr></td></tr> \r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Программное обеспечение: <span class="chart_dict">[ ? ]</span></strong></span></strong></td>\r\n<td><span>MS Windows 10 Home (64-bit)</span> </td>\r\n</tr>\r\n</table>', 62900.00, b'1'),
	(12, 'HP 15-ba006ur, X0M79EA', 3, 2, 2, '<div style=\'margin: 0 0 16px 0\'>\r\nHP 15-ba006ur, на базе процессора AMD E-Series имеет прекрасное соотношение цена - качество. Благодаря видеокарте AMD Radeon R2 series и оперативной памяти, объемом 4 ГБ модель 15-ba006ur будет идеальным вариантом ноутбука для офиса и дома. Автономная работа до 3 часов, что позволяет работать длительное время без питания, для хранения данных, пользователям предоставлено 500 ГБ на жестком диске.\r\n</div>\r\n<table class="parametersInCard">\r\n<tr>\r\n<td COLSPAN="2">\r\n<div style="position: relative;"><div style="overflow: hidden; float: right; position: absolute; right: 0px; top: 8px;"><img src="/img/AMDchip_logos_78x59/E-Series.png" alt="E-Series"/></div></div>\r\n</td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Процессор: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>AMD</span>   <span>E-Series</span> 1800 МГц <span>Carrizo-L</span>  (E2-7110) </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Количество ядер: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td>4 </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Шина/Кеш: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td>2 Mb L2 (L3) Cache </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Оперативная память: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td>4096 Мб  <span>DDR3-1600МГц</span> </td>\r\n</tr>\r\n<tr><td colspan=\'2\'><hr></td></tr> \r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Экран: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td>15.6" <span>LED</span> <span>Зеркальный (Glare)</span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Разрешение: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>(1366x768)</span> <span>WXGA+</span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Видеокарта: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>AMD</span> <span>Radeon R2 series</span>, 64+1632 Мб    </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Звуковая карта: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>DTS Studio Sound</span> </td>\r\n</tr>\r\n<tr><td colspan=\'2\'><hr></td></tr> \r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Жесткий диск: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td>500 Гб (<span>5400 rpm</span>),   <span>HDD</span> </td>\r\n</tr>\r\n<tr><td colspan=\'2\'><hr></td></tr> \r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Связь: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>lan 10/100</span>  </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Беспроводная связь: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>Bluetooth 4.0</span>, <span>WiFi (802.11 b/g/n)</span>     </td>\r\n</tr>\r\n<tr><td colspan=\'2\'><hr></td></tr> \r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Порты: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td>2x<span>USB 2.0</span>,  1x<span>USB 3.0</span>,    <span>Kensington security</span>, <span>Line-out</span>, <span>Mic-in</span>, <span>HDMI</span></span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Слоты расширения: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>Card Reader (SD/SDHC/SDXC)</span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Дополнительные устройства: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span><span>Camera (1.3)</span></span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Устройства ввода: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>Кл-ра Windows, Touch Pad</span> </td>\r\n</tr>\r\n<tr><td colspan=\'2\'><hr></td></tr> \r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Батарея: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td>Li-Ion <span>2620</span> мАч  (до 3.0 часов)   </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Вес: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>2.040</span> кг </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong>Цвет:</strong></td>\r\n<td>Черный   </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong>Цвет клавиатуры:</strong></td>\r\n<td>Черный </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong>Материал крышки:</strong></td>\r\n<td><span> Пластик</span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Материал корпуса: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>Пластик</span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong>Корпус (Ш х В х Г):</strong></td>\r\n<td>384 x 24 x 254 мм </td>\r\n</tr>\r\n<tr><td colspan=\'2\'><hr></td></tr> \r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Программное обеспечение: <span class="chart_dict">[ ? ]</span></strong></span></strong></td>\r\n<td><span>Free DOS</span> </td>\r\n</table>', 17990.00, b'1'),
	(13, 'Lenovo IdeaPad 300-15, 80M30001RK', 2, 4, 2, '<div style=\'margin: 0 0 16px 0\'>\r\nLenovo IdeaPad 300-15 имеет процессор Intel Celeron Dual Core 1600 МГц Braswell (N3050), а так же видеокарту NVIDIA Intel HD Graphics, в сочетании с 15.6 дюймовым экраном, пользователям доступны максимальные мультимедийные возможности. Ноутбук Lenovo 300-15, рассчитан на широкий круг аудитории, в том числе игровой и бизнес класса. На хранение данных и мультимедии отведен жесткий диск, емкостью 500 ГБ, это позволяет всегда иметь под рукой всю необходимую информацию и файлы, не зависимо от места нахождения. Автономная работа данной модели предполагает до 4 часов. Гарантия на ноутбук IdeaPad 300-15 составляет 1 год.\r\n</div>\r\n<table class="parametersInCard">\r\n<tr>\r\n<td COLSPAN="2">\r\n<div style="position: relative;"><div style="overflow: hidden; float: right; position: absolute; right: 0px; top: 8px;"><img src="http://www.intel.com/sites/sitewide/pix/badges/celeron/cp_78.gif" alt="Celeron"/></div></div>\r\n</td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Процессор: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>Intel</span>   <span>Celeron Dual Core</span> 1600 МГц <span>Braswell</span>  (N3050) </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Количество ядер: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td>2 </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Шина/Кеш: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td>1 Mb L2 (L3) Cache </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Оперативная память: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td>2048 Мб  <span>DDR3-1600МГц</span> </td>\r\n</tr>\r\n<tr><td colspan=\'2\'><hr></td></tr> \r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Экран: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td>15.6" <span>LED</span> <span>Зеркальный (Glare)</span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Разрешение: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>(1366x768)</span> <span>WXGA </span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Видеокарта: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>NVIDIA</span> <span>Intel HD Graphics</span>, 64+1632 Мб    </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Звуковая карта: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>Dolby Advanced Audio</span> </td>\r\n</tr>\r\n<tr><td colspan=\'2\'><hr></td></tr> \r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Жесткий диск: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td>500 Гб (<span>5400 rpm</span>),   <span>HDD</span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Оптический привод: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>DVD±RW</span>   </td>\r\n</tr>\r\n<tr><td colspan=\'2\'><hr></td></tr> \r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Связь: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>lan 10/100/1000</span>  </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Беспроводная связь: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>Bluetooth 4.0</span>, <span>WiFi (802.11 b/g/n)</span>     </td>\r\n</tr>\r\n<tr><td colspan=\'2\'><hr></td></tr> \r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Порты: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td>1x<span>USB 2.0</span>,  2x<span>USB 3.0</span>,    <span>Kensington security</span>, <span>Line-out</span>, <span>Mic-in</span>, <span>HDMI</span>, <span>VGA</span></span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Слоты расширения: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>Card Reader (SD/SDHC/SDXC)</span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Дополнительные устройства: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span><span>Camera (1.0)</span></span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Устройства ввода: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>Кл-ра Windows, Touch Pad</span> </td>\r\n</tr>\r\n<tr><td colspan=\'2\'><hr></td></tr> \r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Батарея: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td>Li-Ion <span>2200</span> мАч  (до 4.0 часов)   </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Вес: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>2.300</span> кг </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong>Цвет:</strong></td>\r\n<td>Черный   </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong>Цвет клавиатуры:</strong></td>\r\n<td>Черный </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong>Материал крышки:</strong></td>\r\n<td><span> Пластик</span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Материал корпуса: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>Пластик</span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong>Корпус (Ш х В х Г):</strong></td>\r\n<td>384 x 23 x 265 мм </td>\r\n</tr>\r\n<tr><td colspan=\'2\'><hr></td></tr> \r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Программное обеспечение: <span class="chart_dict">[ ? ]</span></strong></span></strong></td>\r\n<td><span>Free DOS</span> </td>\r\n</table>', 17500.00, b'1'),
	(14, 'Dell Inspiron 3552, 3552-9879', 1, 3, 2, '<div style=\'margin: 0 0 16px 0\'>\r\nDell Inspiron 3552 построен на базе процессора Intel Celeron Dual Core 1600 МГц, имеет 15.6 оперативной памяти и жесткий диск, объемом 500 Гб. Гарантия производителя на ноутбук Dell 3552 составляет 1 год. Получить техническую поддержку покупатель может на официальном сайте производителя, или по телефону горячей линии. Модель Dell Inspiron 3552 является хорошим примером, когда начинка идет в один шаг с современными технологиями. Dell станет удачным выбором благодаря сбалансированному сочетанию потребительских свойств и высокому качеству продукта.\r\n</div>\r\n<table class="parametersInCard">\r\n<tr>\r\n<td COLSPAN="2">\r\n<div style="position: relative;"><div style="overflow: hidden; float: right; position: absolute; right: 0px; top: 8px;"><img src="http://www.intel.com/sites/sitewide/pix/badges/celeron/cp_78.gif" alt="Celeron"/></div></div>\r\n</td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Процессор: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>Intel</span>   <span>Celeron Dual Core</span> 1600 МГц <span>Braswell</span>  (N3050) </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Количество ядер: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td>2 </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Шина/Кеш: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td>2 Mb L2 (L3) Cache </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Оперативная память: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td>4096 Мб  <span>DDR3-1600МГц</span> </td>\r\n</tr>\r\n<tr><td colspan=\'2\'><hr></td></tr> \r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Экран: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td>15.6" <span>LED</span> <span>Зеркальный (Glare)</span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Разрешение: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>(1366x768)</span> <span>WXGA </span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Видеокарта: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>Intel</span> <span>HD Graphics</span>, 64+1632 Мб    </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Звуковая карта: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>Intel High-Definition Audio</span> </td>\r\n</tr>\r\n<tr><td colspan=\'2\'><hr></td></tr> \r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Жесткий диск: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td>500 Гб (<span>5400 rpm</span>),   <span>HDD</span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Оптический привод: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>DVD±RW</span> <span>(DL)</span>  </td>\r\n</tr>\r\n<tr><td colspan=\'2\'><hr></td></tr> \r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Беспроводная связь: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>Bluetooth 4.0</span>, <span>WiFi (802.11 b/g/n)</span>     </td>\r\n</tr>\r\n<tr><td colspan=\'2\'><hr></td></tr> \r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Порты: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td>2x<span>USB 2.0</span>,  1x<span>USB 3.0</span>,    <span>Kensington security</span>, <span>Line-out</span>, <span>Mic-in</span>, <span>HDMI</span></span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Слоты расширения: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>Card Reader (SD/SDHC/SDXC)</span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Дополнительные устройства: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span><span>Camera (1.0)</span></span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Устройства ввода: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>Кл-ра Windows, Touch Pad</span> </td>\r\n</tr>\r\n<tr><td colspan=\'2\'><hr></td></tr> \r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Батарея: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td>Li-Ion <span>2750</span> мАч  (до 8.0 часов)   </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Вес: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>2.140</span> кг </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong>Цвет:</strong></td>\r\n<td>Черный   </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong>Цвет клавиатуры:</strong></td>\r\n<td>Черный </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong>Материал крышки:</strong></td>\r\n<td><span> Пластик</span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Материал корпуса: <span class="chart_dict">[ ? ]</span></strong></strong></td>\r\n<td><span>Пластик</span> </td>\r\n</tr>\r\n<tr class=\'\'>\r\n<td class="cell1"><strong>Корпус (Ш х В х Г):</strong></td>\r\n<td>380 x 22 x 260 мм </td>\r\n</tr>\r\n<tr><td colspan=\'2\'><hr></td></tr> \r\n<tr class=\'\'>\r\n<td class="cell1"><strong><strong class="dict">Программное обеспечение: <span class="chart_dict">[ ? ]</span></strong></span></strong></td>\r\n<td><span>MS Windows 10 Home (64-bit)</span> </td>\r\n</table>', 19100.00, b'1');
/*!40000 ALTER TABLE `goods` ENABLE KEYS */;


-- Дамп структуры для таблица store_test.goods_in_orders
CREATE TABLE IF NOT EXISTS `goods_in_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL DEFAULT '0',
  `goods_id` int(11) NOT NULL DEFAULT '0',
  `price` decimal(8,2) NOT NULL DEFAULT '0.00',
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_goods_in_orders_orders` (`order_id`),
  KEY `FK_goods_in_orders_goods` (`goods_id`),
  CONSTRAINT `FK_goods_in_orders_goods` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_goods_in_orders_orders` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы store_test.goods_in_orders: ~80 rows (приблизительно)
/*!40000 ALTER TABLE `goods_in_orders` DISABLE KEYS */;
INSERT INTO `goods_in_orders` (`id`, `order_id`, `goods_id`, `price`, `quantity`) VALUES
	(1, 7, 3, 15900.00, 1),
	(2, 7, 4, 15900.00, 2),
	(3, 9, 3, 15900.00, 1),
	(4, 10, 3, 15900.00, 1),
	(5, 11, 3, 15900.00, 1),
	(6, 12, 3, 15900.00, 1),
	(7, 13, 3, 15900.00, 1),
	(8, 13, 4, 15900.00, 1),
	(9, 14, 3, 15900.00, 1),
	(10, 14, 4, 15900.00, 2),
	(11, 15, 3, 15900.00, 2),
	(12, 15, 4, 15900.00, 1),
	(13, 16, 3, 15900.00, 2),
	(14, 16, 4, 15900.00, 1),
	(15, 17, 3, 15900.00, 1),
	(16, 17, 4, 15900.00, 2),
	(17, 18, 3, 15900.00, 1),
	(18, 18, 4, 15900.00, 2),
	(19, 19, 3, 15900.00, 1),
	(20, 19, 4, 15900.00, 2),
	(21, 20, 3, 15900.00, 1),
	(22, 20, 4, 15900.00, 2),
	(23, 21, 3, 15900.00, 1),
	(24, 21, 4, 15900.00, 1),
	(25, 22, 3, 15900.00, 1),
	(26, 22, 4, 15900.00, 1),
	(27, 23, 3, 15900.00, 2),
	(28, 23, 4, 15900.00, 1),
	(29, 24, 3, 15900.00, 2),
	(30, 24, 4, 15900.00, 1),
	(31, 25, 3, 15900.00, 1),
	(32, 25, 4, 15900.00, 2),
	(33, 26, 3, 15900.00, 1),
	(34, 26, 4, 15900.00, 2),
	(35, 27, 4, 15900.00, 1),
	(36, 28, 4, 15900.00, 1),
	(37, 29, 3, 15900.00, 1),
	(38, 29, 4, 15900.00, 1),
	(39, 30, 3, 15900.00, 1),
	(40, 30, 4, 15900.00, 1),
	(41, 31, 3, 15900.00, 1),
	(42, 31, 4, 15900.00, 1),
	(43, 32, 3, 15900.00, 1),
	(44, 32, 4, 15900.00, 1),
	(45, 33, 3, 15900.00, 1),
	(46, 33, 4, 15900.00, 2),
	(47, 34, 3, 15900.00, 1),
	(48, 35, 3, 15900.00, 1),
	(49, 36, 3, 15900.00, 1),
	(50, 36, 4, 15900.00, 1),
	(51, 37, 3, 15900.00, 1),
	(52, 38, 3, 15900.00, 2),
	(53, 38, 4, 15900.00, 1),
	(54, 39, 3, 15900.00, 1),
	(55, 40, 3, 15900.00, 1),
	(56, 41, 3, 15900.00, 1),
	(57, 41, 4, 15900.00, 1),
	(58, 42, 3, 15900.00, 1),
	(59, 43, 3, 15900.00, 1),
	(60, 44, 3, 15900.00, 1),
	(61, 45, 3, 15900.00, 1),
	(62, 46, 3, 15900.00, 1),
	(63, 47, 3, 15900.00, 1),
	(64, 48, 3, 15900.00, 1),
	(65, 49, 3, 15900.00, 1),
	(66, 50, 3, 15900.00, 1),
	(67, 51, 3, 15900.00, 1),
	(68, 51, 4, 15900.00, 1),
	(69, 52, 3, 15900.00, 1),
	(70, 52, 4, 15900.00, 2),
	(71, 53, 3, 15900.00, 1),
	(72, 53, 4, 15900.00, 2),
	(73, 54, 9, 52000.00, 1),
	(74, 54, 7, 16990.00, 2),
	(75, 55, 4, 15900.00, 1),
	(76, 55, 3, 15900.00, 2),
	(77, 56, 3, 15900.00, 1),
	(78, 57, 4, 15900.00, 1),
	(79, 57, 7, 16990.00, 1),
	(80, 58, 4, 15900.00, 1),
	(81, 59, 7, 16990.00, 1),
	(82, 60, 3, 15900.00, 1),
	(83, 61, 3, 15900.00, 1),
	(84, 61, 4, 15900.00, 1),
	(85, 62, 3, 15900.00, 1);
/*!40000 ALTER TABLE `goods_in_orders` ENABLE KEYS */;


-- Дамп структуры для таблица store_test.images
CREATE TABLE IF NOT EXISTS `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы store_test.images: ~8 rows (приблизительно)
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` (`id`, `url`) VALUES
	(1, '1_dellinspiron35523552-9879.jpg'),
	(2, '1_lenovoideapad300-1580m30001rk.jpg'),
	(3, '1_hp1515ba006ur.jpg'),
	(4, '1_lenovoideapadz517080k6017drk.jpg'),
	(5, '1_hppavilion15bc005ur.jpg'),
	(6, '1_msiggl726qc-046xru.jpg'),
	(7, '1_aceraspiree5-551gf63g.jpg'),
	(8, '1_hp1414am006ur.jpg'),
	(9, '1_dellinspiron31623162-4797.jpg'),
	(10, '1_lenovoideapad100-1480mh001brk.jpg');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;


-- Дамп структуры для таблица store_test.orders
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) NOT NULL DEFAULT '0',
  `order_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `phone` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_orders_users` (`user_name`),
  CONSTRAINT `FK_orders_users` FOREIGN KEY (`user_name`) REFERENCES `site_users` (`user_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы store_test.orders: ~60 rows (приблизительно)
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` (`id`, `user_name`, `order_date`, `phone`, `address`, `email`, `first_name`, `last_name`, `middle_name`) VALUES
	(1, 'pirog', '2016-09-15 15:00:29', '+79057121248', 'Москва, ул. Тверская, 1', 'pirogki1@gmail.com', 'Андрей', 'Иванов', 'Львович'),
	(2, 'pirog', '2016-09-15 15:59:32', '+79057121248', 'Москва, ул. Тверская, 1', 'pirogki1@gmail.com', 'Андрей', 'Иванов', 'Львович'),
	(3, 'pirog', '2016-09-15 16:10:02', '+79057121248', 'Москва, ул. Тверская, 1', 'pirogki1@gmail.com', 'Андрей', 'Иванов', 'Львович'),
	(4, 'pirog', '2016-09-15 18:16:32', '+79057121248', 'Москва, ул. Тверская, 1', 'pirogki1@gmail.com', 'Андрей', 'Иванов', 'Львович'),
	(5, 'pirog', '2016-09-15 18:46:06', '+79057121248', 'Москва, ул. Тверская, 1', 'pirogki1@gmail.com', 'Андрей', 'Иванов', 'Львович'),
	(6, 'pirog', '2016-09-15 18:55:49', '+79057121248', 'Москва, ул. Тверская, 1', 'pirogki1@gmail.com', 'Андрей', 'Иванов', 'Львович'),
	(7, 'pirog', '2016-09-15 19:01:14', '+79057121248', 'Москва, ул. Тверская, 1', 'pirogki1@gmail.com', 'Андрей', 'Иванов', 'Львович'),
	(8, 'pirog', '2016-09-15 21:34:46', '+79057121248', 'Москва, ул. Тверская, 1', 'pirogki1@gmail.com', 'Андрей', 'Иванов', 'Львович'),
	(9, 'pirog', '2016-09-17 14:11:02', '+79057121248', 'Москва, ул. Тверская, 1', 'pirogki1@gmail.com', 'Андрей', 'Иванов', 'Львович'),
	(10, 'pirog', '2016-09-17 17:13:42', '+79057121248', 'Москва, ул. Тверская, 1', 'pirogki1@gmail.com', 'Андрей', 'Иванов', 'Львович'),
	(11, 'pirog', '2016-09-17 17:36:35', '+79057121248', 'Москва, ул. Тверская, 1', 'pirogki1@gmail.com', 'Андрей', 'Иванов', 'Львович'),
	(12, 'pirog', '2016-09-17 17:37:31', '+79057121248', 'Москва, ул. Тверская, 1', 'pirogki1@gmail.com', 'Андрей', 'Иванов', 'Львович'),
	(13, 'pirog', '2016-09-17 17:39:38', '+79057121248', 'Москва, ул. Тверская, 1', 'pirogki1@gmail.com', 'Андрей', 'Иванов', 'Львович'),
	(14, 'pirog', '2016-09-17 18:04:54', '+79057121248', 'Москва, ул. Тверская, 1', 'pirogki1@gmail.com', 'Андрей', 'Иванов', 'Львович'),
	(15, 'pirog', '2016-09-17 18:44:15', '+79057121248', 'Москва, ул. Тверская, 1', 'pirogki1@gmail.com', 'Андрей', 'Иванов', 'Львович'),
	(16, 'pirog', '2016-09-17 18:44:15', '+79057121248', 'Москва, ул. Тверская, 1', 'pirogki1@gmail.com', 'Андрей', 'Иванов', 'Львович'),
	(17, 'pirog', '2016-09-17 20:04:34', '+79057121248', 'Москва, ул. Тверская, 1', 'pirogki1@gmail.com', 'Андрей', 'Иванов', 'Львович'),
	(18, 'pirog', '2016-09-17 20:04:34', '+79057121248', 'Москва, ул. Тверская, 1', 'pirogki1@gmail.com', 'Андрей', 'Иванов', 'Львович'),
	(19, 'pirog', '2016-09-17 20:06:41', '+79057121248', 'Москва, ул. Тверская, 1', 'pirogki1@gmail.com', 'Андрей', 'Иванов', 'Львович'),
	(20, 'pirog', '2016-09-17 20:06:42', '+79057121248', 'Москва, ул. Тверская, 1', 'pirogki1@gmail.com', 'Андрей', 'Иванов', 'Львович'),
	(21, 'pirog', '2016-09-17 20:24:47', '+79057121248', 'Москва, ул. Тверская, 1', 'pirogki1@gmail.com', 'Андрей', 'Иванов', 'Львович'),
	(22, 'pirog', '2016-09-17 20:24:48', '+79057121248', 'Москва, ул. Тверская, 1', 'pirogki1@gmail.com', 'Андрей', 'Иванов', 'Львович'),
	(23, 'pirog', '2016-09-17 21:32:23', '+79057121248', 'Москва, ул. Тверская, 1', 'pirogki1@gmail.com', 'Андрей', 'Иванов', 'Львович'),
	(24, 'pirog', '2016-09-17 21:32:23', '+79057121248', 'Москва, ул. Тверская, 1', 'pirogki1@gmail.com', 'Андрей', 'Иванов', 'Львович'),
	(25, 'pirog', '2016-09-17 21:37:17', '+79057121248', 'Москва, ул. Тверская, 1', 'pirogki1@gmail.com', 'Андрей', 'Иванов', 'Львович'),
	(26, 'pirog', '2016-09-17 21:37:18', '+79057121248', 'Москва, ул. Тверская, 1', 'pirogki1@gmail.com', 'Андрей', 'Иванов', 'Львович'),
	(27, 'pirog', '2016-09-17 21:39:25', '+79057121248', 'Москва, ул. Тверская, 1', 'pirogki1@gmail.com', 'Андрей', 'Иванов', 'Львович'),
	(28, 'pirog', '2016-09-17 21:39:25', '+79057121248', 'Москва, ул. Тверская, 1', 'pirogki1@gmail.com', 'Андрей', 'Иванов', 'Львович'),
	(29, 'pirog', '2016-09-17 22:37:52', '+79057121248', 'Москва, ул. Тверская, 1', 'pirogki1@gmail.com', 'Андрей', 'Иванов', 'Львович'),
	(30, 'pirog', '2016-09-17 22:37:52', '+79057121248', 'Москва, ул. Тверская, 1', 'pirogki1@gmail.com', 'Андрей', 'Иванов', 'Львович'),
	(31, 'pirog', '2016-09-17 22:39:46', '+79057121248', 'Москва, ул. Тверская, 1', 'pirogki1@gmail.com', 'Андрей', 'Иванов', 'Львович'),
	(32, 'pirog', '2016-09-17 22:39:47', '+79057121248', 'Москва, ул. Тверская, 1', 'pirogki1@gmail.com', 'Андрей', 'Иванов', 'Львович'),
	(33, 'pirog', '2016-09-17 22:43:00', '+79057121248', 'Москва, ул. Тверская, 1', 'pirogki1@gmail.com', 'Андрей', 'Иванов', 'Львович'),
	(34, 'pirog', '2016-09-18 00:52:45', '+79057121248', 'Москва, ул. Тверская, 1', 'pirogki1@gmail.com', 'Андрей', 'Иванов', 'Львович'),
	(35, 'pirog', '2016-09-18 00:55:37', '+79057121248', 'Москва, ул. Тверская, 1', 'pirogki1@gmail.com', 'Андрей', 'Иванов', 'Львович'),
	(36, 'pirog', '2016-09-18 00:57:07', '+79057121248', 'Москва, ул. Тверская, 1', 'pirogki1@gmail.com', 'Андрей', 'Иванов', 'Львович'),
	(37, 'pirog', '2016-09-18 00:58:46', '+79057121248', 'Москва, ул. Тверская, 1', 'pirogki1@gmail.com', 'Андрей', 'Иванов', 'Львович'),
	(38, 'pirog', '2016-09-18 18:35:34', '+79057121248', 'Москва, ул. Тверская, 1', 'pirogki1@gmail.com', 'Андрей', 'Иванов', 'Львович'),
	(39, 'pirog', '2016-09-18 18:47:14', '+79057121248', 'Москва, ул. Тверская, 1', 'pirogki1@gmail.com', 'Андрей', 'Иванов', 'Львович'),
	(40, 'pirog', '2016-09-18 18:54:42', '+79057121248', 'Москва, ул. Тверская, 1', 'pirogki1@gmail.com', 'Андрей', 'Иванов', 'Львович'),
	(41, 'pirog', '2016-09-18 19:02:58', '+79057121248', 'Москва, ул. Тверская, 1', 'pirogki1@gmail.com', 'Андрей', 'Иванов', 'Львович'),
	(42, 'pirog', '2016-09-18 19:06:30', '+79057121248', 'Москва, ул. Тверская, 1', 'pirogki1@gmail.com', 'Андрей', 'Иванов', 'Львович'),
	(43, 'pirog', '2016-09-18 19:13:29', '+79057121248', 'Москва, ул. Тверская, 1', 'pirogki1@gmail.com', 'Андрей', 'Иванов', 'Львович'),
	(44, 'pirog', '2016-09-18 19:15:22', '+79057121248', 'Москва, ул. Тверская, 1', 'pirogki1@gmail.com', 'Андрей', 'Иванов', 'Львович'),
	(45, 'pirog', '2016-09-18 19:16:07', '+79057121248', 'Москва, ул. Тверская, 1', 'pirogki1@gmail.com', 'Андрей', 'Иванов', 'Львович'),
	(46, 'pirog', '2016-09-18 19:42:45', '+79057121248', 'Москва, ул. Тверская, 1', 'pirogki1@gmail.com', 'Андрей', 'Иванов', 'Львович'),
	(47, 'pirog', '2016-09-18 20:13:46', '+79057121248', 'Москва, ул. Тверская, 1', 'pirogki1@gmail.com', 'Андрей', 'Иванов', 'Львович'),
	(48, 'pirog', '2016-09-18 22:14:12', '+79057121248', 'Москва, ул. Тверская, 1', 'pirogki1@gmail.com', 'Андрей', 'Иванов', 'Львович'),
	(49, 'pirog', '2016-09-19 00:30:47', '+79057121248', 'Москва, ул. Тверская, 1', 'pirogki1@gmail.com', 'Андрей', 'Иванов', 'Львович'),
	(50, 'pirog', '2016-09-19 00:45:27', '+79057121248', 'Москва, ул. Тверская, 1', 'pirogki1@gmail.com', 'Андрей', 'Иванов', 'Львович'),
	(51, 'pirog', '2016-09-19 01:08:43', '+79057121248', 'Москва, ул. Тверская, 1', 'pirogki1@gmail.com', 'Андрей', 'Иванов', 'Львович'),
	(52, 'pirog', '2016-09-19 13:12:59', '+79057121248', 'Москва, ул. Тверская, 1', 'pirogki1@gmail.com', 'Андрей', 'Иванов', 'Львович'),
	(53, 'pirog', '2016-09-19 13:16:29', '+79057121248', 'Москва, ул. Тверская, 1', 'pirogki1@gmail.com', 'Андрей', 'Иванов', 'Львович'),
	(54, 'pirog', '2016-09-19 13:18:53', '+79057121248', 'Москва, ул. Тверская, 1', 'pirogki1@gmail.com', 'Андрей', 'Иванов', 'Львович'),
	(55, 'pirog', '2016-09-19 13:42:32', '+79057121248', 'Москва, ул. Тверская, 1', 'pirogki1@gmail.com', 'Андрей', 'Иванов', 'Львович'),
	(56, 'pirog', '2016-09-19 13:45:28', '+79057121248', 'Москва, ул. Тверская, 1', 'pirogki1@gmail.com', 'Андрей', 'Иванов', 'Львович'),
	(57, 'pirog', '2016-09-19 13:48:09', '+79057121248', 'Москва, ул. Тверская, 1', 'pirogki1@gmail.com', 'Андрей', 'Иванов', 'Львович'),
	(58, 'pirog', '2016-09-19 13:50:38', '+79057121248', 'Москва, ул. Тверская, 1', 'pirogki1@gmail.com', 'Андрей', 'Иванов', 'Львович'),
	(59, 'pirog', '2016-09-19 13:52:01', '+79057121248', 'Москва, ул. Тверская, 1', 'pirogki1@gmail.com', 'Андрей', 'Иванов', 'Львович'),
	(60, 'pirog', '2016-09-19 14:11:38', '+79057121248', 'Москва, ул. Тверская, 1', 'pirogki1@gmail.com', 'Андрей', 'Иванов', 'Львович'),
	(61, 'pirog', '2016-09-19 19:01:14', '+79057121248', 'Москва, ул. Тверская, 1', 'pirogki1@gmail.com', 'Андрей', 'Иванов', 'Львович'),
	(62, 'pirog', '2016-09-20 13:21:31', '+79057121248', 'Москва, ул. Тверская, 1', 'pirogki1@gmail.com', 'Андрей', 'Иванов', 'Львович');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;


-- Дамп структуры для таблица store_test.order_statuses
CREATE TABLE IF NOT EXISTS `order_statuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `status_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `FK_order_statuses_order_statuses_types` (`status_id`),
  KEY `FK_order_statuses_orders` (`order_id`),
  CONSTRAINT `FK_order_statuses_order_statuses_types` FOREIGN KEY (`status_id`) REFERENCES `order_statuses_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_order_statuses_orders` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы store_test.order_statuses: ~54 rows (приблизительно)
/*!40000 ALTER TABLE `order_statuses` DISABLE KEYS */;
INSERT INTO `order_statuses` (`id`, `status_id`, `order_id`, `status_date`) VALUES
	(1, 1, 6, NULL),
	(2, 1, 7, '2016-09-15 19:01:14'),
	(3, 1, 8, '2016-09-15 21:34:46'),
	(4, 1, 9, '2016-09-17 14:11:02'),
	(5, 1, 10, '2016-09-17 17:13:42'),
	(6, 1, 11, '2016-09-17 17:36:35'),
	(7, 1, 12, '2016-09-17 17:37:31'),
	(8, 1, 13, '2016-09-17 17:39:38'),
	(9, 1, 14, '2016-09-17 18:04:54'),
	(10, 1, 15, '2016-09-17 18:44:15'),
	(11, 1, 16, '2016-09-17 18:44:15'),
	(12, 1, 17, '2016-09-17 20:04:34'),
	(13, 1, 18, '2016-09-17 20:04:35'),
	(14, 1, 19, '2016-09-17 20:06:42'),
	(15, 1, 20, '2016-09-17 20:06:42'),
	(16, 1, 21, '2016-09-17 20:24:47'),
	(17, 1, 22, '2016-09-17 20:24:48'),
	(18, 1, 23, '2016-09-17 21:32:23'),
	(19, 1, 24, '2016-09-17 21:32:23'),
	(20, 1, 25, '2016-09-17 21:37:17'),
	(21, 1, 26, '2016-09-17 21:37:18'),
	(22, 1, 27, '2016-09-17 21:39:25'),
	(23, 1, 28, '2016-09-17 21:39:25'),
	(24, 1, 29, '2016-09-17 22:37:52'),
	(25, 1, 30, '2016-09-17 22:37:52'),
	(26, 1, 31, '2016-09-17 22:39:46'),
	(27, 1, 32, '2016-09-17 22:39:47'),
	(28, 1, 33, '2016-09-17 22:43:00'),
	(29, 1, 34, '2016-09-18 00:52:46'),
	(30, 1, 35, '2016-09-18 00:55:37'),
	(31, 1, 36, '2016-09-18 00:57:08'),
	(32, 1, 37, '2016-09-18 00:58:47'),
	(33, 1, 38, '2016-09-18 18:35:34'),
	(34, 1, 39, '2016-09-18 18:47:14'),
	(35, 1, 40, '2016-09-18 18:54:42'),
	(36, 1, 41, '2016-09-18 19:02:58'),
	(37, 1, 42, '2016-09-18 19:06:30'),
	(38, 1, 43, '2016-09-18 19:13:29'),
	(39, 1, 44, '2016-09-18 19:15:22'),
	(40, 1, 45, '2016-09-18 19:16:07'),
	(41, 1, 46, '2016-09-18 19:42:45'),
	(42, 1, 47, '2016-09-18 20:13:46'),
	(43, 1, 48, '2016-09-18 22:14:12'),
	(44, 1, 49, '2016-09-19 00:30:47'),
	(45, 1, 50, '2016-09-19 00:45:27'),
	(46, 1, 51, '2016-09-19 01:08:43'),
	(47, 1, 52, '2016-09-19 13:12:59'),
	(48, 1, 53, '2016-09-19 13:16:29'),
	(49, 1, 54, '2016-09-19 13:18:53'),
	(50, 1, 55, '2016-09-19 13:42:32'),
	(51, 1, 56, '2016-09-19 13:45:28'),
	(52, 1, 57, '2016-09-19 13:48:09'),
	(53, 1, 58, '2016-09-19 13:50:38'),
	(54, 1, 59, '2016-09-19 13:52:01'),
	(55, 1, 60, '2016-09-19 14:11:38'),
	(56, 1, 61, '2016-09-19 19:01:15'),
	(57, 1, 62, '2016-09-20 13:21:31');
/*!40000 ALTER TABLE `order_statuses` ENABLE KEYS */;


-- Дамп структуры для таблица store_test.order_statuses_types
CREATE TABLE IF NOT EXISTS `order_statuses_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы store_test.order_statuses_types: ~2 rows (приблизительно)
/*!40000 ALTER TABLE `order_statuses_types` DISABLE KEYS */;
INSERT INTO `order_statuses_types` (`id`, `name`) VALUES
	(1, 'Собирается'),
	(2, 'Готов к выдаче'),
	(3, 'Исполнен');
/*!40000 ALTER TABLE `order_statuses_types` ENABLE KEYS */;


-- Дамп структуры для таблица store_test.product_categories
CREATE TABLE IF NOT EXISTS `product_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы store_test.product_categories: ~2 rows (приблизительно)
/*!40000 ALTER TABLE `product_categories` DISABLE KEYS */;
INSERT INTO `product_categories` (`id`, `name`, `sort`) VALUES
	(1, 'Игровые', 1),
	(2, 'Для роботы', 2),
	(3, 'Нетбуки', 3);
/*!40000 ALTER TABLE `product_categories` ENABLE KEYS */;


-- Дамп структуры для таблица store_test.site_users
CREATE TABLE IF NOT EXISTS `site_users` (
  `user_name` varchar(50) NOT NULL,
  `password_hash` varchar(50) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `role_id` int(11) DEFAULT '1',
  PRIMARY KEY (`user_name`),
  KEY `FK_users_user_roler` (`role_id`),
  CONSTRAINT `FK_users_user_roler` FOREIGN KEY (`role_id`) REFERENCES `user_roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы store_test.site_users: ~2 rows (приблизительно)
/*!40000 ALTER TABLE `site_users` DISABLE KEYS */;
INSERT INTO `site_users` (`user_name`, `password_hash`, `first_name`, `last_name`, `middle_name`, `phone`, `address`, `email`, `role_id`) VALUES
	('pirog', '310dcbbf4cce62f762a2aaa148d556bd', 'Андрей', 'Иванов', '', '+79057121248', 'Москва, ул. Тверская, 1', 'pirogki1@gmail.com', 1),
	('pirogki4', '310dcbbf4cce62f762a2aaa148d556bd', 'Андрей', 'Иванов', 'Львович', '+79057121248', 'Москва, ул тверская, 7', 'pirogki1@gmail.com', NULL),
	('sasha', '310dcbbf4cce62f762a2aaa148d556bd', 'Александра', 'Краснова', 'Кирилловна', '+79057121248', 'Москва, ул. ак. Анохина, 38, к.2, кв 304', 'pirogki1@gmail.com', NULL);
/*!40000 ALTER TABLE `site_users` ENABLE KEYS */;


-- Дамп структуры для таблица store_test.user_roles
CREATE TABLE IF NOT EXISTS `user_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы store_test.user_roles: ~2 rows (приблизительно)
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` (`id`, `name`) VALUES
	(1, 'Зарегестрированный пользователь'),
	(2, 'Администратор');
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
