<?php

function calcMegaFunc($intArr, $oper = '#')
{
    if (is_array($intArr)) {
        switch ($oper) {
            case('#'):
                echo "Error. Input operation.<br />";
                break;
            case('+'):
                $result = $intArr[0];
                for ($i = 1; $i < count($intArr); $i++) {
                    $result += $intArr[$i];
                }
                echo 'sum ' . $result . '<br />';
                break;
            case('-'):
                $result = $intArr[0];
                for ($i = 1; $i < count($intArr); $i++) {
                    $result -= $intArr[$i];
                }
                echo 'diff ' . $result . '<br />';
                break;
            case('*'):
                $result = $intArr[0];
                for ($i = 1; $i < count($intArr); $i++) {
                    $result = $result * $intArr[$i];
                }
                echo 'multi ' . $result . '<br />';
                break;
            case('/'):
                if ($intArr[0] !== 0) {
                    $result = $intArr[0];
                    for ($i = 1; $i < count($intArr); $i++) {
                        if ($intArr[$i] !== 0) {
                            $result /= $intArr[$i];
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
        echo "Input numbers array.<br />";
    }
}

$intArr01 = [10, 10, 2, 5, 8];
$intArr02 = [10, 10, 2, 5, 0];
$intArr03 = [0, 10, 2, 5, 8];

calcMegaFunc($intArr01);
calcMegaFunc($intArr01, '+');
calcMegaFunc($intArr01, '-');
calcMegaFunc($intArr01, '*');
calcMegaFunc($intArr01, '/');
calcMegaFunc($intArr02, '/');
calcMegaFunc($intArr03, '/');



