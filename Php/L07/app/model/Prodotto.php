<?php

class Prodotto {
    
    private $nome;
    private $quantita;

    private $prezzo;

    public function __construct($nome, $quantita, $prezzo) {//new Prodotto("Scarpe da tennis", 10, 5.00)
        $this->nome = $nome;//this -> puntatore auto-referenziante
        $this->quantita = $quantita;
        $this->prezzo = $prezzo;
    }

    public function __get($name){
        return $this->$name;
    }

    public function __set($name, $value){
        $this->$name = $value;
    }

}








