﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WOLFTEC.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>WOLFTEC</title>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans|Roboto|Roboto+Condensed|Share+Tech|Share+Tech+Mono" rel="stylesheet"/>	
	<link rel="stylesheet" type="text/css" href="css/css site prototipo.css"/>
	<link rel="stylesheet" type="text/css" href="css/normalize.css"/>
    <link rel="icon" type="image/png" href="images/wolftec.png"/>
</head>
<body runat="server">
 <nav style="color:blue">
			<a href="#">WOLFTEC</a>
			<ul>
				<li><a href="#sobre">SOBRE</a></li>
				<li><a href="#serviços">SERVIÇOS</a></li>
				<li><a href="#portfolio">PORTFOLIO</a></li>
				<li><a href="#contato">CONTATO</a></li>
				<li><a href="Cadastro.aspx">CADASTRO</a></li>
				<li><a href="Login.aspx">LOGIN</a></li>
			</ul>
		</nav>

		<section id="sobre">
			<!--div img src="images/img fundo.jpg" alt="fundo" width="70px"/-->
            <div>
			<h1 class="red">TECNOLOGIA</h1>
			<p>A tecnologia só é tecnologia para quem nasceu antes dela ter sido inventada.</p>
			<a href="#sobre" class="botao">ver mais</a>
            </div>
			<!--/div-->
		</section>

		<section id="sobre">
			<div>
			<h1>SOBRE</h1>
			<p> A primeira regra de qualquer tecnologia utilizada nos negócios é que a automação aplicada a uma operação eficiente aumentará a eficiência. A segunda é que a automação aplicada a uma operação ineficiente aumentará a ineficiência.</p>
			<a href="#contato" class="botao">ENTRE EM CONTATO</a> </div>

		</section>

		<section id="serviços">
			<h2>SERVIÇOS</h2>
			<div>
				<img src="images/a1.png" alt="medição real" width="70px"/>
				<h3>Medição em tempo real</h3>
				<p> Pelo seu cadastro , é possivel consulta em tempo real a temperatura constatimente.</p>
			</div>
			<div>
				<img src="images/a2.png" alt="grafico da temperatura mensal e semanal" width="70px"/>
				<h3> Graficos.</h3>
				<p>É possivel consulta graficos semanais ,mensais e em datas determinadas.</p>
			</div>
			<div>
				<img src="images/a3.png" width="70px" alt="configuração"/>
				<h3>Configuração</h3>
				<p>É Possivel alterar facilmente as configurações para emissoes de avisos e graficos das temperaturas medidas.</p>
			</div>
		
		</section>

		<section id="portifolio">
			<h2>PORTIFOLIO</h2>
			
				<img src="images/p1.jpg" alt="medição"  width="70px"/>
				<img src="images/p1.jpg" alt="medição"  width="70px"/>
				<img src="images/p2.jpg" alt="medição2" width="70px"/>
				<img src="images/p3.jpg" alt="medição3" width="70px"/>
				<img src="images/p4.jpg" alt="medição4" width="70px"/>
				<img src="images/q1.jpg" alt="medição4" width="70px"/>
				
			
			
			
		</section>

		<section id="contato">
			<h2> CONTATO</h2>
			<p>ENTRE EM CONTATO CONOSCO</p>
			<div>
				<img src="images/g1.png" width="70px" alt="telefone"/>
				<p><a href="tel:xx12457898">(xx) 1245 7898</a></p>
			</div>
				
			<div>
				<img src="images/g2.png" width="70px" alt="email"/>
				<p><a href="WOFLTEC:email@contato.com">email@contato.com</a></p>
			</div>
		</section>

		<footer>
			<p> desenvolvido por WOFLTEC </p>
		</footer>
</body>
</html>