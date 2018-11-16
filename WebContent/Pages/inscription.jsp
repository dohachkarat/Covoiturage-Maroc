<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Inscription</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="./style/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="./style/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="./style/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="./style/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="./style/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="./style/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="./style/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="./style/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="./style/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="./style/css/util.css">
	<link rel="stylesheet" type="text/css" href="./style/css/main.css">
<!--===============================================================================================-->
</head>
<body style="background-color: #666666;">
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<form action="inscription.aspx" method="post" class="login100-form validate-form">
					<span class="login100-form-title p-b-43">
						Inscription
					</span>
					
					<div class="wrap-input100 validate-input">
						<input class="input100" type="text" name="nom">
						<span class="focus-input100"></span>
						<span class="label-input100">Nom</span>
					</div>
					
					
					<div class="wrap-input100 validate-input">
						<input class="input100" type="text" name="prenom">
						<span class="focus-input100"></span>
						<span class="label-input100">Prénom</span>
					</div>
					<div class="wrap-input100 validate-input">
					<select name="genre">
 					   <option value="Féminin">Féminin</option>
  					   <option value="Masculin">Masculin</option>	
  					   </select>
  						<span class="focus-input100"></span>
						<span class="label-input100">Genre</span>
					</div>
					
					
					<div class="wrap-input100 validate-input" >
						<input class="input100" type="number" name="tel">
						<span class="focus-input100"></span>
						<span class="label-input100">Téléphone</span>
					</div>
					
					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<input class="input100" type="text" name="email">
						<span class="focus-input100"></span>
						<span class="label-input100">Email</span>
					</div>
					
					
					<div class="wrap-input100 validate-input" data-validate="Password is required">
						<input class="input100" type="password" name="password">
						<span class="focus-input100"></span>
						<span class="label-input100">Password</span>
					</div>

					
			

					<div class="container-login100-form-btn">
						<button  class="login100-form-btn">
							S'inscrire
						</button>
					</div>
					<h3 color="red">${errorM}</h3>
					<div class="text-center p-t-46 p-b-20">
						<span class="txt2"><a href="login.jsp">
							Vous êtes déjà inscrit? Connectez-vous ici.</a>
						</span>
					</div>

					
				</form>

				<div class="login100-more" style="background-image: url('./style/images/bg-01.jpg');">
				</div>
			</div>
		</div>
	</div>
	
	

	
	
<!--===============================================================================================-->
	<script src="./style/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="./style/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="./style/vendor/bootstrap/js/popper.js"></script>
	<script src="./style/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="./style/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="./style/vendor/daterangepicker/moment.min.js"></script>
	<script src="./style/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="./style/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="./style/js/main.js"></script>

</body>
</html>