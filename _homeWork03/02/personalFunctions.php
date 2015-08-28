<?php

function writeCsv($param){
    echo "CSV " . '<br />';
    echo '<pre>';
    print_r($param);
    echo '<pre>';
}

function writeJson($param){
    echo "JSON" . '<br />';
    echo '<pre>';
    print_r($param);
    echo '<pre>';
}

function writeXml($param){
    echo "XML" . '<br />';
    echo '<pre>';
    print_r($param);
    echo '<pre>';

//$dom = new DOMDocument('1.0', 'UTF-8');

}