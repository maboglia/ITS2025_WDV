<?php

$pagina = isset($_GET['page']) ? $_GET['page'] : 'home';//op ternario

switch ($pagina) {
    case 'gallery':
        include VIEW . 'gallery.php';
        break;
    case 'luoghi':
        include VIEW . 'luoghi.php';
        break;
    case 'calc':
        include VIEW . 'calcolatrice.php';
        break;
    case 'login':
        include VIEW . 'login.php';
        break;
    case 'logout':
        unset($_SESSION['utente']);
        header('Location: ?');
        break;
    
    default:
        include VIEW . 'home.php';
        break;
}









