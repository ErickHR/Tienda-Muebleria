/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo.bean;

import java.util.ArrayList;

/**
 *
 * @author Rivas
 */
public class Pedido {
    
    private int IdCliente;
    private int IdProducto;
    private int cantidad = 0;

    public int getIdCliente() {
        return IdCliente;
    }

    public void setIdCliente(int IdCliente) {
        this.IdCliente = IdCliente;
    }

    public int getIdProducto() {
        return IdProducto;
    }

    public void setIdProducto(int IdProducto) {
        this.IdProducto = IdProducto;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }
    public boolean esta(ArrayList<Pedido> lista, Pedido produc){
        for(Pedido x : lista){
            if(x.getIdProducto() == produc.getIdProducto()){
                return true;
            }
        }
        return false;
    }
}
