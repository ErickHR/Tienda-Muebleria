
package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.bean.Clientes;
import modelo.bean.Usuario;
import modelo.dao.ClienteDAO;
import modelo.dao.UsuarioDAO;

@WebServlet(name = "ServletUsuario", urlPatterns = {"/ServletUsuario","/login","/validarUser","/nuevo"})
public class ServletUsuario extends HttpServlet {
public static int v=12;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String path = request.getServletPath();
        if (path.equals("/login")) {
            request.getRequestDispatcher("WEB-INF/login.jsp").forward(request, response);
        }
        if (path.equals("/validarUser")) {
            String usr = request.getParameter("txtus");
            String psw = request.getParameter("txtpas");
            //acceder al modelo para verificar existencia de usuario
            Usuario us = UsuarioDAO.validarUsuario(usr, psw);
            if (us != null) {
                //request.setAttribute("alumnox",AlumnoDAO.buscarID(us.getCodal()));
                //crear variable de sesion cuyo valor es el objeto alumnox
                request.getSession().setAttribute("empleadox", ClienteDAO.buscarID(us.getIdcliente()));
                request.getRequestDispatcher("index.jsp").forward(request, response);
            } else {
                request.setAttribute("msg", "Usuario y/o password incorrecto...!");
                request.getRequestDispatcher("WEB-INF/login.jsp").forward(request, response);
            }
        }
        if(path.equals("/cerrarsesion")){
        request.getSession().invalidate();
        request.getRequestDispatcher("index.jsp").forward(request, response);
        
        }
        if (path.equals("/nuevo")) {
            int cod=0;
            //creando variable de tipo empleado
            Clientes cl=new Clientes();
            //obteniendo los valores de los cuadros de texto del formempleado.jsp
            String nom=request.getParameter("nom");
            String ap=request.getParameter("apat");
            String am=request.getParameter("amat");
            int dni=Integer.parseInt(request.getParameter("dni"));
            String em=request.getParameter("email");
            String dir=request.getParameter("dir");
            int cel=Integer.parseInt(request.getParameter("cel"));
            //asignando valores al objeto empleado
            cl.setNombre(nom);
            cl.setAp_paterno(ap);
            cl.setAp_materno(am);
            cl.setDni(dni);
            cl.setEmail(em);
            cl.setDireccion(dir);
            cl.setCelular(cel);
                //insertar empleado a la base de datos
            ClienteDAO.agregar(cl);
            v=v+1;
            //cod=cl.getIdcliente();
            //System.out.println(":::::::::::::::."+ClienteDAO.codCliente());
            Usuario user=new Usuario();
            
            String us=request.getParameter("us");
            String pas=request.getParameter("pas");
            user.setUsuario(us);
            user.setContraseña(pas);
            user.setIdcliente(v);
            UsuarioDAO.agregar(user);
            request.getRequestDispatcher("WEB-INF/login.jsp").forward(request, response);
            
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
