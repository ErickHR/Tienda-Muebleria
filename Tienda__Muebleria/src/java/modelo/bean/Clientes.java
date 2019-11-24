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
public class Clientes {

    private int idcliente;
    private String Nombre;
    private String Ap_paterno;
    private String Ap_materno;
    private int Dni;
    private String Email;
    private String Direccion;
    private int Celular;

    public int getIdcliente() {
        return idcliente;
    }

    public void setIdcliente(int idcliente) {
        this.idcliente = idcliente;
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

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getDireccion() {
        return Direccion;
    }

    public void setDireccion(String Direccion) {
        this.Direccion = Direccion;
    }

    public int getCelular() {
        return Celular;
    }

    public void setCelular(int Celular) {
        this.Celular = Celular;
    }

}
