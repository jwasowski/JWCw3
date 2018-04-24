<%@ page language="java" contentType="text/htmL; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Random"%>
<%@ page import="java.util.Date"%>
<%@ page import="domain.LoanApplication"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/htm14/loose.dtd"› 
<html>
<head>
<meta http-equiv="Content-Type" content="text/htmt; charset=UTF-8">
<title>Loan Parameters</title>
</head>
<body>
	<%!private Random generator = new Random();%>
	<%
		String number = "" + generator.nextInt();
	%>
	<jsp:useBean id="loan" class="domain.LoanApplication" scope="session" />
	<jsp:setProperty property="number" name="loan" value="<%=number%>" />
	<jsp:setProperty property="date" name="loan" value="<%=new Date()%>" />
	<p>
		Wygenerowany numer wniosku:
		<%=loan.getNumber()%></p>
	<p>
		Data wygenerowania:
		<%=loan.getDate()%></p>
	<%
		session.setAttribute("formNumber", loan.getNumber());
	%>
	<form action="person.jsp">
		<label>Wnioskowana kwota: <input type="number" id="amount"
			name="amount" /></label> <br /> <label>Ilosc rat: <input
			type="number" id="installmentCount" name="installmentCount" /></label><br />
		<input type="submit" value="nastepny krok" />
	</form>
	<p><a href="/index.jsp">Wroc do strony glownej</a></p>
</body>
</html>