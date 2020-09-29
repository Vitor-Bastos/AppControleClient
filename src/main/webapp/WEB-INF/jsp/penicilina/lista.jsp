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

		<a href="/penicilina" type="button" class="btn btn-light btn-outline-info btn-lg" role="button">Adicionar Penicilina</a>
		  </div>	
		<br>
		
		<c:if test="${not empty msgError}">
			<div class="alert alert-danger">
			  <strong>Erro!!</strong> ${msgError}
			</div>		
		</c:if>
		
		<c:if test="${not empty penicilinas}">
			<table class="table table-hover">
			    <thead>
			      <tr>
			        <th>ID</th>
			        <th>DESCRIÇÃO</th>
			        <th>TRATAMENTO</th>
			        <th></th>
			        <th></th>
			      </tr>
			    </thead>
			    <tbody>
			    	<c:forEach var="p" items="${penicilinas}">
				      <tr>
				        <td>${p.id}</td>
				        <td>${p.descricao}</td>
				        <td>${p.tratamento}</td>
				        <td><a href="/penicilina/${p.id}/excluir">Excluir</a></td>
				        <td><a href="/penicilina/${p.id}/alterar">Alterar</a></td>
				      </tr>
			      </c:forEach>
			    </tbody>
			</table>	
		</c:if>
		<c:if test="${empty penicilinas}">
			<div class="alert alert-danger">
				<strong>Não possui informações cadastradas</strong>
			</div>
		</c:if>
	<c:import url="/WEB-INF/jsp/footer.jsp"/>
</body>
</html>