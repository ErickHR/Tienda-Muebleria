/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package coneccion;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Anthony
 */
public class Conexion {
    
    private static String url="jdbc:mysql://localhost/prueba";
    private static String usuario="root";
    private static String password="";
    private static Connection cn;
    
    public static Connection abrir(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection(url,usuario, password);
            return cn;
        } catch (Exception ex) {
            System.out.println("error de la conexion");
            return null;
        }
        
    }
    
}
