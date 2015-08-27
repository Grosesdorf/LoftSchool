<?php
header( 'Refresh: 3; url=index.php');
if(unlink(__DIR__ . '//files//' . $_REQUEST['file'])){
    echo 'File is deleted.<br />';
}
else{
    echo 'You can not delete the file. Again later.<br />';
};

echo 'You will be redirected to the home page in 3 seconds.';

