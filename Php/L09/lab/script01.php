<?php

//costanti
define("ALIQUOTA_IVA", 0.22);

//var
$nome = 'pippo';

function scrivi() {//procedure
    global $nome;
    return 'Hello ' . $nome;
}

function prezzoIvato($prezzoImponibile){
    return ($prezzoImponibile * ALIQUOTA_IVA) + $prezzoImponibile;
}

echo prezzoIvato(1000);




