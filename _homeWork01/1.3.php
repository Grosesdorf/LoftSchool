<?php

function calcMegaFunc()
{
    if (is_string(func_get_arg(0)) && func_num_args() > 2) {
        $arr = func_get_args();
        $num = func_num_args();
        $result = $arr[1];
        switch (func_get_arg(0)) {
            case('+'):
                for ($i = 2; $i < $num; $i++) {
                    $result += $arr[$i];
                }
                echo 'sum ' . $result . '<br />';
                break;
            case('-'):
                for ($i = 2; $i < $num; $i++) {
                    $result -= $arr[$i];
                }
                echo 'diff ' . $result . '<br />';
                break;
            case('*'):
                for ($i = 2; $i < $num; $i++) {
                    $result *= $arr[$i];
                }
                echo 'multi ' . $result . '<br />';
                break;
            case('/'):
                if ($arr[1] !== 0) {    
                    for ($i = 2; $i < $num; $i++) {
                        if ($arr[$i] !== 0) {
                            $result /= $arr[$i];
                        } else {
                            $result = "Error. Can not divide by zero. Rewrite array.";
                            break;
                        }
                    }
                } else {
                    $result = "Error. Zero can not divide. Rewrite array.";
                }
                echo 'div ' . $result . '<br />';
                break;
            default:
                echo "Error. Unknown operation.<br />";
                break;
        }

    } else {
        echo "Input correct array.<br />";
    }
}

calcMegaFunc('+', 5, 3);
calcMegaFunc('-', 5, 3);
calcMegaFunc('*', 5, 3);
calcMegaFunc('/', 5, 3);
calcMegaFunc('/', 5, 0);
calcMegaFunc('/', 0, 3);
calcMegaFunc('hello', 5, 3);
calcMegaFunc(2, 5, 3);




