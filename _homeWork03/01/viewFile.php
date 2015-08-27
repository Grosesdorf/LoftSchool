<?php

//print_r($_REQUEST);

$handle = fopen(__DIR__ . '//files//' . $_REQUEST['file'], 'r');
while(!feof($handle)){
    echo fgets($handle) . '<br />';
}
fclose($handle);

echo '<form>';
echo '<p><button formaction="index.php">Home</button></p>';
echo '</form>';

//echo file_get_contents(__DIR__ . '//files//' . $_REQUEST['file']);