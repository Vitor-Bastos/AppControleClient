<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
  <title>appcontrole</title>
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
			
		<img src="https://img.freepik.com/free-vector/medication-supplements-medicine-pills-vitamins-blister-packs-medicine-pills-bottles-pharmacy-painkiller-treatments-illustration-set-aid-medication-vitamin-medical-capsule_229548-574.jpg?size=626&ext=jpg"><br>  
		<br>
		<h4>Este Sistema serve para controlar o estoque de remédios utilizados no setor de farmácia hospitalar.<br>
		O Solicitante registra as movimentações dos remédios para ter o controle preciso do seu inventário atual.<br><br>
		Remédios disponíveis para controle:<br>
		
		<span class="font-weight-normal"> <a
				href="/insulinas" class="font-weight-bold">-Insulina</a>
			</span><br>
		
		<span class="font-weight-normal"> <a
				href="/morfinas" class="font-weight-bold">-Morfina</a>
			</span><br>
			
		<span class="font-weight-normal"> <a
				href="/penicilinas" class="font-weight-bold">-Penicilina</a>
			</span><br><br>
			
		</h4>
		<br>
		<div class="container">
				<div class="row">
					<div class="col">
					    <a href="https://github.com/Vitor-Bastos/AppControleClient" target="_blank" class="btn btn-info">Repositório GIT Client</a>
					</div>	
				</div>
		</div>	
					<br>
					
					<div class="container">
				<div class="row">
					<div class="col">
						<a href="https://github.com/Vitor-Bastos/AppControleAPI" target="_blank" class="btn btn-info">Repositório GIT API</a>
					</div>
				</div>
					</div>
				
		</div>
	</div>
	<c:import url="/WEB-INF/jsp/footer.jsp"/>		
</body>
</html>