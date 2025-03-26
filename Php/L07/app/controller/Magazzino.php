<?php

class Magazzino{

    private $prodotti;

    public function __construct(){
        $this->prodotti = [];
    }

    public function addProdotto($prodotto){
        $this->prodotti[] = $prodotto;//aggiungi un elemento in coda
        // array_push($this->prodotti, $prodotto);
    }

    public function getProdotti(){
        return $this->prodotti;
    }

    

}





