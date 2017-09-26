<?php 
$array = [
  "array1" => "a",
  "array2" => "b",
  "array3" => "b"
];

$a = 2;

echo http_build_query($array, "", "x");

 ?>