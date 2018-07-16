<?php

class Role extends Manager{
    private $_id;
    private $_role_rolecode;
    private $_role_rolename;
    private $_table;
    
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
    public function role_rolecode(){ return $this->_role_rolecode; }
    public function role_rolename(){ return $this->_role_rolename; }
    public function table(){ return $this->_table; }
    
    public function setId($id){
        $id = (int) $id;
        if($id > 0){
            $this->_id = $id;
        }
    }
    public function setRole_rolecode($rolc){
        if(is_string($rolc)){
            $this->_role_rolecode = $rolc; 
        }
    }
    public function setRole_rolename($roln){
        if(is_string($roln)){
            $this->_role_rolename = $roln; 
        }
    }
    public function setTable($tab){
        if(is_string($tab)){
            $this->_table = $tab; 
        }
    }
     
    public function getAttributs(){
        return array('id','role_rolecode','role_rolename');
    }
    public function getValues(){
        return array('"'.$this->id().'"','"'.$this->role_rolecode().'"','"'.$this->role_rolename().'"');
    }
    public function getCondition(){
        return array('id','"'.$this->id().'"');
    }
    public function getTable(string $table){
        return $table;
    }
}
?>