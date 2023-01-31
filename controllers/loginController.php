<?php
    
    if(isset($_GET['login'])){
        $formulario=true;
    }else{
        $formulario=false;
    }

    $error="";
    if(isset($_POST['register'])&&$_SESSION['user']->getId()==0){
        if(trim($_POST['nombre'])!="" && trim($_POST['apellido'])!="" && trim($_POST['correo'])!="" && trim($_POST['user'])!="" && trim($_POST['password'])!="" && trim($_POST['password2'])!=""){
            if($_POST['password']&&$_POST['password2']){
                $db= Conectar::conexion();
                if(!$db){
                    $error="No se ha podido conectar a la base de datos";
                }else{
                    $buscar="SELECT * FROM usuarios WHERE usuario='".$_POST['usuario']."'";
                    $result=$db->query($buscar);
                    if($result->fetch_assoc()){
                        $error='El usuario ya existe';
                    }else{
                        $q="INSERT INTO usuarios (nombre,apellido,usuario,mail,pass) VALUES ('".$_POST['nombre']."','".$_POST['apellido']."','".$_POST['user']."','".$_POST['correo']."','".md5($_POST['password'])."')";
                        $register=$db->query($q);
                        header('Location: index.php');
                    }
                }
            }
        }else{
            $error='Rellene todos los campos del formulario por favor';
        }
    }
    if(isset($_POST['logeo'])&&$_SESSION['user']->getId()==0){
        if($_POST['user']!="" && $_POST['password']!=""){
            $db= Conectar::conexion();
            if($db){
                $q="SELECT * FROM usuarios WHERE usuario='".$_POST['user']."' && activo=1";
                $result= $db->query($q);
                if($datos=$result->fetch_assoc()){
                    if($datos['pass']==md5($_POST['password'])){
                        unset($_SESSION['user']);
                        $_SESSION['user']=new User($datos);
                        $_SESSION['administrar']=0;
                        header('Location: index.php');
                        require_once('views/mainView.phtml');
                        return;
                    }else{
                        $error= 'La contraseña no es válida';
                    }
                }else{
                    $error= 'El usuario no existe';
                }
            }else{
                $error= 'No se ha podido conectar a la base de datos';
            }
        }else{
            $error= 'Por favor, indroduzca datos en el formulario de registro';
        }
    }
    if(isset($_GET['logout'])){
        unset($_SESSION['user']);
        unset($_SESSION['administrar']);
        $datos['id']=0;
        $datos['name']="";
        $datos['username']="";
        $_SESSION['user']= new User($datos);
        $_SESSION['administrar']=0;
        header('Location: index.php');
    }
    require_once('views/loginView.phtml');
?>