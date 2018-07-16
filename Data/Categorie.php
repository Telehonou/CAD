<?php

class Categorie extends Manager{
    private $_id_cat;
    private $_nom_cat;
    private $_desc_cat;
    
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
    public function id_cat(){ return $this->_id_cat; }
    public function nom_cat(){ return $this->_nom_cat; }
    public function desc_cat(){ return $this->_desc_cat; }
    
    public function setId_cat($id){
        $id = (int) $id;
        if($id > 0){
            $this->_id_cat = $id;
        }
    }
    public function setnom_cat($idnom_cat){
        if(is_string($idnom_cat)){
            $this->_nom_cat = $idnom_cat; 
        }
    }
    public function setdesc_cat($desc_cat){ 
        if(is_string($desc_cat)){
            $this->_desc_cat = $desc_cat; 
        }
    }
     
    public function getAttributs(){
        return array('id_cat','nom_cat','desc_cat');
    }
    public function getValues(){
        return array('"'.$this->id_cat().'"','"'.$this->nom_cat().'"','"'.$this->desc_cat().'"');
    }
    public function getCondition(){
        return array('id_cat','"'.$this->id_cat().'"');
    }
    public function getTable(){
        return "categories";
    }
}
?>