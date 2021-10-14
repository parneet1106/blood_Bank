<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
table {
border:2px solid orange;
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
<div class=header>
<h1 align="center">CAMP DETAILS</h1>
</div>
<br>
<table>
<tr>
<th>DonorId</th>
<th>City</th>
<th>PhoneNumber</th>
<th>CampDate</th>
</tr>
<c:forEach items="${details}" var="eachItem">
<tr>
	<td>${eachItem.donorId}</td>
	<td>${eachItem.city}</td>
	<td>${eachItem.phoneNumber}</td>
	<td>${eachItem.campDate}</td>
</tr>
</c:forEach>
</table>
</body>
</html>