<?php
session_start();
if((!isset($_SESSION['file']) && isset($_REQUEST['file'])) || isset($_SESSION['file']) && isset($_REQUEST['file'])){
    $_SESSION['file']= $_REQUEST['file'];
}
if($_REQUEST['save'] === 'Save'){
    if(empty($_REQUEST['text'])){
        $contents = '';
    }
    else{
        $contents = $_REQUEST['text'];
    }
    file_put_contents(__DIR__ . '\\files\\' . $_SESSION['file'], $contents);
    $str = 'File is changed.';
}

echo '<form action="#">';
echo '<p>Edit contents:</p>';
echo '<p><input type="text" name="file" value="' . $_SESSION['file'] . '" disabled></p>';
echo '<p><textarea rows="15" cols="100" name="text">' . file_get_contents(__DIR__ . '\\files\\' . $_SESSION['file']) . '</textarea></p>';
echo $str;
echo '<p><input type="submit" name="save" value="Save"></p>';
echo '<p><button formaction="index.php">Home</button></p>';
echo '</form>';

//echo '<pre>';
//print_r($_REQUEST);
//echo '</pre>';
//echo '<pre>';
//print_r($_SESSION);
//echo '</pre>';



