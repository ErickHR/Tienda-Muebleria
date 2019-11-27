<%-- 
    Document   : tabla
    Created on : 27/11/2019, 12:23:10 PM
    Author     : Rivas
--%>

<%@page import="modelo.bean.Pedido"%>
<%@page import="modelo.bean.Producto"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <link rel="stylesheet" href="https://use.fontawesome.com/release/v5.8.2/css/all.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </head>
    <body>

        <%
            ArrayList<Producto> listacar = (ArrayList<Producto>) request.getAttribute("listaCarrito");
            ArrayList<Pedido> listaped = (ArrayList<Pedido>) request.getAttribute("listapedido");
            int i = 0;
        %>

        <nav class="navbar navbar-expand-lg ">
            <a class="navbar-brand"><h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;POLOSMANIA</h1></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="index.jsp" ><h5 style="color: black" >PRINCIPAL</h5><span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a  class="nav-link" href="Controlador?accion=home" style=""><h5 style="color: black">SEGUIR COMPRANDO</h5></a>
                    </li>
                </ul>   
        </nav>
        <div class="row">
            <div class="col-md-12">
                <div class="header-part">
                    <p>&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbspPRINCIPAL &nbsp;&nbsp;&nbsp;<span style="color: orange">>&nbsp;&nbsp;&nbsp;CARRITO</span></p>
                </div>
            </div>
        </div>
        <div class="container mt-4">
            <h3>CARRITO</h3>
            <div class="row">
                <div class="col-sm-8">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>IDPRODUCTO</th>
                                <th>NOMBRE</th>
                                <th>DESCRIPCION</th>
                                <th>PRECIO UNITARIO</th>
                                <th>CANTIDAD</th>
                                <th>SUBTOTAL</th>
                                <th>ELIMINAR</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%  for (Producto x : listacar) {%>

                            <tr>
                                <td><%=x.getIdproducto()%></td>
                                <td><%=x.getNombre()%></td>
                                <td><%=x.getDescripcion()%>
                                    <img src="ServletImg?id=<%=x.getIdproducto()%>" width="100" height="100">
                                </td>
                                <td><%=x.getPrecioCompra()%></td>
                                <td>
                                    <input type="hidden" id="idpro" value="<%=x.getIdproducto()%>">
                                    <input type="number" id="Cantidad" value="<%=listaped.get(i).getCantidad()%>" class="form-control text-center" min="1">
                                </td>
                                <td>150</td>
                                <td>
                                    <input type="hidden" id="idp" value="">
                                    <a href="#" id="btnDelete">Eliminar</a>
                                </td>
                            </tr>
                            <%
                                    i++;
                                }
                            %>
                        </tbody>
                    </table>
                </div>
                <div class="col-sm-4">
                    <div class="card">
                        <div class="card-header">                            
                            <h3>Generar compra</h3>
                        </div>
                        <div class="card-body">
                            <label>Subtotal:</label>
                            <input type="text" value="S/.${totalPagar}0" readonly="" class="form-control">
                            <label>Descuento:</label>
                            <input type="text" value="S/00.00" valuereadonly="" class="form-control">
                            <label>Total Pagar:</label>
                            <input type="text" value="S/.${totalPagar}0" readonly="" class="form-control">
                        </div>
                        <div class="card-footer">
                            <% HttpSession sesion = request.getSession();
                                if (sesion.getAttribute("user") == null) {
                            %>
                            <a href="login.jsp" class="btn btn-info btn-block">Iniciar Sesion</a>
                            <a href="registro.jsp" class="btn btn-danger btn-block">Registrar</a>
                            <% } else {%>
                            <a href="pago.jsp" class="btn btn-info btn-block">Realizar Pago</a>
                            <a href="detalle.jsp" class="btn btn-danger btn-block">Generar Compra</a><%}%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <script src="js/jquery.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="js/funciones.js" type="text/javascript"></script>
</html>

