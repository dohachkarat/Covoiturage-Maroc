<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="display" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<!DOCTYPE html>
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta name="robots" content="noindex, nofollow">

    <title>Covoiturage MAROC | Offres </title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="./Bootstrap/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <style type="text/css">
    #regContainer{
    margin-top: 3%;  
}

.panel-login {
    border-color: #ccc;
     background-color: #f9f8f8;
    -webkit-box-shadow: 0px 2px 3px 0px rgba(0,0,0,0.2);
    -moz-box-shadow: 0px 2px 3px 0px rgba(0,0,0,0.2);
    box-shadow: 0px 2px 3px 0px rgba(0,0,0,0.2);
}
.panel-login>.panel-heading {
    text-align:center;
}
.panel-login>.panel-heading a{
    text-decoration: none;
    font-weight: bold;
    font-size: 28px;
    -webkit-transition: all 0.1s linear;
    -moz-transition: all 0.1s linear;
    transition: all 0.1s linear;
}
.panel-login>.panel-heading a.active{
    font-size: 34px;
}
.panel-login>.panel-heading hr{
    margin-top: 10px;
    margin-bottom: 0px;
    clear: both;
    border: 0;
    height: 1px;
    background-image: -webkit-linear-gradient(left,rgba(0, 0, 0, 0),rgba(0, 0, 0, 0.15),rgba(0, 0, 0, 0));
    background-image: -moz-linear-gradient(left,rgba(0,0,0,0),rgba(0,0,0,0.15),rgba(0,0,0,0));
    background-image: -ms-linear-gradient(left,rgba(0,0,0,0),rgba(0,0,0,0.15),rgba(0,0,0,0));
    background-image: -o-linear-gradient(left,rgba(0,0,0,0),rgba(0,0,0,0.15),rgba(0,0,0,0));
}
.panel-login input[type="text"],.panel-login input[type="email"],.panel-login input[type="password"] {
    height: 45px;
    border: 1px solid #ddd;
    font-size: 16px;
    -webkit-transition: all 0.1s linear;
    -moz-transition: all 0.1s linear;
    transition: all 0.1s linear;
}
.panel-login input:hover,
.panel-login input:focus {
    outline:none;
    -webkit-box-shadow: none;
    -moz-box-shadow: none;
    box-shadow: none;
    border-color: #ccc;
}
.btn-login {
    background-color:#3D9DB3;
    outline: none;
    color: #fff;
    font-size: 14px;
    height: auto;
    font-weight: normal;
    padding: 14px 0;
    text-transform: uppercase;
    border-color: #2d92a9;
}
.btn-login:hover,
.btn-login:focus {
    color: #fff;
    background-color: #198da8;
    border-color: #53A3CD;
}
.btn-register {
    background-color: #17ae47;
    outline: none;
    color: #fff;
    font-size: 14px;
    height: auto;
    font-weight: normal;
    padding: 14px 0;
    text-transform: uppercase;
    border-color: #1CB94A;
}
.btn-register:hover,
.btn-register:focus {
    color: #fff;
    background-color: #1CA347;
    border-color: #1CA347;
}

.fullscreen_bg {
    position: absolute;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    background-size: cover;
    background-position: 50% 50%;
    background-image: url('./Bootstrap/cov.jpg');
    background-repeat:repeat;
  }

.panel-heading a{
    font-size: 48px;
    color: rgb(6, 106, 117);
    padding: 2px 0 10px 0;
    font-family: 'FranchiseRegular','Arial Narrow',Arial,sans-serif;
    font-weight: bold;
    text-align: center;
    padding-bottom: 30px;
}

.panel-heading a{
    background: -webkit-repeating-linear-gradient(-45deg, 
    rgb(18, 83, 93) , 
    rgb(18, 83, 93) 20px, 
    rgb(64, 111, 118) 20px, 
    rgb(64, 111, 118) 40px, 
    rgb(18, 83, 93) 40px);
    -webkit-text-fill-color: transparent;
    -webkit-background-clip: text;
}
    </style>
    <script src="./Bootstrap/jquery-1.11.1.min.js.téléchargement"></script>
    <script src="./Bootstrap/bootstrap.min.js.téléchargement"></script>
    <script type="text/javascript">
        window.alert = function(){};
        var defaultCSS = document.getElementById('bootstrap-css');
        function changeCSS(css){
            if(css) $('head > link').filter(':first').replaceWith('<link rel="stylesheet" href="'+ css +'" type="text/css" />'); 
            else $('head > link').filter(':first').replaceWith(defaultCSS); 
        }
        $( document ).ready(function() {
          var iframe_height = parseInt($('html').height()); 
          window.parent.postMessage( iframe_height, 'https://bootsnipp.com');
        });
        
        var a = 0 ;
    </script>
</head>
<body>
    <div id="fullscreen_bg" class="fullscreen_bg">
<div id="regContainer" class="container">
<h1> Offres de covoiturage</h1>
      <div class="row">
      <div class="col-md-6 col-md-offset-3">
        <div class="panel panel-login">
          <div class="panel-heading">
            <div class="row">
              <div class="col-xs-12">
                <a href="#"  onclick="Show()" class="active" id="login-form-link">Ajouter une offre de covoiturage</a>
              </div>
            </div>
            <hr>
            <h3>${messageSucces }</h3>
            
          </div>
          <div class="panel-body" id="idform" hidden>
            <div class="row">
              <div class="col-lg-12">
                <form id="login-form" action="pubOffre.aspx" method="post" role="form" style="display: block;">
                  
                  <div class="form-group">
                    <label for="dep">Ville de départ</label>
					<select name="ville_Depart" class="form-control" id="dep" required>
                      <option value="Rabat">Rabat</option>
					  <option value="Casa">Casa</option>
					  <option value="Sale">Salé</option>
                    </select>                  </div>
                  <div class="form-group">
                    <label for="dep_date">Date de départ</label>
                    <input type="date" name="date_depart" id="dep_date" tabindex="1" class="form-control" value="" required>
                  </div>
                  <div class="form-group">
                     <label for="arr">Ville d'arrivée</label>
					<select name="ville_Arrivee" class="form-control" id="arr" required>
                      <option value="Rabat">Rabat</option>
					  <option value="Casa">Casa</option>
					  <option value="Sale">Salé</option>
					  </select>
                  </div>
                  <div class="form-group">
                    <label for="arr_date">Date d'arrivée</label>
                    <input type="date" name="date_arrivee" id="arr_date" tabindex="1" class="form-control" value="" required>
                  </div>
                  <div class="form-group">
                    <label for="st">Passant par les stations suivantes</label>
					  <select name="station" class="form-control" id="st" required>
                      <option value="Rabat">Rabat</option>
					  <option value="Casa">Casa</option>
					  <option value="Sale">Salé</option>
					  </select>                  </div>
                  <div class="form-group">
                    <label for="prix">Prix d'une place</label>
                    <input type="number" name="prix" id="prix" tabindex="1" class="form-control"  value="" required>
                  </div>
                  <div class="form-group">
                    <label for="places">Nombre de places disponibles</label>
                    <input type="number" name="places" id="places" tabindex="1" class="form-control"  value="" required>
                  </div>
                  <div class="form-group">
                    <div class="row">
                      <div class="col-sm-6 col-sm-offset-3">
                        <input type="submit" name="login-submit" id="login-submit" tabindex="4" class="form-control btn btn-login" value="Publier l'offre">
                      </div>
                    </div>
                  </div>
                  <div>
                  <h3>${errorM}</h3>
                  </div>
                </form>
              </div>
            </div>
          </div>
          <h2> Offres de covoiturage: </h2>
               <table class="table">
                <display:forEach items="${listeOffres}" var="o" >
			  <tr>
			  <td> ${o.id} </td>
			  <td> ${o.date_depart} </td>
			  <td> ${o.places} </td>
			  <td> ${o.prix} </td>
			  <td>
			  <display:forEach items="${o.ville_Pubs}" var="e" >
			   <li>${ e.ville.nom }  :  ${e.type_station} 
			  </display:forEach> 
			  </td>
			  </tr>
               </display:forEach>
               </table>
        </div>
      </div>
    </div>
  </div>	<script type="text/javascript">
  

  
  function Show(){
	  a++;
	  
	 if (a % 2 !=0 ){
	 document.getElementById("idform").removeAttribute("hidden");
	 }
	 else{
		 document.getElementById("idform").setAttribute("hidden","hidden");
	 }
			

  }
  
	$(function() {

    $('#login-form-link').click(function(e) {
		$("#login-form").delay(100).fadeIn(100);
 		$("#register-form").fadeOut(100);
		$('#register-form-link').removeClass('active');
		$(this).addClass('active');
		e.preventDefault();
	});
	$('#register-form-link').click(function(e) {
		$("#register-form").delay(100).fadeIn(100);
 		$("#login-form").fadeOut(100);
		$('#login-form-link').removeClass('active');
		$(this).addClass('active');
		e.preventDefault();
	});

});	</script>


</div></body></html>