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
public class DetalleVenta {
    private int detalleventa;
    private int cantidad;
    private double preciototal;
    private int ideventas;
    private int idproducto;

    public int getDetalleventa() {
        return detalleventa;
    }

    public void setDetalleventa(int detalleventa) {
        this.detalleventa = detalleventa;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public double getPreciototal() {
        return preciototal;
    }

    public void setPreciototal(double preciototal) {
        this.preciototal = preciototal;
    }

    public int getIdeventas() {
        return ideventas;
    }

    public void setIdeventas(int ideventas) {
        this.ideventas = ideventas;
    }

    public int getIdproducto() {
        return idproducto;
    }

    public void setIdproducto(int idproducto) {
        this.idproducto = idproducto;
    }
    
    
}
