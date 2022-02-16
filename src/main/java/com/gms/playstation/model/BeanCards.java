package com.gms.playstation.model;

import java.io.InputStream;

public class BeanCards {
    private int id_videojuego;
    private String nombre;
    private String descripcion;
    private String precio;
    private String estado;
    private InputStream imagen;

    public BeanCards(int id_videojuego, String nombre, String descripcion, String precio, String estado, InputStream imagen) {
        this.id_videojuego = id_videojuego;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.precio = precio;
        this.estado = estado;
        this.imagen = imagen;
    }

    public BeanCards() {

    }

    public int getId_videojuego() {
        return id_videojuego;
    }

    public void setId_videojuego(int id_videojuego) {
        this.id_videojuego = id_videojuego;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getPrecio() {
        return precio;
    }

    public void setPrecio(String precio) {
        this.precio = precio;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public InputStream getImagen() {
        return imagen;
    }

    public void setImagen(InputStream imagen) {
        this.imagen = imagen;
    }
}
