/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package coneccion;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Anthony
 */
public class Conexion {
    
    private static String url="jdbc:mysql://localhost/TiendaMuebleria";
    private static String usuario="root";
    private static String password="";
    private static Connection cn;
    
    private static Connection abrir(){
        try {
            Class.forName(password);
            cn=DriverManager.getConnection(url,usuario, password);
            return cn;
        } catch (Exception ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
        
    }
    
    
}
