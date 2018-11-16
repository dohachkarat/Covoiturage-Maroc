<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="disply" uri="http://java.sun.com/jsp/jstl/core" %>    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>IRAOUI Biblio</title>

</head>

<body>

	

<h1>Bibliothèque IRAOUI</h1>
<img src="./images/dc.jpg" hspace="10" vspace="10" >
<!-- Espace Medcin -->
<br />
<br />

<h3 id="error" align="CENTER">${errorM}</h3>
<a href="index.aspx"><button type="button"> actualiser</button></a>
<br />

 Recherche un Livre  : 
	
<form action="searchlivre.aspx" method="post"  >
		
CNI : <input type="text" name="isbn" value="${isbn}" /> 
		
<input type="submit" value="Afficher" />
</form>



<form action="inscription.aspx"  >
		
		
<input type="submit" value="S inscrire" />
</form>
<hr />

 Ajouter  Book:
<form action="addLivre.aspx" method="post">
		
<table border="1" bgcolor="AD FF 2F">
<tr>
	<th> Numero ISBN</th>
	<td><input name="isbn" type="text" /></td>
			
<tr>
				
<th>titre</th>
				
<td><input type="text" name="titre" /></td>
			
</tr>
	<tr>
	<th> EDITION</th>
	<td><input name="edition" type="text" /></td>
			
<tr>
				
<th>Date de Sortie</th>
				
<td><input type="text" name="dateSortie" /></td>
			
</tr>	
	<tr>
				
<th>Langue</th>
				
<td><input type="text" name="Langue" /></td>
			
</tr>	
<tr>
				
<td colspan="2">
					
<input type="submit" value="ajouter"/> 
				
</td>
			
</tr>
		
</table>
	
</form>
	
<hr />
	
<br />
	<h3>${messagebk}</h3>
	
<table border="3" width="auto">
		
<tr>
			
<th>ISBN</th>
			
<th>TITRE</th>
<th>EDITION</th>
			
<th>DATE de SORTIE</th>

						



<!--  listeProduit  -->
		
<disply:forEach items="${listeLivre}" var="o" >
			
<tr>
				
<td>${o.isbn }</td>
				
<td>${o.titre }</td>
<td>${o.edition }</td>
				
<td>${o.dateSortie }</td>


				
			


				
<td><a href="deleteLivre.aspx?id=${o.isbn }">supprimer</a></td>
			
</tr>
		
</disply:forEach>
	
</table>
<!-- Espace Patient -->

<br/>

 Recherche un Etudiant  : 
	
<form action="searchEtudiant.aspx" method="post"  >
		
N° Dossier : <input type="text" name="cne" value="${cne}" /> 
		
<input type="submit" value="Afficher" />
	
</form>
<hr />

 Ajouter  Etudiant:
<form action="addEtudiant.aspx" method="post" >
	<table bgcolor="AD FF 2F" border="1" >
	
		<tr>
			<th>CNE<th><td><input type="text" name="cne" /><td>
		</tr>
		<tr>
			<th>Nom <th><td><input type="text" name="nom" /><td>
		</tr>
		<tr>
			<th>prenom<th><td><input type="text" name="prenom" /><td>
		</tr>
		<tr>
			<th>adress<th><td><input type="text" name="adress" /><td>
		</tr>
		<tr>
			<th>choisir le livre<th><td>
								<select name="isbn">
									<disply:forEach items="${listeLivre }" var="m">
										<option value="${ m.isbn}">${m.titre } ${m.edition } </option>
									</disply:forEach>
								</select>
						<td>
		</tr>
		
		
		<tr>
			<th><th><td><input value="ajouter"  type="submit"  /> 
		</tr>
	</table>			
</form>
	
	<hr />
	<br >

	<h3>${messageEt }</h3>
<table border="3" width="auto">
		
<tr>
			
<th>CNE</th>
			
<th>NOM</th>
			
<th>PRENOM</th>

<th>LIST DES LIVRES</th>

	
		
<th>Option</th>
		
</tr>
		
	<tr />
	<br	/>
<!--  listeProdui  -->
<disply:forEach items="${listeEtudiant}" var="o" >
			
<tr>
				
<td>${o.cne }</td>
				
<td>${o.nom }</td>
				
<td>${o.prenom }</td>

<td>${o.adress }</td>				
<td>	
	<select name="pListMedecin" >
		<disply:forEach items="${ o.livre}" var="m">
			<option value="${m.isbn }" > ${m.titre } ${m.edition } ${m.langue }  ${m.dateSortie } </option>
		</disply:forEach>
	</select>
</td>

				
<td><a href="deleteEtudiant.aspx?id=${o.cne }">supprimer</a></td>
			
</tr>
		
</disply:forEach>


</body>
</html>