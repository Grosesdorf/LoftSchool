<?php

function tabl($a, $b)
{
    if (is_integer($a) && is_integer($b)) {
        echo '<table border="1" cellpadding="5" cellspacing="0">';
        for ($i = 1; $i <= $b; $i++) {
            echo '<tr align="center">';
            for ($y = 1; $y <= $a; $y++) {
                if ($y == 1) {
                    echo '<td bgcolor="#ffffe0" width="100">';
                    echo $y * $i;
                    echo '</td>';
                } elseif ($i == 1) {
                    echo '<td bgcolor="#87cefa" width="100">';
                    echo $y * $i;
                    echo '</td>';
                } else {
                    echo '<td>';
                    echo $y * $i;
                    echo '</td>';
                }
            }
            echo '</tr>';
        }
        echo '</table>';
    } elseif (!is_integer($a) && is_integer($b)) {
        echo 'Error. A is not integer.';
    } elseif (is_integer($a) && !is_integer($b)) {
        echo 'Error. B is not integer.';
    } else {
        echo 'Error. A and B is not integer.';
    }
}

tabl(5, 10);





