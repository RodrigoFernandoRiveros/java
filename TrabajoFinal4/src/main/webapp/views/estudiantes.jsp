<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="utf-8">
<style type="text/css">
table td{
border-style: solid;
}	
th {
  background-color: green;
  opacity: 0.7;
  color:black;
}
 </style>
</head>
<body>
<a href="${pageContext.request.contextPath}/views/index.jsp">Volver al Home</a>
<a href="${pageContext.request.contextPath}/ControladorEstudiante">Ver estudiante</a>
<a href="${pageContext.request.contextPath}/ControladorFacilitador">Ver facilitador</a>
  <h1>Listado de estudiantes</h1>
  <table>
  <thead>
  <th>Id</th>
  <th>Nombre</th>
  <th>Rut</th>
  <th>Email</th>
  <th>Telefono</th>   
  <th>Last Update</th>   
  <th>Acción</th> 
  </thead> 
  <tbody>
  <c:forEach var = "e" items = "${Estudiantes}" >
  <tr>
  <td>${e.getId()}</td>
  <td>${e.getRut()}</td>
  <td>${e.getNombre()}</td>
  <td>${e.getEmail()}</td>
  <td>${e.getTelefono()}</td>
  <td>${e.getLast_update()}</td>
  <td> 
      <a href="${pageContext.request.contextPath}/ControladorEstudiante?op=actualizar&id=${e.getId()}" >Editar</a>
  </td> 
  </tr>
  
  </c:forEach>
  
  </tbody>  
  </table>
</body>
</html>