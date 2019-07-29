<%@page import="entitee.Produit"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
	Produit produit = (Produit) request.getAttribute("idProduit");
%>
<style>
.button {
	background-color: red;
	border: none;
	color: white;
	padding: 15px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	cursor: pointer;
	height: min-content
}
</style>

			

<%@include file="include/header.jsp"%>
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
			<div id="enTeteDetail">
				<div class="enTeteDetailPhoto">
					<img src="imageProduit/<%= produit.getId() %>/1.jpg" alt="Image Laptop">
					<img src="imageProduit/<%= produit.getId() %>/2.jpg" alt="Image Laptop">
					<img src="imageProduit/<%= produit.getId() %>/3.jpg" alt="Image Laptop">
				</div>
			</div>
			<h1><%= produit.getNom() %></h1>
			<div id="CorpDetail">
				<div class="halfCorpDetail">
					<h1>description</h1>
					<p><%= produit.getDescription() %></p>
				</div>
				<div class="halfCorpDetail2">
					<!--<table>
						<tr>
							<th colspan="2">MSI GX03VR</th>
							
						</tr>
						<tr>
							<th>color:</th>
							<td>black</td>
							
						</tr>
						<tr>
							<th>Operating System:</th>
							<td>Windows 10 Home 64-Bit</td>
							
						</tr>
						<tr>
							<th>CPU:</th>
							<td>Intel Core i5-7300HQ 2.50 GHz</td>
							
						</tr>
						<tr>
							<th>Screen:</th>
							<td>15.6" 120 Hz</td>
						</tr>
						<tr>
							<th>Memory:</th>
							<td>8 GB DDR4</td>
						</tr>
						<tr>
							<th>Storage:</th>
							<td>1 TB HDD + 128 GB M.2 SSD</td>
						</tr>
						<tr>
							<th>Graphics Card:</th>
							<td>GeForce GTX 1060</td>
						</tr>
						<tr>
							<th>Video Memory:</th>
							<td>3 GB GDDR5</td>
						</tr>
						<tr>
							<th>Communication:</th>
							<td>Gigabit LAN and WLAN</td>
						</tr>
						<tr>
							<th>Dimensions (W x D x H):</th>
							<td>15.12" x 10.31" x 0.95"-0.98"</td>
						</tr>
						<tr>
							<th>Weight:</th>
							<td>5.73 lbs.</td>
						</tr>
					</table>-->
					<p>Prix: <%= produit.getPrix() %>$<P>
					<form action="panierControler" method="post">
						<input type="hidden" name="idProduit" value="<%= produit.getId() %>">
						<input class="button" type="submit" value="Ajouter au pamier" />
					</form>
				</div>
			</div>
<%@include file="include/footer.jsp" %>	
