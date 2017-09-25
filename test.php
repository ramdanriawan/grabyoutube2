<?php 
$array = [
  "array1" => "a",
  "array2" => "b"
];

$a = 2;

foreach ($array as $key => $value) if($a++ <= count($array)) {
  echo $key;
}

 ?>