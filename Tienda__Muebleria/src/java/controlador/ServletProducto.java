/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.bean.Producto;
import modelo.dao.ProductoDAO;

/**
 *
 * @author PARIS
 */
@WebServlet(name = "ServletProducto", urlPatterns = {"/ServletProducto", "/ProducListar"})
public class ServletProducto extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String path = request.getServletPath();
        PrintWriter out = response.getWriter();

        if (path.equals("/ProducListar")) {

            ArrayList<Producto> lista = ProductoDAO.listar();
            for (Producto x : lista) {
                out.println("<div class=\"col-md-4\" >"
                        + "<div class=\"work-box\">"
                        + "<div class=\"work-img\">"
                        + "<a href=\"img/" + x.getImg() + "\" data-lightbox=\"gallery-mf\">"
                        + "<img src=\"img/" + x.getImg() + "\" alt=\"\" class=\"img-fluid\">"
                        + "</a>"
                        + "</div>"
                        + "<div class=\"work-content\">"
                        + "<div class=\"row\">"
                        + "<div class=\"col-sm-8\">"
                        + "<h2 class=\"w-title\" id=\"" + x.getIdproducto() + "\">" + x.getNombre() + "</h2>"
                        + "<div >"
                        + "<span>" + x.getDimensiones() + " </span>"
                        + "<span>" + x.getDescripcion() + "</span>"
                        + "</div>"
                        + "</div>"
                        + "</div>"
                        + "</div>"
                        + "<div class=\"text-center btnAgregar\">"
                        + "<button>Añadir</button>"
                        + "</div>"
                        + "</div>"
                        + "</div>");
                
                
                
                
            }

        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
