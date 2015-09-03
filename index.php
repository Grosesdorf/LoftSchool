<?php

$func = function($num){
    return $num + 1;
};

function sumWith($a, $b, $func){
    $n = 0;
    for($i = $a; $i <= $b; $i++){
        $n += $func($a);
    }
    return $n;
}

echo sumWith(3, 5, $func);





