<?php
    class UserRepository{
        public static function getUsuario($id){
            $db= Conectar::conexion();
            if($db){
                $q='SELECT * FROM usuarios WHERE id='.$id;
                $result=$db->query($q);
                $salida=new User($result->fetch_assoc());
            }else{
                echo 'No se ha podido conectar a la base de datos';
            }
            return $salida;
        }
        public static function getPedido($id){
            $db= Conectar::conexion();
            if($db){
                $q="SELECT id FROM pedidos where idus=$id && confirmed=0";
                $result=$db->query($q);
                $datos=$result->fetch_assoc();
                if(!null==$datos){
                    $salida= $datos['id'];
                }else{
                    $salida=null;
                }
            }else{
                echo 'No se ha podido conectar a la base de datos';
            }
            return $salida;
        }
        public static function getPedidos($idus){
            $db= Conectar::conexion();
            
            $start= $db->real_escape_string($_POST['start']);
            $sql= $db->query("SELECT * FROM pedidos where idus=$idus && confirmed=1 LIMIT $start, 4");
            if($sql->num_rows >0){
                $response="";
                $cont=0;
                while($data=$sql->fetch_array()){
                    $response.="<section>
                                <h1>Pedido ".++$cont."</h1>";
                    $q2="SELECT * FROM contiene where idped=".$data['id'];
                    $result=$db->query($q2);
                        while($data2=$result->fetch_assoc()){
                            $q3="SELECT * FROM articulos where id=".$data2['idprod'];
                            $result2=$db->query($q3);
                            while($data3=$result2->fetch_assoc()){
                                $response .='
                                <section>
                                    <article>
                                        <div class="img">
                                        <img src="views/img/'.$data3['imagen'].'">
                                        </div>
                                        <div class="texto">
                                            <h2>'.$data3['nombre'].'</h2>
                                            <p>Cantidad '.$data2['cant'].'</p>
                                        </div>
                                    </article>
                                </section>';
                            }
                            }
                    $response.="</section>";
                }
                exit($response);
            }else{
                exit('reachedMax');
            }
        }
        public static function getPrecio($id){
            $db= Conectar::conexion();
            if($db){
                $q="SELECT precio FROM pedidos where idus=$id && confirmed=0";
                $result=$db->query($q);
                $datos=$result->fetch_assoc();
                if(!null==$datos){
                    $salida= $datos['precio'];
                }else{
                    $salida=null;
                }
            }else{
                echo 'No se ha podido conectar a la base de datos';
            }
            return $salida;
        }
        public static function getNumArtsPed($id){
            $db= Conectar::conexion();
            if($db){
                if(!null==UserRepository::getPedido($id)){
                    $q="SELECT SUM(cant) as pedido FROM contiene where idped=".UserRepository::getPedido($id);
                    $result=$db->query($q);
                    $datos=$result->fetch_assoc();
                    if(!null==$datos){
                        $salida= $datos['pedido'];
                    }else{
                        $salida=0;
                    }
                }else{
                    $salida=0;
                }
            }else{
                echo 'No se ha podido conectar a la base de datos';
            }
            return $salida;
        }
        public static function getUsuarios(){
            $db= Conectar::conexion();
            
            $start= $db->real_escape_string($_POST['start']);
            $sql= $db->query("SELECT * FROM usuarios LIMIT $start, 4");
            if($sql->num_rows >0){
                $response="";
                while($data=$sql->fetch_array()){
                        if($data['activo']){
                            $response .='
                                <article>
                                    <div class="nus">
                                        <h1>'.$data['usuario'].'</h1>
                                        <p>'.$data['nombre'].' '.$data['apellido'].'</p>
                                    </div>
                                    <div class="rest">';
                                    if($data['rol']==1){
                                        $response .='<a href="index.php?modUsers&modUs='.$data['id'].'">Hacer usuario normal</a>';
                                    }else{
                                        $response .='<a href="index.php?modUsers&modUs='.$data['id'].'">Hacer administrador</a>';
                                    }
                                    $response .=' <a href="index.php?modUsers&elimUs='.$data['id'].'">Eliminar</a>
                                    </div>
                                </article>';
                        }
                }
                exit($response);
            }else{
                exit('reachedMax');
            }
        }
    }
