<?php 
include './application/views/phpQuery/phpQuery/phpQuery.php';

$get = file_get_contents("test2.php");
$json = json_decode($get);

echo $json->content_html;

$dom = phpQuery::newDocument($json->content_html);


?>