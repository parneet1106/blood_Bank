<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form"  prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Blood Camp</title>
<style>
* {box-sizing: border-box;}

body{
  margin:0;
}

.header {
  
  overflow: hidden;
  background-color: #379683;
  padding: 20px 10px;
}

.header a {
  float: left;
  color: black;
  text-align: center;
  padding: 12px;
  text-decoration: none;
  font-size: 20px; 
  line-height: 25px;
  border-radius: 4px;
}

.header a.logo {
  font-size: 25px;
  font-weight: bold;
}


.header a:hover {
  border-bottom: 2px solid red;
  
  color: black;
}



.header-left {
  float: right;
}

@media screen and (max-width: 500px) {
  .header a {
    float: none;
    display: block;
    text-align: left;
  }
  
}

h1{
   font-size :50px
   
   }


table {
width : 50%;
height: 90px;
border:2px solid black;
margin-left:auto;
margin-right:auto;
border-collapse:collapse;
}
tr,td,th {
border:2px solid black;
}
</style>
</head>
<body >
<div class="header">
<h1 align="center">${majHeading}</h1>
<br>
  <div class="header-left">
    <a href="addDonor">Register yourself as Donor</a>
<a href="getAllDonors">Donors List</a>
<a href="registerCamp">Registration For Camp</a>
<a href="getAllCampDetails">Reach Us</a>
</div>
</div>
<br>
<br>

<table>
<tr>
<th>SEARCH BY BLOODGROUP</th>
</tr>
<tr>
<td>
<form action="/getBloodGroup">
<a>
<label>Enter BloodGroup : </label>
<input type="text" name="searchbybloodgroup">
<br>
<input type="submit" value="SearchByBloodGroup">
</a>
</form>
</td>
</tr>
</table>

<br>

<table>
<tr>
<th>UNREGISTER</th>
</tr>
<tr>
<td>
<form action="/unregister" >
<label for="">Enter DonorId : </label>
<input type="text" name="value">
<br>
<input type="submit" value="Unregister">
</form>
</td>
</tr>
</table>

<br>

<table>
<tr>
<th>SEARCH BY CITY</th>
</tr>
<tr>
<td>
<form action="/getByCity">
<a>
<label>Enter City : </label>
<input type="text" name="searchbycity">
<br>
<input type="submit" value="SearchByCity">
</a>
</form>
</td>
</tr>
</table>

<br>

<table>
<tr>
<th>SEARCH CAMPS BY DATE</th>
</tr>
<tr>
<td>
<form action="/getByDate">
<a>
<label>Enter Date : </label>
<input type="date" name="searchbyDate">
<br>
<input type="submit" value="SearchCamps">
</a>
</form>
</td>
</tr>
</table>

<br>

<table>
<tr>
<th>UPDATE LAST BLOOD DONATEDDATE</th>
</tr>
<tr>
<td>
<form action="/updateById">
<a>
<label>Enter DonorId   : </label>
<input type="text" name="id">
<br>
<label>Update DonationDate : </label>
<input type="date" name="updateDate">
<br>
<input type="submit" value="Update">
</a>
</form>
</td>
</tr>
</table>
<br>
<br>

</body>
</html>