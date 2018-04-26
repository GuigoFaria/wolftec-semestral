﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Grafico.aspx.cs" Inherits="WOLFTEC.Grafico" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    	<title>WOLFTEC-Gráfico</title>
    <link rel="icon" type="image/png" href="images/wolftec.png"/>
	<link rel="stylesheet" type="text/css" href="css/css pagina grafico.css"/>
	<link rel="stylesheet" type="text/css" href="css/normalize.css"/>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment.min.js"></script>
	<script src="http://www.chartjs.org/dist/2.7.1/Chart.js"></script>
	<script src="http://www.chartjs.org/samples/latest/utils.js"></script>
	<style>
		canvas {
			-moz-user-select: none;
			-webkit-user-select: none;
			-ms-user-select: none;
		}
	</style>
</head>
<body runat="server">
    <nav>
			<a href="#">WOLFTEC</a>
			<ul>
				<li><a href="#serviços">SERVIÇOS</a></li>
				<li><a href="#contato">CONTATO</a></li>
				<li><a href="Default.aspx">LOGOUT</a></li>
			</ul>
		</nav>

		<section>
		<center><h1>Média: <label id='average'>0.00</label></h1></center>
	</section>
	<section style="width:100%">
		<canvas id="chart"></canvas>
	<section>
	<script>

		var context = document.getElementById("chart").getContext("2d");
		context.canvas.width = 500;
		context.canvas.height = 150;
        
        var configuration = {
			type: 'line',
			data: {
				datasets: [{
					backgroundColor: window.chartColors.red,
					label: "Temperatura x Tempo",
					backgroundColor: window.chartColors.blue,
					type: 'line',
				}]
			},
			options: {
				scales: {
					xAxes: [{
						//type: 'value',
						distribution: 'series',
                        ticks: {
                            beginAtZero:true
                        }
					}],
					yAxes: [{
						scaleLabel: {
							display: true,
							labelString: 'Temperature'
                        },
                        ticks: {
                            beginAtZero:true
                        }
					}]
				},
				animation: {
					duration: 0
				}
			}
        };
        
		var chart = new Chart(context, configuration);

        //Função para obter os dados de temperatura do server
        //Seria mais interessante fazer isso com WebSocket, porém para fins academicos, os dados serão atualizados via HTTP
        
        //Esse atributo dentro do contexto serve para saber qual foi o último índice processado, assim eliminado os outros elementos na
        //hora de montar/atualizar o gráfico
        this.lastIndexTemp = 0;
        this.time = 0;

        function get_data(){

            var http = new XMLHttpRequest();
            http.open('GET', 'http://localhost:3000/api', false);
            http.send(null);        
			
            var obj = JSON.parse(http.responseText);

            if (obj.data.length == 0){
                return;
            }

            var _lastIndexTemp = this.lastIndexTemp;
            this.lastIndexTemp = obj.data.length;
            listTemp = obj.data.slice(_lastIndexTemp);

            listTemp.forEach(data => {
                //Máximo de 60 itens exibidos no gráfico
                if (chart.data.labels.length == 10 && chart.data.datasets[0].data.length == 10){
                    chart.data.labels.shift();
                    chart.data.datasets[0].data.shift();
                }

                chart.data.labels.push(this.time++);
                chart.data.datasets[0].data.push(parseFloat(data));
                chart.update();
			});
			
            document.getElementById('average').textContent = obj.average
		} 
		
		get_data();

        setInterval(() => {
            get_data();
        }, 1000);

	</script>
</body>
</html>