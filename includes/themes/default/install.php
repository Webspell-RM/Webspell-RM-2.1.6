<?php
/**
 *¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯*  
 *           				  		  Webspell-RM      /                        /   /               								  *
 * 							          -----------__---/__---__------__----__---/---/-----__---- _  _ -       						  *
 *							           | /| /  /___) /   ) (_ `   /   ) /___) /   / __  /     /  /  /           					  *
 *							          _|/_|/__(___ _(___/_(__)___/___/_(___ _/___/_____/_____/__/__/_    							  *
 *      						                   Free Content / Management System                 								  *
 *                               						       /                                    								  *
 *¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯*
 * @version			webspell-rm 																									  *
 * @subpackage		Webspell-RM Templates 																							  *
 *																																	  *
 * @copyright		2018-2022 by webspell-rm.de <https://www.webspell-rm.de>														  *
 * @support			For Support, Plugins, Templates and the Full Script visit webspell-rm.de <https://www.webspell-rm.de/forum.html>  *
 * @WIKI			webspell-rm.de <https://www.webspell-rm.de/wiki.html>															  *
 *																																	  *
 *¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯*
 * @license			Script runs under the GNU GENERAL PUBLIC LICENCE																  *
 *					It's NOT allowed to remove this copyright-tag <http://www.fsf.org/licensing/licenses/gpl.html>					  *
 *																																	  *
 * @author			Code based on WebSPELL Clanpackage (Michael Gruber - webspell.at)												  *
 * @copyright		2005-2018 by webspell.org / webspell.info 																		  *
 *¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯*
 * 																																	  *
 *¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯*
 */

##### Install für Templates ###########################################################################################################
global $userID,$_database,$add_database_install,$str,$str2,$modulname,$add_plugin_manager,$add_navigation,$navi_link,$add_dashboard_navigation,$dashnavi_link,$add_module_install,$add_button_install,$add_theme_install,$add_widget_install,$themes_modulname;
##### @info: Template #################################################################################################################

$str                      =   "Template Default";       // name of the plugin
$name                     =   "Default";                // name of the plugin
$modulname                =   "default";                // name to uninstall
$pfad                     =   "default";                // name of pfad
$active                   =   "1";                      // plugin activate 1 yes | 0 no
$version                  =   "0.2";                    // current version, visit authors website for updates, fixes, ..
$themes_modulname         =   "default";                // name of module

#######################################################################################################################################
if(!ispageadmin($userID)) { echo ("Access denied!"); return false; }
$translate = new multiLanguage(detectCurrentLanguage());
$translate->detectLanguages($str);
$str = $translate->getTextByLanguage($str);   
echo "<div class='card'><div class='card-header'>$str Database Installation</div><div class='card-body'>";
#######################################################################################################################################

############ Plugin und Modul Einstellung ############################################################################################
safe_query("UPDATE `".PREFIX."settings_themes` SET active = 0 WHERE `active` = '1'");

#@info: Widgets werden an der richtigen Position in der Index positioniert / anpassen ab ID 10
add_widget_install($add_widget_install = "INSERT INTO `" . PREFIX . "settings_widgets` (`id`, `position`, `description`, `modulname`, `themes_modulname`, `widget`, `widgetname`, `widgetdatei`, `activate`, `number`, `sort`) VALUES
('', 'page_navigation_widget', 'page_navigation_widget', 'navigation_default', 'default', 'widget1', 'Navigation Default', 'widget_navigation_default', 0, 1, 1),
('', 'page_footer_widget', 'page_footer_widget', 'footer', 'default', 'widget2', 'Easy Footer Content', 'widget_easyfooter_content', 0, 1, 0);");

DeleteData("settings_plugins","modulname",'navigation_default');
DeleteData("settings_plugins","modulname",'footer');
add_module_install($add_module_install = "INSERT IGNORE INTO `" . PREFIX . "settings_plugins` (`pluginID`, `name`, `modulname`, `info`, `admin_file`, `activate`, `author`, `website`, `index_link`, `hiddenfiles`, `version`, `path`, `widgetname1`, `widgetname2`, `widgetname3`, `widget_link1`, `widget_link2`, `widget_link3`, `modul_display`) VALUES
(1, 'Startpage', '', '{[de]}STARTPAGE Hier kannst du die Einstellung f&#252;r deine Startseite vornehmen!!!{[it]}PAGINA INIZIALE Qui puoi effettuare le impostazioni per la tua home page!!!{[en]}START PAGE Here you can make the settings for your home page!!!', '', 1, '', '', '', '', '', '', '', '', '', '', '', '', 1),
(2, '', 'startpage', '{[de]}Kein Plugin. Bestandteil vom System!!!{[en]}No plugin. Part of the system!!!{[it]}Nessun plug-in. Parte del sistema!!!', '', 1, '', '', '', '', '', '', '', '', '', '', '', '', 0),
(3, 'Privacy Policy', 'privacy_policy', '{[de]}Kein Plugin. Bestandteil vom System!!!{[en]}No plugin. Part of the system!!!{[it]}Nessun plug-in. Parte del sistema!!!', '', 1, '', '', 'privacy_policy', '', '', '', '', '', '', '', '', '', 1),
(4, 'Imprint', 'imprint', '{[de]}Kein Plugin. Bestandteil vom System!!!{[en]}No plugin. Part of the system!!!{[it]}Nessun plug-in. Parte del sistema!!!', '', 1, '', '', 'imprint', '', '', '', '', '', '', '', '', '', 1),
(5, 'Static', 'static', '{[de]}Kein Plugin. Bestandteil vom System!!!{[en]}No plugin. Part of the system!!!{[it]}Nessun plug-in. Parte del sistema!!!', '', 1, '', '', 'static', '', '', '', '', '', '', '', '', '', 1),
(6, 'Error_404', 'error_404', '{[de]}Kein Plugin. Bestandteil vom System!!!{[en]}No plugin. Part of the system!!!{[it]}Nessun plug-in. Parte del sistema!!!', '', 1, '', '', 'error_404', '', '', '', '', '', '', '', '', '', 1),
(7, 'Profile', 'profile', '{[de]}Kein Plugin. Bestandteil vom System!!!{[en]}No plugin. Part of the system!!!{[it]}Nessun plug-in. Parte del sistema!!!', '', 1, '', '', 'profile', '', '', '', '', '', '', '', '', '', 1),
(8, 'Login', 'login', '{[de]}Kein Plugin. Bestandteil vom System!!!{[en]}No plugin. Part of the system!!!{[it]}Nessun plug-in. Parte del sistema!!!', '', 1, '', '', 'login', '', '', '', '', '', '', '', '', '', 1),
(9, 'Lost Password', 'lostpassword', '{[de]}Kein Plugin. Bestandteil vom System!!!{[en]}No plugin. Part of the system!!!{[it]}Nessun plug-in. Parte del sistema!!!', '', 1, '', '', 'lostpassword', '', '', '', '', '', '', '', '', '', 1),
(10, 'Contact', 'contact', '{[de]}Kein Plugin. Bestandteil vom System!!!{[en]}No plugin. Part of the system!!!{[it]}Nessun plug-in. Parte del sistema!!!', '', 1, '', '', 'contact', '', '', '', '', '', '', '', '', '', 1),
(11, 'Register', 'register', '{[de]}Kein Plugin. Bestandteil vom System!!!{[en]}No plugin. Part of the system!!!{[it]}Nessun plug-in. Parte del sistema!!!', '', 1, '', '', 'register', '', '', '', '', '', '', '', '', '', 1),
(12, 'My Profile', 'myprofile', '{[de]}Kein Plugin. Bestandteil vom System!!!{[en]}No plugin. Part of the system!!!{[it]}Nessun plug-in. Parte del sistema!!!', '', 1, '', '', 'myprofile', '', '', '', '', '', '', '', '', '', 1),
(13, 'Report', 'report', '{[de]}Kein Plugin. Bestandteil vom System!!!{[en]}No plugin. Part of the system!!!{[it]}Nessun plug-in. Parte del sistema!!!', '', 1, '', '', 'report', '', '', '', '', '', '', '', '', '', 1),
(14, 'Navigation Default', 'navigation_default', '{[de]}Mit diesem Plugin k&#246;nnt ihr euch die Default Navigation anzeigen lassen.{[en]}With this plugin you can display the default navigation.{[it]}Con questo plugin puoi visualizzare la navigazione predefinita. ', '', 1, 'T-Seven', 'https://webspell-rm.de', '', '', '0.3', 'includes/plugins/navigation_default/', 'Navigation Default', '', '', 'widget_navigation_default', '', '', 1),
(15, 'Footer', 'footer', '{[de]}Mit diesem Plugin k&#246;nnt ihr einen neuen Footer anzeigen lassen.{[en]}With this plugin you can have a new Footer displayed.{[it]}Con questo plugin puoi visualizzare un nuovo piè di pagina.', 'admin_footer', 1, 'T-Seven', 'https://webspell-rm.de', 'admin_footer', '', '0.1', 'includes/plugins/footer/', 'Default Footer Content', 'Easy Footer Content', 'Plugin_footer Content', 'widget_default_footer_content', 'widget_easyfooter_content', 'widget_plugin_footer_content', 1)");

#@info: Base Modul Einstellung // # Die Startseite / Bereiche müssen angepasst werden
add_module_install($add_module_install = "INSERT INTO `".PREFIX."settings_module` (`pluginID`, `name`, `modulname`, `themes_modulname`, `full_activated`, `custom_activated`, `via_navigation`, `head_activated`, `content_head_activated`, `content_foot_activated`, `head_section_activated`, `foot_section_activated`, `modul_display`, `activate`, `sidebar`, `plugin_settings`, `plugin_module`, `plugin_widget`, `widget1`, `widget2`, `widget3`) VALUES
(1, 'Startpage', '', 'default', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 0, 1, 0, 0, 0, 0),
(2, '', 'startpage', 'default', 0, 0, 1, 1, 1, 1, 1, 0, 1, 1, 'activated', 0, 1, 0, 0, 0, 0),
(3, 'Report', 'report', 'default', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 0, 0, 0, 0, 0, 0),
(4, 'My Profile', 'myprofile', 'default', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 0, 0, 0, 0, 0, 0),
(5, 'Error_404', 'error_404', 'default', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 0, 0, 0, 0, 0, 0),
(6, 'Static', 'static', 'default', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 0, 0, 0, 0, 0, 0),
(7, 'Imprint', 'imprint', 'default', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 0, 0, 0, 0, 0, 0),
(8, 'Privacy Policy', 'privacy_policy', 'default', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 0, 0, 0, 0, 0, 0),
(9, 'Contact', 'contact', 'default', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 0, 0, 0, 0, 0, 0),
(10, 'Register', 'register', 'default', 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 0, 0, 0, 0, 0, 0),
(11, 'Lost Password', 'lostpassword', 'default', 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 0, 0, 0, 0, 0, 0),
(12, 'Login', 'login', 'default', 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 0, 0, 0, 0, 0, 1),
(13, 'Profile', 'profile', 'default', 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 0, 0, 0, 0, 0, 0),
(14, 'Navigationsstandard', 'navigation_default', 'default', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 0, 1, 1, 0, 0),
(15, 'Footer', 'footer', 'default', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 0, 1, 1, 1, 1);");

add_button_install($add_button_install = "INSERT INTO `".PREFIX."settings_buttons` (`buttonID`, `name`, `modulname`, `active`, `version`, `button1`, `button2`, `button3`, `button4`, `button5`, `button6`, `button7`, `button8`, `button9`, `button10`, `button11`, `button12`, `button13`, `button14`, `button15`, `button16`, `button17`, `button18`, `button19`, `button20`, `button21`, `button22`, `button23`, `button24`, `button25`, `button26`, `button27`, `button28`, `button29`, `button30`, `button31`, `button32`, `button33`, `button34`, `button35`, `button36`, `button37`, `button38`, `button39`, `button40`, `button41`, `button42`, `btn_border_radius`) VALUES
('', '$name', '$modulname', '$active', '$version', 'rgb(254,130,29)', 'rgb(196,89,1)', 'rgb(255,255,255)', 'rgb(254,130,29)', 'rgb(196,89,1)', 'rgb(108,117,125)', 'rgb(90,98,104)', 'rgb(255,255,255)', 'rgb(108,117,125)', 'rgb(84,91,98)', 'rgb(40,167,69)', 'rgb(33,136,56)', 'rgb(255,255,255)', 'rgb(40,167,69)', 'rgb(30,126,52)', 'rgb(220,53,69)', 'rgb(200,35,51)', 'rgb(255,255,255)', 'rgb(220,53,69)', 'rgb(189,33,48)', 'rgb(255,193,7)', 'rgb(224,168,0)', 'rgb(33,37,41)', 'rgb(255,193,7)', 'rgb(211,158,0)', 'rgb(23,162,184)', 'rgb(19,132,150)', 'rgb(255,255,255)', 'rgb(23,162,184)', 'rgb(17,122,139)', 'rgb(248,249,250)', 'rgb(226,230,234)', 'rgb(33,37,41)', 'rgb(248,249,250)', 'rgb(218,224,229)', 'rgb(52,58,64)', 'rgb(35,39,43)', 'rgb(255,255,255)', 'rgb(52,58,64)', 'rgb(29,33,36)', 'rgb(254,130,29)', 'rgb(196,89,1)', '0px');");

add_theme_install($add_theme_install = "INSERT INTO `".PREFIX."settings_themes` (`themeID`, `name`, `modulname`, `pfad`, `version`, `active`, `express_active`, `nav1`, `nav2`, `nav3`, `nav4`, `nav5`, `nav6`, `nav7`, `nav8`, `nav9`, `nav10`, `nav11`, `nav12`, `nav_text_alignment`, `body1`, `body2`, `body3`, `body4`, `body5`, `background_pic`, `border_radius`, `typo1`, `typo2`, `typo3`, `typo4`, `typo5`, `typo6`, `typo7`, `typo8`, `card1`, `card2`, `foot1`, `foot2`, `foot3`, `foot4`, `foot5`, `foot6`, `calendar1`, `calendar2`, `carousel1`, `carousel2`, `carousel3`, `carousel4`, `logo_pic`, `logotext1`, `logotext2`, `reg_pic`, `reg1`, `reg2`, `headlines`, `sort`) VALUES
('', '$name', '$modulname', '$pfad', '$version', $active, 0, 'rgb(51,51,51)', '16px', 'rgb(221,221,221)', 'rgb(254,130,29)', 'rgb(254,130,29)', '2px', 'rgb(221,221,221)', 'rgb(196,89,1)', '', 'rgb(51,51,51)', 'rgb(221,221,221)', 'rgb(101,100,100)', 'ms-auto', 'Roboto', '13px', 'rgb(255,255,255)', 'rgb(85,85,85)', 'rgb(236,236,236)', '', '0px', '', '', '', 'rgb(254,130,29)', '', '', '', 'rgb(196,89,1)', 'rgb(255,255,255)', 'rgb(221,221,221)', 'rgb(85,85,85)', 'rgb(255,255,255)', 'rgb(255,255,255)', 'rgb(181,179,179)', 'rgb(254,130,29)', 'rgb(255,255,255)', '', '', 'rgb(255,255,255)', 'rgb(254,130,29)', 'rgb(255,255,255)', 'rgb(254,130,29)', 'logo.png', '', '', 'login_bg.png', 'rgb(254,130,29)', 'rgb(255,255,255)', 'headlines_01.css', 1);");


add_navigation($add_navigation = "INSERT INTO `".PREFIX."navigation_website_sub` (`snavID`, `mnavID`, `name`, `modulname`, `url`, `sort`, `indropdown`, `themes_modulname`) VALUES
('', 6, '{[de]}Kontakt{[en]}Contact{[it]}Contatti', 'contact', 'index.php?site=contact', 1, 1, '$themes_modulname'),
('', 6, '{[de]}Datenschutz-Bestimmungen{[en]}Privacy Policy{[it]}Informativa sulla privacy', 'privacy_policy', 'index.php?site=privacy_policy', 2, 1, '$themes_modulname'),
('', 6, '{[de]}Impressum{[en]}Imprint{[it]}Impronta Editoriale', 'imprint', 'index.php?site=imprint', 3, 1, '$themes_modulname');");

#######################################################################################################################################

echo "</div></div>";
 ?>