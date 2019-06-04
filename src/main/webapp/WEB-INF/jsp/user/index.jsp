<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>WS Desafio</title>
	<!-- CSS -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons">
	<link rel="stylesheet" href="https://unpkg.com/bootstrap-material-design@4.1.1/dist/css/bootstrap-material-design.min.css" integrity="sha384-wXznGJNEXNG1NFsbm0ugrLFMQPWswR3lds2VeinahP8N0zJw9VWSopbjv2x7WCvX" crossorigin="anonymous">
	<!-- //CSS -->
	<style>
		header{
	      	display:flex;
	      	align-items: center;
	      	justify-content: center;
	      	background-color: #0f3859;
	      	color:#ffcc00;
	      	height:70px;
	    }
	    .actions{
	    	margin: 20px 0 5px 0;
	    }
	</style>
</head>
<body>
	<header>
		<h2>Wealth Systems - Processo Seletivo</h2>
	</header>
	
	<div class="container">
		<div class="actions">
			<fieldset>
				<form action="./add/" method="GET">
					<button onclick="$(this).parent().submit()" type="button" class="btn btn-raised btn-primary btn-sm float-right">Adicionar <i class="fas fa-plus"></i></button>
				</form>
			</fieldset>
		</div>
		<table class="table table-striped">
			<thead>
			  	<tr>
			    	<th scope="col">#</th>
			    	<th scope="col">Nome</th>
			    	<th scope="col">Telefone</th>
			    	<th scope="col">Endereço</th>
			    	<th align="center" scope="col">Ações</th>
			  	</tr>
			</thead>
			<tbody>
				<c:forEach items="${users}" var="user">
		        	<tr>
			            <td>${user.id}</td>
			            <td>${user.name}</td>
			            <td>${user.phone}</td>
			            <td>${user.address}</td>
			            <td align="center">
			            	<a href="./edit/${user.id}">
			            		<button type="button" class="btn btn-warning bmd-btn-icon" title="Editar ${user.name}">
  									<i class="fas fa-pencil-alt"></i>
								</button>
			            	</a>
			            </td>
			        </tr>
			    </c:forEach>
			</tbody>
		</table>
		
	</div>
	
	<!-- Font Awesome, JS, Popper.js, and jQuery -->
	<script src="https://kit.fontawesome.com/536624ed67.js"></script>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://unpkg.com/popper.js@1.12.6/dist/umd/popper.js" integrity="sha384-fA23ZRQ3G/J53mElWqVJEGJzU0sTs+SvzG8fXVWP+kJQ1lwFAOkcUOysnlKJC33U" crossorigin="anonymous"></script>
	<script src="https://unpkg.com/bootstrap-material-design@4.1.1/dist/js/bootstrap-material-design.js" integrity="sha384-CauSuKpEqAFajSpkdjv3z9t8E7RlpJ1UP0lKM/+NdtSarroVKu069AlsRPKkFBz9" crossorigin="anonymous"></script>
	<!-- //JS, Popper.js, and jQuery -->
	
</body>
</html>