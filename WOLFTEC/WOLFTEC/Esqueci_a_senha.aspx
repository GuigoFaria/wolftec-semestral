<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Esqueci_a_senha.aspx.cs" Inherits="WOLFTEC.Esqueci_a_senha" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>Esqueci a senha - WolfTec</title>
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/wolftec.png"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css"/>
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css"/>
	<link rel="stylesheet" type="text/css" href="css/main.css"/>
<!--===============================================================================================-->
</head>
<body id="body3" runat="server">
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt>

					<img src="images/wolftec.png" alt="IMG"/>
					<center><h1 link href="https://fonts.googleapis.com/css?family=Noto+Serif" rel="main.css">Wolftec</h1><center/>
				</div>

				<form class="login100-form validate-form" id="form3" runat="server">

					<span class="login100-form-title">
						Recuperação de Senha
					</span>

					<div class="wrap-input100 validate-input" data-validate = "Digite um email válido: ex@abc.xyz">
						<input class="input100" type="text" name="email" placeholder="Digite o Email cadastrado">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>
					
					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
							Enviar
						</button>
					</div>

					<div class="text-center p-t-136">
						<a  class="txt2" href="Default.aspx">
							Voltar para página inicial
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
			
				</form>
			</div>
		</div>
	</div>
	
	

	
<!--===============================================================================================-->	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/tilt/tilt.jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>
</body>
</html>
