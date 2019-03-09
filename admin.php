<?php
require_once 'header.php';

$page_title = '管理頁面';

$op = isset($_REQUEST['op']) ? filter_var($_REQUEST['op']) : '';
$sn = isset($_REQUEST['sn']) ? (int) $_REQUEST['sn'] : 0;

switch ($op) {
    case 'insert':
        $sn = insert_article();
        header("location: index.php?sn={$sn}");
        break;
 
    default:
 
        break;
}
 
require_once 'footer.php';

//儲存問卷
function insert_article()
{
    global $db;
    $title   = $db->real_escape_string($_POST['title']);
    $content = $db->real_escape_string($_POST['content']);
    $sql     = "INSERT INTO `article` (`title`, `content`, `create_time`, `update_time`) VALUES ('{$title}', '{$content}', NOW(), NOW())";
    $db->query($sql) or die($db->error);
    $sn = $db->insert_id;
    return $sn;
}


