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
            $fileName = 'file.csv';
            break;
        case('json'):
            writeJson($rows);
            $fileName = 'file.json';
            break;
        case('xml'):
            writeXml($rows);
            $fileName = 'file.xml';
            break;
    }

    saveFileFormat($fileName);

}
else{
    $result = $dbo->query('SHOW TABLES');
    unset($dbo);
}




