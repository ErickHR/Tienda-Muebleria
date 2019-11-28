
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="img/logo/logomm.png" rel="icon">
        <title>Login</title>
        <script src="js/jsLogin.js" type="text/javascript"></script>
        
        
        <link href="lib/bootstrap/css/bootstrap.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
        <link href="css/style-login.css" rel="stylesheet" type="text/css"/>
        
    </head>
    <body>
        <%
            String msg = (String) request.getAttribute("msg");

        %>
        <div id="cajaGeneral">
        <header>
            <div id="sticker" class="header-area">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 col-sm-12">
                            <nav class="navbar navbar-default">
                                <div class="navbar-header">
                                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                                            data-target=".bs-example-navbar-collapse-1" aria-expanded="false">
                                        <span class="sr-only">Toggle navigation</span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                    </button>
                                    <a class="navbar-brand page-scroll sticky-logo" href="index.html">
                                    </a>
                                </div>
                                <div class="collapse navbar-collapse main-menu bs-example-navbar-collapse-1"
                                     id="navbar-example">
                                    <ul class="nav navbar-nav navbar-right">
                                        <li class="active">
                                            <a class="page-scroll" href="#home">Inicio</a>
                                        </li>
                                        <li>
                                            <a class="page-scroll" href="#wrapper">Productos</a>
                                        </li>
                                        <li>
                                            <a href="producVer?" id="verCarrito" class="page-scroll" >Ver Carrito</a>
                                        </li>
                                        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                                <img src="img/carrito/shopping-cart (2).png" width="30px" height="30px">
                                                <span class="caret"></span>
                                            </a>
                                            <ul class="dropdown-menu" role="menu" id="carrito">
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </header>

        <div id="login">


            <form action="validarUser" method="post" id="entrarlogin">
                <h1><strong>Bienvenido.</strong> Login</h1>
                <fieldset>
                    <p><input type="text" placeholder="Usuario" name="txtus" id="usr" required ></p> 
                    <p><input type="password" placeholder="Contraseña" name="txtpas" id="psw" required ></p>
                    <p><input type="submit" style="width: 280px" value="Iniciar"></p>
                    <label style="font-size: 12px; color: red">
                        <!--- mensaje  de error-->
                        <span class="msg"><%=msg != null ? msg : ""%></span>

                </fieldset>

            </form>
            <p><span class="btn-round" id="medioor">or</span></p>

            <form action="nuevo" method="post" id="formx">
                <h1 style="text-align: center"><strong>Registrarse</strong></h1>
                <fieldset>
                    <p><label >Nombre</label>
                        <input type="text" placeholder="Nombre" name="nom" id="nom" required ></p> 
                    <p><label>Ap. Paterno</label>
                        <input type="text" placeholder="Ap. paterno" name="apat" id="apat" required >
                    </p>
                    <p>
                        <label>Ap. Materno</label>
                        <input type="text" placeholder="Ap. materno" name="amat" id="amat" required >
                    </p>

                    <p><label>DNI</label>
                        <input type="text" placeholder="88888888" name="dni" id="dni" required >
                    </p>
                    <p><label>Email</label>
                        <input type="text" placeholder="ejemplo@ejemplo.com" name="email" id="email" required >
                    </p>
                    <p><label>Direccion</label>
                        <input type="text" placeholder="direccion" name="dir" id="dir" >
                    </p>
                    <p><label>Celular</label>
                        <input type="text" placeholder="999999999" name="cel" id="cel" >
                    </p>
                    <p><label>Nombre de Usuario</label>
                        <input type="text" placeholder="Usuario" name="us" id="us" >
                    </p>
                    <p><label>Contraseña</label>
                        <input type="password" placeholder="Contraseña" name="pas" id="pas" >
                    </p>
                    <input type="submit" style="width: 280px" value="Registrar nuevo usuario">
                </fieldset>
            </form>

        </div> <!-- end login -->

    </body>
    </div>
</html>
