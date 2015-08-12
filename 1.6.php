<?php

function oddRecursion($a, $b){
    if($a === $b && is_integer($a) && is_integer($b)){
        if($b % 2 != 0){
            echo $b;
        }
        return;
    }
    elseif($a < $b && is_integer($a) && is_integer($b)){
        $tmp = $a;
        if($tmp % 2 != 0){
            echo $tmp . ' ';
        }
        oddRecursion($a + 1, $b);
    }
    elseif($a > $b && is_integer($a) && is_integer($b)){
        $tmp = $a;
        if($tmp % 2 != 0){
            echo $tmp . ' ';
        }
        oddRecursion($a - 1, $b);
    }
    else{
        echo "Error. Check the settings";
    }
}

oddRecursion(45, 9);
echo PHP_EOL;
oddRecursion(9, 45);
echo PHP_EOL;
oddRecursion(45, 45);
echo PHP_EOL;
oddRecursion(8, 8);
echo PHP_EOL;
oddRecursion(8, 45);
echo PHP_EOL;
oddRecursion(9, 46);
echo PHP_EOL;
oddRecursion('+', 45);







