<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.sopra.web.data.CalculTva"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/style.css">
<title>affTva</title>
</head>
<%
	CalculTva zzz = (CalculTva) request.getAttribute("calculTva");
%>
<body>
	<%@ include file="header.jsp"%>
	<br />Montant TTC :
	<br />
	<%=zzz.getTtc()%><br /> ${calculTva.ttc}
	<br /> ${requestScope.calculTva.ttc }

</body>
</html>