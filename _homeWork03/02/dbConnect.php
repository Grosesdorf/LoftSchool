<?php
try {
    $dbo = new PDO("mysql:host=localhost;dbname=megaCompEShop", "support", "qwerty");
    $dbo->query('SET NAMES "UTF-8"');
}
catch (PDOException $e){
    echo "Возникла ошибка: " . $e->getMessage();
    exit;
}

