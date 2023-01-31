<?php
    class ArtRepository{
        public static function getArts($id){
            $db= Conectar::conexion();
            if($id==0){
                $datos['id']=0;
                $datos['usuario']="";
                $datos['nombre']="";
                $datos['rol']=0;
                $user= new User($datos);
            }else{
                $user=UserRepository::getUsuario($id);
            }
            $start= $db->real_escape_string($_POST['start']);
            $sql= $db->query("SELECT * FROM articulos LIMIT $start, 4");
            if($sql->num_rows >0){
                $response="";
                while($data=$sql->fetch_array()){
                        $response .='
                        <article>
                        <div class="img">
                            <img src="views/img/'.$data['imagen'].'">
                        </div>
                        <div class="texto">
                            <div class="arriba">
                                <h2>'.$data['nombre'].'</h2>
                                <p>'.$data['descripcion'].'</p>                            
                            </div>
                            <div class="abajo">
                                <p>'.$data['precio'].'€  &nbsp &nbsp;';
                                if($data['cantidad']!=0){
                                    if($user->getId()!=0){
                                        $response .='<a href="index.php?verCarrito&anadir='.$data['id'].'">Añadir al carrito</a></p>
                                                    </div>';
                                    }
                                }else{
                                    $response .='Sin stock</p>
                                    </div> ';
                                }
                            
                        
                        if($user->getRol()==1){
                            $response.='</div><form action="index.php?crearArti&anStock='.$data['id'].'" method="POST">
                                            <label>Añadir Stock</label>
                                            <input type="number" name="stock">
                                            <input type="submit" name="anStock">
                                        </form>';
                                        
                        }
                        $response .='</article>';
                }
                exit($response);
            }else{
                exit('reachedMax');
            }
        }
        public static function getArtsCarrito($ped){
            $db= Conectar::conexion();
    
            $start= $db->real_escape_string($_POST['start']);
            if(!null==$ped){
                $sql= $db->query("SELECT * FROM contiene WHERE idped=$ped LIMIT $start, 4");
                if($sql->num_rows >0){
                    $response="";
        
                    while($data=$sql->fetch_array()){
                        $q='SELECT * FROM articulos where id='.$data['idprod'];
                        $result=$db->query($q);
                        $salida= $result->fetch_assoc();
                        $response .='
                        <article>
                            <div class="img">
                            <img src="views/img/'.$salida['imagen'].'">
                            </div>
                            <div class="texto">
                                <h2>'.$salida['nombre'].'</h2>
                                <p>Precio total:'.$salida['precio']*$data['cant'].'€    </p>
                                <p>Cantidad: '.$data['cant'].'</p>
                            </div>
                            ';
                        $response.= '<div class="aparte">';
                        if($data['cant']>=2){
                            $response.='
                            <a href="index.php?verCarrito&elimUno='.$data['idprod'].'">Eliminar uno</a> 
                            <a href="index.php?verCarrito&elimTod='.$data['idprod'].'">Eliminar todos</a>';
                        }else{
                            $response.='
                            <a href="index.php?verCarrito&elimTod='.$data['idprod'].'">Eliminar</a>';
                        }
                        $response .='</div></article>';
                    }
                    exit($response);
                }else{
                    exit('reachedMax');
                }
            }
        }
        public static function getArticulo($id){
            $db= Conectar::conexion();
            if($db){
                $q='SELECT * FROM articulos WHERE id='.$id;
                $result=$db->query($q);
                $datos=$result->fetch_assoc();
                $salida=new Articulo($datos);
            }else{
                echo 'No se ha podido conectar a la base de datos';
            }
            return $salida;
        }
        public static function getCantidadPedido($idped,$idprod){
            $db= Conectar::conexion();
            if($db){
                $q="SELECT cant FROM contiene where idped=$idped && idprod=$idprod";
                $result=$db->query($q);
                $datos=$result->fetch_assoc();
                if(!null==$datos){
                    $salida= $datos['cant'];
                }else{
                    $salida=null;
                }
            }else{
                echo 'No se ha podido conectar a la base de datos';
            }
            return $salida;
        }
        
    }
?>