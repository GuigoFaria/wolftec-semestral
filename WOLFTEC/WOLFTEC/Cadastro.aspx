<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cadastro.aspx.cs" Inherits="WOLFTEC.Cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>Cadastro - WolfTec</title>
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
<body id="body2" runat="server">
    <div class="limiter">
		<div class="container-login100">
			<div class="wrap-cadastro100">
				<form class="login100-form validate-form" id="form2" runat="server">
					<div class="login100-pic js-tilt" data-tilt>

					<img src="images/wolftec.png" alt="IMG"/>
				</div>
					<span class="login100-form-title">
						Cadastro
					</span>
					<div class="wrap-input100 validate-input" data-validate = "Insira um nome">
                        <asp:TextBox runat="server" ID="Nome"  class="input100" type="text" name="Nome" placeholder="Nome"/>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-user"></i>
						</span>
					</div>
					<br/>
					<div class="wrap-input100 validate-input" data-validate = "Digite um email válido: ex@abc.xyz">
                        <asp:TextBox runat="server" ID="Email" class="input100" type="text" name="email" placeholder="Email"/>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>	  
					<br/>
					<div class="wrap-input100 validate-input" data-validate = "Insira">
                        <asp:TextBox runat="server" ID="Telefone" class="input100" type="text" name="Telefone" placeholder="Telefone"/>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-phone" aria-hidden="true"></i>
						</span>
					</div>
					<br/>
					<div class="wrap-input100 validate-input" data-validate = "É necessário uma senha">
                        <asp:TextBox runat="server" ID="Senha" class="input100" type="password" name="pass" placeholder="Senha"/>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>
					<br/>
					<div class="wrap-input100 validate-input" data-validate = "Nome do Servidor">
                        <asp:TextBox runat="server" ID="Nome_Server" class="input100" type="text" name="nome_server" placeholder="Nome do Servidor"/>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-database" aria-hidden="true"></i>
						</span>
					</div>
                    <br/>
					<div class="wrap-input100 validate-input" data-validate = "Temperatura Máxima">
                        <asp:TextBox runat="server" ID="Temp_Maxima" class="input100" type="text" name="temp_maxima" placeholder="Temperatura Máxima 0.00"/>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-fire" aria-hidden="true"></i>
						</span>
					</div>
                    <br/>
					<div class="wrap-input100 validate-input" data-validate = "Temperatura Mínima">
                        <asp:TextBox runat="server" ID="Temp_Minima" class="input100" type="text" name="temp_minima" placeholder="Temperatura Mínima 0.00"/>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-snowflake-o" aria-hidden="true"></i>
						</span>
					</div>
					<br/>
					<div class="container-login100-form-btn">
                        <asp:button runat="server" Text="Cadastrar" class="login100-form-btn" OnClick="cadastroBd" />

					</div>

					<div class="text-center p-t-136">
						<a class="txt2" href="Default.aspx">
							Cancelar cadastro
							<i class="fa fa-long-arrow-left m-l-5" aria-hidden="true"></i>
						</a>
					</div>
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
