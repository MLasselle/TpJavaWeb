<%@page import="manager.PanierManager"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="entitee.ItemPanier"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="include/header.jsp"%>
<%
	HashMap<Integer, ItemPanier> panier = (request.getSession().getAttribute("panier") instanceof HashMap)
			? (HashMap) request.getSession().getAttribute("panier")
			: null;
%>
<section id="mainBoxIndex">
	<div class="recherche">
		<div class="header-search">
			<form method="post" action="produitControler">
				<select name="categorie" class="input-select">
					<option value="0">Tous</option>
					<%
						for (Categorie categorie : ((ArrayList<Categorie>) (request.getAttribute("categories")))) {
					%>
					<option value="<%=categorie.getId()%>"><%=categorie.getNom()%></option>
					<%
						}
					%>
				</select> <input type="text" name="recherche" class="input"
					placeholder="Chercher ici">
				<button class="search-btn">Recherche</button>
			</form>
		</div>
	</div>
	<%
		String msgErreurCompte = (String)request.getAttribute("msgErreurCompte");
		if(msgErreurCompte != null)
		{%>
			<div>
				<p><%= msgErreurCompte %></p>
			</div>
		<%}
	%>
	<h1>Panier</h1>

	<%
	if(panier != null)
	{%>
		<table id="panierTable">
		<tr>
			<th>Image</th>
			<th>Nom</th>
			<th>Prix</th>
			<th>Ajouter</th>
			<th>Quantiter</th>
			<th>Enlever</th>
		</tr>
		<%
		for(Map.Entry<Integer, ItemPanier> e : panier.entrySet())
		{%>
			<tr>
				<td><img src="imageProduit/<%= e.getValue().getProduit().getId() %>/1.jpg"></td>
				<td><%= e.getValue().getProduit().getTitre() %></td>
				<td><%= e.getValue().getProduit().getPrix() %></td>
				<td>
					<form method="post" action="panierControler">
						<input type="submit" value="+" name="paramValue">
						<input type="hidden" name="idProduit" value="<%= e.getValue().getProduit().getId() %>">
					</form>
				</td>
				<td><%= e.getValue().getQty() %></td>
				<td>
					<form method="post" action="panierControler">
						<input type="submit" value="-" name="paramValue">
						<input type="hidden" name="idProduit" value="<%= e.getValue().getProduit().getId() %>">
					</form>
				</td>
			</tr>
		<%}
	%>
	</table>
	<p>Le total de la facture va etre de: <%= PanierManager.getTotal() %>$</p>
	<form method="post" action="commanderControler">
		<input type="submit" value="Commander" name="commander" value="true">
	</form>
	<%
	}
	else
	{%>
		<h2>Votre panier est vide</h2>
	<%}
	%>
<%@include file="include/footer.jsp" %>	