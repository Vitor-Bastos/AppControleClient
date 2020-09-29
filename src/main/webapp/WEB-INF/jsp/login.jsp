<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>AppControle</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>

	<div class="container">
	
		<img src="https://image.freepik.com/free-vector/pharmacy-medications-medicine-drugs-pharmaceutical-treatment-vitamins-blister-packs-medicine-pills-bottles-illustration-icons-set-treatment-pharmaceutical-medication-vitamin_229548-572.jpg"><br>  
		<br>
		<h1>AppControle</h1>
		<h2>Sistema para controle de remédios</h2><br>

		<c:if test="${not empty mensagem}">
			<div class="alert alert-warning">
				<strong>Ops!</strong> ${mensagem}
			</div>
		</c:if>
		<form action="login" class="was-validated" method="post">
			<div class="form-group">
				<label for="uname">Login:</label> <input type="text"
					class="form-control" placeholder="Entre com o seu login"
					name="username" required>
				<div class="valid-feedback">OK</div>
				<div class="invalid-feedback">Preencher o campo obrigatório</div>
			</div>
			<div class="form-group">
				<label for="pwd">Senha:</label> <input type="password"
					class="form-control" placeholder="Entre com a sua senha"
					name="password" required>
				<div class="valid-feedback">OK</div>
				<div class="invalid-feedback">Preencher o campo obrigatório</div>
			</div>
			
			<div class="form-check">
    			<input type="checkbox" class="form-check-input" id="gridCheck">
    			<label class="form-check-label" for="gridCheck">Lembrar seu login</label>
  			</div><br>
  			
			<button type="submit" class="btn btn-info btn-lg btn-outline-dark btn-block">Acessar</button>
		</form>

		<div class="d-flex justify-content-center align-items-center mt-1">
			<span class="font-weight-normal"> <a
				href="/user" class="font-weight-bold">Cadastrar Usuário</a>
			</span>
		</div>
	</div>
	<c:import url="/WEB-INF/jsp/footer.jsp"/>
</body>
</html>