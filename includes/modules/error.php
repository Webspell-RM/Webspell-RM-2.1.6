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
 * @copyright       2018-2023 by webspell-rm.de                                                              *
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

if (isset($_GET['type'])) {
    $type = $_GET['type'];
} else {
    $type = null;
}

$_language->readModule('error');

if ($type == 404) {
    $error_header = $_language->module['error_404'];
    $error_message = $_language->module['message_404'];
}

if (isset($error_header)) {
    echo '<h2>' . $error_header . '</h2>';
    echo $error_message;
} else {
    echo '<h2>Error</h2>';
}

$urlparts = preg_split('/[\s.,-\/]+/si', $_GET['url']);
$results = array();
foreach ($urlparts as $tag) {
    $sql = safe_query("SELECT * FROM " . PREFIX . "tags WHERE tag='" . $tag . "'");
    if ($sql->num_rows) {
        while ($ds = mysqli_fetch_assoc($sql)) {
            $data_check = null;
            if ($ds['rel'] == "news") {
                $data_check = \webspell\Tags::getNews($ds['ID']);
            } elseif ($ds['rel'] == "articles") {
                $data_check = \webspell\Tags::getArticle($ds['ID']);
            } elseif ($ds['rel'] == "static") {
                $data_check = \webspell\Tags::getStaticPage($ds['ID']);
            } elseif ($ds['rel'] == "faq") {
                $data_check = \webspell\Tags::getFaq($ds['ID']);
            }
            if (is_array($data_check)) {
                $results[] = $data_check;
            }
        }
    }
}
if (count($results)) {
    echo "<h1>" . $_language->module['alternative_results'] . "</h1>";
    usort($results, array('Tags', 'sortByDate'));
    echo "<p class='text-center'><strong>" . count($data) . "</strong> " . $_language->module['results_found'] . "</p>";
    foreach ($results as $entry) {
        $date = getformatdate($entry['date']);
        $type = $entry['type'];
        $auszug = $entry['content'];
        $link = $entry['link'];
        $title = $entry['title'];
        $data_array = array();
        $data_array['$date'] = $date;
        $data_array['$link'] = $link;
        $data_array['$title'] = $title;
        $data_array['$auszug'] = $auszug;
        $search_tags = $GLOBALS["_template"]->replaceTemplate("search_tags", $data_array);
        echo $search_tags;
    }
}
