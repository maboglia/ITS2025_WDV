<?php

include 'Canzone.php';

$canzoni = file('./hitlist2024.csv');

//var_dump($canzoni);

$scatolaCanzoni = [];

foreach ($canzoni as $riga) {
    
    $dueStringhe = explode(',', $riga);

    $titolo = $dueStringhe[0];
    $cantanti = $dueStringhe[1];
    
    $scatolaCanzoni[] = new Canzone($titolo,$cantanti);//array_push()

    
}




