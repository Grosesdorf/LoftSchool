<?php

$n = 5;
$m = 4;

$arr = [[$n],[$m]];
$i = 0;
$k = 0;
$p = 1;

while($i < $n*$m){   //Цикл по номеру витка
    $k++;
    for($j=$k-1;$j<$m-$k+1;$j++){
        $arr[$k-1][$j]=$p++;
        $i++;
    }   /*Определение значений верхнего гор столбца*/

    for($j=$k;$j<$n-$k+1;$j++){
        $arr[$j][$m-$k]=$p++;
        $i++;
    }   /* --//-- По правому вертикальному столбцу*/

    for($j=$m-$k-1;$j>=$k-1;$j--){
        $arr[$n-$k][$j]=$p++;
        $i++;
    }   /* --//-- по нижнему горизонтальному столбцу*/

    for($j=$n-$k-1;$j>=$k;$j--){
        $arr[$j][$k-1]=$p++;
        $i++;
    }   /* --//-- по левому вертикальному столбцу*/

}

for ($q=0; $q<$n; $q++){
    for ($w=0; $w<$m; $w++){
        print_r($arr[$q][$w]);
    };

}

