<!doctype html>
<html lang="en">

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>
        <meta charset="utf-8">		
		<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
		<script src="<c:url value="/resources/js/jquery-2.1.1.min.js" />"></script>
		<script src="<c:url value="/resources/js/mainscript.js" />"></script>
</head>
<body>
        <%@include file="/view/template/menubar.jsp" %>
		
		
		
		


<h2>Student Information</h2> <br>
<table>

<tr>
<td>EID :</td> <td>${emp.EId}</td>
</tr>
<tr>
<td>FirstName :</td> <td>${emp.firstName}</td>
</tr>
<tr>
<td>MiddleName :</td> <td>${emp.middleName}</td>
</tr>
<tr>
<td>LastName :</td> <td>${emp.lastName}</td>
</tr>
<tr>
<td>Age :</td> <td>${emp.age}</td>
</tr>
<tr>
<td>Phone :</td> <td>${emp.phone}</td>
</tr>
<tr>
<td>Address :</td> <td>${emp.address}</td>
</tr>



<tr>
<td><a href="${pageContext.request.contextPath}/AddForm.do">Add New Employee</a></td>
</tr>
 <tr>
<td><a href="${pageContext.request.contextPath}/GetForm.do">Find Employee</a></td>
</tr>
<tr>
<td><a href="${pageContext.request.contextPath}/DeleteForm.do">Delete Employee</a></td>
</tr>
<tr>
<td><a href="${pageContext.request.contextPath}/UpdateForm.do">Update Employee</a></td>
</tr>   
   	
</table>
</body>
</html>