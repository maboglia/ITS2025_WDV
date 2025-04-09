<?php

include './app/repos/connessione.php';
class LuogoDAO {

    private $conn;

    public function __construct() {
        $this->conn = new Connessione();
    }

    public function addLuogo($luogo){

        $query = "INSERT INTO luoghi (tipo, nome, indirizzo, foto) values ('$luogo->tipo','$luogo->nome','$luogo->indirizzo','$luogo->foto')";

        $this->conn->getConnessione()->query($query);

    }

    public function getLuoghi(){

        $richiesta = "SELECT * FROM luoghi";

        $result = $this->conn->getConnessione()->query($richiesta);

        $luoghi = [];

        while ($riga = $result->fetch()) {

            $luogo = new Luogo($riga['tipo'],$riga['nome']);
            $luogo->indirizzo = $riga['indirizzo'];
            $luogo->foto = $riga['foto'];
            $luoghi[] = $luogo;
        }

        return $luoghi;
    }


}


