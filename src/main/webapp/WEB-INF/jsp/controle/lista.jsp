<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
  <title>AppControle</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<div class="container-fluid" style="margin-top:100px">		
			<c:import url="/WEB-INF/jsp/header.jsp"/>
		</div>			

		   <a href="/controle" type="button" class="btn btn-light btn-outline-info btn-lg" role="button">Adicionar Controle</a>
		  
		  </div>	
		<br>

		<c:if test="${not empty msgError}">
			<div class="alert alert-danger">
			  <strong>Erro!!</strong> ${msgError}
			</div>		
		</c:if>

		<c:if test="${not empty controles}">
			<table class="table table-hover">
			    <thead>
			      <tr>
			        <th>ID</th>
			        <th>DESCRIÇÃO</th>
			        <th>SOLICITANTE</th>
			        <th>REMEDIOS</th>
			        <th></th>
			        <th></th>
			      </tr>
			    </thead>
			    <tbody>
			    	<c:forEach var="c" items="${controles}">
				      <tr>
				        <td>${c.id}</td>
				        <td>${c.descricao}</td>
				        <td>${c.solicitante.nome}</td>
				        <td>${c.remedios.size()}</td>
				        <td><a href="/controle/${c.id}/consultar">Consultar</a></td>
				        <td><a href="/controle/${c.id}/excluir">Excluir</a></td>
				      </tr>
			      </c:forEach>
			    </tbody>
			</table>	
		</c:if>
		<c:if test="${empty controles}">
			<div class="alert alert-danger">
				<strong>Não possui informações cadastradas</strong>
			</div>
		</c:if>
	<c:import url="/WEB-INF/jsp/footer.jsp"/>
</body>
</html>