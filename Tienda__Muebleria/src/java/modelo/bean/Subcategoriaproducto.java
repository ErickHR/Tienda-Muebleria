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
public class Subcategoriaproducto {

    private int Idsubcategoriaproducto;
    private String Nombre;
    private int Idcategoriaproducto;

    public int getIdsubcategoriaproducto() {
        return Idsubcategoriaproducto;
    }

    public void setIdsubcategoriaproducto(int Idsubcategoriaproducto) {
        this.Idsubcategoriaproducto = Idsubcategoriaproducto;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public int getIdcategoriaproducto() {
        return Idcategoriaproducto;
    }

    public void setIdcategoriaproducto(int Idcategoriaproducto) {
        this.Idcategoriaproducto = Idcategoriaproducto;
    }

}
