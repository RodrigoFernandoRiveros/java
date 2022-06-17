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
  <h1>Listado de Facilitadores</h1>
  <table>
  <thead>
  <th>Id</th>
  <th>Rut</th>
  <th>Nombre</th>
  <th>Email</th>
  <th>Telefono</th>  
  <th>Valor hora</th>  
  <th>Banco</th>  
  <th>Cuenta bancaria</th>  
  <th>Last Update</th>  
  <th>Acción</th>  
  </thead> 
  <tbody>
  <c:forEach var = "f" items = "${Facilitadores}" >
  <tr>
  <td>${f.getId()}</td>
  <td>${f.getRut()}</td>
  <td>${f.getNombre()}</td>
  <td>${f.getEmail()}</td>
  <td>${f.getTelefono()}</td>
  <td>${f.getValorhora()}</td>
  <td>${f.getBanco()}</td>
  <td>${f.getCtabancaria()}</td>
  <td>${f.getLast_update()}</td>
  <td> 
      <a href="${pageContext.request.contextPath}/ControladorFacilitador?op=actualizar&id=${f.getId()}" >Editar</a>
  </td> 
  </tr>
  
  </c:forEach>
    </tbody>  
  </table>
</body>
</html>
  