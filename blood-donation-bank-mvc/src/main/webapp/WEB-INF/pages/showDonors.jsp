<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List of Registered Donors</title>
<style type="text/css">
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
<div class= header>
<h1 align="center">DONORS LIST</h1>
</div>
<br>
<br>
<table>
<tr>
<th>DonorId</th>
<th>Donor Name</th>
<th>Gender</th>
<th>Age</th>
<th>Blood Group</th>
<th>Last Blood Donation Date</th>
<th>Email</th>
<th>PhoneNumber</th>
<th>State</th>
<th>City</th>
</tr>
<c:forEach items="${data}" var="eachItem">
<tr>
	<td>${eachItem.donorId}</td>
	<td>${eachItem.donorName}</td>
	<td>${eachItem.gender}</td>
	<td>${eachItem.age}</td>
	<td>${eachItem.bloodGroup}</td>
	<td>${eachItem.lastBloodDonationDate}</td>
	<td>${eachItem.email}</td>
	<td>${eachItem.phoneNumber}</td>
	<td>${eachItem.state}</td>
	<td>${eachItem.city}</td>
</tr>
</c:forEach>
</table>
</body>
</html>