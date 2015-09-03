<?php

class Car
{

    public $color = 'red';
    public $engine = 'disel';
    private $doors = 4;
    protected $Wheels = 4;

    public function displayWheel()
    {
        echo 'Кол-во дверей: ' . $this->doors;
    }
}