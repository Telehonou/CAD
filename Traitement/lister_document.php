<?php
    function ListTriedoc(array $att, $valeurs){
        $Document = new Document(array());
        return $Document->getListTrie($Document->getTable(), $att, $valeurs);       
    }
    function listerdoc(){
        $Document = new Document(array());
        return $Document->getList($Document->getTable());
    }
    function PredListdoc($req){
        $Document = new Document(array());
        return $Document->getPredList($req);
    }
?>