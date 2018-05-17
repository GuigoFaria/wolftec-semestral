'<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Grafico.aspx.cs" Inherits="WOLFTEC.Grafico" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    	<title>WOLFTEC-Gráfico</title>
    <link rel="icon" type="image/png" href="images/wolftec.png"/>
	<link rel="stylesheet" type="text/css" href="css/css pagina grafico.css"/>
	<link rel="stylesheet" type="text/css" href="css/normalize.css"/>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment.min.js"></script>
    <script src="http://code.jquery.com/jquery-1.8.2.js"></script>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
        google.charts.load('current', { packages: ['corechart', 'line'] });
        google.charts.setOnLoadCallback(desenharGrafico);

        var total = 0, grafico = null, data = null;

        function desenharGrafico() {
            if (data == null) {
                data = new google.visualization.DataTable();
                data.addColumn('number', 'Tempo: ');
                data.addColumn('number', 'Temperatura ºC: ');

                grafico = new google.visualization.LineChart(document.getElementById('chartdiv'));
            }

            grafico.draw(data, { title: "Real Time" });

            setTimeout(function () {
                $.ajax({
                    type: 'POST',
                    dataType: 'json',
                    contentType: 'application/json',
                    url: 'CapturaDadosDoBanco.aspx/TemperaturaAtual',
                    data: '{}',
                    success: function (response) {
                        data.addRow([total, response.d]);
                        total++;
                        desenharGrafico();
                    },
                    error: function () {
                    }
                });
            }, 1000);
        }

    </script>
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
		<div id="chartdiv"></div>
	<section>
	
</body>
</html>
