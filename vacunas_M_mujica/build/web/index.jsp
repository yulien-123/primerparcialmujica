<%-- 
    Document   : index
    Created on : 13-abr-2021, 19:09:17
    Author     : Mujica
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.emergentes.modelo.Tareas" %>
<%@page import="com.emergentes.modelo.GestorTareas" %>
<%
    if(session.getAttribute("registro") == null){
        GestorTareas objeto1 = new GestorTareas();
        
        objeto1.insertarTarea(new Tareas(1,"Brunito Diaz",25,1.4,"SI"));
        objeto1.insertarTarea(new Tareas(2,"Juancito Pinto",30,1.52,"NO"));

    
        session.setAttribute("registro", objeto1);
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
     <body>
        <table  border="1" >
            <tr>
                <th>PRIMER PARCIAL TEM-742
                    <br>
                    Nombre: Mujica Capquique Mishel Fanny
                    <br> 
                    Carnet: 12454898 LP
                </th>
            </tr>
            
        </table>
        <h1>Registro de Vacunas</h1>
        <a href="Controller?op=nuevo">Nuevo</a>
        <table border="1">
            <tr>
                <th>Id</th>
                <th>Nombre</th>
                <th>Peso</th>
                <th>Talla</th>
                <th>Vacuna</th>
                <th></th>
                <th></th>
            </tr>
            <c:forEach var="item" items="${sessionScope.registro.getLista()}">
            <tr>
                <td>${item.id}</td>
                <td>${item.nombre}</td>
                <td>${item.peso}</td>
                <td>${item.talla}</td>
                <td>${item.vacuna}</td>
                <td><a href="Controller?op=modificar&id=${item.id}">Modificar</a></td>
                <td><a href="Controller?op=eliminar&id=${item.id}">Eliminar</a></td>
            </tr>
            </c:forEach>
        </table>
    </body>
</html>
