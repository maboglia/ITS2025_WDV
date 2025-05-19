<?php

class AutosaloneService {
    
    private $dao;

    public function __construct(){
        $this->dao = new AutomobileDAO();
    }

    public function getAutomobili(){
        return $this->dao->getAutomobili();
    }

    public function getAutomobileById($id){
        foreach($this->getAutomobili() as $auto){
            if ($auto->id == $id)
                return $auto;
        }
        return null;
    }

}
