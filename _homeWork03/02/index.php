<?php
require "work.php";
?>


<html>
<head>
    <title>Работа с БД</title>
    <meta charset="utf-8">
</head>
<body>
<form action="formatFile.php" method="post">
    <p>Выбрать таблицу:</p>
    <select name="table">
        <?php
            while ($row = $result->fetch(PDO::FETCH_NUM)) {
                echo '<option>';
                echo $row[0];
                echo '</option>';
            }
        ?>
    </select>
    <p>Выбрать формат:</p>
    <select name="format">
        <option>csv</option>
        <option>json</option>
        <option>xml</option>
    </select>
    <p><input type="submit" name="download" value="Export"></p>
</form>
</body>
</html>
