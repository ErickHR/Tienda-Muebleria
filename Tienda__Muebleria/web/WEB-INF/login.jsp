
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link href="css/style-login.css" rel="stylesheet" type="text/css"/>
        <script src="js/jsLogin.js" type="text/javascript"></script>
    </head>
    <body>
        <%
            String msg = (String) request.getAttribute("msg");

        %>
        <div id="login">

            
            <form action="validarUser" method="post" id="entrarlogin">
<h1><strong>Bienvenido.</strong> Please login.</h1>
                <fieldset>
                    <p><input type="text" placeholder="Usuario" name="txtus" id="usr" required ></p> 
                    <p><input type="password" placeholder="Contraseña" name="txtpas" id="psw" required ></p>
                    <p><input type="submit" value="Iniciar"></p>
                    <label style="font-size: 12px; color: red">
                        <!--- mensaje  de error-->
                        <span class="msg"><%=msg != null ? msg : ""%></span>

                </fieldset>

            </form>
            <p><span class="btn-round" id="medioor">or</span></p>

            <form action="nuevo" method="post" id="formx">
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
                    <input type="submit" value="Registrar nuevo usuario">
                </fieldset>
            </form>

        </div> <!-- end login -->

    </body>
</html>
