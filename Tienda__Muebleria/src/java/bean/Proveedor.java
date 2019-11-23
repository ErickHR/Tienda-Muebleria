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
public class Proveedor {
    
    private int Idproveedor;
    private String Nombre;
    private int Celular;
    private String Email;
    private String Direccion;
    private int Ruc;
    private int Iddueño;

    public int getIdproveedor() {
        return Idproveedor;
    }

    public void setIdproveedor(int Idproveedor) {
        this.Idproveedor = Idproveedor;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public int getCelular() {
        return Celular;
    }

    public void setCelular(int Celular) {
        this.Celular = Celular;
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

    public int getRuc() {
        return Ruc;
    }

    public void setRuc(int Ruc) {
        this.Ruc = Ruc;
    }

    public int getIddueño() {
        return Iddueño;
    }

    public void setIddueño(int Iddueño) {
        this.Iddueño = Iddueño;
    }
    
    
    
}
