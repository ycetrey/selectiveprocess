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
	    form{
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
				<form action="${linkTo[UserController].index}" method="GET">
					<button onclick="$(this).parent().submit()" type="button" class="btn btn-raised btn-primary btn-sm float-right">Voltar <i class="fas fa-back"></i></button>
				</form>
			</fieldset>
		</div>
		<form action="${linkTo[UserController].add}" method="POST">
		  <div class="form-group">
		    <label for="userNome" class="bmd-label-floating">Nome</label>
		    <input type="text" class="form-control" id="inputName" name="user.name">
		  </div>
		  <div class="form-group">
		    <label for="userEmail" class="bmd-label-floating">Email</label>
		    <input type="email" class="form-control" id="inputEmail" name="user.email">
		  </div>
		  <div class="form-group">
		    <label for="userPhone" class="bmd-label-floating">Telefone</label>
		    <input type="text" class="form-control" id="inputPhone" name="user.phone">
		  </div>
		  <div class="form-group">
		    <label for="userAddress" class="bmd-label-floating">Endereço</label>
		    <input type="text" class="form-control" id="inputAddress" name="user.address">
		  </div>
		  <button class="btn btn-default">Cancelar</button>
		  <button type="submit" class="btn btn-primary btn-raised">Adicionar</button>
		</form>
	</div>
	
	<!-- Font Awesome, JS, Popper.js, and jQuery -->
	<script src="https://kit.fontawesome.com/536624ed67.js"></script>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://unpkg.com/popper.js@1.12.6/dist/umd/popper.js" integrity="sha384-fA23ZRQ3G/J53mElWqVJEGJzU0sTs+SvzG8fXVWP+kJQ1lwFAOkcUOysnlKJC33U" crossorigin="anonymous"></script>
	<script src="https://unpkg.com/bootstrap-material-design@4.1.1/dist/js/bootstrap-material-design.js" integrity="sha384-CauSuKpEqAFajSpkdjv3z9t8E7RlpJ1UP0lKM/+NdtSarroVKu069AlsRPKkFBz9" crossorigin="anonymous"></script>
	<!-- //JS, Popper.js, and jQuery -->
	
</body>
</html>