package com.mycompany.ninjasu2.modelo.clases;

public class Mision {
    private int id;
    private String descripcion; 
    private double recompensa; 
    private Rango rango; 

    public Mision(int id, String descripcion, double recompensa, Rango rango) {
        this.id = id;
        this.descripcion = descripcion;
        this.recompensa = recompensa;
        this.rango = rango;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public double getRecompensa() {
        return recompensa;
    }

    public void setRecompensa(double recompensa) {
        this.recompensa = recompensa;
    }

    public Rango getRango() {
        return rango;
    }

    public void setRango(Rango rango) {
        this.rango = rango;
    }
    
    
}
