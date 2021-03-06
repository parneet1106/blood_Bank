<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form"  prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Donor</title>
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
  padding: 10px 10px;
}
</style>


</head>
<body>

<div>
<form:form action="/addDonor" modelAttribute="command"  method="post">
<div class = header>
<h1 align="center">DONOR REGISTRATION</h1>
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
	<td><label for="">Donor Name</label></td>
	<td><form:input path="donorName"/>
	<form:errors path="donorName" cssStyle="color:red;"></form:errors></td>
	</tr>

	<tr>
	<td><label for="">Gender </label></td>
	<td><form:radiobutton path = "gender" value = "Female" />Female 
 	<form:radiobutton path = "gender" value = "Male" />Male </td>
	</tr>
	
	<tr>
	<td><label for="">Age</label></td>
	<td><form:input path="age"/>
	<form:errors path="age" cssStyle="color:red;"></form:errors></td>
	</tr>
	
	<tr>
	<td><label for="">Blood Group</label></td>
	<td><form:select path="bloodGroup" items="${bloodgroup}"></form:select></td>
	</tr>
	<br>
	<tr>
	<td><label for="">Last Blood Donation Date</label></td>
	<td><form:input type="date" path="lastBloodDonationDate"/></td>
	</tr>
	
	<tr>
	<td><label for="">Email</label></td>
	<td><form:input path="email"></form:input></td>
	</tr>
	
	<tr>
	<td><label for="">Phone Number</label></td>
	<td><form:input path="phoneNumber"/>
	<form:errors path="phoneNumber" cssStyle="color:red;"></form:errors></td>
	</tr>
	
	<tr>
	<td><label for="">State</label></td>
	<td><form:input path="state"></form:input></td>
	</tr>
	<br>
	<tr>
	<td><label for="">City</label></td>
	<td><form:input path="city"></form:input></td>
	</tr>
	
	<tr>
	<td></td>
	<td><input type="submit" value="Register"></td>
	</tr>
	</table>
</form:form>
</div>
</body>
</html>