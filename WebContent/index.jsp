<%@page import="entitee.Produit"%>
<%@page import="java.util.ArrayList"%>
<%@page import="entitee.Categorie"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="include/header.jsp" %>
<section id="mainBoxIndex">
		<div class="recherche">
			<div class="header-search">
				<form method="post" action="produitControler">
					<select name="categorie" class="input-select">
						<option value="0">Tous</option>
					<%
						for(Categorie categorie : ((ArrayList<Categorie>)(request.getAttribute("categories"))))
						{%>
							<option value="<%=categorie.getId()%>"><%=categorie.getNom()%></option>	
						<%}
					%>
					</select> 
					<input type="text" name="recherche" class="input" placeholder="Chercher ici">
					<button class="search-btn">Recherche</button>
				</form>
			</div>
		</div>
		<%
		String commandeReussi = (String)request.getAttribute("commandeReussi");
		if(commandeReussi != null)
		{%>
			<div>
				<p><%= commandeReussi %></p>
			</div>
		<%}
		%>
<h1>Liste des produit</h1>
		<div class="photoConteneur">
		<%
		for(Produit produit : (ArrayList<Produit>)request.getAttribute("produit"))
		{
		%>
			<a href="produitControler?idProduit=<%= produit.getId() %>">
				<div>
					<h3><%= produit.getTitre() %></h3>
					<img src="imageProduit/<%= produit.getId() %>/1.jpg" alt="photoLaptop" />
					<p>
						<%= produit.getCategorie() %><br /> Prix: <%= produit.getPrix() %>
					</p>
				</div>
			</a>
		<%}%>
		</div>
<%@include file="include/footer.jsp" %>	