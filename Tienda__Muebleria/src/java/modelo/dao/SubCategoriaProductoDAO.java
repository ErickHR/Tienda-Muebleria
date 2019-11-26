/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo.dao;

import coneccion.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import modelo.bean.Subcategoriaproducto;

/**
 *
 * @author PARIS
 */
public class SubCategoriaProductoDAO {
    
    public static ArrayList<Subcategoriaproducto> listar() {

        ArrayList<Subcategoriaproducto> lista = new ArrayList<Subcategoriaproducto>();
        Subcategoriaproducto prod = null;

        Connection cn = Conexion.abrir();
        String sql = "select * from Subcategoriaproducto";
        try {
            PreparedStatement ps = cn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while ( rs.next() ) {
                prod = new Subcategoriaproducto();
                prod.setIdsubcategoriaproducto(rs.getInt("idSubcategoriaproducto"));
                prod.setNombre(rs.getString("nombre"));
                prod.setIdcategoriaproducto(rs.getInt("idcategoriaproducto"));
                
                lista.add(prod);
            }
            rs.close();
            ps.close();
            cn.close();
            return lista;

        } catch (SQLException ex) {
            System.out.println("Error de listar del subcategoriaDao Listar");
            return null;
        }

    }
    
    public static ArrayList<Subcategoriaproducto> listarxCatProd(int idCatProd) {

        ArrayList<Subcategoriaproducto> lista = new ArrayList<Subcategoriaproducto>();
        Subcategoriaproducto prod = null;

        Connection cn = Conexion.abrir();
        String sql = "select * from subcategoriaproducto where idcategoriaproducto = ?";
        try {
            PreparedStatement ps = cn.prepareStatement(sql);
            ps.setInt(1, idCatProd);
            ResultSet rs = ps.executeQuery();
            while ( rs.next() ) {
                prod = new Subcategoriaproducto();
                prod.setIdsubcategoriaproducto(rs.getInt("idSubcategoriaproducto"));
                prod.setNombre(rs.getString("nombre"));
                prod.setIdcategoriaproducto(rs.getInt("idcategoriaproducto"));
                lista.add(prod);
            }
            rs.close();
            ps.close();
            cn.close();
            return lista;

        } catch (SQLException ex) {
            System.out.println("Error de listar del subcategoriaDao Listar");
            return null;
        }

    }
    
    
}
