/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo.bean;

import java.sql.Date;

/**
 *
 * @author Anthony
 */
public class Venta {

    private int Idventa;
    private Date Fecha;
    private double Igv;
    private double PrecioTotalVenta;
    private int Idusuario;
    private int Idempleado;
    private int Idtipoventa;

    public int getIdventa() {
        return Idventa;
    }

    public void setIdventa(int Idventa) {
        this.Idventa = Idventa;
    }

    public Date getFecha() {
        return Fecha;
    }

    public void setFecha(Date Fecha) {
        this.Fecha = Fecha;
    }

    public double getIgv() {
        return Igv;
    }

    public void setIgv(double Igv) {
        this.Igv = Igv;
    }

    public double getPrecioTotalVenta() {
        return PrecioTotalVenta;
    }

    public void setPrecioTotalVenta(double PrecioTotalVenta) {
        this.PrecioTotalVenta = PrecioTotalVenta;
    }

    public int getIdusuario() {
        return Idusuario;
    }

    public void setIdusuario(int Idusuario) {
        this.Idusuario = Idusuario;
    }

    public int getIdempleado() {
        return Idempleado;
    }

    public void setIdempleado(int Idempleado) {
        this.Idempleado = Idempleado;
    }

    public int getIdtipoventa() {
        return Idtipoventa;
    }

    public void setIdtipoventa(int Idtipoventa) {
        this.Idtipoventa = Idtipoventa;
    }

}
