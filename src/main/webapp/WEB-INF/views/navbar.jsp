<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href='<spring:url value="css/bootstrap.min.css" />'>
<link rel="stylesheet" href='<spring:url value="css/tags-style.css" />'>

</head>
<body>
	<nav class="navbar navbar-expand-sm navbar-dark">
		 <img class="logoimg"
			src='<spring:url value="images/qintess_gif.gif"/>' >
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link navbar-brand" href="/">Formulário</a>
			</li>
			<li class="nav-item"><a class="nav-link navbar-brand" href="/relatorio">Relatório</a>
			</li>
		</ul>
		<a class="navbar-left"> <a class="navbar-brand"
			style="color: white">Bem Vindo(a): <sec:authentication
					property="principal.username" /></a> <img class="box horario"
			src='<c:url value="images/qintess.png"/>' style="width: 55px;">
		</a>
	</nav>
	<!--  JavaScript -->
	<script src='<spring:url value="js/bootstrap.min.js" />'></script>
</body>
</html>