<%@ page language="java" contentType="text/htmL; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/htm14/loose.dtd"› 
<html>
<head>
<meta http-equiv="Content-Type" content="text/htmt; charset=UTF-8">
<title>Person</title>
</head>
<body>
	<jsp:useBean id="parameters" class="domain.LoanParameters"
		scope="session" />
	<jsp:useBean id="loan" class="domain.LoanApplication" scope="session" />
	<jsp:setProperty property="*" name="parameters" />
	<p>Numer wniosku: ${loan.number}</p>
	<p>Wnioskowana kwota: ${parameters.amount}</p>
	<form action="adress.jsp">
		<label>Imie: <input type="text" id="firstName"
			name="firstName" /></label><br /> <label>Nazwisko: <input type="text"
			id="surname" name="surname" /></label> <br /> <label>Nr pesel: <input
			type="text" id="pesel" name="pesel" /></label> <br /> <input type="submit"
			value="nastepny krok" />
	</form>
</body>
</html>