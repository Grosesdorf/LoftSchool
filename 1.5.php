<?php

function sotrMyArray($arr)
{
    if(is_array($arr)){
        for ($i = (count($arr) - 1); $i >= 0; $i--) {
            for ($y = 0; $y <= ($i - 1); $y++)
                if ($arr[$y] > $arr[$y + 1]) {
                    $tmp = $arr[$y];
                    $arr[$y] = $arr[$y + 1];
                    $arr[$y + 1] = $tmp;
                }
        }
    }
    else{
        echo 'It is not array';
        return NULL;
    }

    return $arr;
}

$notSortArr = [50, 4, 58, 89, 14, 23, 0.5];

$sortArr = sotrMyArray($notSortArr);

foreach($notSortArr as $element){
    echo $element . ' ';
}
echo '<br />';
foreach($sortArr as $element){
    echo $element . ' ';
}





