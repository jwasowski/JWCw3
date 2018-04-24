<%@ page language="java" contentType="text/htmL; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="domain.LoanApplication"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/htm14/loose.dtd"› 
<html>
<head>
<meta http-equiv="Content-Type" content="text/htmt; charset=UTF-8">
<title>Success</title>
</head>
<body>
	<jsp:useBean id="loanService" class="service.LoanService"
		scope="application" />
	<jsp:useBean id="loan" class="domain.LoanApplication" scope="session" />
	<jsp:useBean id="parameters" class="domain.LoanParameters"
		scope="session" />
	<jsp:useBean id="person" class="domain.Person" scope="session" />
	<jsp:useBean id="adress" class="domain.Adress" scope="session" />
	<jsp:setProperty property="*" name="adress" />
	<%
		
		loan.setParameters(parameters);
		loan.setPerson(person);
		loan.setAdress(adress);
		loanService.add(loan);
		
	%>
	<ul>
		<%
			for (LoanApplication loanAppilcation : loanService.getAll()) {
		%>

		<li>Wniosek:<%=" "+ loanAppilcation.getNumber() + " Osoba: " + loanAppilcation.getPerson().getSurname()
						 + " Kwota: " + loanAppilcation.getParameters().getAmount() + " Miasto: " 
						 + loanAppilcation.getAdress().getCity() + " Kod pocztowy: " + loanAppilcation.getAdress().getZipCode()
						 + " Ulica: " + loanAppilcation.getAdress().getStreet() + " Numer domu: " + loanAppilcation.getAdress().getHouseNumber()
						 + " Numer lokalu: " + loanAppilcation.getAdress().getLocalNumber() + " Numer telefonu: " 
						 + loanAppilcation.getAdress().getPhoneNumber() %></li>
		<%
			}
		%>
	</ul>
<p><a href="/index.jsp">Wroc do strony glownej</a></p>
</body>
</html>