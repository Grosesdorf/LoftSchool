<?php
require "dbConnect.php";
require "personalFunctions.php";

if(isset($_POST['table']) && isset($_POST['format'])){

    $sql = 'SELECT * FROM ' . $_POST['table'];
    $result = $dbo->query($sql);
    $rows = $result->fetchAll(PDO::FETCH_ASSOC);
    unset($dbo);

    switch($_POST['format']){
        case('csv'):
            writeCsv($rows);
            break;
        case('json'):
            writeJson($rows);
            break;
        case('xml'):
            writeXml($rows);
            break;
    }
}
else{
    $result = $dbo->query('SHOW TABLES');
    unset($dbo);
}


