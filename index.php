<?php

$func = function ($number) {
    return $number * 2;
};

function sumWith($a, $b, $func){
    $n = 0;
    for($i = $a; $i <= $b; $i++){
        $n += $func($i);
    }
    return $n;
}


echo sumWith(1, 3, $func); //11
echo sumWith(10, 11, $func); // 42







