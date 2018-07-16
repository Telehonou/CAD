<?php

    function ListTrie(array $att, $valeurs){
        $User = new User(array());
        return $User->getListTrie($User->getTable(), $att, $valeurs);       
    }
    function lister(){
        $User = new User(array());
        return $User->getList($User->getTable());
    }
    function PredList($req){
        $User = new User(array());
        return $User->getPredList($req);
    }
    function lister_User(){
        $User = new User(array());
        return $User->getList($User->getTable());
    }
