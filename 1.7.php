<?php

function is_palindrom($str){
    for($i = 0, $y = strlen($str) - 1; $i <= strlen($str), $y >= 0; $i++, $y--){
        if($str[$i] !== ' ') {
            $arr[] = strtolower($str[$i]);
        }
        if($str[$y] !== ' ') {
            $arrReverse[] = strtolower($str[$y]);
        }
    }
    if($arr === $arrReverse){
        return true;
    }
    else{
        return false;
    }
}

$string1 = "Я Иду С Мечем Судия";
$string2 = "Мама мыла раму";

if(is_palindrom($string1)){
    echo 'TRUE';
}
else{
    echo 'FALSE';
}

echo PHP_EOL;

if(is_palindrom($string2)){
    echo 'TRUE';
}
else{
    echo 'FALSE';
}







