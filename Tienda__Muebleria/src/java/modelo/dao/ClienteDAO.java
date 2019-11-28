
package modelo.dao;

import coneccion.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import modelo.bean.Clientes;

public class ClienteDAO {
    
    public static Clientes buscarID(int cod) {
        Clientes c = null;
        String sql = "select * from cliente where Idcliente=?";
        Connection cn = Conexion.abrir();
        try {
            PreparedStatement pst = cn.prepareStatement(sql);
            pst.setInt(1, cod);
            ResultSet rs = pst.executeQuery();
            if (rs.next()) {
                c = new Clientes();
                c.setIdcliente(rs.getInt("Idcliente"));
                c.setNombre(rs.getString("Nombre"));
                c.setAp_paterno(rs.getString("Ap_paterno"));
                c.setAp_materno(rs.getString("Ap_materno"));
                c.setDni(rs.getInt("DNI"));
                c.setEmail(rs.getString("Email"));
                c.setDireccion(rs.getString("Direccion"));
                c.setCelular(rs.getInt("Celular"));
            }
            pst.close();
            rs.close();
            cn.close();
            return c;
        } catch (SQLException ex) {
            System.out.println("no encontre usuarioo :::::::::::::: " + ex);
            return null;
        }
    }
    public static void agregar(Clientes cl){
        //int cod=0;
        String sql = "insert into cliente"+"(Nombre,Ap_paterno,Ap_materno,Dni,Email,Direccion,Celular)values(?,?,?,?,?,?,?)";
        Connection cn = Conexion.abrir();
        try{
            PreparedStatement pst = cn.prepareStatement(sql);
            //asignar valores a los parámetros de formempleado.jsp
            pst.setString(1, cl.getNombre());
            pst.setString(2, cl.getAp_paterno());
            pst.setString(3, cl.getAp_materno());
            pst.setInt(4, cl.getDni());
            pst.setString(5, cl.getEmail());
            pst.setString(6, cl.getDireccion());
            pst.setInt(7, cl.getCelular());
            
            pst.executeUpdate();
            //cod=cl.getIdcliente();
            //System.out.println("::::::::."+cod);
            cn.close();
            pst.close();
        }catch(Exception e){
            
        }
        //return cod;
    }
    
    public static int codCliente(){
        int cod=0;
        boolean pr=true;
        String sql = "select *from cliente";
        Connection cn = Conexion.abrir();
        try {
            PreparedStatement pst = cn.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
               
            while (rs.next()) {
                if (true==rs.next()) {
                    cod=cod+1;
                    System.out.println("::::"+cod);
                    
                }else{
                    return cod;
                }
            }
              
            pst.close();
            rs.close();
            cn.close();
            return 0;
        } catch (SQLException ex) {
            return 0;
        }
        
    }
}
