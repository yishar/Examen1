-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2016 at 02:05 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yii2cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_assignment`
--

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('admin', '1', 1478628119),
('marc', '4', 1478629802),
('usuario', '3', 1478628885);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item`
--

CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('admin', 1, 'Admin', NULL, NULL, 1478623436, 1478623436),
('backend', 2, 'El acceso al panel de administración', NULL, NULL, 1478623437, 1478623437),
('marc', 1, 'marc', NULL, NULL, 1478628170, 1478628216),
('moderator', 1, 'Moderador', NULL, NULL, 1478623436, 1478623436),
('r_main', 2, 'Ver la página de inicio de administración', NULL, NULL, 1478623436, 1478623436),
('r_role', 2, 'Ver los roles y derechos', NULL, NULL, 1478623437, 1478623437),
('r_user', 2, 'Buscando miembros', NULL, NULL, 1478623437, 1478623437),
('usuario', 1, 'usuario', NULL, NULL, 1478628196, 1478628196),
('w_main', 2, 'Edición de la página de inicio de administración', NULL, NULL, 1478623436, 1478623436),
('w_role', 2, 'Cambio de funciones y derechos', NULL, NULL, 1478623437, 1478623437),
('w_user', 2, 'Cambiar usuario', NULL, NULL, 1478623437, 1478623437);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item_child`
--

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_item_child`
--

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('admin', 'backend'),
('admin', 'r_main'),
('admin', 'r_role'),
('admin', 'r_user'),
('admin', 'w_main'),
('admin', 'w_role'),
('admin', 'w_user'),
('moderator', 'backend'),
('moderator', 'r_main'),
('moderator', 'w_main');

-- --------------------------------------------------------

--
-- Table structure for table `auth_rule`
--

CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `categoria` varchar(45) NOT NULL,
  `seo_slug` varchar(100) NOT NULL,
  `imagen` varchar(45) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categoria`
--

INSERT INTO `categoria` (`id`, `categoria`, `seo_slug`, `imagen`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'Diseño', 'diseno', '', 3, '2016-11-08 12:22:22', 3, '2016-11-08 12:22:22');

-- --------------------------------------------------------

--
-- Table structure for table `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL,
  `comentario` varchar(255) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_noticia` int(11) NOT NULL,
  `estado` enum('aprobado','bloquear') NOT NULL DEFAULT 'aprobado',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `code` char(2) NOT NULL,
  `name` char(52) NOT NULL,
  `population` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`code`, `name`, `population`) VALUES
('AU', 'Australia', 18886000),
('BR', 'Brazil', 170115000),
('CA', 'Canada', 1147000),
('CN', 'China', 1277558000),
('DE', 'Germany', 82164700),
('FR', 'France', 59225700),
('GB', 'United Kingdom', 59623400),
('IN', 'India', 1013662000),
('RU', 'Russia', 146934000),
('US', 'United States', 278357000);

-- --------------------------------------------------------

--
-- Table structure for table `departamento`
--

CREATE TABLE `departamento` (
  `id` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `id_persona` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departamento`
--

INSERT INTO `departamento` (`id`, `nombre`, `id_persona`) VALUES
(1, 'Departamento 1', 5),
(2, 'Departamento 2', 6),
(3, 'Departamento 3', 7);

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1478622158),
('m140209_132017_init', 1478622165),
('m140403_174025_create_account_table', 1478622166),
('m140504_113157_update_tables', 1478622172),
('m140504_130429_create_token_table', 1478622174),
('m140506_102106_rbac_init', 1478622804),
('m140830_171933_fix_ip_field', 1478622176),
('m140830_172703_change_account_table_name', 1478622176),
('m141222_110026_update_ip_field', 1478622177),
('m141222_135246_alter_username_length', 1478622178),
('m150502_100114_permissions_add', 1478623437),
('m150502_113940_admin_add', 1478623442),
('m150614_103145_update_social_account_table', 1478622181),
('m150623_212711_fix_username_notnull', 1478622182),
('m151218_234654_add_timezone_to_profile', 1478622183);

-- --------------------------------------------------------

--
-- Table structure for table `noticia`
--

CREATE TABLE `noticia` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `seo_slug` varchar(100) NOT NULL,
  `detalle` text NOT NULL,
  `categoria_id` int(11) NOT NULL,
  `estado` enum('activada','desactivada') NOT NULL DEFAULT 'activada',
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `noticia`
--

INSERT INTO `noticia` (`id`, `titulo`, `seo_slug`, `detalle`, `categoria_id`, `estado`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, '¿Qué es Lorem Ipsum?', 'que-es-lorem-ipsum', '<p><strong>Lorem Ipsum</strong> es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno est&aacute;ndar de las industrias desde el a&ntilde;o 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido us&oacute; una galer&iacute;a de textos y los mezcl&oacute; de tal manera que logr&oacute; hacer un libro de textos especimen. No s&oacute;lo sobrevivi&oacute; 500 a&ntilde;os, sino que tambien ingres&oacute; como texto de relleno en documentos electr&oacute;nicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creaci&oacute;n de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y m&aacute;s recientemente con software de autoedici&oacute;n, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.</p>\r\n<p>&nbsp;</p>\r\n<h2>&iquest;Por qu&eacute; lo usamos?</h2>\r\n<p>Es un hecho establecido hace demasiado tiempo que un lector se distraer&aacute; con el contenido del texto de un sitio mientras que mira su dise&ntilde;o. El punto de usar Lorem Ipsum es que tiene una distribuci&oacute;n m&aacute;s o menos normal de las letras, al contrario de usar textos como por ejemplo "Contenido aqu&iacute;, contenido aqu&iacute;". Estos textos hacen parecerlo un espa&ntilde;ol que se puede leer. Muchos paquetes de autoedici&oacute;n y editores de p&aacute;ginas web usan el Lorem Ipsum como su texto por defecto, y al hacer una b&uacute;squeda de "Lorem Ipsum" va a dar por resultado muchos sitios web que usan este texto si se encuentran en estado de desarrollo. Muchas versiones han evolucionado a trav&eacute;s de los a&ntilde;os, algunas veces por accidente, otras veces a prop&oacute;sito (por ejemplo insert&aacute;ndole humor y cosas por el estilo).</p>\r\n<p>&nbsp;</p>\r\n<h2>&iquest;D&oacute;nde puedo conseguirlo?</h2>\r\n<p>Hay muchas variaciones de los pasajes de Lorem Ipsum disponibles, pero la mayor&iacute;a sufri&oacute; alteraciones en alguna manera, ya sea porque se le agreg&oacute; humor, o palabras aleatorias que no parecen ni un poco cre&iacute;bles. Si vas a utilizar un pasaje de Lorem Ipsum, necesit&aacute;s estar seguro de que no hay nada avergonzante escondido en el medio del texto. Todos los generadores de Lorem Ipsum que se encuentran en Internet tienden a repetir trozos predefinidos cuando sea necesario, haciendo a este el &uacute;nico generador verdadero (v&aacute;lido) en la Internet. Usa un diccionario de mas de 200 palabras provenientes del lat&iacute;n, combinadas con estructuras muy &uacute;tiles de sentencias, para generar texto de Lorem Ipsum que parezca razonable. Este Lorem Ipsum generado siempre estar&aacute; libre de repeticiones, humor agregado o palabras no caracter&iacute;sticas del lenguaje, etc.</p>', 1, 'activada', 3, '2016-11-08 12:58:47', 3, '2016-11-08 12:58:47'),
(2, 'TENDENCIAS EN DISEÑO WEB PARA ESTE AÑO', 'tendencias-en-diseno-web-para-este-ano', '<h3>NUEVO DISE&Ntilde;O FLAT</h3>\r\n<p><img class="alignnone wp-image-12702 size-full" title="Tendencias dise&ntilde;o web: Material Design Google 2016" src="https://www.40defiebre.com/wp-content/uploads/2015/11/1-metrialDesign.jpg" sizes="(max-width: 700px) 100vw, 700px" srcset="https://www.40defiebre.com/wp-content/uploads/2015/11/1-metrialDesign.jpg 700w, https://www.40defiebre.com/wp-content/uploads/2015/11/1-metrialDesign-500x230.jpg 500w" alt="Tendencias dise&ntilde;o web: Material Design Google" width="700" height="323" /></p>\r\n<p>Google nos lo present&oacute; hace ya (casi) un par de a&ntilde;os, la digievoluci&oacute;n de lo que ya era una realidad. Lo llam&oacute; <a href="https://www.google.com/design/spec/material-design/introduction.html">Material design</a>. Dicen que para su creaci&oacute;n se inspiraron en la tinta y el papel.</p>\r\n<p>No sabemos si esta historia es m&aacute;s un cuento que un hecho real. Lo que est&aacute; claro es que se <strong>incorporaron efectos de profundidad, sombras, animaciones y transiciones</strong> que mejoraron sustancialmente las interacciones dentro de sus aplicaciones. &iexcl;Adopta (si no lo has hecho) ya esta tendencia!</p>\r\n<p>Ejemplos:<br /><a href="http://material.cmiscm.com/" target="_blank">Material Interaction</a><br /><a href="http://www.canaltp.fr/" target="_blank">Canaltp</a></p>\r\n<h3>TIPOGRAF&Iacute;A</h3>\r\n<p><img class="alignnone wp-image-12703 size-full" title="Ejemplo de tipograf&iacute;a Serif" src="https://www.40defiebre.com/wp-content/uploads/2015/11/2-type.jpg" sizes="(max-width: 700px) 100vw, 700px" srcset="https://www.40defiebre.com/wp-content/uploads/2015/11/2-type.jpg 700w, https://www.40defiebre.com/wp-content/uploads/2015/11/2-type-500x230.jpg 500w" alt="Tipograf&iacute;a Serif" width="700" height="323" /></p>\r\n<p>Otra de las tendencias en dise&ntilde;o web que veremos cada vez m&aacute;s frecuentemente es el <strong>uso expresivo de la tipograf&iacute;a</strong>. Se utilizar&aacute; como forma y no como medio para comunicar, o dicho de otra forma, se ilustrar&aacute; con letras.</p>\r\n<p>Tus conocimientos tipogr&aacute;ficos ser&aacute;n fundamentales para conseguir un buen resultado, si eres principiante sudar&aacute;s con esta t&eacute;cnica. En <a href="http://donserifa.com/" target="_blank">este sitio</a> desde los m&aacute;s expertos hasta los m&aacute;s novatos podr&aacute;n cultivarse en la dif&iacute;cil, maravillosa y apasionante disciplina tipogr&aacute;fica.</p>\r\n<p>Ejemplos:<br /><a href="http://www.whitefrontier.ch/" target="_blank">White Frontier Brewery</a><br /><a href="http://www.vintagehope.co.uk/" target="_blank">Vintage hope</a></p>\r\n<h3>ANIMACIONES</h3>\r\n<p><img class="aligncenter wp-image-12704 size-full" title="Tendencias dise&ntilde;o web: Ejemplo de animaci&oacute;n " src="https://www.40defiebre.com/wp-content/uploads/2015/11/3-slack.gif" alt="Tendencias dise&ntilde;o web: Animaci&oacute;n de Slack" width="431" height="323" /></p>\r\n<p>No es ning&uacute;n secreto que las animaciones bien utilizadas enriquecen notablemente la experiencia dentro de cualquier web, sea cual sea su prop&oacute;sito. Utiliz&aacute;ndolas conseguir&aacute;s generar una <strong>experiencia m&aacute;s rica y memorable</strong>. Estas son algunas de las t&eacute;cnicas m&aacute;s populares:</p>\r\n<p><strong>Parallax</strong>:&nbsp;requiere interacci&oacute;n por parte del usuario, genera ritmo (o lo rompe) ayuda a contar historias y, en consecuencia, potencia el contenido.</p>\r\n<p>Ejemplos:<br /><a href="http://le-mugs.com/" target="_blank">Le Mugs</a><br /><a href="http://forbetter.coffee/" target="_blank">For better coffee</a></p>\r\n<p><strong>Loaders:&nbsp;</strong>no requieren interacci&oacute;n. Calman ansiedades, entretienen y si me apuras hipnotizan (en el mejor de los casos).</p>\r\n<p>Ejemplos:<br /><a href="http://njla.us/" target="_blank">NJ(L.A.)</a><br /><a href="https://socialmood.com/?__hstc=123120020.be10fa7ca9cd2af686e259cdb4f93882.1480359102428.1480359102428.1480359102428.1&amp;__hssc=123120020.1.1480359102429&amp;__hsfp=3914750252">Socialmood</a></p>\r\n<p><strong>Hover:&nbsp;</strong>ayuda a que la experiencia sea m&aacute;s intuitiva y da una respuesta inmediata a cualquier movimiento del rat&oacute;n sobre el contenido.</p>\r\n<p>Ejemplos:<br /><a href="http://www.curiousspace.com/" target="_blank">Curiousspace</a><br /><a href="http://studiokraftwerk.com/" target="_blank">Kraftwerk</a></p>\r\n<p><strong>Slideshow:</strong>&nbsp;una forma efectiva de presentar varias im&aacute;genes o v&iacute;deos sin sobrecargar tu dise&ntilde;o.</p>\r\n<p>Ejemplos:<br /><a href="http://labs.convoy.me/camper/#!/landing" target="_blank">Camper</a><br /><a href="http://bartaile.com/" target="_blank">Bartaile</a></p>\r\n<h3>PATRONES UI</h3>\r\n<p><img class="alignnone wp-image-12705 size-full" title="Tendencias dise&ntilde;o web: Ui patterns" src="https://www.40defiebre.com/wp-content/uploads/2015/11/4-ui.jpg" sizes="(max-width: 700px) 100vw, 700px" srcset="https://www.40defiebre.com/wp-content/uploads/2015/11/4-ui.jpg 700w, https://www.40defiebre.com/wp-content/uploads/2015/11/4-ui-500x230.jpg 500w" alt="Tendencias dise&ntilde;o web: Ui patterns" width="700" height="323" /></p>\r\n<p>&iexcl;Ay los patrones UI y sus efectos secundarios! No s&eacute; a ti, pero yo m&aacute;s de una vez he sentido un &ldquo;d&eacute;j&agrave; vu&rdquo; mientras navegaba por una web. Patrones que a golpe de repetici&oacute;n se han grabado a fuego en nuestras retinas y a&uacute;n as&iacute; nos gustan (siempre con medida).&nbsp;<strong>Estos patrones gu&iacute;an al usuario mientras navega por tu web</strong>. Te solucionar&aacute;n m&aacute;s de una papeleta. &Uacute;salos, funcionan.</p>\r\n<p>El&nbsp;<strong><a href="https://www.40defiebre.com/menu-hamburguesa-tendencia-web/">men&uacute; hamburguesa</a>,</strong> aunque tiene detractores no hay duda de que su uso ya generalizado es una funci&oacute;n f&aacute;cilmente reconocible.</p>\r\n<p>Ejemplos:<br /><a href="http://www.etq-amsterdam.com/collection" target="_blank">Collection ETQ &Aacute;msterdam</a><br /><a href="http://visualizer.halowaypoint.com/" target="_blank">Visualizer</a></p>\r\n<p>El p&aacute;nico al <strong>scroll</strong> ya es historia. Mucho tenemos que agradecer a los dispositivos m&oacute;viles y sus scrolls interminables. Tampoco es ya ning&uacute;n secreto que el <strong>uso del scroll para contar historias</strong> dentro de una web es una f&oacute;rmula que funciona (y muy bien) y es otra de esas tendencias en dise&ntilde;o web imprescindibles desde el a&ntilde;o pasado.</p>\r\n<p>Ejemplos:<br /><a href="https://www.apple.com/watch/">Apple</a><br /><a href="http://vaalentin.github.io/2015/" target="_blank">Vaalentin</a></p>\r\n<p><strong>Grid Pinteresiano:</strong>&nbsp;Pinterest lo populariz&oacute; y ahora son muchos los que han adoptado esta tendencia. Es ideal para mezclar&nbsp;en un mismo sitio distintos pedazos de informaci&oacute;n, que <strong>invitan a navegar sin control</strong> a trav&eacute;s de los diferentes&nbsp;contenidos. Funciona fet&eacute;n en sitios m&oacute;viles.</p>\r\n<p>Ejemplos:<br /><a href="http://designspiration.net/" target="_blank">Designe Interaction</a><br /><a href="http://www.bigactive.com/" target="_blank">Big Active</a></p>\r\n<p><strong>Fotones:&nbsp;</strong>ll&aacute;malo HD o ll&aacute;malo Pepe, el impacto que conseguimos con im&aacute;genes/v&iacute;deos a toda pantalla no es ning&uacute;n secreto. Si te entran los siete males solo de pensarlo, <a href="https://www.40defiebre.com/donde-conseguir-imagenes-contenidos/">te damos la medicina aqu&iacute;.</a></p>\r\n<p>Ejemplos:<br /><a href="https://flipboard.com/">Flipboard</a><br /><a href="http://spotlightthefilm.com/" target="_blank">Spotlight</a></p>\r\n<h4>Aviso a navegantes:</h4>\r\n<p>Las tendencias est&aacute;n muy bien, pero debemos estar seguros de que son la mejor opci&oacute;n para nuestro dise&ntilde;o. No hay dejarse llevar por las modas, es importante, igual que vienen se van.&nbsp;&Uacute;salas con sentido com&uacute;n.</p>', 1, 'activada', 1, '2016-11-28 13:52:50', 1, '2016-11-28 13:52:50'),
(3, '10 tendencias del diseño web actual', '10-tendencias-del-diseno-web-actual', '<p>&iquest;Te interesa el dise&ntilde;o web? Conoce algunas de las tendencias que veremos en el dise&ntilde;o de sitios web.</p>\r\n<p><strong>1. Fotograf&iacute;as grandes</strong></p>\r\n<p>Cuando hablamos de dise&ntilde;o y pantallas, &iexcl;lo visual es lo que manda! Una imagen grande, a toda pantalla, es el mejor elemento que podemos utilizar para comunicar a detalle lo que la web nos ofrece.&nbsp; Este a&ntilde;o vamos a sustituir las palabras por im&aacute;genes como ya varios sitios lo est&aacute;n haciendo.</p>\r\n<p>Ejemplos:</p>\r\n<p><a href="http://bellroy.com/live-life-outside">http://bellroy.com/live-life-outside</a></p>\r\n<p><strong><a href="http://locomotive.ca/en/">http://locomotive.ca</a></strong></p>\r\n<p><strong><a href="http://www.borngroup.com/">http://www.borngroup.com/</a></strong></p>\r\n<p><strong>2. Experiencia multimedia</strong></p>\r\n<p>Y si las im&aacute;genes nos cautivan, &iquest;qu&eacute; decir de los videos? Este recurso se est&aacute; utilizando cada vez m&aacute;s: videos cortos que brindan una breve sinopsis de la web, algunos reproducidos en bucle desde la home. Gracias a HTML5 es posible elevar un sitio web a un dise&ntilde;o multimedia nunca antes pensado, con animaciones y una experiencia de usuario fant&aacute;stica.</p>\r\n<p>Ejemplos:</p>\r\n<p><strong><a href="http://jviewz.com/">http://jviewz.com/</a></strong></p>\r\n<p><strong><a href="http://raisetheriver.org/">http://raisetheriver.org/</a></strong></p>\r\n<p><strong><a href="http://www.vacationequalityproject.com/">http://www.vacationequalityproject.com/</a></strong></p>\r\n<p><strong><a href="http://thecreativeclass.tv/#intro">http://thecreativeclass.tv/</a></strong></p>\r\n<p><strong><a href="http://wistia.com/">http://wistia.com/</a></strong></p>\r\n<p><strong>3. Supremac&iacute;a del scroll</strong></p>\r\n<p>Tenemos una clara tendencia del uso del scroll en la navegaci&oacute;n de un sitio web, sobre todo en las p&aacute;ginas de inicio. Probablemente, una de sus principales razones es el incremento de navegabilidad desde dispositivos m&oacute;viles. Cuando ingresamos a un sitio desde una tablet o un celular, dar clic sobre un bot&oacute;n y esperar que nos vincule hacia otra p&aacute;gina puede resultar muy tedioso. Los usuarios esperan poder desplazarse en una sola p&aacute;gina y encontrar toda la informaci&oacute;n que necesitan, sobre todo los usuarios provenientes del mundo m&oacute;vil. &nbsp;</p>\r\n<p>Adem&aacute;s, cabe mencionar que otra tendencia que viene con el scroll es la adici&oacute;n de la animaci&oacute;n agregada al navegar por la web, como en el caso de <strong>Boldking</strong>, en el cual la animaci&oacute;n va iniciando conforme vamos bajando en el scroll.</p>\r\n<p>Ejemplos:</p>\r\n<p><strong><a href="https://www.boldking.com/">https://www.boldking.com/</a></strong></p>\r\n<p><strong><a href="http://www.quoplus.com/">http://www.quoplus.com/</a></strong></p>\r\n<p><strong>4. Storytelling e interacci&oacute;n</strong></p>\r\n<p>&iquest;A qui&eacute;n no le gusta escuchar, leer o ver una buena historia? Otra tendencia de los sitios web tiene que ver con la capacidad de estos para contarnos la historia de la marca, producto, servicio a los cuales pertenece el sitio. Y si existe la posibilidad de que el usuario pueda formar parte de la historia a trav&eacute;s de la interacci&oacute;n, &iexcl;mucho mejor!</p>\r\n<p>Ejemplos:</p>\r\n<p><strong><a href="http://www.spaceneedle.com/home/">http://www.spaceneedle.com</a></strong></p>\r\n<p><strong><a href="http://www.impossible-bureau.com/">http://www.impossible-bureau.com/</a></strong></p>\r\n<p><strong>5. Men&uacute;s mobile desde el escritorio</strong></p>\r\n<p>Estamos acostumbrados al modelo est&aacute;ndar del men&uacute; en los sitios web, pues es uno de los elementos que menos cambios ha tenido y los usuarios ya est&aacute;n acostumbrados a ellos. Sin embargo, el incremento de la utilizaci&oacute;n de dispositivos m&oacute;viles nos regala una nueva tendencia en el dise&ntilde;o de sitios para escritorio: la utilizaci&oacute;n del men&uacute; escondido que usamos para el dise&ntilde;o m&oacute;vil, simplificando as&iacute; la visualizaci&oacute;n.</p>\r\n<p>Ejemplos:</p>\r\n<p><strong><a href="http://brianhoffdesign.com/">http://brianhoffdesign.com/</a></strong></p>\r\n<p><strong><a href="http://locomotive.ca/">http://locomotive.ca/en/</a></strong></p>\r\n<p><strong><a href="http://www.v76.com/">http://www.v76.com/</a></strong></p>\r\n<p><strong><a href="http://24ways.org/">http://24ways.org/</a></strong></p>\r\n<p><strong>6. Tipograf&iacute;as grandes</strong></p>\r\n<p>La tipograf&iacute;a es una de las piezas claves de un buen dise&ntilde;o. Si bien queremos m&aacute;s im&aacute;genes que palabras, las pocas palabras que digamos deben ser de f&aacute;cil lectura, atractivas, con una visualizaci&oacute;n r&aacute;pida en la primera p&aacute;gina.</p>\r\n<p>Ejemplos:</p>\r\n<p><strong><a href="http://madebytinygiant.com/">http://madebytinygiant.com/</a></strong></p>\r\n<p><strong>7. Flat Design</strong></p>\r\n<p>&iexcl;El dise&ntilde;o flat contin&uacute;a vigente! Lleva puesta la corona en el dise&ntilde;o ya desde hace un par de a&ntilde;os y mantendr&aacute; su puesto, por fortuna, ya que este tipo de dise&ntilde;o y minimalista propicia una comunicaci&oacute;n muy efectiva. Esta tendencia se encontrar&aacute; especialmente en &iacute;conos, men&uacute;s e ilustraciones.</p>\r\n<p>Ejemplos:</p>\r\n<p><strong><a href="http://colinanddewi.com/">http://colinanddewi.com/</a></strong></p>\r\n<p><strong><a href="http://www.makershape.com/">http://www.makershape.com/</a></strong></p>\r\n<p><strong><a href="http://www.canaltp.fr/">http://www.canaltp.fr/</a></strong></p>\r\n<p><strong>8. Responsive Web Design</strong></p>\r\n<p>Con la tendencia de Responsive Web Design en su auge se espera que los sitios hechos solo para m&oacute;viles vayan desapareciendo y, finalmente, casi todos los sitios se adapten a filosof&iacute;a Responsive.</p>\r\n<p><strong>9. Botones fantasmas</strong></p>\r\n<p>Es cada vez m&aacute;s com&uacute;n encontrar en una p&aacute;gina de inicio con <em>ghost buttons </em>o botones transparentes. Estos botones funcionan muy bien, sobre todo en las p&aacute;ginas que utilizan fotograf&iacute;as o videos de fondo.</p>\r\n<p>Ejemplos:</p>\r\n<p><strong><a href="https://www.hartisland.net/">https://www.hartisland.net/</a></strong></p>\r\n<p><strong><a href="http://www.etecc.com/">http://www.etecc.com/</a></strong></p>\r\n<p><strong>10. Rapidez y rendimiento</strong></p>\r\n<p>Una tendencia marcada, que probablemente ha dado origen a las dem&aacute;s, es la b&uacute;squeda de una mayor rapidez y rendimiento de los sitios webs. &iquest;Por qu&eacute;? Sencillo, una mejor experiencia de usuario permite generar mayor conversi&oacute;n. Por tanto, dise&ntilde;adores y desarrolladores seguir&aacute;n investigando nuevos modos de crear sitios web atractivos cuidando siempre los elementos que utilicen, fij&aacute;ndose en el peso y velocidad.&nbsp;</p>\r\n<p>Recuerda que si deseas empezar a crear tu primer sitio web, puedes ingresar a nuestros cursos de <strong><a href="https://devcode.la/cursos/html-css">HTML5 y CSS</a></strong>, <strong><a href="https://devcode.la/cursos/css3">CSS3</a></strong>, <strong><a href="https://devcode.la/cursos/responsive-web-design/">Responsive Web Design</a></strong> y <strong><a href="https://devcode.la/cursos/javascript">JavaScript</a></strong>accediendo por <strong><a href="https://devcode.la/cursos">devcode.la/cursos</a></strong></p>', 1, 'activada', 1, '2016-11-28 13:54:08', 1, '2016-11-28 13:54:08');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `public_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gravatar_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gravatar_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8_unicode_ci,
  `timezone` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`user_id`, `name`, `public_email`, `gravatar_email`, `gravatar_id`, `location`, `website`, `bio`, `timezone`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `social_account`
--

CREATE TABLE `social_account` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `code` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `token`
--

CREATE TABLE `token` (
  `user_id` int(11) NOT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `type` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `confirmed_at` int(11) DEFAULT NULL,
  `unconfirmed_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blocked_at` int(11) DEFAULT NULL,
  `registration_ip` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password_hash`, `auth_key`, `confirmed_at`, `unconfirmed_email`, `blocked_at`, `registration_ip`, `created_at`, `updated_at`, `flags`) VALUES
(1, 'admin', 'webmaster@example.com', '$2y$13$1weGPxj/a1Vsm59m39Hnzuw75VliOpj5tn.K1Kr.ix1AA9spRv.R6', 'B5KYx5TDinKzXPeuW2krrM2nrTO0Bwm_', 1478628855, NULL, NULL, NULL, 1478623438, 1478623438, 0),
(3, 'user', 'user@example.com', '$2y$13$ZPc8kDumm25H4cuj6CR95uDz63mDbts/RrJhhncCE4h4.fCzCR29W', 'Z_yf_GedJkvQ23qKXft9_5zx3cq8GaxF', 1478628865, NULL, NULL, NULL, 1478623442, 1478623442, 0),
(5, 'Persona_1', 'anthonycaicedo8@gmail.com', '$2y$12$XBjG6joPBsTwu.THlBSsNeCEJO6PxJ7XxQKpzDTeurV76D8yDhw6K', 'ZmFnmwPW4bsNqerg5koZrbNiLDQPwyVy', 1480375732, NULL, NULL, NULL, 0, 1480379113, 0),
(6, 'Persona_2', 'example@example.com', '$2y$12$XBjG6joPBsTwu.THlBSsNeCEJO6PxJ7XxQKpzDTeurV76D8yDhw6K', '', 1480379011, NULL, NULL, NULL, 0, 1480380390, 0),
(7, 'Persona_3', 'example1@example1.com', '$2y$12$XBjG6joPBsTwu.THlBSsNeCEJO6PxJ7XxQKpzDTeurV76D8yDhw6K', '', 1480379017, NULL, NULL, NULL, 0, 1480380402, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD PRIMARY KEY (`item_name`,`user_id`);

--
-- Indexes for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `rule_name` (`rule_name`),
  ADD KEY `idx-auth_item-type` (`type`);

--
-- Indexes for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `child` (`child`);

--
-- Indexes for table `auth_rule`
--
ALTER TABLE `auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_noticia` (`id_noticia`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `noticia`
--
ALTER TABLE `noticia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoria_id` (`categoria_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `social_account`
--
ALTER TABLE `social_account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_unique` (`provider`,`client_id`),
  ADD UNIQUE KEY `account_unique_code` (`code`),
  ADD KEY `fk_user_account` (`user_id`);

--
-- Indexes for table `token`
--
ALTER TABLE `token`
  ADD UNIQUE KEY `token_unique` (`user_id`,`code`,`type`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_unique_email` (`email`),
  ADD UNIQUE KEY `user_unique_username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `departamento`
--
ALTER TABLE `departamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `noticia`
--
ALTER TABLE `noticia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `social_account`
--
ALTER TABLE `social_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `categoria`
--
ALTER TABLE `categoria`
  ADD CONSTRAINT `categoria_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `categoria_ibfk_2` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`);

--
-- Constraints for table `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `comentarios_ibfk_2` FOREIGN KEY (`id_noticia`) REFERENCES `noticia` (`id`);

--
-- Constraints for table `noticia`
--
ALTER TABLE `noticia`
  ADD CONSTRAINT `noticia_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`),
  ADD CONSTRAINT `noticia_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `noticia_ibfk_3` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`);

--
-- Constraints for table `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `fk_user_profile` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `social_account`
--
ALTER TABLE `social_account`
  ADD CONSTRAINT `fk_user_account` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `token`
--
ALTER TABLE `token`
  ADD CONSTRAINT `fk_user_token` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
