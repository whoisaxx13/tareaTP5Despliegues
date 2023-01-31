<?php
if(!null==UserRepository::getPrecio($_SESSION['user']->getId())){
    $precio=UserRepository::getPrecio($_SESSION['user']->getId());
}
if(isset($_GET['anadir'])){
    // Falta añadir codigo añadir al pedido
    $articulo=ArtRepository::getArticulo($_GET['anadir']);
    $pedido=UserRepository::getPedido($_SESSION['user']->getId());
    $db=Conectar::conexion();
    if($db){
        if(!null==$pedido){
            $prodenped= ArtRepository::getCantidadPedido($pedido,$_GET['anadir']);
            $q='UPDATE pedidos SET precio=precio+'.$articulo->getPrecio().' WHERE confirmed=0 && idus='.$_SESSION['user']->getId();
            $result=$db->query($q);
            $q='UPDATE articulos SET cantidad=cantidad-1 where id='.$_GET['anadir'];
            $result=$db->query($q);
            if(!null==$prodenped){
                $q='UPDATE contiene SET cant=cant+1 where idped='.$pedido.' && idprod='.$_GET['anadir'];
                $result=$db->query($q);
            }else{
                $q='INSERT INTO contiene (idped,idprod,cant) VALUES ('.$pedido.','.$_GET['anadir'].',1)';
                $result=$db->query($q);
            }

        }else{  
            $q='INSERT INTO pedidos(idus,precio) VALUES ('.$_SESSION['user']->getId().','.$articulo->getPrecio().')';
            $result=$db->query($q);
            $pedido=UserRepository::getPedido($_SESSION['user']->getId());
            $q='INSERT INTO contiene (idped,idprod,cant) VALUES ('.$pedido.','.$_GET['anadir'].',1)';
            $result=$db->query($q);
            $q='UPDATE articulos SET cantidad=cantidad-1 where id='.$_GET['anadir'];
            $result=$db->query($q);
        }
    }else{
        echo 'No se ha podido conectar a la base de datos';
    }
    header('Location: index.php');
}
if(isset($_GET['elimUno'])){
    $pedido=UserRepository::getPedido($_SESSION['user']->getId());
    $articulo=ArtRepository::getArticulo($_GET['elimUno']);
    $db=Conectar::conexion();
    if($db){
        $prodenped= ArtRepository::getCantidadPedido($pedido,$_GET['elimUno']);
        $q='UPDATE pedidos SET precio=precio-'.$articulo->getPrecio().' WHERE confirmed=0 && idus='.$_SESSION['user']->getId();
        $result=$db->query($q);
        $q='UPDATE contiene SET cant=cant-1 where idped='.$pedido.' && idprod='.$_GET['elimUno'];
        $result=$db->query($q);
        $q='UPDATE articulos SET cantidad=cantidad+1 where id='.$_GET['elimUno'];
        $result=$db->query($q);
    }else{
        echo 'No se ha podido conectar a la base de datos';
    }
    header('Location: index.php?verCarrito');

}
if(isset($_GET['elimTod'])){
    $pedido=UserRepository::getPedido($_SESSION['user']->getId());
    $articulo=ArtRepository::getArticulo($_GET['elimTod']);
    $db=Conectar::conexion();
    
    if($db){
        $prodenped= ArtRepository::getCantidadPedido($pedido,$_GET['elimTod']);
        $q='UPDATE pedidos SET precio=precio-'.$articulo->getPrecio()*$prodenped.' WHERE confirmed=0 && idus='.$_SESSION['user']->getId();
        $result=$db->query($q);
        $q='DELETE FROM contiene where idped='.$pedido.' && idprod='.$_GET['elimTod'];
        $result=$db->query($q);
        $q='UPDATE articulos SET cantidad=cantidad+1 where id='.$_GET['elimTod'];
        $result=$db->query($q);
    }else{
        echo 'No se ha podido conectar a la base de datos';
    }
    header('Location: index.php?verCarrito');
}
if(isset($_GET['pagar'])){
    $db=Conectar::conexion();
    if($db){
        $q='UPDATE pedidos SET confirmed=1 WHERE confirmed=0 && idus='.$_SESSION['user']->getId();
        $result=$db->query($q);
    }else{
        echo 'No se ha podido conectar a la base de datos';
    }
    header('Location: index.php');
}
require_once('views/carritoView.phtml');
?>

