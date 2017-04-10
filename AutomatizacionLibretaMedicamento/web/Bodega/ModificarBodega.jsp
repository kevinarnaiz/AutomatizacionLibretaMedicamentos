<%-- 
    Document   : ModificarBodega
    Created on : 07-04-2017, 17:33:36
    Author     : sergio.aravena
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar | Bodega</title>
    </head>
    <body>
        
        <c:set var="msn" scope="request" value="${requestScope.mensaje}" />
        
        <c:if test="${msn}">
            <script>
                alert('<c:out value="${msn}"/>');             
            </script>
        </c:if>
        
        <form name="frmModificarBodega" action="ModificarBodega" method="POST">
        
            <table border="1">
                <tbody>
                    <tr>
                        <td>Categoria</td>
                        <td><input type="text" name="txtCategoria" value="" /></td>
                    </tr>
                </tbody>
            </table>

            <hr>
            <input type="submit" value="ModificarBodega" name="btnModificarBodega" />
        </form>
       
    </body>
</html>