<?php

function calcMegaFunc($intArr)
{
    if (is_string($intArr[0]) && count($intArr) > 2) {
        switch ($intArr[0]) {
            case('+'):
                $result = $intArr[1];
                for ($i = 2; $i < count($intArr); $i++) {
                    $result += $intArr[$i];
                }
                echo 'sum ' . $result . '<br />';
                break;
            case('-'):
                $result = $intArr[1];
                for ($i = 2; $i < count($intArr); $i++) {
                    $result -= $intArr[$i];
                }
                echo 'diff ' . $result . '<br />';
                break;
            case('*'):
                $result = $intArr[1];
                for ($i = 2; $i < count($intArr); $i++) {
                    $result = $result * $intArr[$i];
                }
                echo 'multi ' . $result . '<br />';
                break;
            case('/'):
                if ($intArr[1] !== 0) {
                    $result = $intArr[1];
                    for ($i = 2; $i < count($intArr); $i++) {
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
        echo "Input correct array.<br />";
    }
}


$intArr01 = ['+', 10];
$intArr02 = ['+', 10, 0, 10];
$intArr03 = ['-', 15, 0, 10];
$intArr04 = ['-', 10];
$intArr05 = ['*', 10, 5, 10];
$intArr06 = ['*', 10];
$intArr07 = ['/', 10];
$intArr08 = ['/', 10, 0, 10];
$intArr09 = ['/', 0, 10, 10];
$intArr10 = ['/', 10, 5, 10];
$intArr11 = [10, 5, 10];

calcMegaFunc($intArr01);
calcMegaFunc($intArr02);
calcMegaFunc($intArr03);
calcMegaFunc($intArr04);
calcMegaFunc($intArr05);
calcMegaFunc($intArr06);
calcMegaFunc($intArr07);
calcMegaFunc($intArr08);
calcMegaFunc($intArr09);
calcMegaFunc($intArr10);
calcMegaFunc($intArr11);




