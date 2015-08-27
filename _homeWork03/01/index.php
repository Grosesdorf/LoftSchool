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
echo '<a href="addFile.php">Add file</a>';
echo '<ul>';
while (false !== ($file = readdir($dir))) {
    if (is_file(DIR_PATH . $file)) {
        echo '<li>
                <a href="viewFile.php?file=' . $file . '">' . $file . '</a>' . ' ' .
            '<a href="editFile.php?file=' . $file . '">Edit</a>' . ' ' .
            '<a href="deleteFile.php?file=' . $file . '">Delete</a>
              </li>';
    }
}
echo '</ul>';
closedir($dir);
?>
</body>
</html>
