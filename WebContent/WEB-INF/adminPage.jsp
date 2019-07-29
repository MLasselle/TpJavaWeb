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
<link rel="stylesheet" href="css/header.css">
<link rel="stylesheet" href="css/footer.css">
<link rel="stylesheet" href="css/photo.css">
<link rel="stylesheet" href="css/detail.css">
<link rel="stylesheet" href="css/inscription.css">
<link rel="stylesheet" href="css/panier.css">
</head>
<body>
	<header>

		<nav id="menu">
			<nav id="socialButton">
				<a href="https://www.facebook.com/" class="fb"></a> <a
					href="https://twitter.com/" class="tw"></a> <a
					href="https://fr.linkedin.com/" class="ld"></a>
				<p>
					Bonjour
					<%=((request.getSession().getAttribute("compte") != null)
					? ((Compte) (request.getSession().getAttribute("compte"))).getPseudo()
					: "Guest")%></p>
			</nav>
			<a href="produitControler"><div id="logo"></div></a>
			<ul>
				<li><a href="produitControler">Produit</a></li>
				<li><a href="panierControler">Panier</a></li>
				<%
					if (request.getSession().getAttribute("compte") != null) {
				%>
				<li><a href="compteControler?deco=true">Deconnexion</a></li>
				<%
					if (((Compte) request.getSession().getAttribute("compte")).isAdmin()) {
				%>
				<li><a href="adminControler">Fonction Admin</a></li>
				<%
					}
					} else {
				%>
				<li><a href="inscription.jsp">Insciption/Connexion</a></li>
				<%
					}
				%>
			</ul>
		</nav>
	</header>
	<section id="mainBoxIndex">
	<h1>Option Admin</h1>
	<ul>
		<li><a href="adminControler?compteAdmin=true">Gerer les comptes admin</a></li>
		<li><a href="adminControler?venteAdmin=true">Gerer les ventes</a></li>
	</ul>
	</section>
	<footer>
		<p>@Copiryght 2018 - 2025</p>
		<p>All rights reserved. Powered by Jean Philippe Brien</p>
		<iframe
			src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2794.30255662762!2d-73.64289478471025!3d45.544238836120684!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4cc918e0c061b07f%3A0x647a6b6d7cb681a7!2sISI%2C+l&#39;Institut+sup%C3%A9rieur+d&#39;informatique!5e0!3m2!1sfr!2sca!4v1542327161617"
			width="200" height="100" style="border: 0" allowfullscreen></iframe>
	</footer>
</body>
</html>