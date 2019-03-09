<?php
function link_db(){
    $db = new mysqli('localhost', 'root', '12345', 'questionnaire');
    if ($db->connect_error) {
        die('無法連上資料庫：' . $db->connect_error);
    }
    $db->set_charset("utf8");
    return $db;
}