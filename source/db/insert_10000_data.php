<?php
/**
 * Created by PhpStorm.
 * User: xeme
 * Date: 14-6-8
 * Time: 下午12:30
 */

$dsn = "mysql:host=localhost;dbname=freewebdesigndownload;charset=utf8";
try {
    $db = new PDO($dsn, 'root', '');
} catch (Exception $ex) {
    throw new Exception('DB connection error: ' . $ex->getMessage());
}

$insert_sql = "INSERT INTO fwdd_item_detail (user_id, title, description, category_id, license_id,
author_id, image_id, download_id, tag_id, view_count, download_count, recommend, created_at, updated_at)
VALUES ('1', 'Test 0000003', 'Test 0000003', '1', '1', '1', '1', '1', '1', '0', '0', '0', '2014-06-08 00:00:00', '2014-06-08 00:00:00')";

//$rs = $db->query($insert_sql);

//$count = $db->exec($insert_sql);


//print("Delete ". $count. " rows");
$sql = "SELECT * FROM fwdd_item_detail";
$count = $db->exec($sql);
$db = null;



for ($i=0; $i<10000; $i++) {
    echo $i;
}
//执行写入


