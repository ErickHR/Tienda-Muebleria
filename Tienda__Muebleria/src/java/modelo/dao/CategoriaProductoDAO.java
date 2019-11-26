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
import modelo.bean.CategoriaProducto;

/**
 *
 * @author PARIS
 */
public class CategoriaProductoDAO {
    
    public static ArrayList<CategoriaProducto> listar() {

        ArrayList<CategoriaProducto> lista = new ArrayList<CategoriaProducto>();
        CategoriaProducto catprod = null;

        Connection cn = Conexion.abrir();
        String sql = "select * from categoriaproducto";
        try {
            PreparedStatement ps = cn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while ( rs.next() ) {
                catprod = new CategoriaProducto();
                catprod.setIdcategoriaproducto(rs.getInt("idcategoriaproducto"));
                catprod.setNombre(rs.getString("nombre"));
                lista.add(catprod);
            }
            rs.close();
            ps.close();
            cn.close();
            return lista;

        } catch (SQLException ex) {
            System.out.println("Error de listar del categoriaGeneralDao");
            return null;
        }

    }
    
    
}
