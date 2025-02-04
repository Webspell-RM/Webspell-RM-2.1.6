<script type="text/javascript">
function checkedall()
{
  for (var i = 0; i < document.forms[0].elements.length; i++) {
    document.forms[0].elements[i].checked = true;
  }
}
</script>
<?php
/**
 *¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯*  
 *                                    Webspell-RM      /                        /   /                                                 *
 *                                    -----------__---/__---__------__----__---/---/-----__---- _  _ -                                *
 *                                     | /| /  /___) /   ) (_ `   /   ) /___) /   / __  /     /  /  /                                 *
 *                                    _|/_|/__(___ _(___/_(__)___/___/_(___ _/___/_____/_____/__/__/_                                 *
 *                                                 Free Content / Management System                                                   *
 *                                                             /                                                                      *
 *¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯*
 * @version         Webspell-RM                                                                                                       *
 *                                                                                                                                    *
 * @copyright       2018-2022 by webspell-rm.de <https://www.webspell-rm.de>                                                          *
 * @support         For Support, Plugins, Templates and the Full Script visit webspell-rm.de <https://www.webspell-rm.de/forum.html>  *
 * @WIKI            webspell-rm.de <https://www.webspell-rm.de/wiki.html>                                                             *
 *                                                                                                                                    *
 *¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯*
 * @license         Script runs under the GNU GENERAL PUBLIC LICENCE                                                                  *
 *                  It's NOT allowed to remove this copyright-tag <http://www.fsf.org/licensing/licenses/gpl.html>                    *
 *                                                                                                                                    *
 * @author          Code based on WebSPELL Clanpackage (Michael Gruber - webspell.at)                                                 *
 * @copyright       2005-2018 by webspell.org / webspell.info                                                                         *
 *¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯*
 *                                                                                                                                    *
 *¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯*
 */

/*
 * plugin_manager
 * 
 * @author: T-Seven | Webspell-RM.de
 * @version: 1.0
 * @package: plugin_manager
 * @website: www.Webspell-RM.de
 *
 * Mit dem Plugin-Manager kann man Einstellungen vornehmen, die das Plugin und die dazugehörigen Widegt's betreffen.
*/



$_language->readModule('widgets', false, true);


$ergebnis = safe_query("SELECT * FROM ".PREFIX."navigation_dashboard_links WHERE modulname='ac_widgets'");
    while ($db=mysqli_fetch_array($ergebnis)) {
      $accesslevel = 'is'.$db['accesslevel'].'admin';

if (!$accesslevel($userID) || mb_substr(basename($_SERVER[ 'REQUEST_URI' ]), 0, 15) != "admincenter.php") {
    die($_language->module[ 'access_denied' ]);
}
}




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


if (isset($_POST[ 'modul_aktiv' ])) {    
    
    $CAPCLASS = new \webspell\Captcha;
    if ($CAPCLASS->checkCaptcha(0, $_POST[ 'captcha_hash' ])) {
        $themes_modulname=$_POST['themes_modulname'];

#echo "<pre>";
#print_r($_POST);
#echo "</pre>";

        if (isset($_POST['checkbox1'])) {            
            foreach ($_POST['checkbox1'] as $k => $v) {
                if($v=="0"){
                    safe_query("UPDATE " . PREFIX . "settings_module SET via_navigation = '0' where modulname = '".$k."' AND themes_modulname = '".$themes_modulname."'");
                    if ($k=="forum"){
                        safe_query("UPDATE " . PREFIX . "settings_module SET via_navigation = '0' where modulname = 'forum_topic' AND themes_modulname = '".$themes_modulname."'");
                    }
                    if ($k=="startpage"){
                        #safe_query("UPDATE " . PREFIX . "settings_module SET via_navigation = '0' where modulname = 'startpage' AND themes_modulname = '".$themes_modulname."'");
                        safe_query("UPDATE " . PREFIX . "settings_module SET via_navigation = '0' where name = 'Startpage' AND themes_modulname = '".$themes_modulname."'");
                    } 
                }
                else if($v=="1"){
                    safe_query("UPDATE " . PREFIX . "settings_module SET via_navigation = '1' where modulname = '".$k."' AND themes_modulname = '".$themes_modulname."'");
                    if ($k=="forum"){
                        safe_query("UPDATE " . PREFIX . "settings_module SET via_navigation = '1' where modulname = 'forum_topic' AND themes_modulname = '".$themes_modulname."'");
                    }
                    if ($k=="startpage"){
                        #safe_query("UPDATE " . PREFIX . "settings_module SET via_navigation = '1' where modulname = 'startpage' AND themes_modulname = '".$themes_modulname."'");
                        safe_query("UPDATE " . PREFIX . "settings_module SET via_navigation = '1' where name = 'Startpage' AND themes_modulname = '".$themes_modulname."'");
                    }
                }
            }
        } else {
            print "alle checkbox schlafen schon.\n";
        }

        if (isset($_POST['checkbox2'])) {
            foreach ($_POST['checkbox2'] as $k => $v) {
                if($v=="0"){
                    safe_query("UPDATE " . PREFIX . "settings_module SET head_activated = '0' where modulname = '".$k."' AND themes_modulname = '".$themes_modulname."'");
                    if ($k=="forum"){
                        safe_query("UPDATE " . PREFIX . "settings_module SET head_activated = '0' where modulname = 'forum_topic' AND themes_modulname = '".$themes_modulname."'");
                    }
                    if ($k=="startpage"){
                        #safe_query("UPDATE " . PREFIX . "settings_module SET head_activated = '0' where modulname = 'startpage' AND themes_modulname = '".$themes_modulname."'");
                        safe_query("UPDATE " . PREFIX . "settings_module SET head_activated = '0' where name = 'Startpage' AND themes_modulname = '".$themes_modulname."'");
                    } 
                }
                else if($v=="1"){
                    safe_query("UPDATE " . PREFIX . "settings_module SET head_activated = '1' where modulname = '".$k."' AND themes_modulname = '".$themes_modulname."'");
                    if ($k=="forum"){
                        safe_query("UPDATE " . PREFIX . "settings_module SET head_activated = '1' where modulname = 'forum_topic' AND themes_modulname = '".$themes_modulname."'");
                    }
                    if ($k=="startpage"){
                        #safe_query("UPDATE " . PREFIX . "settings_module SET head_activated = '1' where modulname = 'startpage' AND themes_modulname = '".$themes_modulname."'");
                        safe_query("UPDATE " . PREFIX . "settings_module SET head_activated = '1' where name = 'Startpage' AND themes_modulname = '".$themes_modulname."'");
                    }
                }
            }
        } else {
            print "alle checkbox schlafen schon.\n";
        }

        if (isset($_POST['checkbox3'])) {
            foreach ($_POST['checkbox3'] as $k => $v) {
                if($v=="0"){
                    safe_query("UPDATE " . PREFIX . "settings_module SET head_section_activated = '0' where modulname = '".$k."' AND themes_modulname = '".$themes_modulname."'");
                    if ($k=="forum"){
                        safe_query("UPDATE " . PREFIX . "settings_module SET head_section_activated = '0' where modulname = 'forum_topic' AND themes_modulname = '".$themes_modulname."'");
                    }
                    if ($k=="startpage"){
                        #safe_query("UPDATE " . PREFIX . "settings_module SET head_section_activated = '0' where modulname = 'startpage' AND themes_modulname = '".$themes_modulname."'");
                        safe_query("UPDATE " . PREFIX . "settings_module SET head_section_activated = '0' where name = 'Startpage' AND themes_modulname = '".$themes_modulname."'");
                    } 
                }
                else if($v=="1"){
                    safe_query("UPDATE " . PREFIX . "settings_module SET head_section_activated = '1' where modulname = '".$k."' AND themes_modulname = '".$themes_modulname."'");
                    if ($k=="forum"){
                        safe_query("UPDATE " . PREFIX . "settings_module SET head_section_activated = '1' where modulname = 'forum_topic' AND themes_modulname = '".$themes_modulname."'");
                    }
                    if ($k=="startpage"){
                        #safe_query("UPDATE " . PREFIX . "settings_module SET head_section_activated = '1' where modulname = 'startpage' AND themes_modulname = '".$themes_modulname."'");
                        safe_query("UPDATE " . PREFIX . "settings_module SET head_section_activated = '1' where name = 'Startpage' AND themes_modulname = '".$themes_modulname."'");
                    }
                }
            }
        } else {
            print "alle checkbox schlafen schon.\n";
        }

        if (isset($_POST['checkbox4'])) {
            foreach ($_POST['checkbox4'] as $k => $v) {
                if($v=="0"){
                    safe_query("UPDATE " . PREFIX . "settings_module SET content_head_activated = '0' where modulname = '".$k."' AND themes_modulname = '".$themes_modulname."'");
                    if ($k=="forum"){
                        safe_query("UPDATE " . PREFIX . "settings_module SET content_head_activated = '0' where modulname = 'forum_topic' AND themes_modulname = '".$themes_modulname."'");
                    }
                    if ($k=="startpage"){
                        #safe_query("UPDATE " . PREFIX . "settings_module SET content_head_activated = '0' where modulname = 'startpage' AND themes_modulname = '".$themes_modulname."'");
                        safe_query("UPDATE " . PREFIX . "settings_module SET content_head_activated = '0' where name = 'Startpage' AND themes_modulname = '".$themes_modulname."'");
                    } 
                }
                else if($v=="1"){
                    safe_query("UPDATE " . PREFIX . "settings_module SET content_head_activated = '1' where modulname = '".$k."' AND themes_modulname = '".$themes_modulname."'");
                    if ($k=="forum"){
                        safe_query("UPDATE " . PREFIX . "settings_module SET content_head_activated = '1' where modulname = 'forum_topic' AND themes_modulname = '".$themes_modulname."'");
                    }
                    if ($k=="startpage"){
                        #safe_query("UPDATE " . PREFIX . "settings_module SET content_head_activated = '1' where modulname = 'startpage' AND themes_modulname = '".$themes_modulname."'");
                        safe_query("UPDATE " . PREFIX . "settings_module SET content_head_activated = '1' where name = 'Startpage' AND themes_modulname = '".$themes_modulname."'");
                    }
                }
            }
        } else {
            print "alle checkbox schlafen schon.\n";
        }

        #####################################

        if (isset($_POST['checkbox5'])) {
            foreach ($_POST['checkbox5'] as $k => $v) {
                if($v=="activated"){
                    safe_query("UPDATE " . PREFIX . "settings_module SET sidebar = 'activated' where modulname = '".$k."' AND themes_modulname = '".$themes_modulname."'");
                    if ($k=="forum"){
                        safe_query("UPDATE " . PREFIX . "settings_module SET sidebar = 'activated' where modulname = 'forum_topic' AND themes_modulname = '".$themes_modulname."'");
                    }
                    if ($k=="startpage"){
                        #safe_query("UPDATE " . PREFIX . "settings_module SET sidebar = 'activated' where modulname = 'startpage' AND themes_modulname = '".$themes_modulname."'");
                        safe_query("UPDATE " . PREFIX . "settings_module SET sidebar = 'activated' where name = 'Startpage' AND themes_modulname = '".$themes_modulname."'");
                    } 
                }
                else if($v=="full_activated"){
                    safe_query("UPDATE " . PREFIX . "settings_module SET sidebar = 'full_activated' where modulname = '".$k."' AND themes_modulname = '".$themes_modulname."'");
                    if ($k=="forum"){
                        safe_query("UPDATE " . PREFIX . "settings_module SET sidebar = 'full_activated' where modulname = 'forum_topic' AND themes_modulname = '".$themes_modulname."'");
                    }
                    if ($k=="startpage"){
                        #safe_query("UPDATE " . PREFIX . "settings_module SET sidebar = 'full_activated' where modulname = 'startpage' AND themes_modulname = '".$themes_modulname."'");
                        safe_query("UPDATE " . PREFIX . "settings_module SET sidebar = 'full_activated' where name = 'Startpage' AND themes_modulname = '".$themes_modulname."'");
                    }
                }
                else if($v=="le_activated"){
                    safe_query("UPDATE " . PREFIX . "settings_module SET sidebar = 'le_activated' where modulname = '".$k."' AND themes_modulname = '".$themes_modulname."'");
                    if ($k=="forum"){
                        safe_query("UPDATE " . PREFIX . "settings_module SET sidebar = 'le_activated' where modulname = 'forum_topic' AND themes_modulname = '".$themes_modulname."'");
                    }
                    if ($k=="startpage"){
                        #safe_query("UPDATE " . PREFIX . "settings_module SET sidebar = 'le_activated' where modulname = 'startpage' AND themes_modulname = '".$themes_modulname."'");
                        safe_query("UPDATE " . PREFIX . "settings_module SET sidebar = 'le_activated' where name = 'Startpage' AND themes_modulname = '".$themes_modulname."'");
                    }
                }
                else if($v=="re_activated"){
                    safe_query("UPDATE " . PREFIX . "settings_module SET sidebar = 're_activated' where modulname = '".$k."' AND themes_modulname = '".$themes_modulname."'");
                    if ($k=="forum"){
                        safe_query("UPDATE " . PREFIX . "settings_module SET sidebar = 're_activated' where modulname = 'forum_topic' AND themes_modulname = '".$themes_modulname."'");
                    }
                    if ($k=="startpage"){
                        #safe_query("UPDATE " . PREFIX . "settings_module SET sidebar = 're_activated' where modulname = 'startpage' AND themes_modulname = '".$themes_modulname."'");
                        safe_query("UPDATE " . PREFIX . "settings_module SET sidebar = 're_activated' where name = 'Startpage' AND themes_modulname = '".$themes_modulname."'");
                    }
                }
            }
        } else {
            print "alle checkbox schlafen schon.\n";
        }

# zweiter Eintrag fehlt
# Startpage, Forum, Clanwars, Gallery        
        ###########################

        if (isset($_POST['checkbox6'])) {
            foreach ($_POST['checkbox6'] as $k => $v) {
                if($v=="0"){
                    safe_query("UPDATE " . PREFIX . "settings_module SET content_foot_activated = '0' where modulname = '".$k."' AND themes_modulname = '".$themes_modulname."'");
                    if ($k=="forum"){
                        safe_query("UPDATE " . PREFIX . "settings_module SET content_foot_activated = '0' where modulname = 'forum_topic' AND themes_modulname = '".$themes_modulname."'");
                    }
                    if ($k=="startpage"){
                        #safe_query("UPDATE " . PREFIX . "settings_module SET content_foot_activated = '0' where modulname = 'startpage' AND themes_modulname = '".$themes_modulname."'");
                        safe_query("UPDATE " . PREFIX . "settings_module SET content_foot_activated = '0' where name = 'Startpage' AND themes_modulname = '".$themes_modulname."'");
                    } 
                }
                else if($v=="1"){
                    safe_query("UPDATE " . PREFIX . "settings_module SET content_foot_activated = '1' where modulname = '".$k."' AND themes_modulname = '".$themes_modulname."'");
                    if ($k=="forum"){
                        safe_query("UPDATE " . PREFIX . "settings_module SET content_foot_activated = '1' where modulname = 'forum_topic' AND themes_modulname = '".$themes_modulname."'");
                    }
                    if ($k=="startpage"){
                        #safe_query("UPDATE " . PREFIX . "settings_module SET content_foot_activated = '1' where modulname = 'startpage' AND themes_modulname = '".$themes_modulname."'");
                        safe_query("UPDATE " . PREFIX . "settings_module SET content_foot_activated = '1' where name = 'Startpage' AND themes_modulname = '".$themes_modulname."'");
                    }
                }
            }
        } else {
            print "alle checkbox schlafen schon.\n";
        }

        if (isset($_POST['checkbox7'])) {            
            foreach ($_POST['checkbox7'] as $k => $v) {
                if($v=="0"){
                    safe_query("UPDATE " . PREFIX . "settings_module SET foot_section_activated = '0' where modulname = '".$k."' AND themes_modulname = '".$themes_modulname."'");
                    if ($k=="forum"){
                        safe_query("UPDATE " . PREFIX . "settings_module SET foot_section_activated = '0' where modulname = 'forum_topic' AND themes_modulname = '".$themes_modulname."'");
                    }
                    if ($k=="startpage"){
                        #safe_query("UPDATE " . PREFIX . "settings_module SET foot_section_activated = '0' where modulname = 'startpage' AND themes_modulname = '".$themes_modulname."'");
                        safe_query("UPDATE " . PREFIX . "settings_module SET foot_section_activated = '0' where name = 'Startpage' AND themes_modulname = '".$themes_modulname."'");
                    } 
                }
                else if($v=="1"){
                    safe_query("UPDATE " . PREFIX . "settings_module SET foot_section_activated = '1' where modulname = '".$k."' AND themes_modulname = '".$themes_modulname."'");
                    if ($k=="forum"){    
                        safe_query("UPDATE " . PREFIX . "settings_module SET foot_section_activated = '1' where modulname = 'forum_topic' AND themes_modulname = '".$themes_modulname."'");
                    }
                    if ($k=="startpage"){
                        #safe_query("UPDATE " . PREFIX . "settings_module SET foot_section_activated = '1' where modulname = 'startpage' AND themes_modulname = '".$themes_modulname."'");
                        safe_query("UPDATE " . PREFIX . "settings_module SET foot_section_activated = '1' where name = 'Startpage' AND themes_modulname = '".$themes_modulname."'");
                    } 
                } 
            }           
        } else {
            print "alle checkbox schlafen schon.\n";
        }

        #redirect("admincenter.php?site=plugin_widgets&action=modules", "", "1");
    } else {
        echo '' . $_language->module['transaction_invalid'] . '';
    }
}







if (isset($_POST[ 'delete' ])) {    
    
    $CAPCLASS = new \webspell\Captcha;
    if ($CAPCLASS->checkCaptcha(0, $_POST[ 'captcha_hash' ])) {
        $themes_modulname=$_POST['themes_modulname'];

#echo "<pre>";
#print_r($_POST);
#echo "</pre>";


        if (isset($_POST['checkbox8'])) {            
            foreach ($_POST['checkbox8'] as $k => $v) {
                if($v=="0"){
                    
                }
                else if($v=="1"){
                    $name = $k;
                    // Funktion ausfueren
                    // Hierbei wird am besten der absolute Pfad des zu loeschenden Ordners angegeben
                    DeleteFolderFiles($_SERVER["DOCUMENT_ROOT"] . "/includes/plugins/$name"); 


                    DeleteData("settings_plugins","modulname",$name);
                    DeleteData("navigation_dashboard_links","modulname",$name);
                    DeleteData("navigation_website_sub","modulname",$name);
                    DeleteData("navigation_website_sub","modulname",$name."_result");
                    DeleteData("navigation_website_sub","modulname",$name."_archive");
                    DeleteData("settings_module","modulname",$name);
                    DeleteData("settings_widgets","modulname",$name);
                    safe_query("DROP TABLE IF EXISTS " . PREFIX . "plugins_".$name."");
                    safe_query("DROP TABLE IF EXISTS " . PREFIX . "plugins_".$name."_categories");
                    safe_query("DROP TABLE IF EXISTS " . PREFIX . "plugins_".$name."_settings");
                    safe_query("DROP TABLE IF EXISTS " . PREFIX . "plugins_".$name."_comments ");
                    safe_query("DROP TABLE IF EXISTS " . PREFIX . "plugins_".$name."_rubrics");
                    safe_query("DROP TABLE IF EXISTS " . PREFIX . "plugins_".$name."_settings");
                    safe_query("DROP TABLE IF EXISTS " . PREFIX . "plugins_".$name."_comments_recomment");
                    safe_query("DROP TABLE IF EXISTS " . PREFIX . "plugins_".$name."_parallax");
                    safe_query("DROP TABLE IF EXISTS " . PREFIX . "plugins_".$name."_sticky");
                    safe_query("DROP TABLE IF EXISTS " . PREFIX . "plugins_".$name."_payed");
                    safe_query("DROP TABLE IF EXISTS " . PREFIX . "plugins_".$name."_config");
                    safe_query("DROP TABLE IF EXISTS " . PREFIX . "plugins_".$name."_teams");
                    safe_query("DROP TABLE IF EXISTS " . PREFIX . "plugins_".$name."_content");
                    safe_query("DROP TABLE IF EXISTS " . PREFIX . "plugins_".$name."_challenge");
                    safe_query("DROP TABLE IF EXISTS " . PREFIX . "plugins_".$name."_gametype");
                    safe_query("DROP TABLE IF EXISTS " . PREFIX . "plugins_".$name."_maps");
                    safe_query("DROP TABLE IF EXISTS " . PREFIX . "plugins_".$name."_matchtype");
                    safe_query("DROP TABLE IF EXISTS " . PREFIX . "plugins_".$name."_spieleranzahl");
                    safe_query("DROP TABLE IF EXISTS " . PREFIX . "plugins_".$name."_target");
                    safe_query("DROP TABLE IF EXISTS " . PREFIX . "plugins_".$name."_announcements");
                    safe_query("DROP TABLE IF EXISTS " . PREFIX . "plugins_".$name."_boards");
                    safe_query("DROP TABLE IF EXISTS " . PREFIX . "plugins_".$name."_notify");
                    safe_query("DROP TABLE IF EXISTS " . PREFIX . "plugins_".$name."_posts");
                    safe_query("DROP TABLE IF EXISTS " . PREFIX . "plugins_".$name."_topics");
                    safe_query("DROP TABLE IF EXISTS " . PREFIX . "plugins_".$name."_poll");
                    safe_query("DROP TABLE IF EXISTS " . PREFIX . "plugins_".$name."_votes");
                    safe_query("DROP TABLE IF EXISTS " . PREFIX . "plugins_".$name."_groups");
                    safe_query("DROP TABLE IF EXISTS " . PREFIX . "plugins_".$name."_moderators");
                    safe_query("DROP TABLE IF EXISTS " . PREFIX . "plugins_".$name."_posts_spam");
                    safe_query("DROP TABLE IF EXISTS " . PREFIX . "plugins_".$name."_ranks");
                    safe_query("DROP TABLE IF EXISTS " . PREFIX . "plugins_".$name."_topics_spam");
                    safe_query("DROP TABLE IF EXISTS " . PREFIX . "plugins_".$name."_user_forum_groups");
                    safe_query("DROP TABLE IF EXISTS " . PREFIX . "plugins_".$name."_groups");
                    safe_query("DROP TABLE IF EXISTS " . PREFIX . "plugins_".$name."_pictures");
                    safe_query("DROP TABLE IF EXISTS " . PREFIX . "plugins_".$name."_votes");
                    safe_query("DROP TABLE IF EXISTS " . PREFIX . "plugins_".$name."_members");
                    safe_query("DROP TABLE IF EXISTS " . PREFIX . "plugins_".$name."_announce");
                    safe_query("DROP TABLE IF EXISTS " . PREFIX . "plugins_".$name."_list");
                    safe_query("DROP TABLE IF EXISTS " . PREFIX . "plugins_".$name."_settings");
                                         
                } 
            }           
        } else {
            print "alle checkbox schlafen schon.\n";
        }

    } else {
        echo '' . $_language->module['transaction_invalid'] . '';
    }
}



echo'<div class="card">
        <div class="card-header"><i class="bi bi-puzzle"></i> 
            ' . $_language->module[ 'module_overview' ] . '
        </div>
<nav aria-label="breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="admincenter.php?site=plugin_module">' . $_language->module['module_overview'] . '</a></li>
    <li class="breadcrumb-item active" aria-current="page">new & edit</li>
  </ol>
</nav>

<div class="card-body">';
$thergebnis = safe_query("SELECT * FROM " . PREFIX . "settings_themes WHERE active = '1'");
    $dx = mysqli_fetch_array($thergebnis);
echo'<div class="mb-12 row">
        <label class="col-md-1 control-label"><h4>Template:</h4></label>
        <div class="col-md-3"><div class="alert alert-info" role="alert" style="padding: 0px 5px">
            <h4>'.$dx['modulname'].'</h4></div>
        </div>
    </div>

  <h4>' . $_language->module[ 'plugin_module_widget_overview' ] . '</h4><hr>';

echo'<form class="form-horizontal" method="post">
<div class="table-responsive"><table id="plugini" class="table table-striped table-bordered" style="width:100%">
  
    <thead>
        <th><strong>' . $_language->module[ 'id' ] . '</strong></th>
        <th width="10%">' . $_language->module[ 'plugin' ] . ' ' . $_language->module[ 'name' ] . '</th>
        <th>' . $_language->module[ 'via_navigation' ] . '</th>
        <th>' . $_language->module[ 'head_activated' ] . '</th>
        <th>' . $_language->module[ 'head_section_activated' ] . '</th>
        <th>' . $_language->module[ 'content_head_activated' ] . '</th>
        <th width="25%" class="text-center">' . $_language->module[ 'left_sidebar_activated' ] . ' | ' . $_language->module[ 'right_sidebar_activated' ] . '</th>
        <th>' . $_language->module[ 'content_foot_activated' ] . '</th>
        <th>' . $_language->module[ 'foot_section_activated' ] . '</th>
        <th class="table-danger">' . $_language->module[ 'delete' ] . ' <br><!--<input class="form-check-input" type="checkbox" name="checkall" onclick="checkedall()" /> alle markieren--></th>
    </thead>';


    $CAPCLASS = new \webspell\Captcha;
    $CAPCLASS->createTransaction();
    $hash = $CAPCLASS->getHash();

    $result = safe_query("SELECT * FROM " . PREFIX . "settings_module WHERE themes_modulname= '".$dx['modulname']."' AND modul_display='1'");
    $numofrows = mysqli_num_rows($result);
   

        for($i = 0; $i < $numofrows; $i++) {
        $ds = mysqli_fetch_array($result);
            if ($i % 2) {
                $td = 'td1';
            } else {
                $td = 'td2';
            }

            $via_navigation_name='';
            $head_activated_name='';
            $head_section_name='';
            $center_head_name='';
            $center_footer_name='';
            $foot_section_name='';
            $left_side_name='';
            $right_side_name='';

            $via_navigation_ergebnis=safe_query("SELECT * FROM " . PREFIX . "settings_widgets WHERE themes_modulname= '".$dx['modulname']."' AND position='via_navigation_widget'");
            while ($via_navigation = mysqli_fetch_array($via_navigation_ergebnis)) {
            $via_navigation_name .='<span class="badge border border-success text-black">'.$via_navigation['widgetname'].'</span>';
            $via_navigation_name .='<br>';
            }

            $page_head_ergebnis=safe_query("SELECT * FROM " . PREFIX . "settings_widgets WHERE themes_modulname= '".$dx['modulname']."' AND position='page_head_widget'");
            while ($page_head = mysqli_fetch_array($page_head_ergebnis)) {
            $head_activated_name .= '<span class="badge border border-success text-black">'.$page_head['widgetname'].'</span>';
            $head_activated_name .='<br>';
            }

            $head_section_ergebnis=safe_query("SELECT * FROM " . PREFIX . "settings_widgets WHERE themes_modulname= '".$dx['modulname']."' AND position='head_section_widget'");
            while ($head_section = mysqli_fetch_array($head_section_ergebnis)) {
            $head_section_name .='<span class="badge border border-success text-black">'.$head_section['widgetname'].'</span>';
            $head_section_name .='<br>';
            }

            $center_head_ergebnis=safe_query("SELECT * FROM " . PREFIX . "settings_widgets WHERE themes_modulname= '".$dx['modulname']."' AND position='center_head_widget'");
            while ($center_head = mysqli_fetch_array($center_head_ergebnis)) {
            $center_head_name .='<span class="badge border border-success text-black">'.$center_head['widgetname'].'</span>';
            $center_head_name .='<br>';
            }

            $left_side_ergebnis=safe_query("SELECT * FROM " . PREFIX . "settings_widgets WHERE themes_modulname= '".$dx['modulname']."' AND position='left_side_widget'");
            while ($left_side = mysqli_fetch_array($left_side_ergebnis)) {
            $left_side_name .='<span class="badge border border-success text-black">'.$left_side['widgetname'].'</span>';
            $left_side_name .='<br>';
            }

            $right_side_ergebnis=safe_query("SELECT * FROM " . PREFIX . "settings_widgets WHERE themes_modulname= '".$dx['modulname']."' AND position='right_side_widget'");
            while ($right_side = mysqli_fetch_array($right_side_ergebnis)) {
            $right_side_name .='<span class="badge border border-success text-black">'.$right_side['widgetname'].'</span>';
            $right_side_name .='<br>';
            }

            $all_side_ergebnis=safe_query("SELECT * FROM " . PREFIX . "settings_widgets WHERE themes_modulname= '".$dx['modulname']."' AND position='right_side_widget' AND position='left_side_widget'");
            while ($right_side = mysqli_fetch_array($all_side_ergebnis)) {
            $right_side_name .='<span class="badge border border-success text-black">'.$right_side['widgetname'].'</span>';
            $right_side_name .='<br>';
            $left_side_name .='<span class="badge border border-success text-black">'.$left_side['widgetname'].'</span>';
            $left_side_name .='<br>';
            }

            $center_footer_ergebnis=safe_query("SELECT * FROM " . PREFIX . "settings_widgets WHERE themes_modulname= '".$dx['modulname']."' AND position='center_footer_widget'");
            while ($center_footer = mysqli_fetch_array($center_footer_ergebnis)) {
            $center_footer_name .='<span class="badge border border-success text-black">'.$center_footer['widgetname'].'</span>';
            $center_footer_name .='<br>';
            }

            $foot_section_ergebnis=safe_query("SELECT * FROM " . PREFIX . "settings_widgets WHERE themes_modulname= '".$dx['modulname']."' AND position='foot_section_widget'");
            while ($foot_section = mysqli_fetch_array($foot_section_ergebnis)) {
            $foot_section_name .='<span class="badge border border-success text-black">'.$foot_section['widgetname'].'</span>';
            $foot_section_name .='<br>';
            }

            if($ds['via_navigation']=='1') { 
                $via_navigation_one = '<font class="text-success">' . $_language->module['on' ] . '</font>';
                $via_navigation_two = '<div class="alert alert-success" style="padding: 5px">'.$via_navigation_name.'</div>';
            } else { 
                $via_navigation_one = '<i><font class="text-danger">' . $_language->module['off' ] . '</font></i>';
                $via_navigation_two = '<div class="text-end alert alert-danger" style="padding: 5px"></div>';
            }

            if($ds['head_activated']=='1') { 
                $head_activated_one = '<font class="text-success">' . $_language->module['on' ] . '</font>';
                $head_activated_two = '<div class="alert alert-success" style="padding: 5px">'.$head_activated_name.'</div>';
            } else { 
                $head_activated_one = '<i><font class="text-danger">' . $_language->module['off' ] . '</font></i> ';
                $head_activated_two = '<div class="text-end alert alert-danger" style="padding: 5px"></div>';
            }

            if($ds['head_section_activated']=='1') { 
                $head_section_activated_one = '<font class="text-success">' . $_language->module['on' ] . '</font>';
                $head_section_activated_two = '<div class="alert alert-success" style="padding: 5px">'.$head_section_name.'</div>';
            } else { 
                $head_section_activated_one = '<i><font class="text-danger">' . $_language->module['off' ] . '</font></i>'; 
                $head_section_activated_two = '<div class="text-end alert alert-danger" style="padding: 5px"></div>';
            }

            if($ds['content_head_activated']=='1') { 
                $content_head_activated_one = '<font class="text-success">' . $_language->module['on' ] . '</font>';
                $content_head_activated_two = '<div class="alert alert-success" style="padding: 5px">'.$center_head_name.'</div>';
            } else { 
                $content_head_activated_one = '<i><font class="text-danger">' . $_language->module['off' ] . '</font></i>';
                $content_head_activated_two = '<div class="text-end alert alert-danger" style="padding: 5px"></div>'; 
            }

            if($ds['sidebar']=='le_activated') {
                $le_activated = '<font class="text-success">' . $_language->module['left' ] . '</font>';
                $re_activated = '<i><font class="text-danger">' . $_language->module['right' ] . '</font></i>';
                $activated = '<i><font class="text-danger">' . $_language->module['right_left_not_active' ] . '' . $_language->module['off' ] . '</font></i>';
                $full_activated = '<i><font class="text-danger">' . $_language->module['right_left_active' ] . ' ' . $_language->module['off' ] . '</font></i>';
                $le_activated_left = $left_side_name; 
                $le_activated_right = '';
            } elseif($ds['sidebar']=='re_activated') {
                $le_activated = '<i><font class="text-danger">' . $_language->module['left' ] . '</font></i>';
                $re_activated = '<font class="text-success">' . $_language->module['right' ] . '</font>';
                $activated = '<i><font class="text-danger">' . $_language->module['right_left_not_active' ] . '</font></i>';
                $full_activated = '<i><font class="text-danger">' . $_language->module['right_left_active' ] . '</font></i>';
                $le_activated_left = ''; 
                $le_activated_right = $right_side_name;
            } elseif($ds['sidebar']=='full_activated') {
                $le_activated = '<i><font class="text-danger">' . $_language->module['left' ] . '</font></i>';
                $re_activated = '<i><font class="text-danger">' . $_language->module['right' ] . '</font></i>'; 
                $activated = '<i><font class="text-danger">' . $_language->module['right_left_not_active' ] . '</font></i>';
                $full_activated = '<font class="text-success">' . $_language->module['right_left_active' ] . '</font>';
                $le_activated_left = $left_side_name; 
                $le_activated_right = $right_side_name;
            } elseif($ds['sidebar']=='activated') {
                $le_activated = '<i><font class="text-danger">' . $_language->module['left' ] . '</font></i>';
                $re_activated = '<i><font class="text-danger">' . $_language->module['right' ] . '</font></i>'; 
                $activated = '<font class="text-success">' . $_language->module['right_left_not_active' ] . '</font>';
                $full_activated = '<i><font class="text-danger">' . $_language->module['right_left_active' ] . '</font></i>';
                $le_activated_left = '';
                $le_activated_right = '';
            }

            if($ds['content_foot_activated']=='1') { 
                $content_foot_activated_one = '<font class="text-success">' . $_language->module['on' ] . '</font>';
                $content_foot_activated_two = '<div class="alert alert-success" style="padding: 5px">'.$center_footer_name.'</div>';
            } else { 
                $content_foot_activated_one = '<i><font class="text-danger">' . $_language->module['off' ] . '</font></i>';
                $content_foot_activated_two = '<div class="text-end alert alert-danger" style="padding: 5px"></div>';  
            }

            if($ds['foot_section_activated']=='1') { 
                $foot_section_activated_one = '<font class="text-success">' . $_language->module['on' ] . '</font>'; 
                $foot_section_activated_two = '<div class="alert alert-success" style="padding: 5px">'.$foot_section_name.'</div>';
            } else { 
                $foot_section_activated_one = '<i><font class="text-danger">' . $_language->module['off' ] . '</font></i>'; 
                $foot_section_activated_two = '<div class="text-end alert alert-danger" style="padding: 5px"></div>'; 
            }

            
                    

         $pluginID=$ds['pluginID'];


        $dm_startpage = mysqli_fetch_array(safe_query("SELECT * FROM " . PREFIX . "settings_module WHERE modulname = '".$ds['modulname']."' AND themes_modulname = '".$dx['modulname']."'"));
#diese Plugins sind nur widgets und nicht einstellbar
        if (@$dm_startpage[ 'name' ] != 'Startpage') {
            $modul_ID = $dm_startpage['pluginID'];

            $xergebnis=safe_query("SELECT * FROM " . PREFIX . "settings_plugins WHERE modulname= '".$ds['modulname']."'");
            while ($db = mysqli_fetch_array($xergebnis)) {

                if (@$dm_startpage[ 'name' ] != 'Startpage'
                && @$dm_startpage[ 'modulname' ] != 'startpage') {

                    $plugin_ID = $db['pluginID'];
                
                    echo '<tr>
                    <td width="10px" class="' . $td . '">' . $plugin_ID .'</td>            
                    <td width="20px" class="' . $td . '"><a href="admincenter.php?site=plugin_manager&amp;action=edit&amp;id='.$plugin_ID.'">'.$ds['name'].'</a></td>';

                }else{

                    $plugin_ID = $db['pluginID'];
                    echo '<tr>
                    <td width="10px" class="' . $td . '">' . $plugin_ID .'</td>            
                    <td width="20px" class="' . $td . '"><a href="admincenter.php?site=plugin_manager&amp;action=edit&amp;id='.$plugin_ID.'">Startpage</a></td>';

                }

            }

















        $dm_startpage = mysqli_fetch_array(safe_query("SELECT * FROM " . PREFIX . "settings_module WHERE modulname = '".$ds['modulname']."' AND themes_modulname = '".$dx['modulname']."'"));
#diese Plugins sind nur widgets und nicht einstellbar
        if (@$dm_startpage[ 'modulname' ] != 'carousel'
            && @$dm_startpage[ 'modulname' ] != 'topbar'
            && @$dm_startpage[ 'modulname' ] != 'socialmedia'
            && @$dm_startpage[ 'modulname' ] != 'about_box'
            && @$dm_startpage[ 'modulname' ] != 'bannerrotation'
            && @$dm_startpage[ 'modulname' ] != 'breaking_news'
            && @$dm_startpage[ 'modulname' ] != 'facts'
            && @$dm_startpage[ 'modulname' ] != 'features'
            && @$dm_startpage[ 'modulname' ] != 'features_box'
            && @$dm_startpage[ 'modulname' ] != 'messenger'
            && @$dm_startpage[ 'modulname' ] != 'tags'
            && @$dm_startpage[ 'modulname' ] != 'media'
            && @$dm_startpage[ 'modulname' ] != 'projectslider'
            && @$dm_startpage[ 'modulname' ] != 'summary'
            && @$dm_startpage[ 'modulname' ] != 'textslider'
            && @$dm_startpage[ 'modulname' ] != 'picupdate'
            && @$dm_startpage[ 'modulname' ] != 'picupdate'
            && @$dm_startpage[ 'modulname' ] != 'useraward'
            && @$dm_startpage[ 'modulname' ] != 'lastlogin'

            && @$dm_startpage[ 'modulname' ] != 'navigation_default'
            && @$dm_startpage[ 'modulname' ] != 'footer') {

            echo'<td>'.$via_navigation_one.' <input class="form-check-input" type="hidden" name="checkbox1['.$ds['modulname'].']" id="'.$pluginID.'[]" value="0"/>
            <input class="form-check-input test" type="checkbox" name="checkbox1['.$ds['modulname'].']" id="'.$pluginID.'[]" value="1" '; 
            if ($ds["via_navigation"] == "1") { echo "checked";} 
            echo '>'.$via_navigation_two.'</td>';

        }else{echo '<td>-</td>';}

            $dm_startpage = mysqli_fetch_array(safe_query("SELECT * FROM " . PREFIX . "settings_module WHERE modulname = '".$ds['modulname']."' AND themes_modulname = '".$dx['modulname']."'"));
#Nur via_navigation einstellbar (Topbar)
        if (@$dm_startpage[ 'modulname' ] != 'login'
            && @$dm_startpage[ 'modulname' ] != 'profile'
            && @$dm_startpage[ 'modulname' ] != 'lostpassword'
            && @$dm_startpage[ 'modulname' ] != 'register'
            && @$dm_startpage[ 'modulname' ] != 'privacy_policy'
            && @$dm_startpage[ 'modulname' ] != 'imprint'
            && @$dm_startpage[ 'modulname' ] != 'contact'
            && @$dm_startpage[ 'modulname' ] != 'error_404'
            && @$dm_startpage[ 'modulname' ] != 'myprofile'
            && @$dm_startpage[ 'modulname' ] != 'report'
            && @$dm_startpage[ 'modulname' ] != 'carousel'
            && @$dm_startpage[ 'modulname' ] != 'topbar'
            && @$dm_startpage[ 'modulname' ] != 'socialmedia'
            && @$dm_startpage[ 'modulname' ] != 'about_box'
            && @$dm_startpage[ 'modulname' ] != 'bannerrotation'
            && @$dm_startpage[ 'modulname' ] != 'breaking_news'
            && @$dm_startpage[ 'modulname' ] != 'facts'
            && @$dm_startpage[ 'modulname' ] != 'features'
            && @$dm_startpage[ 'modulname' ] != 'features_box'
            && @$dm_startpage[ 'modulname' ] != 'messenger'
            && @$dm_startpage[ 'modulname' ] != 'tags'
            && @$dm_startpage[ 'modulname' ] != 'media'
            && @$dm_startpage[ 'modulname' ] != 'projectslider'
            && @$dm_startpage[ 'modulname' ] != 'summary'
            && @$dm_startpage[ 'modulname' ] != 'textslider'
            && @$dm_startpage[ 'modulname' ] != 'picupdate'
            && @$dm_startpage[ 'modulname' ] != 'picupdate'
            && @$dm_startpage[ 'modulname' ] != 'useraward'
            && @$dm_startpage[ 'modulname' ] != 'lastlogin'

            && @$dm_startpage[ 'modulname' ] != 'navigation_default'
            && @$dm_startpage[ 'modulname' ] != 'footer') {

            echo'<td>'.$head_activated_one.' <input class="form-check-input" type="hidden" name="checkbox2['.$ds['modulname'].']" id="'.$pluginID.'[]" value="0"/>
            <input class="form-check-input" type="checkbox" name="checkbox2['.$ds['modulname'].']" id="'.$pluginID.'[]" value="1" '; 
            if ($ds["head_activated"] == "1") { echo "checked";} 
            echo '>'.$head_activated_two.'</td>';

            echo'<td>'.$head_section_activated_one.' <input class="form-check-input" type="hidden" name="checkbox3['.$ds['modulname'].']" id="'.$pluginID.'[]" value="0"/>
            <input class="form-check-input" type="checkbox" name="checkbox3['.$ds['modulname'].']" id="'.$pluginID.'[]" value="1" '; 
            if ($ds["head_section_activated"] == "1") { echo "checked";} 
            echo '>'.$head_section_activated_two.'</td>'; 

            echo'<td>'.$content_head_activated_one.' <input class="form-check-input" type="hidden" name="checkbox4['.$ds['modulname'].']" id="'.$pluginID.'[]" value="0"/>
            <input class="form-check-input" type="checkbox" name="checkbox4['.$ds['modulname'].']" id="'.$pluginID.'[]" value="1" '; 
            if ($ds["content_head_activated"] == "1") { echo "checked";} 
            echo '>'.$content_head_activated_two.'</td>';

            if($ds['sidebar']=='le_activated') { 
                echo' <td class="text-center">  
                            '.$le_activated.' <input class="form-check-input" type="radio" name="checkbox5['.$ds['modulname'].']" id="'.$pluginID.'[]" value="le_activated" checked> | 
                            '.$re_activated.' <input class="form-check-input" type="radio" name="checkbox5['.$ds['modulname'].']" id="'.$pluginID.'[]" value="re_activated"> | 
                            '.$full_activated.' <input class="form-check-input" type="radio" name="checkbox5['.$ds['modulname'].']" id="'.$pluginID.'[]" value="full_activated"> | 
                            '.$activated.' <input class="form-check-input" type="radio" name="checkbox5['.$ds['modulname'].']" id="'.$pluginID.'[]" value="activated">
                            <div class="row" style="padding: 0 10px 0 10px">
                                <div class="col-6 text-start border-end alert alert-success" style="padding: 5px">
                                    '.$le_activated_left.'
                                </div>
                                <div class="col-6 text-end alert alert-danger" style="padding: 5px">
                                    
                                </div>
                            </div>
                        </td>';

            } elseif($ds['sidebar']=='re_activated') { 
                echo' <td class="text-center">  
                            '.$le_activated.' <input class="form-check-input" type="radio" name="checkbox5['.$ds['modulname'].']" id="'.$pluginID.'[]" value="le_activated"> | 
                            '.$re_activated.' <input class="form-check-input" type="radio" name="checkbox5['.$ds['modulname'].']" id="'.$pluginID.'[]" value="re_activated" checked> | 
                            '.$full_activated.' <input class="form-check-input" type="radio" name="checkbox5['.$ds['modulname'].']" id="'.$pluginID.'[]" value="full_activated"> | 
                            '.$activated.' <input class="form-check-input" type="radio" name="checkbox5['.$ds['modulname'].']" id="'.$pluginID.'[]" value="activated">
                            <div class="row" style="padding: 0 10px 0 10px">
                                <div class="col-6 text-start border-end alert alert-danger" style="padding: 5px">

                                </div>
                                <div class="col-6 text-end alert alert-success" style="padding: 5px">
                                    '.$le_activated_right.'
                                </div>
                            </div>
                        </td>';

            } elseif($ds['sidebar']=='full_activated') { 
                echo' <td class="text-center">  
                            '.$le_activated.' <input class="form-check-input" type="radio" name="checkbox5['.$ds['modulname'].']" id="'.$pluginID.'[]" value="le_activated"> | 
                            '.$re_activated.' <input class="form-check-input" type="radio" name="checkbox5['.$ds['modulname'].']" id="'.$pluginID.'[]" value="re_activated"> | 
                            '.$full_activated.' <input class="form-check-input" type="radio" name="checkbox5['.$ds['modulname'].']" id="'.$pluginID.'[]" value="full_activated" checked> | 
                            '.$activated.' <input class="form-check-input" type="radio" name="checkbox5['.$ds['modulname'].']" id="'.$pluginID.'[]" value="activated">
                            <div class="row" style="padding: 0 10px 0 10px">
                                <div class="col-6 text-start border-end alert alert-success" style="padding: 5px">
                                    '.$le_activated_left.'
                                </div>
                                <div class="col-6 text-end alert alert-success" style="padding: 5px">
                                    '.$le_activated_right.'
                                </div>
                            </div>
                        </td>';

            } elseif($ds['sidebar']=='activated') { 
                echo' <td class="text-center">  
                            '.$le_activated.' <input class="form-check-input" type="radio" name="checkbox5['.$ds['modulname'].']" id="'.$pluginID.'[]" value="le_activated"> | 
                            '.$re_activated.' <input class="form-check-input" type="radio" name="checkbox5['.$ds['modulname'].']" id="'.$pluginID.'[]" value="re_activated"> | 
                            '.$full_activated.' <input class="form-check-input" type="radio" name="checkbox5['.$ds['modulname'].']" id="'.$pluginID.'[]" value="full_activated">  | 
                            '.$activated.' <input class="form-check-input" type="radio" name="checkbox5['.$ds['modulname'].']" id="'.$pluginID.'[]" value="activated" checked>
                            <div class="row" style="padding: 0 10px 0 10px">
                                <div class="col-6 text-start border-end alert alert-danger" style="padding: 5px">
                                    
                                </div>
                                <div class="col-6 text-end alert alert-danger" style="padding: 5px">
                                    
                                </div>
                            </div>
                        </td>';
            }            


            echo'<td>'.$content_foot_activated_one.' <input class="form-check-input" type="hidden" name="checkbox6['.$ds['modulname'].']" id="'.$pluginID.'[]" value="0"/>
            <input class="form-check-input" type="checkbox" name="checkbox6['.$ds['modulname'].']" id="'.$pluginID.'[]" value="1" '; 
            if ($ds["content_foot_activated"] == "1") { echo "checked";} 
            echo '>'.$content_foot_activated_two.'</td>';
            

            echo'<td>'.$foot_section_activated_one.' <input class="form-check-input" type="hidden" name="checkbox7['.$ds['modulname'].']" id="'.$pluginID.'[]"  value="0"/>
            <input class="form-check-input" type="checkbox" name="checkbox7['.$ds['modulname'].']" id="'.$pluginID.'[]" value="1" '; 
            if ($ds["foot_section_activated"] == "1") { echo "checked";} 
            echo '>'.$foot_section_activated_two.'</td>';
            

            }else{
            echo'<td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td>';
            }
            ###################################
            

            
           

            
            

            
                    
echo'';
         
$pluginID=$ds['pluginID'];

        $dm_startpage = mysqli_fetch_array(safe_query("SELECT * FROM " . PREFIX . "settings_plugins WHERE modulname = '".$ds['modulname']."'"));
        #Plugins die nicht gelöscht weden dürfen
        if (@$dm_startpage[ 'modulname' ] != 'login'
            && @$dm_startpage[ 'modulname' ] != 'profile'
            && @$dm_startpage[ 'modulname' ] != 'lostpassword'
            && @$dm_startpage[ 'modulname' ] != 'register'
            && @$dm_startpage[ 'modulname' ] != 'privacy_policy'
            && @$dm_startpage[ 'modulname' ] != 'imprint'
            && @$dm_startpage[ 'modulname' ] != 'contact'
            && @$dm_startpage[ 'modulname' ] != 'error_404'
            && @$dm_startpage[ 'modulname' ] != 'myprofile'
            && @$dm_startpage[ 'modulname' ] != 'report'
            && @$dm_startpage[ 'modulname' ] != 'static'
            && @$dm_startpage[ 'modulname' ] != 'startpage'
            && @$dm_startpage[ 'name' ] != 'Startpage'

            && @$dm_startpage[ 'modulname' ] != 'navigation_default'
            && @$dm_startpage[ 'modulname' ] != 'footer') {        
            
                
            
            echo'<td class="table-danger"><input class="form-check-input" type="hidden" name="checkbox8['.$ds['modulname'].']" id="'.$pluginID.'[]"  value="0"/>
            <input class="form-check-input" type="checkbox" name="checkbox8['.$ds['modulname'].']" id="'.$pluginID.'[]" value="1"> ' . $_language->module['delete' ] . '?</td>';
        }else{echo'<td>-</td>';}
        #############################
        echo'</tr>';
        }else{
            echo'';
        }
           
    }

echo'</tbody></table></div>';

echo'<div class="row">
        <div class="col-6">
            <input type="hidden" name="captcha_hash" value="' . $hash . '">
            <input type="hidden" name="themes_modulname" value="'.$dx['modulname'].'">
            <input class="btn btn-success" type="submit" name="modul_aktiv" value="' . $_language->module['apply_module_setting' ] . '" />
        </div>

        <div class="text-end col-6">
            <input type="hidden" name="captcha_hash" value="' . $hash . '">
            <input class="btn btn-danger" type="submit" name="delete" value="' . $_language->module['delete' ] . '" />
        </div>
    </div>
    </form>

</div></div>';

