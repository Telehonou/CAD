<?php

    function ListTrie(array $att, $valeurs,$table){
        $table=substr($table, 0, -1);//suppression du dernier caractère
        $classe = ucfirst($table);
        $table = new $classe(array());
        $classe.="s";
        return $table->getListTrie($table->getTable(), $att, $valeurs);       
    }
    //liste quelque soit la table
    function lister($table){        
        $table=substr($table, 0, -1);//suppression du dernier caractère
        $classe = ucfirst($table);
        $table = new $classe(array());
        $classe.="s";
        return $table->getList($table->getTable($classe));
    }
    function PredList($req){
        //$classe=firslettermaj($table);
        $Departement = new Departement(array());
        return $Departement->getPredList($req);
    }
?>