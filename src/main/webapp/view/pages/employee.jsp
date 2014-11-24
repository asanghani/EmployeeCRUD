<?xml version="1.0" encoding="UTF-8"?>
<%@page import="java.net.URL"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
<h2>Student Information</h2>
<%@include file="/view/template/menubar.jsp" %>
		<div style="padding-top: 80px;">
			     <%@include file="/view/template/sidemenubar.jsp" %>
		</div>
		
<form:form method="POST" action="read.do" commandName="model">
   <table>
   <tr>
        <td><form:label path="EId">EId</form:label></td>
        <td><form:input path="EId" /></td>
    </tr>
    <tr>
        <td><form:label path="FirstName">FirstName</form:label></td>
        <td><form:input path="FirstName" /></td>
    </tr>
    <tr>
        <td><form:label path="LastName">LastName</form:label></td>
        <td><form:input path="LastName" /></td>
    </tr>
     <tr>
        <td><form:label path="MiddleName">MiddleName</form:label></td>
        <td><form:input path="MiddleName" /></td>
    </tr>
    <tr>
        <td><form:label path="Age">Age</form:label></td>
        <td><form:input path="Age" /></td>
    </tr>
    <tr>
        <td><form:label path="Phone">Phone</form:label></td>
        <td><form:input path="Phone" /></td>
    </tr>
    <tr>
        <td><form:label path="Address">Address</form:label></td>
        <td><form:input path="Address" /></td>
    </tr>
    <tr>
        <td colspan="2">
            <input type="submit" value="Submit"/>
        </td>
    </tr>
</table>  
</form:form>

</body>
</html>