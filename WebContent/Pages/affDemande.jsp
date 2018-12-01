<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib prefix="display" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h2> Demandes de covoiturage: </h2>
               <table class="table">
                <display:forEach items="${listeOffres}" var="o" >
			  <tr>
			  <td> ${o.id} </td>
			  <td> ${o.date_depart} </td>
			  <td> ${o.places} </td>
			  <td>
			  <display:forEach items="${o.ville_Pubs}" var="e" >
			   <li>${ e.ville.nom }  :  ${e.type_station} 
			  </display:forEach> 
			  </td>
			  </tr>
               </display:forEach>
               </table>

</body>
</html>