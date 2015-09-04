<?php

function writeCsv($param){
    $csv = fopen('files/file.csv', 'w');

    while ($element = current($param[0])) {
            $arr[] = key($param[0]);
        next($param[0]);
    }

    fputcsv($csv, $arr, ';');
    foreach ($param as $field) {
        fputcsv($csv, $field, ';');
    }

    fclose($csv);
}

function writeJson($param){
    file_put_contents('files//file.json', json_encode($param));
}

function writeXml($param){
//    echo '<pre>';
//    print_r($param);
//    echo '<pre>';

    $xml = new DOMDocument('1.0', 'UTF-8');
    $catalog = $xml->createElement('catalog');
    $xml->appendChild($catalog);
    $elements = $xml->createElement('elements');
    $catalog->appendChild($elements);

    foreach ($param as $item) {
        $element = $xml->createElement('element');
        $elements->appendChild($element);
        foreach ($item as $key => $value){
//            echo $key . "..." . $value . '<br />';
            $element->appendChild($xml->createElement($key, htmlspecialchars($value)));
        }

        }

    $xml->save('files//file.xml');
}

// Способ честно скачан с Интернета и переделан под собственную задачу...

function saveFileFormat($fileName){

    switch ($fileName) {
        case('file.csv'):
            $headerContentType = 'Content-type: text/csv';
        case('file.json'):
            $headerContentType = 'Content-type: text/json';
        case('file.xml'):
            $headerContentType = 'Content-type: text/xml';
    }

// путь до файла
    $filePath = "files//" . $fileName;
// код 200, все хорошо
    header("HTTP/1.1 200 OK");
// тип файла
    header("{$headerContentType}; charset=utf8;");
// определяем браузер
    $browser = (isset($_SERVER['HTTP_USER_AGENT'])) ? $_SERVER['HTTP_USER_AGENT'] : '';
    $isMSIE = preg_match('@MSIE ([0-9].[0-9]{1,2})@', $browser);
    if ($isMSIE){
// если это Internet Explorer
// объясняем браузеру, что выводим файл
        header("Content-Disposition: attachment; filename={$fileName}");
        header('Cache-Control: must-revalidate, post-check=0, pre-check=0');
        header('Pragma: public');
    } else {
// если это НЕ Internet Explorer
// объясняем браузеру, что выводим файл
        header("Content-Disposition: attachment; filename={$fileName}");
        header('Pragma: no-cache');

// вывод файла в браузере
        readfile($filePath);
    }
}




































