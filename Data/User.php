<?php

class User extends Manager{
    private $_u_userid;
    private $_u_name;
    private $_u_username;
    private $_u_password;
    private $_u_rolecode;
    private $_email;
    private $_telephone;
    private $_avatar;
    private $_created_at;
    private $_updated_at;
    
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
    public function u_userid(){ return $this->_u_userid; }
    public function u_name(){ return $this->_u_name; }
    public function u_username(){ return $this->_u_username; }
    public function u_password(){return $this->_u_password;}
    public function u_rolecode(){ return $this->_u_rolecode;}
    public function email(){ return $this->_email; }
    public function telephone(){ return $this->_telephone; }
    public function created_at(){ return $this->_created_at; }
    public function updated_at(){ return $this->_created_at; }
    public function avatar(){return $this->_avatar;}
    
    public function setU_userid($u_userid){
        $u_userid = (int) $u_userid;
        if($u_userid > 0){
            $this->_u_userid = $u_userid;
        }
    }
    public function setU_username($cod){
        if(is_string($cod)){
            $this->_u_username = $cod; 
        }
    }
    public function setU_name($cods){
        if(is_string($cods)){
            $this->_u_name = $cods; 
        }
    }
    public function setU_password($mp){
        if(is_string($mp)){
            $this->_u_password = $mp; 
        }
    }
    public function setU_rolecode($fonc){
       if(is_string($fonc)){
            $this->_u_rolecode = $fonc; 
        }
    }
    public function setEmail($libel){ 
        if(is_string($libel)){
            $this->_email = $libel; 
        }
    }
    public function setTelephone($tel){
        $tel=(int)$tel;
        if ($tel > 0) {
            $this->_telephone = $tel;
        }
    }
    public function setCreated_at($craet){ 
        if(is_string($craet)){
            $this->_created_at = $craet; 
        }
    }
    public function setUpdated_at($upd){ 
        if(is_string($upd)){
            $this->_updated_at = $upd; 
        }
    }
    public function setAvatar($avar){ 
        if(is_string($avar)){
            $this->_avatar = $avar; 
        }
    }
    
     
    public function getAttributs(){
        return array('u_userid','u_name','u_username','u_password','u_rolecode','email','telephone','created_at','updated_at','avatar');
    }
    public function getValues(){
        return array('"'.$this->u_userid().'"','"'.$this->u_name().'"','"'.$this->u_username().'"','"'.$this->u_password().'"','"'.$this->u_rolecode().'"','"'.$this->email().'"','"'.$this->telephone().'"','"'.$this->created_at().'"','"'.$this->updated_at().'"','"'.$this->avatar().'"');
    }
    public function getCondition(){
        return array('u_userid','"'.$this->u_userid().'"');
    }
    public function getTable(){
        return 'users';
    }
}
?>