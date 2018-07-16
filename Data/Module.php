<?php

class Module extends Manager{
    private $_idm;
    private $_mod_modulegroupcode;
    private $_mod_modulegroupname;
    private $_mod_modulecode;
    private $_mod_modulename;
    private $_mod_modulegrouporder;
    private $_mod_moduleorder;
    private $_mod_modulepagename;



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
    public function idm(){ return $this->_idm; }
    public function mod_modulegroupcode(){ return $this->_mod_modulegroupcode; }
    public function mod_modulegroupname(){ return $this->_mod_modulegroupname; }
    public function mod_modulecode(){ return $this->_mod_modulecode; }
    public function mod_modulename(){ return $this->_mod_modulename; }
    public function mod_modulegrouporder(){ return $this->_mod_modulegrouporder; }
    public function mod_moduleorder(){ return $this->_mod_moduleorder; }
    public function mod_modulepagename(){ return $this->_mod_modulepagename; }
    public function table(){ return $this->_table; }

    public function setIdm($idm){
        $idm = (int) $idm;
        if($idm > 0){
            $this->_idm = $idm;
        }
    }
    public function setMod_modulegroupcode($mod_modulegroupcode){
        if(is_string($mod_modulegroupcode)){
            $this->_mod_modulegroupcode = $mod_modulegroupcode;
        }
    }
    public function setMod_modulegroupname($mod_modulegroupname){
        if(is_string($mod_modulegroupname)){
            $this->_mod_modulegroupname = $mod_modulegroupname;
        }
    }
    public function setMod_modulecode($mod_modulecode){
        if(is_string($mod_modulecode)){
            $this->_mod_modulecode = $mod_modulecode;
        }
    }
    public function setMod_modulename($mod_modulename){
        if(is_string($mod_modulename)){
            $this->_mod_modulename = $mod_modulename;
        }
    }
    public function setMod_modulegrouporder($mod_modulegrouporder){
        if(is_string($mod_modulegrouporder)){
            $this->_mod_modulegrouporder = $mod_modulegrouporder;
        }
    }
    public function setMod_moduleorder($mod_moduleorder){
        if(is_string($mod_moduleorder)){
            $this->_mod_moduleorder = $mod_moduleorder;
        }
    }
    public function setMod_modulepagename($mod_modulepagename){
        if(is_string($mod_modulepagename)){
            $this->_mod_modulepagename = $mod_modulepagename;
        }
    }
    public function setTable($tab){
        if(is_string($tab)){
            $this->_table = $tab;
        }
    }

    public function getAttributs(){
        return array('idm','mod_modulegroupcode','mod_modulegroupname','mod_modulecode','mod_modulename','mod_modulegrouporder','mod_moduleorder','mod_modulepagename');
    }
    public function getValues(){
        return array('"'.$this->mod_modulegroupcode().'"','"'.$this->mod_modulegroupname().'"','"'.$this->mod_modulecode().'"','"'.$this->mod_modulename().'"','"'.$this->mod_modulegrouporder().'"','"'.$this->mod_moduleorder().'"','"'.$this->mod_modulepagename().'"');
    }
    public function getCondition(){
        return array('idm','"'.$this->idm().'"');
    }
    public function getTable(){
        return "modules";
    }
}
?>>