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
import modelo.bean.CategoriaGeneral;

/**
 *
 * @author PARIS
 */
public class CategoriaGeneralDAO {
 
    public static ArrayList<CategoriaGeneral> listar() {

        ArrayList<CategoriaGeneral> lista = new ArrayList<CategoriaGeneral>();
        CategoriaGeneral catgen = null;

        Connection cn = Conexion.abrir();
        String sql = "select * from categoriageneral";
        try {
            PreparedStatement ps = cn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while ( rs.next() ) {
                catgen = new CategoriaGeneral();
                catgen.setIdcategoriageneral(rs.getInt("idcategoriageneral"));
                catgen.setNombre(rs.getString("nombre"));
                lista.add(catgen);
            }
            rs.close();
            ps.close();
            cn.close();
            System.out.println("lista enviado");
            return lista;

        } catch (SQLException ex) {
            System.out.println("Error de listar del categoriaGeneralDao");
            return null;
        }

    }
    
    
}
