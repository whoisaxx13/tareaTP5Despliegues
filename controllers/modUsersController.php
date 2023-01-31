<?php
//disable users y pedidos y sus pedidos
if(isset($_GET['modUs'])){
    $db=Conectar::conexion();
    if($db){
        $q='UPDATE usuarios SET rol=!rol WHERE id='.$_GET['modUs'];
        $result=$db->query($q);
    }else{
        echo 'No se ha podido conectar a la base de datos';
    }
}
if(isset($_GET['elimUs'])){
    $db=Conectar::conexion();
    if($db){
        $q='UPDATE usuarios SET activo=!activo  WHERE id='.$_GET['elimUs'];
        $result=$db->query($q);
    }else{
        echo 'No se ha podido conectar a la base de datos';
    }
}
require_once('views/modUsersView.phtml');
?>