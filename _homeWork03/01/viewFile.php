<?php

//print_r($_REQUEST);

$handle = fopen(__DIR__ . '//files//' . $_REQUEST['file'], 'r');
while(!feof($handle)){
    echo fgets($handle) . '<br />';
}
fclose($handle);
