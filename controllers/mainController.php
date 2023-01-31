<?php
require_once('models/UserModel.php');
require_once('models/UserRepository.php');
require_once('models/ArtModel.php');
require_once('models/ArtRepository.php');

session_start();

if(!isset($_SESSION['user'])){
    $datos['id']=0;
    $datos['usuario']="";
    $datos['nombre']="";
    $datos['rol']=0;
    $_SESSION['user']= new User($datos);
}
if($_SESSION['user']->getId()!=0){
    $artsCount=UserRepository::getNumArtsPed($_SESSION['user']->getId());
    if($artsCount==null){
        $artsCount=0;
    }
}
if(((isset($_GET['login'])||isset($_GET['register']))&&$_SESSION['user']->getId()==0)||isset($_GET['logout'])){
    require_once('controllers/loginController.php');
    die();
}
if(isset($_GET['crearArti'])&&$_SESSION['user']->getRol()==1){
    require_once('controllers/crearArtiController.php');
    die();
}
if(isset($_GET['verCarrito'])&&$_SESSION['user']->getId()!=0){
    require_once('controllers/carritoController.php');
    die();
}
if(isset($_GET['modUsers'])&&$_SESSION['user']->getRol()==1){
    require_once('controllers/modUsersController.php');
    die();
}
if(isset($_GET['verPedidos'])){
    require_once('controllers/verPedidosController.php');
    die();
}
require_once('views/mainView.phtml');

?>