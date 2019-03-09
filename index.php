<?php
require_once 'header.php';

$page_title = '首頁';

$op = isset($_REQUEST['op']) ? filter_var($_REQUEST['op']) : '';
$sn = isset($_REQUEST['sn']) ? (int) $_REQUEST['sn'] : 0;
switch ($op) {
    
 
    default:
    	if($sn){
    		show_article($sn);
    		$op = 'show_article';
    	}else{
    		list_article();
    		$op = 'list_article';
    	}
 		
        break;
}

require_once 'footer.php';
//讀出問卷
function list_article()
{
      global $db, $smarty;
 
    $sql    = "SELECT * FROM `article` ORDER BY `update_time` DESC";
    $result = $db->query($sql) or die($db->error);
    $all    = [];
    while ($data = $result->fetch_assoc()) {
        $all[] = $data;
    }
    // die(var_export($all));
    $smarty->assign('all', $all);
}

//讀出單一問卷$)
function show_article($sn)
{
    global $db, $smarty;
 
    $sql    = "SELECT * FROM `article` WHERE `sn`='$sn'";
    $result = $db->query($sql) or die($db->error);
    $data   = $result->fetch_assoc();
    $smarty->assign('article', $data);
}

