<?php

$pagina = 'home';

if (  isset( $_GET['page']  )      ){

    $pagina = $_GET['page'];


}

switch ($pagina) {
    case 'automobili':
        $ctrl = new AutosaloneMVC();
        $ctrl->automobili();
        break;
    case 'api':
        $ctrl = new AutosaloneREST();
        $ctrl->automobili();
        break;
    
    default:
        $ctrl = new AutosaloneMVC();
        $ctrl->home();
        break;
}







