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
    public static Usuario validarUsuario(String usr, String psw) {
        //varioable tipo usuario
        Usuario u = null;
        //sql para buscar usuario enla base de datos
        String sql = "select*from usuario where Usuario=? and Contraseña=?";
        //conexion a cnla base de datos
        Connection cn = Conexion.abrir();
        try {
            //objeto para ejecutar sql
            PreparedStatement pst = cn.prepareStatement(sql);

            //asignar valor a los parametros  ?,?
            pst.setString(1, usr);
            pst.setString(2, psw);
            //ejecutar
            ResultSet rs = pst.executeQuery();
          
            //leer rs
            
            if (rs.next()) {
                //instancia de usuario
                u = new Usuario();
                //aignar valor a sus propiedades del objeto:
                //encapsulamiento de datos
                u.setIdusuario(rs.getInt("Idusuario"));
                u.setUsuario(rs.getString("Usuario"));
                u.setContraseña(rs.getString("Contraseña"));
                u.setIdcliente(rs.getInt("Idcliente"));
                                                        
            } 
            //cerrar objetos
            cn.close();
            pst.close();
            rs.close();
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex); 
        } 
        return u;
    }
     
     public static void agregar(Usuario us){
        
        String sql = "insert into usuario"+"(Usuario,Contraseña,Idcliente)values(?,?,?)";
        Connection cn = Conexion.abrir();
        try{
            PreparedStatement pst = cn.prepareStatement(sql);
            //asignar valores a los parámetros de formempleado.jsp
            pst.setString(1, us.getUsuario());
            pst.setString(2, us.getContraseña());
            pst.setInt(3, us.getIdcliente());
            
            pst.executeUpdate();
            
            cn.close();
            pst.close();
        }catch(Exception e){
            
        }
    }
    
}
