<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Offres</title>
</head>
<body>
<h1>${messageSucces }</h1>
<form action="pubOffre.aspx" method="post">
Ville d�part: <select name ="ville_Depart">
<option value="Rabat">Rabat</option>
<option value="Casa">Casa</option>
<option value="Sale">Sal�</option>
</select>
<br>
Ville Arriv�e: <select name = "ville_Arrivee">
<option value="Rabat">Rabat</option>
<option value="Casa">Casa</option>
<option value="Sale">Sal�</option>
</select>
<br>
Date D�part : <input type="date" name="date_depart">
<br>
Date arriv�e : <input type="date" name="date_arrivee">
<br>

passant par: <select name = "station">
<option value="Rabat">Rabat</option>
<option value="Casa">Casa</option>
<option value="Sale">Sal�</option>
</select>
<br>
<br>
Prix : <input type="number" name="prix">
<br>
Nombre de places disponibles : <input type="number" name="places">
<br>
<input type="submit" value="publier">
</form>
</body>
</html>