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
 


$transaction .= addfield('settings', 'keywords', 'text', 'NOT NULL');
$transaction .= addfield('settings', 'description', 'text', 'NOT NULL');


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
    //echo "<div class='alert alert-success'>String ausgef&uuml;hrt! <br />";
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