<?php

class User{
    private $id;
    private $name;
    private $username;
    private $rol;
    private $pedido;

    public function __construct($datos){
        $this->id=$datos['id'];
        $this->username=$datos['usuario'];
        $this->name=$datos['nombre'];
        $this->rol=$datos['rol'];
    }
    public function getId(){
        return $this->id;
    }
    public function getName(){
        return $this->name;
    }
    public function getUsername(){
        return $this->username;
    }

    /**
     * Get the value of rol
     */ 
    public function getRol()
    {
        return $this->rol;
    }

}
?>