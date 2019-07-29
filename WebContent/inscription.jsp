<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="include/header.jsp" %>
<section id="mainBoxIndex">
<h1>Connexion</h1>
<%
if(request.getAttribute("msgErreurConnexion") != null)
{
%>
	<div class="msgErreur" >
		<p><%= request.getAttribute("msgErreurConnexion") %></p>
	</div>
<%
}
%>
	<form method="post" action="compteControler" id="connexion">
		<input type="hidden" name="connexion" value="1">
		<div class="inscriptionInput"><label for="pseudo">Pseudo :</label><input id="pseudo" name="pseudo" type="text"><br /><br /></div>
		<div class="inscriptionInput"><label for="password">Password :</label><input id="password" name="password" type="password"><br /><br /></div>
		<div class="inscriptionInput"><input type="submit" value="Connexion"></div>
		
	</form>
<h1>Inscription</h1>
<%
if(request.getAttribute("msgErreur") != null)
{
%>
	<div class="msgErreur" >
		<p><%= request.getAttribute("msgErreur") %></p>
	</div>
<%
}
%>
	<form method="post" action="compteControler" id="inscription">
		<input type="hidden" name="inscription" value="1">
		<div class="inscriptionInput"><label for="nom">Nom :</label><input id="nom" name="nom" type="text"><br /><br /></div>
		<div class="inscriptionInput"><label for="prenom">Prenom :</label><input id="prenom" name="prenom" type="text"><br /><br /></div>
		<div class="inscriptionInput"><label for="mail">Mail :</label><input id="mail" name="mail" type="text"><br /><br /></div>
		<div class="inscriptionInput"><label for="pseudo">Pseudo :</label><input id="pseudo" name="pseudo" type="text"><br /><br /></div>
		<div class="inscriptionInput"><label for="password">Password :</label><input id="password" name="password" type="password"><br /><br /></div>
		<div class="inscriptionInput"><input type="submit" value="Inscription"></div>
	
	</form>
<%@include file="include/footer.jsp" %>	