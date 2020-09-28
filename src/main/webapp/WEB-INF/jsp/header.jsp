<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<nav class="navbar navbar-expand-lg bg-info navbar-dark fixed-top">
	<a class="navbar-brand" href="/logout">AppControle ${user.nome}</a>
	
  	<ul class="navbar-nav">
	    <li class="nav-item">
	      <a class="nav-link" href="/controle/lista">Controle</a>
	    </li>
	    <li class="nav-item">
	      <a class="nav-link" href="/solicitantes">Solicitantes</a>
	    </li>
	    <li class="nav-item">
	      <a class="nav-link" href="/remedios">Remedios</a>
	    </li>
	    <li class="nav-item">
	      <a class="nav-link" href="/insulinas">Insulinas</a>
	    </li>
	    <li class="nav-item">
	      <a class="nav-link" href="/morfinas">Morfinas</a>
	    </li>
	    <li class="nav-item">
	      <a class="nav-link" href="/penicilinas">Penicilinas</a>
	    </li>    
	</ul>
</nav>