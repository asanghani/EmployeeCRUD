<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<%@include file="/view/template/menubar.jsp" %>
		<div style="padding-top: 80px;">
			     <%@include file="/view/template/sidemenubar.jsp" %>
		</div>
		
<h2>Student Information</h2> <br>
<table>
<c:forEach var="emp" items="${emp1}">
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
</c:forEach>

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