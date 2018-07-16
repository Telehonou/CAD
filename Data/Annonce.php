<?php

class Annonce extends Manager{
    private $_idannonce;
    private $_titre;
    private $_contenu;
    private $_fichier;
    private $_datecreation;
    private $_dateupdate;
    private $_userid;


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
    public function idannonce(){ return $this->_idannonce; }
    public function titre(){ return $this->_titre; }
    public function contenu(){ return $this->_contenu; }
    public function fichier(){ return $this->_fichier; }
     public function datecreation(){ return $this->_datecreation; }
      public function dateupdate(){ return $this->_dateupdate; }
       public function userid(){ return $this->_userid; }
    
    
    public function setIdannonce($id){
        $id = (int) $id;
        if($id > 0){
            $this->_idannonce = $id;
        }
    }
    public function setTitre($idtitre){
        if(is_string($idtitre)){
            $this->_titre = $idtitre; 
        }
    }
  
    public function setContenu($contenu){ 
        if(is_string($contenu)){
            $this->_contenu = $contenu; 
        }
    }
    public function setFichier($fichier){ 
        if(is_string($fichier)){
            $this->_fichier = $fichier; 
        }
    }
     public function setDatecreation($datec){ 
        
            $this->_datecreation = $datec; 
        
    }
     public function setDateupdate($dateu){ 
        
            $this->_dateupdate = $dateu; 
        
    }
      public function setUserid($id){
        $id = (int) $id;
        if($id > 0){
            $this->_userid = $id;
        }
      }
      
    public function getAttributs(){
        return array('idannonce','titre','contenu','fichier','datecreation','dateupdate','userid');
    }
    public function getValues(){
        return array('"'.$this->idannonce().'"','"'.$this->titre().'"','"'.$this->contenu().'"','"'.$this->fichier().'"','"'.$this->datecreation().'"','"'.$this->dateupdate().'"','"'.$this->userid().'"');
    }
    
    public function getCondition(){
        return array('idannonce','"'.$this->idannonce().'"');
    }
    public function getTable(){
        return "annonces";
    }
}
?>