<?php

class Azienda {

    //costante
    const ALIQUOTA_IVA = 0.22;

    private $nome;

    public function __construct($nome){//new Azienda('Ferrari');
        $this->nome = $nome;
    }
    
    public function scrivi() {//procedure
        
        return 'Hello ' . $this -> nome;
    }
}

$azienda1 = new Azienda('ITS');
$azienda2 = new Azienda('Ferrari');

echo $azienda1->scrivi();
echo $azienda2->scrivi();







