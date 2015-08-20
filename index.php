<?php

$DOCUMENT_ROOT = $_SERVER["DOCUMENT_ROOT"];

$date = date('H:i, jS F Y');
$order = 123652;
$quantity = 12;
$cost = 12.35;
$total = $quantity * $cost;

$str = $date . "\t" . $order . "\t" . $quantity . "\t" . $cost . "\t" . $total . PHP_EOL;

$fh = fopen("$DOCUMENT_ROOT/tmp/x-data.txt",'ab') or die("can't open file");

if (-1 == fwrite($fh, $str)){
    die("can't write data");
}

fclose($fh) or die("can't close file");

$fh = fopen("$DOCUMENT_ROOT/tmp/x-data.txt",'ab') or die("can't open file");

if (!fh){
    echo "Нет заказов";
    exit;
}

while(!feof($fh)){
    $order = fgets($fh, 999);
    echo $order . "<br />";
}

fclose($fh) or die("can't close file");



