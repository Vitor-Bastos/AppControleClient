<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<nav class="navbar navbar-expand-lg navbar-dark bg-info justify-content-center fixed-top">
	
	<a class="navbar-brand" href="/home">
    <img src=https://image.flaticon.com/icons/png/512/1106/1106992.png width="40" height="40" class="d-inline-block align-top" alt="">
    AppControle
  </a>
			
  	<ul class="navbar-nav">
	    <li class="nav-item">
	      <a class="nav-link" href="/controle/lista">Controle</a>
	    </li>
	    
	    <li class="nav-item">
	      <a class="nav-link" href="/solicitantes">Solicitantes</a>
	    </li>
	    
	  	<li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="/remedios" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Cadastrar
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="/insulinas">Insulinas</a>
          <a class="dropdown-item" href="/morfinas">Morfinas</a>
          <a class="dropdown-item" href="/penicilinas">Penicilinas</a>
        </div>
     	</li>
      
        <li class="nav-item">
	      <a class="nav-link" href="/remedios">Lista de Remédios</a>
	    </li>	
	        
	    <li class="nav-item">
	      <a class="nav-link" href="/logout">Logout</a>
	    </li>  	    
	</ul>
</nav>