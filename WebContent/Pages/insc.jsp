<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inscription</title>
</head>
<body>
<form action="insc.aspx" method="post">
NOM:<input name="nom" type="text">
PRENOM:<input name="prenom" type="text">
GENRE:<input name="genre" type="text">
MAIL:<input name="mail" type="text">
PASSWORD:<input name="password" type="text">
DATE DE NAISSANCE:<input name="date_naissance" type="date">
TELEPHONE:<input name="tel" type="text">
<input name="role" type="text" value="admin" hidden="true">
<input type="submit" value="ajouter"/> 

</form>
         ${mssgInscr}
</body>
</html>