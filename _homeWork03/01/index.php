<html>
<head>
    <title>Работа с каталогом</title>
    <meta charset="utf-8">
</head>
<body>
<?php

define('DIR_PATH', __DIR__ . '\\files\\');
$dir = opendir(DIR_PATH);

echo '<p>Содержимое каталога:</p>';
echo '<ul>';

while(false !== ($file = readdir($dir))){
    if($file != '.' && $file != '..') {
        echo '<li>
             <a href="viewFile.php?file=' . $file . '">' . $file . '</a>' . ' ' .
            '<a href="#">edit</a>'  . ' ' .
            '<a href="#">delete</a>' .
            '</li>';
    }
}

echo '</ul>';
closedir($dir);
?>
</body>
</html>
