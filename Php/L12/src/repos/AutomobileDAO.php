<?php

class AutomobileDAO {

    private $connessione;

    public function __construct(){

        try{
            $this->connessione = new PDO(DSN, USER, PASS);
        } catch (PDOException $eccezione){
            echo "Non sei connesso al DB: " . $eccezione->getMessage();
        }
    
    
    }

    public function getAutomobili(){
        $automobili = [];

        //fare una query al db
        $richiesta = 'SELECT * FROM automobili';
        //recuperare i risultati
        $result = $this->connessione->query($richiesta);
        //trasformarli in oggetti di tipo Automobile
        $result->setFetchMode(PDO::FETCH_CLASS, 'Automobile');
        //inserirli nell'array $automobli
        while ( $auto =  $result->fetch()) {
            $automobili[] = $auto;
        }
        //ritornare l'array di automobli con tutte le automobili

        return $automobili;
    }




}
