<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://www.springframework.org/tags/form"  prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RegistrationForCamp</title>
<style type="text/css">
body{
  margin:0;
}
table {

margin-left:auto;
margin-right:auto;
border-collapse:collapse;
}
h1{
   font-size: 50px;
}
table{
width: 50%;

}

.header {
  overflow: hidden;
  background-color: lightblue;
  padding: 20px 10px;
  

</style>
</head>
<body>
<div>
<form:form action="/registerCamp" modelAttribute="command"  method="post">
<div class = header>
<h1 align="center">REGISTER FOR CAMP</h1>
</div>

<br>
<br>
<table>
	<tr>
	<td><label for="">Donor ID</label></td>
	<td><form:input path="donorId"/>
	<form:errors path="donorId" cssStyle="color:red;"></form:errors></td>
	</tr>
	<tr>
	<td><label for="">City</label></td>
	<td><form:input path="city"></form:input></td>
	</tr>
	<tr>
	<td><label for="">Phone Number</label></td>
	<td><form:input path="phoneNumber"/>
	</tr>
	<tr>
	<td><label for="">Camp Date</label></td>
	<td><form:input type="date" path="campDate"/></td>
	</tr>
	<tr>
	<td></td>
	<td><input type="submit" value="Register For Camp"></td>
	</tr>
	</table>
</form:form>
</div>
</body>
</html>