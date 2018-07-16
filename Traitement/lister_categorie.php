<?php
    function ListTrie(array $att, $valeurs){
        $Categorie = new Categorie(array());
        return $Categorie->getListTrie($Categorie->getTable(), $att, $valeurs);       
    }
    function lister(){
        $Categorie = new Categorie(array());
        return $Categorie->getList($Categorie->getTable());
    }
    function PredList($req){
        $Categorie = new Categorie(array());
        return $Categorie->getPredList($req);
    }
?>