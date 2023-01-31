<?php
if(isset($_POST['enviar'])){
    $image=basename($_FILES['imagen']['name']);
    $uploadfile="views/img/".$image;
    if(move_uploaded_file($_FILES['imagen']['tmp_name'],$uploadfile)){
        if($_POST['nombre']!=""&&$_POST['desc']!=""&&$image!=''&&$_POST['precio']!=""&&$_POST['cantidad']!=''){
            $db=Conectar::conexion();
            if($db){
                $q='INSERT INTO articulos(nombre,descripcion,imagen,precio,cantidad) VALUES("'.$_POST['nombre'].'","'.$_POST['desc'].'","'.$image.'",'.$_POST['precio'].','.$_POST['cantidad'].')';
                $result=$db->query($q);
                header('Location: index.php');
            }else{
                $error='No se ha podido conectar a la base de datos';
            }
        }else{
            $error='Por favor, rellene todos los campos';
        }
    }else{
        $error='El archivo de la imagen no es correcto';
    }
}
if(isset($_GET['anStock'])){
    var_dump($_POST);
    if(isset($_POST['anStock'])){
        if($_POST['stock']!=''&&$_POST['stock']>0){
            $db=Conectar::conexion();
            if($db){
                $q='UPDATE articulos SET cantidad= cantidad+'.$_POST['stock'].' WHERE id='.$_GET['anStock'];
                $result=$db->query($q);
                header('Location: index.php');
            }else{
                echo 'No se ha podido conectar a la base de datos';
            }
        }
    }
}
require_once('views/crearArtiView.phtml');
?>
