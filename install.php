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
  
  #$transaction .= dropfield('settings_widgets', 'navigation_default');
  $transaction .= addtable("DELETE FROM `" . PREFIX . "settings_widgets` WHERE modulname='navigation_default'");
  $transaction .= addtable("DELETE FROM `" . PREFIX . "settings_widgets` WHERE modulname='navigation'");

  
  safe_query("ALTER TABLE `".PREFIX."settings_widgets` ADD COLUMN IF NOT EXISTS number int(1) NOT NULL DEFAULT '0' AFTER `activate`");

  $transaction .= addtable("INSERT IGNORE INTO `" . PREFIX . "settings_widgets` (`id`, `position`, `description`, `modulname`, `themes_modulname`, `widget`, `widgetname`, `widgetdatei`, `activate`, `number`, `sort`) VALUES
('', 'page_navigation_widget', 'page_navigation_widget', 'navigation', 'default', 'widget1', 'Navigation', 'widget_navigation', 0, 1, 1)");

  #$transaction .= dropfield('settings_plugins', 'navigation_default');
  $transaction .= addtable("DELETE FROM `" . PREFIX . "settings_plugins` WHERE modulname='navigation_default'");
  $transaction .= addtable("DELETE FROM `" . PREFIX . "settings_plugins` WHERE modulname='navigation'");
  $transaction .= addtable("INSERT IGNORE INTO `" . PREFIX . "settings_plugins` (`pluginID`, `name`, `modulname`, `info`, `admin_file`, `activate`, `author`, `website`, `index_link`, `hiddenfiles`, `version`, `path`, `widgetname1`, `widgetname2`, `widgetname3`, `widget_link1`, `widget_link2`, `widget_link3`, `modul_display`) VALUES
('', 'Navigation', 'navigation', '{[de]}Mit diesem Plugin könnt ihr euch die Navigation anzeigen lassen.{[en]}With this plugin you can display the navigation.{[it]}Con questo plugin puoi visualizzare la Barra di navigazione. ', '', 1, 'T-Seven', 'https://webspell-rm.de', '', '', '0.3', 'includes/plugins/navigation/', 'Navigation', '', '', 'widget_navigation', '', '', 1)");

  #$transaction .= dropfield('settings_module', 'navigation_default');
  $transaction .= addtable("DELETE FROM `" . PREFIX . "settings_module` WHERE modulname='navigation_default'");
  $transaction .= addtable("DELETE FROM `" . PREFIX . "settings_module` WHERE modulname='navigation'");

  safe_query("ALTER TABLE `".PREFIX."settings_module` ADD COLUMN IF NOT EXISTS custom_activated int(1) NOT NULL DEFAULT '0' AFTER `full_activated`"); 
  safe_query("ALTER TABLE `".PREFIX."settings_module` ADD COLUMN IF NOT EXISTS via_navigation int(1) NOT NULL DEFAULT '0' AFTER `custom_activated`");



  $transaction .= addtable("INSERT IGNORE INTO `" . PREFIX . "settings_module` (`pluginID`, `name`, `modulname`, `themes_modulname`, `full_activated`, `custom_activated`, `via_navigation`, `head_activated`, `content_head_activated`, `content_foot_activated`, `head_section_activated`, `foot_section_activated`, `modul_display`, `activate`, `sidebar`, `plugin_settings`, `plugin_module`, `plugin_widget`, `widget1`, `widget2`, `widget3`) VALUES ('', 'Navigation', 'navigation', 'default', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 0, 1, 1, 0, 0)");



$transaction .= renametable('plugins_forum_user_forum_groups','user_forum_groups');
$transaction .= renametable('plugins_news','plugins_news_manager');
$transaction .= renametable('plugins_news_comments','plugins_news_manager_comments');
$transaction .= renametable('plugins_news_comments_recomment','plugins_news_manager_comments_recomment');
$transaction .= renametable('plugins_news_rubrics','plugins_news_manager_rubrics');
$transaction .= renametable('plugins_news_settings','plugins_news_manager_settings');
$transaction .= renametable('plugins_upcoming','plugins_calendar');
$transaction .= renametable('plugins_upcoming_announce','plugins_calendar_announce');


#########################


safe_query("UPDATE `".PREFIX."settings_plugins` SET modul_display = 1 WHERE `modul_display` = '0' AND modulname='report'");
safe_query("UPDATE `".PREFIX."settings_plugins` SET modul_display = 1 WHERE `modul_display` = '0' AND modulname='myprofile'");
safe_query("UPDATE `".PREFIX."settings_plugins` SET modul_display = 1 WHERE `modul_display` = '0' AND modulname='error_404'");
safe_query("UPDATE `".PREFIX."settings_plugins` SET modul_display = 1 WHERE `modul_display` = '0' AND modulname='static'");
safe_query("UPDATE `".PREFIX."settings_plugins` SET modul_display = 1 WHERE `modul_display` = '0' AND modulname='imprint'");
safe_query("UPDATE `".PREFIX."settings_plugins` SET modul_display = 1 WHERE `modul_display` = '0' AND modulname='privacy_policy'");
safe_query("UPDATE `".PREFIX."settings_plugins` SET modul_display = 1 WHERE `modul_display` = '0' AND modulname='contact'");
safe_query("UPDATE `".PREFIX."settings_plugins` SET modul_display = 1 WHERE `modul_display` = '0' AND modulname='register'");
safe_query("UPDATE `".PREFIX."settings_plugins` SET modul_display = 1 WHERE `modul_display` = '0' AND modulname='lostpassword'");
safe_query("UPDATE `".PREFIX."settings_plugins` SET modul_display = 1 WHERE `modul_display` = '0' AND modulname='login'");
safe_query("UPDATE `".PREFIX."settings_plugins` SET modul_display = 1 WHERE `modul_display` = '0' AND modulname='profile'");

safe_query("UPDATE `".PREFIX."settings_module` SET modul_display = 1 WHERE `modul_display` = '0' AND modulname='report'");
safe_query("UPDATE `".PREFIX."settings_module` SET modul_display = 1 WHERE `modul_display` = '0' AND modulname='myprofile'");
safe_query("UPDATE `".PREFIX."settings_module` SET modul_display = 1 WHERE `modul_display` = '0' AND modulname='error_404'");
safe_query("UPDATE `".PREFIX."settings_module` SET modul_display = 1 WHERE `modul_display` = '0' AND modulname='static'");
safe_query("UPDATE `".PREFIX."settings_module` SET modul_display = 1 WHERE `modul_display` = '0' AND modulname='imprint'");
safe_query("UPDATE `".PREFIX."settings_module` SET modul_display = 1 WHERE `modul_display` = '0' AND modulname='privacy_policy'");
safe_query("UPDATE `".PREFIX."settings_module` SET modul_display = 1 WHERE `modul_display` = '0' AND modulname='contact'");
safe_query("UPDATE `".PREFIX."settings_module` SET modul_display = 1 WHERE `modul_display` = '0' AND modulname='register'");
safe_query("UPDATE `".PREFIX."settings_module` SET modul_display = 1 WHERE `modul_display` = '0' AND modulname='lostpassword'");
safe_query("UPDATE `".PREFIX."settings_module` SET modul_display = 1 WHERE `modul_display` = '0' AND modulname='login'");
safe_query("UPDATE `".PREFIX."settings_module` SET modul_display = 1 WHERE `modul_display` = '0' AND modulname='profile'");

$transaction .= addtable("DELETE FROM `" . PREFIX . "settings_module` WHERE modulname='loginoverview' AND themes_modulname='default'");
$transaction .= addfield('user', 'profile_visibility', 'varchar(255)', "NOT NULL DEFAULT '0'");



$transaction .= addtable("DELETE FROM `" . PREFIX . "navigation_dashboard_categories` WHERE catID='6'");
$transaction .= addtable("INSERT INTO `" . PREFIX . "navigation_dashboard_categories` (`catID`, `name`, `fa_name`, `accesslevel`, `default`, `sort`) VALUES
(6, '{[de]}Plugin & Modul Verwaltung{[en]}Plugin & module management{[it]}Gestione plugin e moduli', 'bi bi-puzzle', 'page', 0, 6)");

$transaction .= addtable("DELETE FROM `" . PREFIX . "navigation_dashboard_links` WHERE modulname='ac_plugin_widgets'");
$transaction .= addtable("DELETE FROM `" . PREFIX . "navigation_dashboard_links` WHERE modulname='ac_modul_widgets'");
$transaction .= addtable("DELETE FROM `" . PREFIX . "navigation_dashboard_links` WHERE modulname='ac_editlang'");
$transaction .= addtable("INSERT INTO `" . PREFIX . "navigation_dashboard_links` (`linkID`, `catID`, `name`, `modulname`, `url`, `accesslevel`, `sort`) VALUES
('', 6, '{[de]}Widgets sortieren{[en]}Sort widgets{[it]}Ordina i widget', 'ac_plugin_widgets', 'admincenter.php?site=plugin_widgets', 'page', 3),
('', 6, '{[de]}Modul & Widget Übersicht{[en]}Module & Widget Overview{[it]}Panoramica del modulo e del widget', 'ac_modul_widgets', 'admincenter.php?site=plugin_module', 'page', 4),
('', 1, '{[de]}Spracheditor{[en]}Language Editor{[it]}Editor di Linguaggi', 'ac_editlang', 'admincenter.php?site=editlang', 'page', 11)");


$transaction .= addfield('settings_themes', 'agency', 'int(1)', 'NOT NULL DEFAULT 0 AFTER `headlines`');
$transaction .= addfield('settings_themes', 'agency_nav', 'int(1)', 'NOT NULL DEFAULT 2 AFTER `agency`');
$transaction .= addfield('settings_themes', 'sticky', 'int(1)', 'NOT NULL DEFAULT 0 AFTER `agency_nav`');
$transaction .= addfield('settings_themes', 'carousel', 'int(1)', 'NOT NULL DEFAULT 0 AFTER `agency_nav`');
$transaction .= addfield('settings_themes', 'underscore', 'int(1)', 'NOT NULL DEFAULT 0 AFTER `sticky`');

$transaction .= addfield('settings', 'keywords', 'text', 'NOT NULL AFTER `birthday`');
$transaction .= addfield('settings', 'description', 'text', 'NOT NULL AFTER `keywords`');


$transaction .= addfield('settings', 'keywords', 'text', 'NOT NULL');
$transaction .= addfield('settings', 'description', 'text', 'NOT NULL');

safe_query("UPDATE `".PREFIX."settings` SET keywords = 'Clandesign, Webspell, Webspell-RM, Wespellanpassungen, Webdesign, Tutorials, Downloads, Webspell-rm, rm, addon, plugin, Templates Webspell Addons, plungin, mods, Webspellanpassungen, Modifikationen und Anpassungen und mehr!'");

safe_query("UPDATE `".PREFIX."settings` SET description = 'Kostenlose Homepage erstellen mit Webspell-RM CMS: Einfach, schnell & kostenlos! In wenigen Minuten mit der eigenen Website online gehen.'");


safe_query("UPDATE `".PREFIX."settings_plugins` SET activate = '0' WHERE modulname='calendar'");
safe_query("UPDATE `".PREFIX."settings_plugins` SET activate = '0' WHERE modulname='news_manager'");


$transaction .= addtable("DELETE FROM `" . PREFIX . "settings_module` WHERE modulname='forum' AND themes_modulname='default'");

$transaction .= addtable("INSERT IGNORE INTO `" . PREFIX . "settings_module` (`pluginID`, `name`, `modulname`, `themes_modulname`, `full_activated`, `custom_activated`, `via_navigation`, `head_activated`, `content_head_activated`, `content_foot_activated`, `head_section_activated`, `foot_section_activated`, `modul_display`, `activate`, `sidebar`, `plugin_settings`, `plugin_module`, `plugin_widget`, `widget1`, `widget2`, `widget3`) VALUES ('', 'Forum', 'forum', 'default', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 1, 1, 0, 0)");

$transaction .= addtable("DELETE FROM `" . PREFIX . "settings_module` WHERE modulname='forum_topic' AND themes_modulname='default'");

$transaction .= addtable("INSERT IGNORE INTO `" . PREFIX . "settings_module` (`pluginID`, `name`, `modulname`, `themes_modulname`, `full_activated`, `custom_activated`, `via_navigation`, `head_activated`, `content_head_activated`, `content_foot_activated`, `head_section_activated`, `foot_section_activated`, `modul_display`, `activate`, `sidebar`, `plugin_settings`, `plugin_module`, `plugin_widget`, `widget1`, `widget2`, `widget3`) VALUES ('', 'Forum Topic', 'forum_topic', 'default', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'activated', 1, 1, 1, 1, 0, 0)");


$transaction .= addtable("DELETE FROM `" . PREFIX . "navigation_website_sub` WHERE modulname=''");
$transaction .= addtable("DELETE FROM `" . PREFIX . "navigation_website_sub` WHERE mnavID='0'");

/*$transaction .= addtable("DELETE FROM `" . PREFIX . "settings_module` WHERE modulname='news_manager' AND themes_modulname='default'");

$transaction .= addtable("INSERT IGNORE INTO `" . PREFIX . "settings_module` (`pluginID`, `name`, `modulname`, `themes_modulname`, `full_activated`, `custom_activated`, `via_navigation`, `head_activated`, `content_head_activated`, `content_foot_activated`, `head_section_activated`, `foot_section_activated`, `modul_display`, `activate`, `sidebar`, `plugin_settings`, `plugin_module`, `plugin_widget`, `widget1`, `widget2`, `widget3`) VALUES ('', 'News Manager', 'news_manager', 'default', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 'activated', 1, 1, 1, 1, 1, 1)");

#$transaction .= addtable("DELETE FROM `" . PREFIX . "settings_plugins` WHERE modulname='news_manager'");
*/
/*$transaction .= addtable("INSERT IGNORE INTO `" . PREFIX . "settings_plugins` (`pluginID`, `name`, `modulname`, `info`, `admin_file`, `activate`, `author`, `website`, `index_link`, `hiddenfiles`, `version`, `path`, `le_activated`, `re_activated`, `all_activated`, `all_deactivated`, `head_activated`, `content_head_activated`, `content_foot_activated`, `head_section_activated`, `foot_section_activated`, `widgetname1`, `widgetname2`, `widgetname3`, `widget_link1`, `widget_link2`, `widget_link3`, `modul_deactivated`, `full_activated`, `modul_display`) VALUES ('', 'News Manager', 'news_manager', '{[de]}News Manager ist ein komplettes News-Management-Plugin für Webspell-RM. Es ermöglicht Ihnen das Hinzufügen, Verwalten und Anzeigen von Nachrichten auf Ihrer Webspell-RM-Seite, einschließlich Datumsarchiven, Nachrichtenkategorien, Nachrichtentags und mehreren Nachrichten-Widgets.{[en]}News Manager is a complete news management plugin for Webspell RM. It allows you to add, manage and view news on your Webspell RM page including date archives, news categories, news tags and multiple news widgets.{[it]}News Manager è un plug-in completo di gestione delle notizie per Webspell RM. Ti consente di aggiungere, gestire e visualizzare le notizie sulla tua pagina Webspell RM inclusi archivi di date, categorie di notizie, tag di notizie e più widget di notizie.', 'admin_news_manager', 0, 'T-Seven', 'https://webspell-rm.de', 'news_manager,news_archive,news_comments,news_contents', '', '0.1', 'includes/plugins/news_manager/', 0, 0, 0, 0, 0, 0, 0, 0, 0, 'News Content', 'News Headlines', 'News Headlines 2', 'widget_news_content', 'widget_news_headlines', 'widget_news_headlines_2', 0, 0, 1)");*/









echo'<div class="card"> 
<div class=\'card-header\'>
              Ordner die gelöscht werden!
            </div>   
    <div class="card-body"><div class="alert alert-success" role="alert">Die Ordner <br>
    /includes/plugins/navigation_default/ <br>
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
    DeleteFolderFiles($_SERVER["DOCUMENT_ROOT"] . "/includes/plugins/navigation_default");



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

#### addtable #####################

function addtable($table) {
  global $_database;
  if(safe_query("".$table."")) {
    //echo "<div class='alert alert-success'>String ausgef&uuml;hrt!</div><br />";
    //return true;
  } else {
    echo "<div class='alert alert-danger'>String failed <br />";
    echo "String ausf&uuml;hren fehlgeschlagen!<br /></div>";
    return "<pre>".$table."</pre>";
    //return 'false';
  }
}

#### addfield #####################

function checknewfield($table,$newfield) {
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

function addfield($table,$newfield,$typ,$standart) {
  global $_database;

  $checked = checknewfield($table,$newfield);
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
  #Wurde am 29.12.2024 angepasst
  # ALT!!! if(safe_query("RENAME TABLE IF EXISTS `" . PREFIX . "".$table."` TO ".PREFIX."$newtable")) {
  if(mysqli_query($_database,"RENAME TABLE IF EXISTS `" . PREFIX . "".$table."` TO ".PREFIX."$newtable")) {
    #echo "<div class='alert alert-success'>String ausgef&uuml;hrt!</div><br />";
    #return true;
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
      echo "Send the following line to the support team:<br /></div>";
      echo "<pre>".$x->message()."</pre>";
      return false;
    }
  }
}
?>