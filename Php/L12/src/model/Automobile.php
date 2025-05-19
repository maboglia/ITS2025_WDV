<?php


class Automobile implements JsonSerializable {

    private $id;
    private $marca;
    private $modello;
    private $cilindrata;
    private $posti;
    private $prezzo;

    public function __get($nomedellaproprietadagettare){
        return $this->$nomedellaproprietadagettare;
    }

    public function __set($nomeProprieta, $valoreProp){
        $this->$nomeProprieta = $valoreProp;
    }

    public function jsonSerialize(){
        return [
            'id' => $this->id,
            'marca' => $this->marca,
            'modello' => $this->modello,
            'cilindrata' => $this->cilindrata,
            'posti' => $this->posti,
            'prezzo' => $this->prezzo
        ];
    }

}