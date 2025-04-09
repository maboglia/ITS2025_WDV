<?php

//costanti
define('TITOLO', 'Titolo del sito');

define('ASSETS', './public/assets/');
define('CSS', './public/assets/css/');
define('JS', './public/assets/js/');

define('VIEW', './app/view/');

//variabili
$author = "Mauro";

$menu_nav = [
    ['nome'=>'home', 'collegamento'=>'?'],
    ['nome'=>'gallery', 'collegamento'=>'?page=gallery'],
    ['nome'=>'luoghi', 'collegamento'=>'?page=luoghi'],
    ['nome'=>'calc', 'collegamento'=>'?page=calc'],
    // ['nome'=>'login', 'collegamento'=>'?page=login'],
    // ['nome'=>'logout', 'collegamento'=>'?page=logout'],
];

$piazze = [
    ['nome'=>'Piazza Vittorio', 'foto'=>'https://www.rivistabc.com/wp-content/uploads/2019/03/2d1c1225-9a29-4491-b108-81092ac1ef7e-desktop-e1552315555936.jpg'],
    ['nome'=>'Piazza San Carlo', 'foto'=>'https://www.visitpiemonte.com/core/storage/images/3586/TAGLIO_PIazza%20San%20Carlo%2C%20Torino_Credits%20Visit%20Piemonte-%20GettyImages.jpg'],
    ['nome'=>'Piazza Castello', 'foto'=>'https://images.winalist.com/blog/wp-content/uploads/2024/09/24182359/shutterstock_661343395-1500x996.jpg'],
    ['nome'=>'Piazza Statuto', 'foto'=>'https://a.travel-assets.com/findyours-php/viewfinder/images/res70/409000/409291-Piedmont.jpg'],
    ['nome'=>'Piazza dei Mestieri', 'foto'=>'https://piazzadeimestieri.it/wp21/wp-content/uploads/2021/03/Planimetria-PdM-1-1024x681.jpg'],
];

include './app/model/luogo.php';
include './app/repos/luogoDAO.php';
$dao = new LuogoDAO();
$luoghiOOP = $dao->getLuoghi();

//faccio partire la sessione: uno spazio di memoria sul server
session_start();//deve succedere prima di qualsiasi istruzione di output

//funzioni custom
function login($user, $pass){
    if ($user == 'mauro' && $pass == '12345'){
        return true;
    } 
    return false;
}

if (    isset($_POST['username']) && 
        isset($_POST['password']) &&
        $_POST['username'] != trim('')  &&
        $_POST['password'] != trim('') 
    ){
    $logged = login($_POST['username'], $_POST['password']);
    //var_dump($logged);

    if ($logged) {
        $_SESSION['utente'] = $_POST['username'];//salvo in sessione l'utente collegato
    }
}








