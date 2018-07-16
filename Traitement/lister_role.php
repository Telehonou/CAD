<?php

    /*function ListTrie(array $att, $valeurs){
        //$classe=$chaine = ucfirst($chaine);
        $Role = new Role(array());
        return $Role->getListTrie($Role->getTable(), $att, $valeurs);       
    }*/
    //liste quelque soit la table
    function liste($table){        
        $table=substr($table, 0, -1);//suppression du dernier caractère
        $classe = ucfirst($table);
        $table = new $classe(array());
        $classe.="s";
        return $table->getList($table->getTable($classe));
    }
    /*function PredList($req){
        //$classe=firslettermaj($table);
        $Role = new Role(array());
        return $Role->getPredList($req);
    }*/
?>