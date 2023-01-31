<?php

class Articulo{
    private $id;
    private $nombre;
    private $descripcion;
    private $imagen;
    private $precio;
    private $cantidad;

    public function __construct($datos){
        $this->id=$datos['id'];
        $this->nombre=$datos['nombre'];
        $this->descripcion=$datos['descripcion'];
        $this->imagen=$datos['imagen'];
        $this->precio=$datos['precio'];
        $this->cantidad=$datos['cantidad'];
    }
    

    /**
     * Get the value of id
     */ 
    public function getId()
    {
        return $this->id;
    }

    /**
     * Get the value of nombre
     */ 
    public function getNombre()
    {
        return $this->nombre;
    }

    /**
     * Get the value of descripcion
     */ 
    public function getDescripcion()
    {
        return $this->descripcion;
    }

    /**
     * Get the value of imagen
     */ 
    public function getImagen()
    {
        return $this->imagen;
    }

    /**
     * Get the value of precio
     */ 
    public function getPrecio()
    {
        return $this->precio;
    }

    /**
     * Get the value of cantidad
     */ 
    public function getCantidad()
    {
        return $this->cantidad;
    }
}
?>