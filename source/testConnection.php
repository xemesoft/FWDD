<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$dsn = "mysql:host=localhost;dbname=freewebdesigndownload;charset=utf8";

try {
    $db = new PDO($dsn, 'root', '');
} catch (Exception $ex) {
    throw new Exception('DB connection error: ' . $ex->getMessage());
}

$query_string = "SELECT * FROM fwdd_item_detail";
$rs = $db->query($query_string);

//print_r($rs->fetchAll());

while ($row = $rs->fetch()) {
    print_r($row);
    //echo "</br>";
}

