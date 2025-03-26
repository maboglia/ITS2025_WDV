<?php

include '../app/model/Prodotto.php';
include '../app/controller/Magazzino.php';

session_start();

if (  isset(  $_SESSION['magazzino']   )  ){
    //il magazzino esiste già e quindi uso quello che c'è
    $magazzino = $_SESSION['magazzino'];
} else {
    //il magazzino non esiste ancora, quindi lo creo e poi lo uso
    $magazzino = new Magazzino();//costruito un oggetto di titpo magazzino
    $_SESSION['magazzino'] = $magazzino;
}

