<?php
/*function liste($table)
{
    $table = substr($table, 0, -1);//suppression du dernier caractère
    $classe = ucfirst($table);
    $table = new $classe(array());
    $classe .= "s";
    return $table->getList($table->getTable($classe));
}
 function ListTrie(array $att, $valeurs){
        $Module = new Module(array());
        return $Module->getListTrie($Module->getTable(), $att, $valeurs);       
    }*/
 include 'Data/Module.php';
    function liste(){
        $Module = new Module(array());
        return $Module->getList($Module->getTable());
    }
 /*   function PredList($req){
        $Module = new Module(array());
        return $Module->getPredList($req);
    }*/
?>