<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WOLFTEC.Default" %>

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
				<li><a href="#portfolio">PORTFÓLIO</a></li>
				<li><a href="#contato">CONTATO</a></li>
				<li><a href="Cadastro.aspx">CADASTRO</a></li>
				<li><a href="Login.aspx">LOGIN</a></li>
			</ul>
		</nav>

		<header>
 
  		<section id="sobre">
 			
 		
 		    
 			<h1 class="red">BEM VINDO</h1>
			<p style="font-size:180%;"> A WOLFTEC E UMA EMPRESA DE TECNOLOGIA,ENVOLVENDO DISPOSITIVO IOT (INTERNET DAS COISAS) PARA NOSSA SOLUÇÃO.</p>
			
 		
 			
  		</section>
  
 		</header>

		<section id="sobre">
		   <div>
			<center>
              <h1>SOBRE</h1>
			  <p> Nós somos uma empresa que atua no mercado de IOT, focado em criação de dispositivos, cujo o objetivo é capturar temperatura e mostra-la em tempo real</p>
			</center>
           </div>

		</section>

		<section id="serviços">
			<h2>SERVIÇOS</h2>
			<div>
				<img src="images/a1.png" alt="medição real" width="100px"/>
				<h3>Medição em tempo real</h3>
				<p> Pelo seu cadastro , é possivel consultar em tempo real a temperatura.</p>
			</div>
			<div>
				<img src="images/a2.png" alt="grafico da temperatura mensal e semanal" width="100px"/>
				<h3> Gráficos.</h3>
				<p>É possivel consultar graficos semanais, mensais e em datas determinadas.</p>
			</div>
			<div>
				<img src="images/a3.png" width="100px" alt="configuração"/>
				<h3>Configuração</h3>
				<p>É Possivel alterar facilmente as configurações para emissões de avisos e gráficos das temperaturas medidas.</p>
			</div>
		
		</section>

		<section id="portifolio">
			<h2>PORTFÓLIO</h2>


			<div id="slider">

				<div id="caixa-botoes">
					<div class="botao" onclick="
							document.getElementById('slider').style.background='url(images/PT1.PNG) 100% / 100%';
						">

					</div>

					<div class="botao" onclick="
							document.getElementById('slider').style.background='url(images/PT2.PNG) 100% / 100%';
						">
					</div>
					<div class="botao" onclick="
							document.getElementById('slider').style.background='url(images/TP3.PNG) 100% / 100%';
						">
					</div>

					<div class="botao" onclick="
							document.getElementById('slider').style.background='url(images/PT4.PNG) 100% / 100%';
						">
					</div>

					<div class="botao" onclick="
							document.getElementById('slider').style.background='url(images/PT5.PNG) 100% / 100%';
						">
					</div>

					<div class="botao" onclick="
							document.getElementById('slider').style.background='url(images/PT6.PNG) 100% / 100%';
						">
					</div>
				</div>

			</div>
			

		</section>
        <section id="valores">

			<h2> VALORES</h2>
			<div>
				<img src="images/missao1.png" alt="medição real" width="70px" />
			<h3>MISSÃO</h3>
				<p> Nos tornarmos a maior empresa no seguimento de IOT, Sempre mostrando confinça a nossos cliente, e com total respeito e integridade.</p>
			</div>
			<div>
				<img src="images/visao1.png" alt="grafico da temperatura mensal e semanal" width="70px"/>
			<h3> VISÃO</h3>
				<p> Crescer junto com a tecnologia.</p>
			</div>
			<div>
				<img src="images/valores.png" width="70px" alt="configuração"/>
			<h3>VALORES</h3>
				<p> Satisfação do cliente ,Valorização e respeito às pessoas , Respeito ao Meio Ambiente e  gerenciamento em equipe, consistente e focado </p>
			</div>
            </section>

		<footer>

		   <section id="contato">

			<h2> CONTATO</h2>
			<p>ENTRE EM CONTATO CONOSCO</p>

			<div>
				<img src="images/h6.png"  alt="telefone"/>
				<p><a href="tel:11989597217">(11) 9-8959-7217</a></p>
			</div>
				
			<div>
				<img src="images/h5.png"  alt="email"/>
				<p><a href="https://wolftec.freshdesk.com/support/home">support@wolftec.freshdesk.com</a></p>
			</div>

		  </section>
		</footer>

		
</body>
</html>
