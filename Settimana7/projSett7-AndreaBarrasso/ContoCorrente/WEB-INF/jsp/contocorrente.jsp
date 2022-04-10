<%@page import="it.data.ContoCorrenteDAO"%>
<%@page import="it.business.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>


<%
Integer numeroconto = (Integer) request.getAttribute("numeroconto");
String operazione = (String) request.getAttribute("operazione");
Float saldo = (Float) request.getAttribute("saldo");
boolean success = (boolean) request.getAttribute("success");
String messaggio = (String) request.getAttribute("messaggio");


String colore = "green";
if(!success) {
	colore = "red";
}
%>
<style>
	div {background-color: <%=colore%> }
</style>
<meta charset="UTF-8">
<title>Banca Epicode</title>
</head>

<body>
	<%
	BancomatEJB bejb = new BancomatEJB();
	ContoCorrenteDAO conto = new ContoCorrenteDAO();
	%>
	



	<h1>Banca Epicode</h1>
	<h4>
		NUMERO CONTO : *<%=numeroconto%>*
	</h4>
	<h4>
		OPERAZIONE EFFETTUATA: *<%=operazione%>*
	</h4>
	<%
	conto.esiste(numeroconto);

	%><br> SALDO IMPOSTATO:
	<%=saldo%>
	<br> SALDO ATTUALE
	<%=bejb.getContoCorrente(numeroconto).getSaldo()%>
	<div>
		<h3><%=messaggio %></h3>
	
	</div>


</body>
</html>