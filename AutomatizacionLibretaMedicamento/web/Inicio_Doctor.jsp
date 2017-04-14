<%-- 
    Document   : Inicio_Doctor
    Created on : 11-abr-2017, 16:36:30
    Author     : Kevin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="description" content="Login and Registration Form with HTML5 and CSS3" />
        <meta name="keywords" content="html5, css3, form, switch, animation, :target, pseudo-class" />
        <meta name="author" content="Codrops" />
        <link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="/AutomatizacionLibretaMedicamento/css/demo.css" />
        <link rel="stylesheet" type="text/css" href="/AutomatizacionLibretaMedicamento/css/style.css" />
        <link rel="stylesheet" type="text/css" href="/AutomatizacionLibretaMedicamento/css/animate-custom.css" />
        <title>JSP Page</title>
    </head>
    <body>
        <div id="container_demo" >
            <p style="position:absolute; top:10px;left:1000px;">Bienvenido(a) ${sessionScope.usuario}</p>
            <form action="/AutomatizacionLibretaMedicamento/CierreSession" style="position:absolute; top:10px;left:1250px;">
                <input type="submit" value="Cerrar Session" name="btnCerrar" />
            </form>
            <div id="wrapper">
                <div id="login" class="animate form">
                    <h1>CESFAM :: Menu</h1>
                </div>
            </div>
        </div>
    </body>
</html>