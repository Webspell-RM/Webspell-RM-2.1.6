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
 * @copyright       2018-2024 by webspell-rm.de <https://www.webspell-rm.de>                                                          *
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

# Sprachdateien aus dem Plugin-Ordner laden
$pm = new plugin_manager(); 
$plugin_language = $pm->plugin_language("navigation", $plugin_path);
GLOBAL $logo,$theme_name,$themes,$tpl,$loggedin,$index_language,$modRewrite,$action,$modulname;

    $ergebnis=safe_query("SELECT * FROM ".PREFIX."settings_expansion WHERE active = '1'");
    $ds=mysqli_fetch_array($ergebnis);


    $ergebnis_navi=safe_query("SELECT * FROM " . PREFIX . "settings_expansion WHERE modulname = '".$ds['modulname']."'");
    $dy=mysqli_fetch_array($ergebnis_navi);

    if (@$dy[ 'underscore' ] != '1') { 
        $undertrans = '';
    } else {
        $undertrans = '<link type="text/css" rel="stylesheet" href="./includes/plugins/navigation/style/underscore.css" />';;
    }
    $ergebnis_navi=safe_query("SELECT * FROM " . PREFIX . "settings_expansion WHERE modulname = '".$ds['modulname']."'");
    $dy=mysqli_fetch_array($ergebnis_navi);

    if ($dy[ 'agency_nav' ] == '1') {         
        $sticky = '';
        $trans = '<link type="text/css" rel="stylesheet" href="./includes/plugins/navigation/style/styles_agency.css" />';
    } elseif ($dy[ 'sticky' ] == '1') { 
        $sticky = '<link type="text/css" rel="stylesheet" href="./includes/plugins/navigation/style/styles_sticky.css" />';
        $trans = '';
    } else {
        $sticky = '';
        $trans = '';
    }

    #$ergebnis_site=safe_query("SELECT * FROM " . PREFIX . "settings_module WHERE modulname='".@$_GET['site']."' AND themes_modulname = '".$ds['modulname']."'");
    #$dx=mysqli_fetch_array($ergebnis_site);
        
    #if (@$dx[ 'modulname' ] != 'startpage' && @$dx[ 'modulname' ] != '') {
    #    $sticky = '';
    #    $trans = '';       
    #} else {
        
        
    #}

echo'<!-- ======= Navigation ======= -->
    
    <header id="header" class="sticky-top d-flex align-items-center header-transparent header-underscore">
        <div class="container d-flex justify-content-between">
            <div class="logo">
                <a href="#"><img class="img-fluid" src="../includes/expansion/'.$ds[ 'pfad' ].'/images/'.$dy[ 'logo_pic' ].'" alt=""></a>
            </div>
            <div class="box">
                <span class="webspell">'.$ds[ 'logotext1' ].'</span>
                <span class="slogan">'.$ds[ 'logotext2' ].'</span>
            </div>
            <nav id="navbar" class="navbar '.$ds[ 'nav_text_alignment' ].'">
                <ul>';
                    include("./includes/modules/navigation.php");
                    #$dx = mysqli_fetch_array(safe_query("SELECT * FROM " . PREFIX . "settings_widgets WHERE modulname='topbar' AND themes_modulname='".$ds['modulname']."' AND position='via_navigation_widget'"));
                    #if (@$dx['activate'] == "0") {
                    #if ("1" == "0") {
                    #    if($loggedin) {
                    #        include("./includes/modules/navigation_login.php");
                    #        #angemeldet MIT plugin';   
                    #    } else {
                    #        #no login MIT plugin'; 
                    #    }
                    #} else {
                        if($loggedin) {
                            include("./includes/modules/navigation_login.php");
                            include("./includes/modules/language.php");
                            #angemeldet OHNE plugin';   
                        } else {
                            include("./includes/modules/navigation_login.php");
                            include("./includes/modules/language.php");  
                            #no login OHNE plugin'; 
                        }                    
                    #}?>                        
                </ul>
                <i class="bi bi-list mobile-nav-toggle"></i>
            </nav><!-- .navbar -->
        </div>
    </header>
<!-- End Navigation -->