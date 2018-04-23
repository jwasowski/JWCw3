<%@ page language="java" contentType="text/htmL; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="domain.LoanApplication"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/htm14/loose.dtd"› 
<html>
<head>
<meta http-equiv="Content-Type" content="text/htmt; charset=UTF-8">
<title>Adress</title>
</head>
<body>
<jsp:useBean id="loan" class="domain.LoanApplication" scope="session" />
<jsp:useBean id="person" class="domain.Person" scope="session" />
<jsp:setProperty property="*" name="person" />
<p>Numer wniosku: ${loan.number}</p>
<p>Osoba: ${person.surname}</p>
<form action="success.jsp">
<label>Miasto: <input type="text" id="city" name="city"/></label><br/>
 <label>Kod pocztowy: <input type="text" id="zipCode" name="zipCode"/></label> <br/>
 <label>Ulica: <input type="text" id="street" name="street"/></label> <br/>
 <label>Numer domu: <input type="text" id="houseNumber" name="houseNumber"/></label> <br/>
 <label>Numer lokalu: <input type="text" id="localNumber" name="localNumber"/></label> <br/>
 <label>Numer telefonu: <input type="text" id="phoneNumber" name="phoneNumber"/></label> <br/>
 <input type="submit" value="nastepny krok"/> 
 </form> 

</body>
</html>