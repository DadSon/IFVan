<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body {
	margin: 0px;
	background-color: #cccccc;
	font-family: "Trebuchet MS", Tahoma, Arial, Verdana;
	font-size: 12px;
	color: #000;
}

#todo {
	position: relative;
	width: 750px;
	border: 1px solid black;
	margin: 0px auto;
	background-color: white;
}

#topo {
	position: relative;
	width: 746px;
	height: 100px;
	border: 2px solid red;
}

#meio {
	position: relative;
	width: 750px;
	min-height: 400px;
	background-color: #eeeeee;
}

#rodape {
	width: 746px;
	height: 75px;
	border: 2px solid brown;
}

#esquerda {
	float: left;
	width: 150px;
	min-height: 400px;
	border: 2px solid green;
}

#miolo {
	float: left;
	width: 747px;
	min-height: 400px;
	border: 2px solid blue;
}


#logo {
	float: left;
	width: 200px;
	height: 100px;
	text-align: center;
	background-color: #cccccc;
	margin-right: 20px;
}

.secao_miolo {
	width: 680px;
	height: 150px;
	text-align: center;
	background-color: #cccccc;
	margin: 2px 5px 4px 5px;
}


#rodape_direita a {
	color: #cc6600;
	text-decoration: none;
}

#rodape_direita a:hover {
	color: #cc6600;
	text-decoration: underline;
}
</style>
</head>
<body>
	<div id="todo">
		<div id="topo">
			<div id="logo">Logo</div>
			<img src="" alt="" height="100"
				width="525">


		</div>
		<div id="meio">
			<div id="miolo">
				<div class="secao_miolo">
					<h1>
						<center>Mapa de Assentos IFVan</center>
					</h1>
					<br>
					<h3>Legenda:"_____" Ocupado "______" Disponível</h3>
					<br>
					<h3>Preço da Passagem: R$ 25,00</h3>
				</div>
				<div class="secao_miolo">
					<h3>
						<a href="comprar.jsp">Comprar uma passagem</a>
					</h3>

					<h3>
						<a href="cancelar.jsp">Cancelar uma passagem</a>
					</h3>

					<h3>
						<a href="calcular.jsp">Calcular o total apurado em passagens</a>
					</h3>

					<h3>
						<a href="check-in.jsp">Check-in de embarque</a>
					</h3>
				</div>
			</div>
			<div style="clear: both;"></div>
		</div>
</body>
</html>