/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

/**
 *
 * @author Anthony
 */
public class Cargo {

    private int Idcargo;
    private String Nombre;
    private double Sueldo;

    public int getIdcargo() {
        return Idcargo;
    }

    public void setIdcargo(int Idcargo) {
        this.Idcargo = Idcargo;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public double getSueldo() {
        return Sueldo;
    }

    public void setSueldo(double Sueldo) {
        this.Sueldo = Sueldo;
    }

}
