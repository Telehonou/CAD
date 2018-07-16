<?php

class Departement extends Manager{
    private $_id_dpt;
    private $_code_dpt;
    private $_libel_dpt;
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
    public function id_dpt(){ return $this->_id_dpt; }
    public function code_dpt(){ return $this->_code_dpt; }
    public function libel_dpt(){ return $this->_libel_dpt; }
    public function table(){ return $this->_table; }
    
    public function setid_dpt($id){
        $id = (int) $id;
        if($id > 0){
            $this->_id_dpt = $id;
        }
    }
    public function setcode_dpt($cod){
        if(is_string($cod)){
            $this->_code_dpt = $cod; 
        }
    }
    public function setlibel_dpt($libel){ 
        if(is_string($libel)){
            $this->_libel_dpt = $libel; 
        }
    }
    public function setTable($tab){
        if(is_string($tab)){
            $this->_table = $tab; 
        }
    }
     
    public function getAttributs(){
        return array('id_dpt','code_dpt','libel_dpt');
    }
    public function getValues(){
        return array('"'.$this->id_dpt().'"','"'.$this->code_dpt().'"','"'.$this->libel_dpt().'"');
    }
    public function getCondition(){
        return array('id_dpt','"'.$this->id_dpt().'"');
    }
    public function getTable( ){
        return "departements";
    }
}
?>