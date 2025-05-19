<?php


class AutosaloneREST {

    private $service;

    public function __construct(){
        $this->service = new AutosaloneService();
    }

    public function automobili(){

        header("Content-Type: application/json");

        echo json_encode($this->service->getAutomobili());

    }


}