<script>
function goBack() {
    window.history.back();
}
</script>
<?php
/**
 *¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯*
 *                  Webspell-RM      /                        /   /                                          *
 *                  -----------__---/__---__------__----__---/---/-----__---- _  _ -                         *
 *                   | /| /  /___) /   ) (_ `   /   ) /___) /   / __  /     /  /  /                          *
 *                  _|/_|/__(___ _(___/_(__)___/___/_(___ _/___/_____/_____/__/__/_                          *
 *                               Free Content / Management System                                            *
 *                                           /                                                               *
 *¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯*
 * @version         webspell-rm                                                                              *
 *                                                                                                           *
 * @copyright       2018-2024 by webspell-rm.de                                                              *
 * @support         For Support, Plugins, Templates and the Full Script visit webspell-rm.de                 *
 * @website         <https://www.webspell-rm.de>                                                             *
 * @forum           <https://www.webspell-rm.de/forum.html>                                                  *
 * @wiki            <https://www.webspell-rm.de/wiki.html>                                                   *
 *                                                                                                           *
 *¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯*
 * @license         Script runs under the GNU GENERAL PUBLIC LICENCE                                         *
 *                  It's NOT allowed to remove this copyright-tag                                            *
 *                  <http://www.fsf.org/licensing/licenses/gpl.html>                                         *
 *                                                                                                           *
 *¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯*
 * @author          Code based on WebSPELL Clanpackage (Michael Gruber - webspell.at)                        *
 * @copyright       2005-2011 by webspell.org / webspell.info                                                *
 *                                                                                                           *
 *¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯*
*/


$transaction = '';

$transaction .= droptable('settings_module');
$transaction .= droptable('settings_widgets');
$transaction .= droptable('settings_plugins');
$transaction .= droptable('settings_themes');
$transaction .= droptable('settings_headelements'); 

$transaction .= add_table("DROP TABLE IF EXISTS `" . PREFIX . "settings_expansion`");
$transaction .= add_table("CREATE TABLE `" . PREFIX . "settings_expansion` (  
  `themeID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `modulname` varchar(100) NOT NULL,
  `pfad` varchar(255) NOT NULL DEFAULT '',
  `version` varchar(11) NOT NULL,
  `active` int(11) DEFAULT NULL,
  `express_active` int(11) NOT NULL DEFAULT 0,
  `nav1` varchar(255) NOT NULL DEFAULT '',
  `nav2` varchar(255) NOT NULL DEFAULT '',
  `nav3` varchar(255) NOT NULL DEFAULT '',
  `nav4` varchar(255) NOT NULL DEFAULT '',
  `nav5` varchar(255) NOT NULL DEFAULT '',
  `nav6` varchar(255) NOT NULL DEFAULT '',
  `nav7` varchar(255) NOT NULL DEFAULT '',
  `nav8` varchar(255) NOT NULL DEFAULT '',
  `nav9` varchar(255) NOT NULL DEFAULT '',
  `nav10` varchar(255) NOT NULL DEFAULT '',
  `nav11` varchar(255) NOT NULL DEFAULT '',
  `nav12` varchar(255) NOT NULL DEFAULT '',
  `nav_text_alignment` varchar(255) DEFAULT '0',
  `body1` text NOT NULL,
  `body2` varchar(255) NOT NULL DEFAULT '',
  `body3` varchar(255) NOT NULL DEFAULT '',
  `body4` varchar(255) NOT NULL DEFAULT '',
  `body5` varchar(255) NOT NULL DEFAULT '',
  `background_pic` varchar(255) DEFAULT '0',
  `border_radius` varchar(255) DEFAULT '0',
  `typo1` varchar(255) NOT NULL DEFAULT '',
  `typo2` varchar(255) NOT NULL DEFAULT '',
  `typo3` varchar(255) NOT NULL DEFAULT '',
  `typo4` varchar(255) NOT NULL DEFAULT '',
  `typo5` varchar(255) NOT NULL DEFAULT '',
  `typo6` varchar(255) NOT NULL DEFAULT '',
  `typo7` varchar(255) NOT NULL DEFAULT '',
  `typo8` varchar(255) NOT NULL DEFAULT '',
  `card1` varchar(255) NOT NULL DEFAULT '',
  `card2` varchar(255) NOT NULL DEFAULT '',
  `foot1` varchar(255) NOT NULL DEFAULT '',
  `foot2` varchar(255) NOT NULL DEFAULT '',
  `foot3` varchar(255) NOT NULL DEFAULT '',
  `foot4` varchar(255) NOT NULL DEFAULT '',
  `foot5` varchar(255) NOT NULL DEFAULT '',
  `foot6` varchar(255) NOT NULL DEFAULT '',
  `calendar1` varchar(255) NOT NULL DEFAULT '',
  `calendar2` varchar(255) NOT NULL DEFAULT '',
  `carousel1` varchar(255) NOT NULL DEFAULT '',
  `carousel2` varchar(255) NOT NULL DEFAULT '',
  `carousel3` varchar(255) NOT NULL DEFAULT '',
  `carousel4` varchar(255) NOT NULL DEFAULT '',
  `logo_pic` varchar(255) DEFAULT '0',
  `logotext1` varchar(255) NOT NULL DEFAULT '',
  `logotext2` varchar(255) NOT NULL DEFAULT '',
  `reg_pic` varchar(255) NOT NULL DEFAULT '',
  `reg1` varchar(255) NOT NULL DEFAULT '',
  `reg2` varchar(255) NOT NULL DEFAULT '',
  `headlines` varchar(255) DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`themeID`)
) AUTO_INCREMENT=2
  DEFAULT CHARSET=utf8 DEFAULT COLLATE utf8_unicode_ci");

$transaction .= add_table("INSERT IGNORE INTO `" . PREFIX . "settings_expansion` (`themeID`, `name`, `modulname`, `pfad`, `version`, `active`, `express_active`, `nav1`, `nav2`, `nav3`, `nav4`, `nav5`, `nav6`, `nav7`, `nav8`, `nav9`, `nav10`, `nav11`, `nav12`, `nav_text_alignment`, `body1`, `body2`, `body3`, `body4`, `body5`, `background_pic`, `border_radius`, `typo1`, `typo2`, `typo3`, `typo4`, `typo5`, `typo6`, `typo7`, `typo8`, `card1`, `card2`, `foot1`, `foot2`, `foot3`, `foot4`, `foot5`, `foot6`, `calendar1`, `calendar2`, `carousel1`, `carousel2`, `carousel3`, `carousel4`, `logo_pic`, `logotext1`, `logotext2`, `reg_pic`, `reg1`, `reg2`, `headlines`, `sort`) VALUES
('1', 'Default', 'default', 'default', '0.3', 1, 0, 'rgb(51,51,51)', '16px', 'rgb(221,221,221)', 'rgb(254,130,29)', 'rgb(254,130,29)', '2px', 'rgb(221,221,221)', 'rgb(196,89,1)', '', 'rgb(51,51,51)', 'rgb(221,221,221)', 'rgb(101,100,100)', 'ms-auto', 'Roboto', '13px', 'rgb(255,255,255)', 'rgb(85,85,85)', 'rgb(236,236,236)', '', '0px', '', '', '', 'rgb(254,130,29)', '', '', '', 'rgb(196,89,1)', 'rgb(255,255,255)', 'rgb(221,221,221)', 'rgb(51,51,51)', '', 'rgb(255,255,255)', 'rgb(254,130,29)', 'rgb(255,255,255)', 'rgb(255,255,255)', '', '', 'rgb(255,255,255)', 'rgb(254,130,29)', 'rgb(255,255,255)', 'rgb(254,130,29)', 'default_logo.png', '', '', 'default_login_bg.jpg', 'rgb(254,130,29)', 'rgb(255,255,255)', 'headlines_03.css', 1)");

$transaction .= add_field('settings', 'keywords', 'text', 'NOT NULL');
$transaction .= add_field('settings', 'description', 'text', 'NOT NULL');

$transaction .= add_table("DELETE FROM `" . PREFIX . "navigation_dashboard_links` WHERE modulname='ac_headelements'");
$transaction .= add_table("DELETE FROM `" . PREFIX . "navigation_dashboard_links` WHERE modulname='ac_modul_widgets'");
$transaction .= add_table("DELETE FROM `" . PREFIX . "navigation_dashboard_links` WHERE modulname='ac_plugin_widgets'");



safe_query("UPDATE `".PREFIX."navigation_dashboard_links` SET name = '{[de]}Plugin & Widget Manager{[en]}Plugin & Widget Manager{[it]}Gestore di plugin e widget' WHERE `modulname` = 'ac_plugin_manager'");
safe_query("UPDATE `".PREFIX."navigation_dashboard_categories` SET name = '{[de]}Plugin & Widget Verwaltung{[en]}Plugin and Widget Management{[it]}Gestione plugin e widget' WHERE `catID` = '6'");


$transaction .= add_table("DELETE FROM `" . PREFIX . "navigation_dashboard_links` WHERE modulname='ac_template_installer'");
$transaction .= add_table("INSERT IGNORE INTO `" . PREFIX . "navigation_dashboard_links` (`linkID`, `catID`, `name`, `modulname`, `url`, `accesslevel`, `sort`) VALUES
('17', 5, '{[de]}Themes Installer{[en]}Themes Installer{[it]}Installazione Themes', 'ac_themes', 'admincenter.php?site=themes_installer', 'page', 2)");

$transaction .= add_table("DELETE FROM `" . PREFIX . "navigation_dashboard_links` WHERE modulname='ac_templates'");
$transaction .= add_table("INSERT IGNORE INTO `" . PREFIX . "navigation_dashboard_links` (`linkID`, `catID`, `name`, `modulname`, `url`, `accesslevel`, `sort`) VALUES
('18', 5, '{[de]}Themes - Style{[en]}Themes - Style{[it]}Themes Grafici', 'ac_themes', 'admincenter.php?site=settings_themes', 'page', 3)");



$transaction .= add_table("CREATE TABLE IF NOT EXISTS`" . PREFIX . "plugins_startpage_settings_widgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modulname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `themes_modulname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `widgetname` varchar(255) NOT NULL DEFAULT '',
  `widgetdatei` varchar(255) NOT NULL DEFAULT '',
  `activated` int(1) DEFAULT 1,
  `sort` int(11) DEFAULT 1,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1
  DEFAULT CHARSET=utf8 DEFAULT COLLATE utf8_unicode_ci");

$transaction .= add_table("INSERT IGNORE INTO `" . PREFIX . "plugins_startpage_settings_widgets` (`id`, `position`, `modulname`, `themes_modulname`, `widgetname`, `widgetdatei`, `activated`, `sort`) VALUES
('1', 'navigation_widget', 'navigation', 'default', 'Navigation', 'widget_navigation', 1, 1),
('2', 'footer_widget', 'footer', 'default', 'Footer Easy', 'widget_footer_easy', 1, 2)");



$transaction .= add_table("CREATE TABLE IF NOT EXISTS`" . PREFIX . "settings_plugins` (  
  `pluginID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modulname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `info` text NOT NULL,
  `admin_file` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `activate` int(1) NOT NULL DEFAULT 1,
  `author` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `website` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `index_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hiddenfiles` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status_display` int(1) NOT NULL DEFAULT 1,
  `plugin_display` int(11) NOT NULL DEFAULT 1,
  `widget_display` int(11) NOT NULL DEFAULT 1,
  `delete_display` int(1) NOT NULL DEFAULT 1,
  `sidebar` varchar(255) NOT NULL DEFAULT 'deactivated',
  PRIMARY KEY (`pluginID`)
) AUTO_INCREMENT=1
  DEFAULT CHARSET=utf8 DEFAULT COLLATE utf8_unicode_ci");

$transaction .= add_table("INSERT IGNORE INTO `" . PREFIX . "settings_plugins` (`pluginID`, `name`, `modulname`, `info`, `admin_file`, `activate`, `author`, `website`, `index_link`, `hiddenfiles`, `version`, `path`, `status_display`, `plugin_display`, `widget_display`, `delete_display`, `sidebar`) VALUES
(1, 'Startpage', 'startpage', '{[de]}Kein Plugin. Bestandteil vom System!!!{[en]}No plugin. Part of the system!!!{[it]}Nessun plug-in. Parte del sistema!!!', '', 1, '', '', '', '', '', '', 0, 0, 1, 0, 'full_activated'),
(2, 'Privacy Policy', 'privacy_policy', '{[de]}Kein Plugin. Bestandteil vom System!!!{[en]}No plugin. Part of the system!!!{[it]}Nessun plug-in. Parte del sistema!!!', '', 1, '', '', 'privacy_policy', '', '', '', 0, 0, 1, 0, 'deactivated'),
(3, 'Imprint', 'imprint', '{[de]}Kein Plugin. Bestandteil vom System!!!{[en]}No plugin. Part of the system!!!{[it]}Nessun plug-in. Parte del sistema!!!', '', 1, '', '', 'imprint', '', '', '', 0, 0, 1, 0, ''),
(4, 'Static', 'static', '{[de]}Kein Plugin. Bestandteil vom System!!!{[en]}No plugin. Part of the system!!!{[it]}Nessun plug-in. Parte del sistema!!!', '', 1, '', '', 'static', '', '', '', 1, 0, 1, 0, ''),
(5, 'Error_404', 'error_404', '{[de]}Kein Plugin. Bestandteil vom System!!!{[en]}No plugin. Part of the system!!!{[it]}Nessun plug-in. Parte del sistema!!!', '', 1, '', '', 'error_404', '', '', '', 1, 0, 1, 0, ''),
(6, 'Profile', 'profile', '{[de]}Kein Plugin. Bestandteil vom System!!!{[en]}No plugin. Part of the system!!!{[it]}Nessun plug-in. Parte del sistema!!!', '', 1, '', '', 'profile', '', '', '', 1, 0, 1, 0, ''),
(7, 'Login', 'login', '{[de]}Kein Plugin. Bestandteil vom System!!!{[en]}No plugin. Part of the system!!!{[it]}Nessun plug-in. Parte del sistema!!!', '', 1, '', '', 'login', '', '', '', 1, 0, 1, 0, ''),
(8, 'Lost Password', 'lostpassword', '{[de]}Kein Plugin. Bestandteil vom System!!!{[en]}No plugin. Part of the system!!!{[it]}Nessun plug-in. Parte del sistema!!!', '', 1, '', '', 'lostpassword', '', '', '', 1, 0, 1, 0, ''),
(9, 'Contact', 'contact', '{[de]}Kein Plugin. Bestandteil vom System!!!{[en]}No plugin. Part of the system!!!{[it]}Nessun plug-in. Parte del sistema!!!', '', 1, '', '', 'contact', '', '', '', 1, 0, 1, 0, ''),
(10, 'Register', 'register', '{[de]}Kein Plugin. Bestandteil vom System!!!{[en]}No plugin. Part of the system!!!{[it]}Nessun plug-in. Parte del sistema!!!', '', 1, '', '', 'register', '', '', '', 1, 0, 1, 0, ''),
(11, 'My Profile', 'myprofile', '{[de]}Kein Plugin. Bestandteil vom System!!!{[en]}No plugin. Part of the system!!!{[it]}Nessun plug-in. Parte del sistema!!!', '', 1, '', '', 'myprofile', '', '', '', 1, 0, 1, 0, ''),
(12, 'Report', 'report', '{[de]}Kein Plugin. Bestandteil vom System!!!{[en]}No plugin. Part of the system!!!{[it]}Nessun plug-in. Parte del sistema!!!', '', 1, '', '', 'report', '', '', '', 1, 0, 1, 0, ''),
(13, 'Navigation', 'navigation', '{[de]}Mit diesem Plugin könnt ihr euch die Navigation anzeigen lassen.{[en]}With this plugin you can display navigation.{[it]}Con questo plugin puoi visualizzare la Barra di navigazione predefinita.', '', 1, 'T-Seven', 'https://webspell-rm.de', '', '', '0.3', 'includes/plugins/navigation/', 1, 1, 0, 1, 'deactivated'),
(14, 'Footer', 'footer', '{[de]}Mit diesem Plugin könnt ihr einen neuen Footer anzeigen lassen.{[en]}With this plugin you can have a new Footer displayed.{[it]}Con questo plugin puoi visualizzare un nuovo piè di pagina.', 'admin_footer', 1, 'T-Seven', 'https://webspell-rm.de', '', '', '0.1', 'includes/plugins/footer/', 1, 1, 0, 1, 'deactivated')");


$transaction .= add_table("CREATE TABLE IF NOT EXISTS`" . PREFIX . "settings_plugins_widget` ( 
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modulname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `widgetname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `widgetdatei` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `area` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1
  DEFAULT CHARSET=utf8 DEFAULT COLLATE utf8_unicode_ci");

$transaction .= add_table("INSERT IGNORE INTO `" . PREFIX . "settings_plugins_widget` (`id`, `modulname`, `widgetname`, `widgetdatei`, `area`) VALUES
(1, 'navigation', 'Navigation', 'widget_navigation', 2),
(2, 'footer', 'Footer Default', 'widget_footer_default', 6),
(3, 'footer', 'Footer Easy', 'widget_footer_easy', 6),
(4, 'footer', 'Footer Plugin', 'widget_footer_plugin', 6),
(5, 'footer', 'Box Footer', 'widget_footer_box', 6)");

$transaction .= add_table("CREATE TABLE IF NOT EXISTS`" . PREFIX . "settings_plugins_widget_settings` ( 
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modulname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `themes_modulname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `widgetname` varchar(255) NOT NULL DEFAULT '',
  `widgetdatei` varchar(255) NOT NULL DEFAULT '',
  `activated` int(1) DEFAULT 1,
  `sort` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1
  DEFAULT CHARSET=utf8 DEFAULT COLLATE utf8_unicode_ci");

$transaction .= add_table("INSERT IGNORE INTO `" . PREFIX . "settings_plugins_widget_settings` (`id`, `position`, `modulname`, `themes_modulname`, `widgetname`, `widgetdatei`, `activated`, `sort`) VALUES
(1, 'navigation_widget', 'navigation', 'default', 'Navigation', 'widget_navigation', 1, 0),
(2, 'footer_widget', 'footer', 'default', 'Footer Easy', 'widget_footer_easy', 1, 0)");

$transaction .= add_table("CREATE TABLE IF NOT EXISTS`" . PREFIX . "settings_themes` ( 
  `themeID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `modulname` varchar(100) NOT NULL DEFAULT '',
  `pfad`  varchar(255) DEFAULT '0',
  `version` varchar(11) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  PRIMARY KEY (`themeID`)
) AUTO_INCREMENT=2
  DEFAULT CHARSET=utf8 DEFAULT COLLATE utf8_unicode_ci");

$transaction .= add_table("INSERT IGNORE INTO `" . PREFIX . "settings_themes` (`themeID`, `name`, `modulname`, `pfad`, `version`, `active`) VALUES
(1, 'Default', 'default', 'default', '0.3', 1)");

$transaction .= add_table("CREATE TABLE IF NOT EXISTS`" . PREFIX . "user_forum_groups` (
  `usfgID` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL DEFAULT '0',
  `1` int(1) NOT NULL,
  PRIMARY KEY (`usfgID`)
) AUTO_INCREMENT=2
  DEFAULT CHARSET=utf8 DEFAULT COLLATE utf8_unicode_ci");

$transaction .= add_table("INSERT IGNORE INTO `" . PREFIX . "user_forum_groups` (`usfgID`, `userID`, `1`) VALUES
(1, 1, 1)");  

###################
echo'<div class="card"> 
<div class=\'card-header\'>
              Ordner die gelöscht werden!
            </div>   
    <div class="card-body"><div class="alert alert-success" role="alert">Die Ordner <br>
    /includes/themes/base_files/ <br>
    /includes/themes/default/css/ <br>
    /includes/themes/default/js/ <br>
    /includes/themes/default/images/ <br>
    /includes/themes/default/img/ <br>
    /images/headelements/ <br>
    /images/plugins/ <br>
    mit den dazugehörigen Dateien wurden gelöscht.</div>
';
// Löscht deinen alten /components/fonts Ordner mit allen Dateien

 /**
    * Loescht Dateien und Ordner innerhalb eines Ordners
    * 
    * @param string $file Pfad zum Ordner, welcher geloescht werden soll
    * @return nix
    */
    function DeleteFolderFiles($file) { 

        // Dateiberechtigung auf Vollzugriff stellen
        @chmod($file,0777); 

        // Pruefen ob es ein Ordner ist
        if (is_dir($file)) { 

            // Resource oeffnen
            $resource = opendir($file); 

            // Rekursiv durch den Ordner durchgehen
            while($filename = readdir($resource)) { 

                // uebergeordnete, welche zur Navigation dienen, werden ignoriert
                if ($filename != "." && $filename != "..") { 

                    // Datei innerhalb des Ordners loeschen
                    DeleteFolderFiles($file."/".$filename); 
                } 
            } 

            // Resource schliessen
            closedir($resource); 

            // Ordner loeschen
            rmdir($file); 
        } else { 
            // Wenn es sich nicht um einen Ordner handelt -> Datei loeschen
            @unlink($file); 
        }
    } 

    // Funktion ausfueren
    // Hierbei wird am besten der absolute Pfad des zu loeschenden Ordners angegeben
    DeleteFolderFiles($_SERVER["DOCUMENT_ROOT"] . "/includes/themes/base_files");
    DeleteFolderFiles($_SERVER["DOCUMENT_ROOT"] . "/includes/themes/default/css");
    DeleteFolderFiles($_SERVER["DOCUMENT_ROOT"] . "/includes/themes/default/js");
    DeleteFolderFiles($_SERVER["DOCUMENT_ROOT"] . "/includes/themes/default/images");
    DeleteFolderFiles($_SERVER["DOCUMENT_ROOT"] . "/includes/themes/default/img");
    DeleteFolderFiles($_SERVER["DOCUMENT_ROOT"] . "/images/headelements");
    DeleteFolderFiles($_SERVER["DOCUMENT_ROOT"] . "/images/plugins");




echo'</div></div>'; 




#######################################################################################################################################  
  if (!($transaction) == 'false') {
    $resulttable = '
        <div class=\'card\'>
            <div class=\'card-header\'>
                Step4: Tabellen Installation
            </div>
            <div class=\'card-body\'>
            <div class=\'alert alert-success\'>
                <i><b>Mysql-Installation erfolgreich!</b></i>
            </div>
            </div>
        </div>
    ';
    $wsinstall = '1';
  } else {
    $resulttable = '
    <div class=\'card\'>
            <div class=\'card-header\'>
                Step4: Tabellen Installation
            </div>
            <div class=\'card-body\'>
            <div class="alert alert-danger">
               <i><b>Mysql-Installation fehlgeschlagen!</b></i><br />
               '.$transaction.'
            </div>
            </div>
        </div>';
    $wsinstall = '0';
  }

#### dropfield #####################

function checkfield($table,$field) {
  $res = safe_query("SHOW COLUMNS from `".PREFIX."$table`");
  $_tablespecs = array();   
  $_record = array();
  $existfield = '0'; 
  while($_record = mysqli_fetch_assoc($res)) {
      $_tablespecs[$_record['Field']] = $_record;
      $fields = $_record['Field'];
      if($_record['Field'] === $field) { $existfield = '1';}
  }
  return $existfield; 
}

function dropfield($table,$field) {
  global $_database;
  $checked = checkfield($table,$field);
  if($checked == '1') {
    mysqli_query($_database,"ALTER TABLE ".PREFIX."".$table." DROP `".$field."`");
  }
}

#### add_table #####################

function add_table($table) {
  global $_database;
  if(safe_query("".$table."")) {
    //echo "<div class='alert alert-success'>String ausgef&uuml;hrt! <br />";
    //return true;
  } else {
    echo "<div class='alert alert-danger'>String failed <br />";
    echo "String ausf&uuml;hren fehlgeschlagen!<br /></div>";
    return "<pre>".$table."</pre>";
    //return 'false';
  }
}

#### add_field #####################

function check_new_field($table,$newfield) {
  $res = safe_query("SHOW COLUMNS from `".PREFIX."$table`");
  $_tablespecs = array();   
  $_record = array();
  $existfield = '1'; 
  while($_record = mysqli_fetch_assoc($res)) {
      $_tablespecs[$_record['Field']] = $_record;
      $newfields = $_record['Field'];
      if($_record['Field'] === $newfield) { $existfield = '0';}
  }
  return $existfield; 
}

function add_field($table,$newfield,$typ,$standart) {
  global $_database;

  $checked = check_new_field($table,$newfield);
  if($checked == '1') {
    mysqli_query($_database,"ALTER TABLE `" . PREFIX . "$table` ADD `".$newfield."` ".$typ." ".$standart."");
  }
}

#### droptable #####################

function droptable($table) {
  global $_database;
  if(safe_query("DROP TABLE IF EXISTS `" . PREFIX . "".$table."`")) {
    //echo "<div class='alert alert-success'>String ausgef&uuml;hrt! <br />";
    //return true;
  } else {
    echo "<div class='alert alert-danger'>String failed <br />";
    echo "String ausf&uuml;hren fehlgeschlagen!<br /></div>";
    return "<pre>DROP TABLE IF EXISTS `" . PREFIX . "".$table."</pre>";
    //return 'false';
  }
}

#### renamefield #####################

function checkrenamefield($table,$newfield) {
  $res = safe_query("SHOW COLUMNS from `".PREFIX."$table`");
  $_tablespecs = array();   
  $_record = array();
  $existfield = '1'; 
  while($_record = mysqli_fetch_assoc($res)) {
      $_tablespecs[$_record['Field']] = $_record;
      $newfields = $_record['Field'];
      if($_record['Field'] === $newfield) { $existfield = '0';}
  }
  return $existfield; 
}

function renamefield($table, $oldfield, $newfield , $typ, $standart) {
global $_database;
   $checked = checkrenamefield($table,$newfield);
  if($checked == '1') {
    mysqli_query($_database,"ALTER TABLE ".PREFIX."".$table." CHANGE ".$oldfield." ".$newfield." ".$typ." ".$standart."");
  }
}

#### renametable #####################

function renametable($table,$newtable) {
  global $_database;
  if(safe_query("RENAME TABLE IF EXISTS `" . PREFIX . "".$table."` TO ".PREFIX."$newtable")) {
    //echo "<div class='alert alert-success'>String ausgef&uuml;hrt! <br />";
    //return true;
  } else {
    echo "<div class='alert alert-danger'>String failed <br />";
    echo "String ausf&uuml;hren fehlgeschlagen!<br /></div>";
    return "<pre>DROP TABLE IF EXISTS `" . PREFIX . "".$table."</pre>";
    //return 'false';
  }
}

#### insertintable #####################

function insertintable($table, $wherefield, $wherevalue, $insertstring) {
  global $_database;
  $result = safe_query("SELECT * FROM `".PREFIX."".$table."` WHERE ".$wherefield." ='".$wherevalue."'"); 
  if(mysqli_num_rows($result)) {
    //echo "<div class='alert alert-warning'>String Entry already exists <br />";
    //echo "String Eintrag schon vorhanden <br /></div>";
    //return true;
  } else {
    try {
      if(mysqli_query($_database,"".$insertstring."")) { 
        //echo "<div class='alert alert-success'>String added to the Module <br />";
        //echo "String wurde hinzugef&uuml;gt <br /></div>";
        //return true;
      } else {
        echo "<div class='alert alert-danger'>Stringadd failed <br />";
        echo "String ausf&uuml;hren fehlgeschlagen!<br /></div>";
        return "<pre>".$insertstring."</pre>";
        //return false;
      } 
    } CATCH (EXCEPTION $x) {
      echo "<div class='alert alert-danger'>String installation failed <br />";
      echo "Send the following line to the support team:<br /><br />";
      echo "<pre>".$x->message()."</pre>";
      return false;
    }
  }
}
?>