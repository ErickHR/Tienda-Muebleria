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
public class DetalleVenta {

    private int Iddetalleventa;
    private int Cantidad;
    private double Descuento;
    private double PrecioUnitario;
    private double importe;
    private int Idventa;
    private int Idproducto;

    public int getIddetalleventa() {
        return Iddetalleventa;
    }

    public void setIddetalleventa(int Iddetalleventa) {
        this.Iddetalleventa = Iddetalleventa;
    }

    public int getCantidad() {
        return Cantidad;
    }

    public void setCantidad(int Cantidad) {
        this.Cantidad = Cantidad;
    }

    public double getDescuento() {
        return Descuento;
    }

    public void setDescuento(double Descuento) {
        this.Descuento = Descuento;
    }

    public double getPrecioUnitario() {
        return PrecioUnitario;
    }

    public void setPrecioUnitario(double PrecioUnitario) {
        this.PrecioUnitario = PrecioUnitario;
    }

    public double getImporte() {
        return importe;
    }

    public void setImporte(double importe) {
        this.importe = importe;
    }

    public int getIdventa() {
        return Idventa;
    }

    public void setIdventa(int Idventa) {
        this.Idventa = Idventa;
    }

    public int getIdproducto() {
        return Idproducto;
    }

    public void setIdproducto(int Idproducto) {
        this.Idproducto = Idproducto;
    }

}
