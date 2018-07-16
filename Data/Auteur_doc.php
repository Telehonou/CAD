<?php

class Auteur_doc extends Manager{
    private $_id;
    private $_document;
    private $_autors;
    
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
    public function document(){ return $this->_document; }
    public function autors(){ return $this->_autors; }
    
    public function setId($ids){
        $id = (int) $ids;
        if($id > 0){
            $this->_id = $id;
        }
    }
    public function setDocument($document){
        $doc = (int) $document;
        if($doc > 0){
            $this->_document = $doc;
        }
    }
    public function setAutors($autors){
        $a= (int) $autors;
        if($a>0){
            $this->_autors = $a; 
        }
    }
     
    public function getAttributs(){
        return array('id','document','autors');
    }
    public function getValues(){
        return array('"'.$this->id().'"','"'.$this->document().'"','"'.$this->autors().'"');
    }
    public function getCondition(){
        return array('id','"'.$this->id().'"');
    }
    public function getTable(){
        return 'auteur_docs';
    }
}
?>