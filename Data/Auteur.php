<?php

class Auteur extends Manager{
    private $_id;
    private $_auteur;
    
    public function __construct($data){
    $this->hydrate($data);
    } 
    
    public function hydrate(array $donnees){
        foreach ($donnees as $key => $value){
            $method = 'set'.ucfirst($key);
            if(method_exists($this, $method)){
                $this->$method($value);
            }
        }
    }
    public function id(){ return $this->_id; }
    public function auteur(){ return $this->_auteur; }
    
    public function setId($id){
        $id = (int) $id;
        if($id > 0){
            $this->_id = $id;
        }
    }
    public function setAuteur($aut){
        if(is_string($aut)){
            $this->_auteur = $aut; 
        }
    }
     
    public function getAttributs(){
        return array('id','auteur');
    }
    public function getValues(){
        return array('"'.$this->id().'"','"'.$this->auteur().'"');
    }
    public function getCondition(){
        return array('id','"'.$this->id().'"');
    }
    public function getTable(){
        return 'auteurs';
    }
}
?>