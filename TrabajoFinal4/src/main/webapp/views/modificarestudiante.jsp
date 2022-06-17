<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
   <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="${pageContext.request.contextPath}/Estilos/main.css" rel="stylesheet" type="text/css"/>
        <title>Estudiante</title>
    </head>
 <body>  
<a href="${pageContext.request.contextPath}/views/index.jsp">Volver al Home</a>
<a href="${pageContext.request.contextPath}/ControladorEstudiante">Ver estudiante</a>
<a href="${pageContext.request.contextPath}/ControladorFacilitador">Ver facilitador</a>      
        <h1>Modificar Información del Estudiante</h1>
         <main>
             <form action="ControladorEstudiante"  method="get">
                 <label for="id">Identificador</label>
                 <input name="id" type="text" value="${estudiante.getId()}" readonly>
                 <label for="rut">Rut</label>
                 <input name="rut" type="text" value="${estudiante.getRut()}">
                 <label for="nombre">Nombre</label>                 
                 <input name="nombre" type="text" value="${estudiante.getNombre()}">
                 <label for="email">Email</label>  
                 <input name="email" type="text" value="${estudiante.getEmail()}">
                 <label for="telefono">Tel&eacute;fono</label>
                 <input name="telefono" type="text" value="${estudiante.getTelefono()}">
                 <label for="lastUpdate">Last Update</label>
                 <input name="lastUpdate" type="text" value="${estudiante.getLast_update()}" readonly>
                 <input type="hidden" name="op" value="update">
                 <input type="submit"  value="Enviar Modificación">
             </form>
        </main>  
                 
  </body>
</html>
