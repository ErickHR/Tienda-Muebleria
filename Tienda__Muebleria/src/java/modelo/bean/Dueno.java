/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo.bean;

/**
 *
 * @author Anthony
 */
public class Dueno {

    private int Iddueño;
    private String Nombre;
    private String Ap_paterno;
    private String Ap_materno;
    private int Dni;

    public int getIddueño() {
        return Iddueño;
    }

    public void setIddueño(int Iddueño) {
        this.Iddueño = Iddueño;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getAp_paterno() {
        return Ap_paterno;
    }

    public void setAp_paterno(String Ap_paterno) {
        this.Ap_paterno = Ap_paterno;
    }

    public String getAp_materno() {
        return Ap_materno;
    }

    public void setAp_materno(String Ap_materno) {
        this.Ap_materno = Ap_materno;
    }

    public int getDni() {
        return Dni;
    }

    public void setDni(int Dni) {
        this.Dni = Dni;
    }

}
