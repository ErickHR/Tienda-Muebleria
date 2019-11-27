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
import modelo.bean.Pedido;
import modelo.bean.Producto;
import modelo.dao.PedidoDAO;
import modelo.dao.ProductoDAO;

/**
 *
 * @author PARIS
 */
@WebServlet(name = "ServletProducto", urlPatterns = {"/ServletProducto", "/ProducListar", "/ProducListarxCatGen", "/prodAgregar", "/ProdlistarxBusqueda", "/ProdlistarxSubCatProdu", "/prodBorrar", "/producVer"})
public class ServletProducto extends HttpServlet {

    private static ArrayList<Producto> carrito = new ArrayList<>();
    private static ArrayList<Pedido> listapedido = new ArrayList<Pedido>();

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
                        + "<a href=\"ServletImg?id=" + x.getIdproducto() + "\" data-lightbox=\"gallery-mf\">"
                        + "<img src=\"ServletImg?id=" + x.getIdproducto() + "\" height=\"190px\" width=\"960px\" class=\"img-fluid imgcarrito\">"
                        + "</a>"
                        + "</div>"
                        + "<div class=\"work-content\">"
                        + "<div class=\"row\">"
                        + "<div class=\"col-sm-8\">"
                        + "<h2 class=\"w-title\" id=\"" + x.getIdproducto() + "\">" + x.getNombre() + "</h2>"
                        + "<div >"
                        + "<span>" + x.getDimensiones() + " </span><br/>"
                        + "<span>" + x.getDescripcion() + "</span><br/>"
                        + "<span>" + x.getPrecioCompra() + "</span><br/>"
                        + "</div>"
                        + "</div>"
                        + "</div>"
                        + "</div>"
                        + "<div class=\"text-center btnAgregar\">"
                        + "<button onclick=\"agregar(" + x.getIdproducto() + ")\"><i class=\"fa fa-shopping-cart\"></i> Agregar</button>"
                        + "</div>"
                        + "</div>"
                        + "</div>");

            }

        }
        if (path.equals("/ProducListarxCatGen")) {

            int idCatGen = Integer.parseInt(request.getParameter("idCatGen"));
            if (idCatGen == 0) {
                response.sendRedirect("ProducListar");
            } else {
                ArrayList<Producto> lista = ProductoDAO.listarxIdCatGen(idCatGen);
                for (Producto x : lista) {
                    out.println("<div class=\"col-md-4\" >"
                            + "<div class=\"work-box\">"
                            + "<div class=\"work-img\">"
                            + "<a href=\"ServletImg?id=" + x.getIdproducto() + "\" data-lightbox=\"gallery-mf\">"
                            + "<img src=\"ServletImg?id=" + x.getIdproducto() + "\" height=\"190px\" width=\"960px\" class=\"img-fluid imgcarrito\">"
                            + "</a>"
                            + "</div>"
                            + "<div class=\"work-content\">"
                            + "<div class=\"row\">"
                            + "<div class=\"col-sm-8\">"
                            + "<h2 class=\"w-title\" id=\"" + x.getIdproducto() + "\">" + x.getNombre() + "</h2>"
                            + "<div >"
                            + "<span>" + x.getDimensiones() + " </span><br/>"
                            + "<span>" + x.getDescripcion() + "</span><br/>"
                            + "<span>" + x.getPrecioCompra() + "</span><br/>"
                            + "</div>"
                            + "</div>"
                            + "</div>"
                            + "</div>"
                            + "<div class=\"text-center btnAgregar\">"
                            + "<button onclick=\"agregar(" + x.getIdproducto() + ")\"><i class=\"fa fa-shopping-cart\"></i> Agregar</button>"
                            + "</div>"
                            + "</div>"
                            + "</div>");

                }
            }
        }

        if (path.equals("/prodAgregar")) {
            int id = Integer.parseInt(request.getParameter("prod"));
            Producto prod = ProductoDAO.Id(id);
            Producto compr = new Producto();

            Pedido ped = new Pedido();
            int cantidad = 0;
            int i = 0;
            if (prod != null && !compr.esta(carrito, prod)) {
                carrito.add(prod);
                ped.setIdProducto(id);
                ped.setCantidad(1);
                cantidad = ped.getCantidad();
                listapedido.add(ped);
            } else if (prod != null && compr.esta(carrito, prod)) {

                for (Pedido p : listapedido) {
                    
                    if (p.getIdProducto() == prod.getIdproducto()) {
                        listapedido.get(i).setCantidad(p.getCantidad()+1);
                        System.out.println(p.getCantidad());
                        System.out.println(cantidad);
                        continue;
                    }
                    i++;
                }

            }
            i = 0;
            for (Producto x : carrito) {

                out.println("<li class=\"carritoprod\"><a href=# style=\"color: #24b67e\">" + x.getNombre() + "</a>"
                        + "<INPUT TYPE=\"NUMBER\" id=\"Cantidad\" MIN=\"0\" MAX=\"" + x.getStock() + "\" STEP=\"1\" VALUE=\"" + listapedido.get(i).getCantidad() + "\" SIZE=\"6\">"
                        + "<button class=\"btnborrar\" onclick=\"borrar(" + x.getIdproducto() + ")\"><img src=\"img/delete-red.png\" width=\"20px\" height=\"20px\"></button>"
                        + "</li>");
                i++;
            }
            cantidad = 0;
        }
        if (path.equals("/ProdlistarxBusqueda")) {

            String nombre = request.getParameter("nomProd");
            ArrayList<Producto> lista = ProductoDAO.buscarNombre(nombre);
            for (Producto x : lista) {
                out.println("<div class=\"col-md-4\" >"
                        + "<div class=\"work-box\">"
                        + "<div class=\"work-img\">"
                        + "<a href=\"ServletImg?id=" + x.getIdproducto() + "\" data-lightbox=\"gallery-mf\">"
                        + "<img src=\"ServletImg?id=" + x.getIdproducto() + "\" height=\"190px\" width=\"960px\" class=\"img-fluid imgcarrito\">"
                        + "</a>"
                        + "</div>"
                        + "<div class=\"work-content\">"
                        + "<div class=\"row\">"
                        + "<div class=\"col-sm-8\">"
                        + "<h2 class=\"w-title\" id=\"" + x.getIdproducto() + "\">" + x.getNombre() + "</h2>"
                        + "<div >"
                        + "<span>" + x.getDimensiones() + " </span><br/>"
                        + "<span>" + x.getDescripcion() + "</span><br/>"
                        + "<span>" + x.getPrecioCompra() + "</span><br/>"
                        + "</div>"
                        + "</div>"
                        + "</div>"
                        + "</div>"
                        + "<div class=\"text-center btnAgregar\">"
                        + "<button onclick=\"agregar(" + x.getIdproducto() + ")\"><i class=\"fa fa-shopping-cart\"></i> Agregar</button>"
                        + "</div>"
                        + "</div>"
                        + "</div>");
            }
        }
        if (path.equals("/ProdlistarxSubCatProdu")) {

            int id = Integer.parseInt(request.getParameter("idSubCatProd"));
            if (id == 0) {
                response.sendRedirect("ProducListar");
            } else {
                ArrayList<Producto> lista = ProductoDAO.listarxIdSubCatProd(id);
                for (Producto x : lista) {
                    out.println("<div class=\"col-md-4\" >"
                            + "<div class=\"work-box\">"
                            + "<div class=\"work-img\">"
                            + "<a href=\"ServletImg?id=" + x.getIdproducto() + "\" data-lightbox=\"gallery-mf\">"
                            + "<img src=\"ServletImg?id=" + x.getIdproducto() + "\" height=\"190px\" width=\"960px\" class=\"img-fluid imgcarrito\">"
                            + "</a>"
                            + "</div>"
                            + "<div class=\"work-content\">"
                            + "<div class=\"row\">"
                            + "<div class=\"col-sm-8\">"
                            + "<h2 class=\"w-title\" id=\"" + x.getIdproducto() + "\">" + x.getNombre() + "</h2>"
                            + "<div >"
                            + "<span>" + x.getDimensiones() + " </span><br/>"
                            + "<span>" + x.getDescripcion() + "</span><br/>"
                            + "<span>" + x.getPrecioCompra() + "</span><br/>"
                            + "</div>"
                            + "</div>"
                            + "</div>"
                            + "</div>"
                            + "<div class=\"text-center btnAgregar\">"
                            + "<button onclick=\"agregar(" + x.getIdproducto() + ")\"><i class=\"fa fa-shopping-cart\"></i> Agregar</button>"
                            + "</div>"
                            + "</div>"
                            + "</div>");
                }
            }
        }
        if (path.equals("/prodBorrar")) {
            String id = request.getParameter("idpr");
            ArrayList<Producto> newa = new ArrayList<>();
            Producto prod = ProductoDAO.Id(Integer.parseInt(id));

            for (Producto x : carrito) {
                if (x.getIdproducto() != prod.getIdproducto()) {
                    newa.add(x);
                }
            }
            carrito.clear();
            for (Producto x : newa) {
                carrito.add(x);
            }

            for (Producto x : carrito) {

                out.println("<li class=\"carritoprod\"><a href=# style=\"color: #24b67e\">" + x.getNombre() + "</a>"
                        + "<INPUT TYPE=\"NUMBER\" id=\"Cantidad\" MIN=\"0\" MAX=\"" + x.getStock() + "\" STEP=\"1\" VALUE=\"3\" SIZE=\"6\">"
                        + "<button class=\"btnborrar\" onclick=\"borrar(" + x.getIdproducto() + ")\"><img src=\"img/delete-red.png\" width=\"20px\" height=\"20px\"></button>"
                        + "</li>");
            }
        }
        if (path.equals("/producVer")) {

            request.setAttribute("listaCarrito", carrito);
            request.getRequestDispatcher("WEB-INF/tabla.jsp").forward(request, response);
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
