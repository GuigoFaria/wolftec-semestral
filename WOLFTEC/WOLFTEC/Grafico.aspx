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
      google.charts.load('current', {'packages':['gauge']});
      google.charts.setOnLoadCallback(drawChart);

      function media() {
      	var http = new XMLHttpRequest();
        http.open('GET', 'http://localhost:3000/api', false);
        http.send(null);        
		
        var dados = JSON.parse(http.responseText);
        return dados.average;
      }

      function drawChart() {

			

        var data = google.visualization.arrayToDataTable([
          ['Label', 'Value'],
          ['Tempo Real', 0],
          ['Mínima', 19],
          ['Máxima', 28]
        ]);

        var options = {
       	  min: 15, max:35,
          width: 270, height: 550,
          redFrom: 30, redTo: 35,
          yellowFrom:25, yellowTo: 30,
          minorTicks: 5
        };

        var chart = new google.visualization.Gauge(document.getElementById('chart_div'));

        chart.draw(data, options);

        setInterval(function () {
            $.ajax({
                type: 'POST',
                dataType: 'json',
                contentType: 'application/json',
                url: 'CapturaDadosDoBanco.aspx/TemperaturaAtual',
                data: '{}',
                success: function (response) {
                    data.setValue(0, 1, response.d);
                    chart.draw(data, options);
                },
                error: function () {
                }
            });
          data.setValue(0, 1, media());
          chart.draw(data, options);
        }, 1000);
      }
    </script>


    <script type="text/javascript">
        google.charts.load('current', { packages: ['corechart', 'line'] });
        google.charts.setOnLoadCallback(desenharGrafico);

        var total = 0, grafico = null, data = null;

        function desenharGrafico() {
            if (data == null) {
                data = new google.visualization.DataTable();
                data.addColumn('number', 'Tempo: ');
                data.addColumn('number', 'Temperatura ºC: ');

                grafico = new google.visualization.LineChart(document.getElementById('graficodiv'));
            }

            grafico.draw(data, { title: "Média" });

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
				<li><a href="#serviços">Serviços</a></li>
				<li><a href="https://wolftec.freshdesk.com/support/home">Suporte e FAQ </a></li>
				<li><a href="Default.aspx">Logout</a></li>
			</ul>
		</nav>

		
	<center><h1 style="color:white;">Seja bem vindo, <asp:literal ID="Nome" Text="-" runat="server" /></h1><center>

		
	<div class="divgraf">
		<div class="graf1"  id="chart_div">
			
		</div>

		<div class="analytics">
			<div><h3 style="color:white;">Mínimo:<br /><br /> <asp:literal ID="Minimo" Text="-" runat="server" OnLoad="Minimo_Load" /></h3></div>
			<div><h3 style="color:white;">1°Quartil:<br /><br /><asp:literal ID="Quartil1" Text="-" runat="server" OnLoad="Quartil1_Load"/></h3></div>
			<div><h3 style="color:white;">Mediana: <br /><br /><asp:literal ID="Mediana" Text="-" runat="server" OnLoad="Mediana_Load" /> </h3></div>
			<div><h3 style="color:white;">3°Quartil:<br /><br /><asp:literal ID="Quartil3" Text="-" runat="server" OnLoad="Quartil3_Load" /></h3></div>
			<div><h3 style="color:white;">Máximo:<br /><br /><asp:literal ID="Maximo" Text="-" runat="server" OnLoad="Maximo_Load" /></h3></div>
		</div>

		<div class="graf">
			<div style="width:900px; height:500px;"    id ="graficodiv"></div>

	   </div>
	</div>

<script type="text/javascript" src="http://assets.freshdesk.com/widget/freshwidget.js"></script>
<script type="text/javascript">
        FreshWidget.init("", { "queryString": "&widgetType=popup", "utf8": "✓", "widgetType": "popup", "buttonType": "text", "buttonText": "Feedback", "buttonColor": "white", "buttonBg": "#FF0000", "alignment": "4", "offset": "235px", "formHeight": "500px", "url": "https://wolftec.freshdesk.com" });
</script>
	
</body>
</html>