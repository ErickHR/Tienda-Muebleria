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
public class Producto {

    private int Idproducto;
    private String Nombre;
    private String Descripcion;
    private Date Fechadeentrega;
    private int stock;
    private double PrecioCompra;
    private String Color;
    private String Dimensiones;
    private int Idcategoriageneral;
    private int Idsubcategoriaproducto;
    private int Idproveedor;
    private int Codigo;
    private String img;

    public int getIdproducto() {
        return Idproducto;
    }

    public void setIdproducto(int Idproducto) {
        this.Idproducto = Idproducto;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getDescripcion() {
        return Descripcion;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }

    public Date getFechadeentrega() {
        return Fechadeentrega;
    }

    public void setFechadeentrega(Date Fechadeentrega) {
        this.Fechadeentrega = Fechadeentrega;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public double getPrecioCompra() {
        return PrecioCompra;
    }

    public void setPrecioCompra(double PrecioCompra) {
        this.PrecioCompra = PrecioCompra;
    }

    public String getColor() {
        return Color;
    }

    public void setColor(String Color) {
        this.Color = Color;
    }

    public String getDimensiones() {
        return Dimensiones;
    }

    public void setDimensiones(String Dimensiones) {
        this.Dimensiones = Dimensiones;
    }

    public int getIdcategoriageneral() {
        return Idcategoriageneral;
    }

    public void setIdcategoriageneral(int Idcategoriageneral) {
        this.Idcategoriageneral = Idcategoriageneral;
    }

    public int getIdsubcategoriaproducto() {
        return Idsubcategoriaproducto;
    }

    public void setIdsubcategoriaproducto(int Idsubcategoriaproducto) {
        this.Idsubcategoriaproducto = Idsubcategoriaproducto;
    }

    public int getIdproveedor() {
        return Idproveedor;
    }

    public void setIdproveedor(int Idproveedor) {
        this.Idproveedor = Idproveedor;
    }

    public int getCodigo() {
        return Codigo;
    }

    public void setCodigo(int Codigo) {
        this.Codigo = Codigo;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }
    
}
