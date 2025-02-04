<?php
# Bei diesen Plugins werden die css und js bei der Widget-Zuweisung extra geladen!
#settings_module activate
$widget_css = @$modulname == 'footer'
                || @$modulname == 'navigation'
                || @$modulname == 'nor_box'
                || @$modulname == 'socialmedia'
                || @$modulname == 'messenger' /*prüfen*/
                || @$modulname == 'carousel'
                || @$modulname == 'facebook'
                || @$modulname == 'tags'
                || @$modulname == 'ts3viewer'
                || @$modulname == 'tsviewer'
                || @$modulname == 'facts'
                || @$modulname == 'bannerrotation'
                || @$modulname == 'breaking_news'
                || @$modulname == 'cashbox'
                || @$modulname == 'media'
                || @$modulname == 'projectslider'
                || @$modulname == 'summary'
                || @$modulname == 'textslider'
                || @$modulname == 'pic_update'
                || @$modulname == 'games_pic'
                || @$modulname == 'user_award'
                || @$modulname == 'lastlogin'
                || @$modulname == 'about_box'
                || @$modulname == 'features'
                || @$modulname == 'features_box';
# Bei diesen Plugins werden die css und js bei der Widget-Zuweisung geladen ja / nein! END


                
#Plugins die keine Navigationseinträge im Fontentbereich benötigen
#Zeile 610-650 Plugin-Manager

$widget_nav = @$modulname == 'footer'
                || @$modulname == 'navigation'
                || @$modulname == 'nor_box'
                || @$modulname == 'socialmedia'
                || @$modulname == 'messenger'
                || @$modulname == 'carousel'
                || @$modulname == 'tags'
                || @$modulname == 'ts3viewer'
                || @$modulname == 'facts'
                || @$modulname == 'bannerrotation'
                || @$modulname == 'breaking_news'
                || @$modulname == 'cashbox'
                || @$modulname == 'media'
                || @$modulname == 'projectslider'
                || @$modulname == 'summary'
                || @$modulname == 'textslider'
                || @$modulname == 'pic_update'
                || @$modulname == 'games_pic'
                || @$modulname == 'user_award'
                || @$modulname == 'lastlogin'
                || @$modulname == 'about_box'
                || @$modulname == 'news_manager'
                || @$modulname == 'clanwars'
                || @$modulname == 'features'
                || @$modulname == 'features_box'
                || @$modulname == 'useraward'
                || @$modulname == 'profile'
                || @$modulname == 'myprofile'
                || @$modulname == 'topbar'
                || @$modulname == 'news_manager'
                || @$modulname == 'clanwars'
                || @$modulname == 'gallery';

?>        