<?php

class Connessione {
    private  $DATABASE = 'fondamenti';
    private  $HOST = 'mysql:host=localhost;dbname=fondamenti';
    private  $USER = 'ITS_2025';
    private  $PASS = 'ITS_2025';

    private $conn;

    public function getConnessione(){
        if (!isset($this->conn))
            $this->connetti();

        return $this->conn;//la connessione al db
    }

    public function connetti(){
        try{
            $this->conn = new PDO($this->HOST, $this->USER, $this->PASS);
            echo 'Tutto liscio, sei connesso al DB';
        } catch(PDOException $eccezione){
            echo 'Non sei connesso!!! ' . $eccezione->getMessage();
        }
    }

    public function disconnetti(){
        if (isset($this->conn)){
            unset($this->conn);
        }
    }
}












