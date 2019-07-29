<%@page import="entitee.Compte"%>
<%@page import="java.util.ArrayList"%>
<%@page import="entitee.Categorie"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	<link rel="stylesheet" href="css/header.css" >
	<link rel="stylesheet" href="css/footer.css" >
	<link rel="stylesheet" href="css/photo.css" >
	<link rel="stylesheet" href="css/detail.css" >
	<link rel="stylesheet" href="css/inscription.css" >
	<link rel="stylesheet" href="css/panier.css" >
</head>
<body>
	<header>

		<nav id="menu">
			<nav id="socialButton">
				<a href="https://www.facebook.com/" class="fb"></a> 
				<a href="https://twitter.com/" class="tw"></a> 
				<a href="https://fr.linkedin.com/" class="ld"></a>
				<p>Bonjour <%= ((request.getSession().getAttribute("compte") != null) ? ((Compte)(request.getSession().getAttribute("compte"))).getPseudo() : "Guest") %></p>
			</nav>
			<a href="produitControler"><div id="logo"></div></a>
			<ul>
				<li><a href="produitControler">Produit</a></li>
				<li><a href="panierControler">Panier</a></li>
				<%
				if(request.getSession().getAttribute("compte") != null)
				{
				%>
					<li><a href="compteControler?deco=true">Deconnexion</a></li>
				<%
					if(((Compte)request.getSession().getAttribute("compte")).isAdmin())
					{
						%>
						<li><a href="adminControler">Fonction Admin</a></li>
						<%
					}
				}
				else
				{
				%>
					<li><a href="inscription.jsp">Insciption/Connexion</a></li>
				<%
				}
				%>
			</ul>
		</nav>
	</header>

	