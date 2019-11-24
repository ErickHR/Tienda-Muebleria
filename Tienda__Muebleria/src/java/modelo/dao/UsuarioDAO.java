/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo.dao;

import modelo.bean.Usuario;
import coneccion.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.jsp.jstl.sql.Result;

/**
 *
 * @author Anthony
 */
public class UsuarioDAO {

    public static ArrayList<Usuario> listar() {

        ArrayList<Usuario> lista = new ArrayList<Usuario>();
        Usuario us = null;

        Connection cn = Conexion.abrir();
        String sql = "select * from usuario";
        try {
            PreparedStatement ps = cn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                us = new Usuario();
                us.setIdusuario(rs.getInt("idusuario"));
                us.setUsuario(rs.getString("usuario"));
                us.setContraseña(rs.getString("contraseña"));
                us.setIdcliente(rs.getInt("idcliente"));
                lista.add(us);
            }
            rs.close();
            ps.close();
            cn.close();

            return lista;

        } catch (SQLException ex) {
            System.out.println("Error de listar del USUARIODAO");
            return null;
        }

    }
    
    public static void agregar(Usuario us){
        String sql="insert into usuario values(?,?,?)";
        
    }
}
