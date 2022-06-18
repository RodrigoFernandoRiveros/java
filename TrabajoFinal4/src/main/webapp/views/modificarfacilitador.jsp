<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
   <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="${pageContext.request.contextPath}/Estilos/main.css" rel="stylesheet" type="text/css"/>
        <title>Modificar facilitador</title>
    </head>
 <body>  
<a href="${pageContext.request.contextPath}/views/index.jsp">Volver al Home</a>
<a href="${pageContext.request.contextPath}/ControladorEstudiante">Ver estudiante</a>
<a href="${pageContext.request.contextPath}/ControladorFacilitador">Ver facilitador</a>      
        <h1>Modificar Información del facilitador</h1>
       <main>
             <form action="ControladorFacilitador"  method="get">
                 <label for="id">Identificador</label>
                 <input name="id" type="text" value="${facilitador.getId()}" readonly>
                 <label for="rut">Rut</label>
                 <input name="rut" type="text" value="${facilitador.getRut()}">
                 <label for="nombre">Nombre</label>                 
                 <input name="nombre" type="text" value="${facilitador.getNombre()}">
                 <label for="email">Email</label>  
                 <input name="email" type="text" value="${facilitador.getEmail()}">
                 <label for="telefono">Tel&eacute;fono</label>
                 <input name="telefono" type="text" value="${facilitador.getTelefono()}">
                 <label for="lastUpdate">Last Update</label>
                 <input name="valorhora" type="text" value="${facilitador.getValorhora()}">
                 <label for="valorhora">Valor hora</label>
                 <input name="banco" type="text" value="${facilitador.getBanco()}">
                 <label for="banco">Banco</label>
                 <input name="ctabancaria" type="text" value="${facilitador.getCtabancaria()}">
                 <label for="ctabancaria">Cuenta bancaria</label>
                 <input name="lastUpdate" type="text" value="${facilitador.getLast_update()}" readonly>
                 <input type="hidden" name="op" value="update">
                 <input type="submit"  value="Enviar Modificación">                 
             </form>
        </main>  
                 
  </body>
</html>
