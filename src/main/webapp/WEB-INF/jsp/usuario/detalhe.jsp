<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
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

			<nav class="navbar navbar-expand-lg bg-info navbar-dark fixed-top">
			  <a class="navbar-brand" href="/sair">AppControle</a>
			</nav>	

			<form action="/usuario/incluir" method="post">
			
			  <div class="form-group">
			    <label for="usr">Nome:</label>
			    <input type="text" class="form-control" name="nome">
			  </div>
			
			  <div class="form-group">
			    <label for="usr">Login:</label>
			    <input type="text" class="form-control" name="login">
			  </div>
			
			  <div class="form-group">
			    <label for="usr">Senha:</label>
			    <input type="password" class="form-control" name="senha">
			  </div>
			
			  <button type="submit" class="Btn btn-info btn-lg">Cadastrar</button>
			</form>
  		</div>
	</div>
<c:import url="/WEB-INF/jsp/footer.jsp"/>
</body>
</html>