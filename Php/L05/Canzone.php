<?php

class Canzone {

    public $titolo;
    public $cantanti;

    public function __construct($titolo,$cantanti){
        $this->titolo = $titolo;
        $this->cantanti = $cantanti;
    }


    public function riproduci(){
        return $this->titolo . ' ' . $this->cantanti;   
    }





}



