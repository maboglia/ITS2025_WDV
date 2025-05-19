<?php

class AutosaloneMVC {

    private $service;

    public function __construct(){
        $this->service = new AutosaloneService();
    }

    public function automobili(){
        require VIEW . 'header.php';
        
        $automobili = $this->service->getAutomobili();
        require VIEW . 'tabella.php';

        require VIEW . 'footer.php';
    }

    public function home(){
        require VIEW . 'header.php';
        require VIEW . 'home.php';
        require VIEW . 'footer.php';
    }


}