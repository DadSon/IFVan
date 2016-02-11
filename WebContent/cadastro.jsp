<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastro</title>
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
	width: 438px;
	min-height: 400px;
	border: 2px solid blue;
}

#direita {
	float: right;
	width: 150px;
	min-height: 400px;
	border: 2px solid yellow;
}

#menu {
	width: 150px;
	height: 400px;
}

.itemMenu {
	width: 140px;
	height: 21px;
	background-color: lightyellow;
	padding: 3px 0px 0px 10px;
	border-bottom: 1px solid black;
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
	width: 428px;
	height: 150px;
	text-align: center;
	background-color: #cccccc;
	margin: 2px 5px 4px 5px;
}

.secao_direita {
	width: 140px;
	height: 100px;
	text-align: center;
	background-color: #cccccc;
	margin: 4px 5px 4px 5px;
}

#rodape_direita {
	float: right;
	width: 200px;
	text-align: right;
	margin: 5px 10px 0px 0px
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

	<center>
		<h1>IFVan</h1>
	</center>
	<form action="CadastrarServ" method="post">
		<fieldset>
			<legend>
				<h3>Cadastro</h3>
			</legend>
			<table cellspacing="10">
				<tr>
					<td><label for="nome">Nome: </label></td>
					<td align="left"><input type="text" name="nome"></td>
				</tr>
				<tr>
					<td><label for="usuario">Usuário: </label></td>
					<td align="left"><input type="text" name="usuario"></td>
				</tr>
				<tr>
					<td><label for="senha">Senha: </label></td>
					<td align="left"><input type="text" name="senha"></td>
				</tr>
				<tr>
					<td><label for="tipodepassagem">Tipo de passagem: </label></td>
					<td align="left"><select name="tipodepassagem">
							<option value="inteira">Inteira</option>
							<option value="estudantes">Estudantes</option>
							<option value="idosos">Idosos</option>
					</select>
				</tr>
			</table>

		</fieldset>
		<br>
		<input type="submit" value="Cadastrar"> <input type="reset"
			value="Limpar">

	</form>

</body>
</html>