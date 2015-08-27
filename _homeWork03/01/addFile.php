<?php
$str = '';
if(file_exists(__DIR__ . '\\files\\' . $_REQUEST['file']) && $_REQUEST['save'] === 'Save') {
    $str = 'Is the name of the file exists or empty file name.';
//    exit;
}
elseif($_REQUEST['save'] === 'Save') {
    if(empty($_REQUEST['text'])) {
        $contents = '';
    }
    else {
        $contents = $_REQUEST['text'];
    }

    $text = file_put_contents(__DIR__ . '\\files\\' . $_REQUEST['file'], $contents);
    if ($text) {
            $str = 'The file is record.';
        }
    else {
            $str = 'File is not recor';
        }

}

echo '<form action="#">';
echo '<p>Input name file:</p>';
echo '<p><input type="text" name="file"></p>';
echo '<p><textarea rows="15" cols="100" name="text"></textarea></p>';
echo $str;
echo '<p><input type="submit" name="save" value="Save"></p>';
echo '<p><button formaction="index.php">Home</button></p>';
echo '</form>';

//echo '<pre>';
//print_r($_REQUEST);
//echo '</pre>';