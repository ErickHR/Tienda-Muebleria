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
import modelo.bean.Producto;

/**
 *
 * @author PARIS
 */
public class ProductoDAO {
    
    public static ArrayList<Producto> listar() {

        ArrayList<Producto> lista = new ArrayList<Producto>();
        Producto prod = null;

        Connection cn = Conexion.abrir();
        String sql = "select * from producto";
        try {
            PreparedStatement ps = cn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while ( rs.next() ) {
                prod = new Producto();
                prod.setIdproducto(rs.getInt("idproducto"));
                prod.setNombre(rs.getString("nombre"));
                prod.setDescripcion(rs.getString("descripcion"));
                prod.setColor(rs.getString("color"));
                prod.setDimensiones(rs.getString("dimensiones"));
                prod.setImg(rs.getString("img"));
                prod.setPrecioCompra(rs.getDouble("PrecioCompra"));
                                
                lista.add(prod);
            }
            rs.close();
            ps.close();
            cn.close();
            return lista;

        } catch (SQLException ex) {
            System.out.println("Error de listar del ProductoDao Listar");
            return null;
        }

    }
    
    public static ArrayList<Producto> listarxIdCatGen(int idCatGen) {

        ArrayList<Producto> lista = new ArrayList<Producto>();
        Producto prod = null;

        Connection cn = Conexion.abrir();
        String sql = "select * from producto where idcategoriageneral = ?";
        try {
            PreparedStatement ps = cn.prepareStatement(sql);
            ps.setInt(1, idCatGen);
            ResultSet rs = ps.executeQuery();
            while ( rs.next() ) {
                prod = new Producto();
                prod.setIdproducto(rs.getInt("idproducto"));
                prod.setNombre(rs.getString("nombre"));
                prod.setDescripcion(rs.getString("descripcion"));
                prod.setColor(rs.getString("color"));
                prod.setDimensiones(rs.getString("dimensiones"));
                prod.setImg(rs.getString("img"));
                prod.setPrecioCompra(rs.getDouble("PrecioCompra"));
                                
                lista.add(prod);
            }
            rs.close();
            ps.close();
            cn.close();
            return lista;

        } catch (SQLException ex) {
            System.out.println("Error de listar del ProductoDao listarxIdCatGen");
            return null;
        }

    }
    
    public static Producto Id(int id) {

        Producto prod = null;

        Connection cn = Conexion.abrir();
        String sql = "select * from producto where idproducto = ?";
        try {
            PreparedStatement ps = cn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while ( rs.next() ) {
                prod = new Producto();
                prod.setIdproducto(rs.getInt("idproducto"));
                prod.setNombre(rs.getString("nombre"));
                prod.setDescripcion(rs.getString("descripcion"));
                prod.setColor(rs.getString("color"));
                prod.setDimensiones(rs.getString("dimensiones"));
                prod.setImg(rs.getString("img"));
                prod.setPrecioCompra(rs.getDouble("PrecioCompra"));
                                
            }
            rs.close();
            ps.close();
            cn.close();
            return prod;

        } catch (SQLException ex) {
            System.out.println("Error de listar del ProductoDao listarxIdCatGen");
            return null;
        }

    }
    
    public static ArrayList<Producto> buscarNombre(String nombre) {

        ArrayList<Producto> lista = new ArrayList<>();
        Producto prod = null;

        Connection cn = Conexion.abrir();
        String sql = "select * from producto where nombre like ?";
        try {
            PreparedStatement ps = cn.prepareStatement(sql);
            ps.setString(1, "%" + nombre + "%");
            ResultSet rs = ps.executeQuery();
            while ( rs.next() ) {
                prod = new Producto();
                prod.setIdproducto(rs.getInt("idproducto"));
                prod.setNombre(rs.getString("nombre"));
                prod.setDescripcion(rs.getString("descripcion"));
                prod.setColor(rs.getString("color"));
                prod.setDimensiones(rs.getString("dimensiones"));
                prod.setImg(rs.getString("img"));
                prod.setPrecioCompra(rs.getDouble("PrecioCompra"));
                 lista.add(prod);
            }
            rs.close();
            ps.close();
            cn.close();
            return lista;

        } catch (SQLException ex) {
            System.out.println("Error de listar del ProductoDao listarxIdCatGen");
            return null;
        }

    }
    
    public static ArrayList<Producto> listarxIdSubCatProd(int idsubCatProd) {

        ArrayList<Producto> lista = new ArrayList<Producto>();
        Producto prod = null;

        Connection cn = Conexion.abrir();
        String sql = "select * from producto where idsubcategoriaproducto = ?";
        try {
            PreparedStatement ps = cn.prepareStatement(sql);
            ps.setInt(1, idsubCatProd);
            ResultSet rs = ps.executeQuery();
            while ( rs.next() ) {
                prod = new Producto();
                prod.setIdproducto(rs.getInt("idproducto"));
                prod.setNombre(rs.getString("nombre"));
                prod.setDescripcion(rs.getString("descripcion"));
                prod.setColor(rs.getString("color"));
                prod.setDimensiones(rs.getString("dimensiones"));
                prod.setImg(rs.getString("img"));
                prod.setPrecioCompra(rs.getDouble("PrecioCompra"));
                                
                lista.add(prod);
            }
            rs.close();
            ps.close();
            cn.close();
            return lista;

        } catch (SQLException ex) {
            System.out.println("Error de listar del ProductoDao listarxIdCatGen");
            return null;
        }

    }
    
    
}
