<?php
//include 'Manager.php';
class Document extends Manager{
    private $_id_doc;
    private $_titre;
    private $_auteur;
    private $_description;
    private $_user_id;
    private $_objectif;
    private $_percen_realisation;
    private $_observation_jury;
    private $_perspective_amelioration;
    private $_approuver_par;
    private $_nombre_page;
    private $_categorie_id;    
    private $_departement_id;
    private $_taux_plagiat;
    private $_created_at;
    private $_updated_at;
    private $_doc_dir;


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
    public function id_doc(){ return $this->_id_doc; }
    public function titre(){ return $this->_titre; }
    public function auteur(){ return $this->_auteur; }
    public function description(){ return $this->_description; }
    public function user_id(){ return $this->_user_id; }
    public function objectif(){ return $this->_objectif; }
    public function percen_realisation() { return $this->_percen_realisation;}
    public function observation_jury() { return $this->_observation_jury;}
    public function perspective_amelioration() { return $this->_perspective_amelioration;}
    public function approuver_par() { return $this->_approuver_par;}
    public function nombre_page() { return $this->_nombre_page;}
    public function categorie_id(){ return $this->_categorie_id;}
    public function departement_id(){ return $this->_departement_id;}
    public function taux_plagiat(){ return $this->_taux_plagiat;}
    public function created_at(){ return $this->_created_at;}
    public function updated_at(){ return $this->_updated_at;}
    public function doc_dir(){ return $this->_doc_dir;}

    
function setId_doc($idd) {
    $id = (int) $idd;
        if($id > 0){
            $this->_id_doc = $id;
        }
}
function setTaux_plagiat($taux) {
    $id = (int) $taux;
        if($id >= 0){
            $this->_taux_plagiat = $id;
        }
}

function setTitre($titre) {
    if(is_string($titre)){
            $this->_titre = $titre;
        }    
}
function setAuteur($auteur) {
    if(is_string($auteur)){
            $this->_auteur= $auteur;
        }    
}

function setDescription($description) {
    $this->_description = $description;
}

function setUser_id($user_id) {
    $user = (int) $user_id;
    if($user>0){
    $this->_user_id = $user;
    }
}

function setObjectif($objectif) {
    $this->_objectif = $objectif;
}

function setPercen_Realisation($percen_realisation) {
    $percen =(int)$percen_realisation;
    if($percen>0){
    $this->_percen_realisation = $percen;
    }
}

function setObservation_jury($observation_jury) {
    $this->_observation_jury = $observation_jury;
}

function setPerspective_amelioration($perspective_amelioration) {
    $this->_perspective_amelioration = $perspective_amelioration;
}

function setApprouver_par($approuver_par) {
    $this->_approuver_par = $approuver_par;
}

function setNombre_page($nombre_page) {
    $nb_page=(int)$nombre_page;
    if($nb_page>0){
    $this->_nombre_page = $nb_page;
    }
}

function setCategorie_id($categorie_id) {
    $cat_id=(int)$categorie_id;
    if($cat_id>0){
    $this->_categorie_id = $cat_id;
    }
}

function setDepartement_id($departement_id) {
    $dep_id=(int)$departement_id;
    if($dep_id>0){
    $this->_departement_id = $dep_id;
    }
}

function setCreated_at($created_at) {
    if(is_string($created_at)){
    $this->_created_at = $created_at;
    }
}

function setUpdated_at($updated_at) {
    if(is_string($updated_at)){
    $this->_updated_at = $updated_at;
    }
}

function setDoc_dir($lien) {
    if(is_string($lien)){
    $this->_doc_dir = $lien;
    }
}    
    public function getAttributs(){
        return array('id_doc','titre','auteur','description','user_id','objectif','percen_realisation','observation_jury',
            'perspective_amelioration','approuver_par','nombre_page','categorie_id','departement_id','taux_plagiat','created_at',
            'updated_at','doc_dir');
    }
    public function getValues(){
        return array('"'.$this->id_doc().'"','"'.$this->titre().'"','"'.$this->auteur().'"','"'.$this->description().'"','"'.$this->user_id()
        .'"','"'.$this->objectif().'"','"'.$this->percen_realisation().'"','"'.$this->observation_jury().'"',
        '"'.$this->perspective_amelioration().'"','"'.$this->approuver_par().'"','"'.$this->nombre_page().'"',
        '"'.$this->categorie_id().'"','"'.$this->departement_id().'"','"'.$this->taux_plagiat().'"','"'.$this->created_at().'"','"'.$this->updated_at().'"',
        '"'.$this->doc_dir().'"');
    }
    public function getCondition(){
        return array('id_doc','"'.$this->id_doc().'"');
    }
    public function getTable(){
        return "documents";
    }
}
