<?xml version="1.0" encoding="UTF-8"?>
<%@page import="java.net.URL"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<%@include file="/view/template/menubar.jsp" %>
		<div style="padding-top: 80px;">
			     <%@include file="/view/template/sidemenubar.jsp" %>
		</div>
		
<h2>Student Information</h2>
<form:form method="POST" action="delete.do" commandName="emodel">
   <table>
   <tr>
        <td><form:label path="EId">EId</form:label></td>
        <td><form:input path="EId" /></td>
    </tr>
    
</table>  
</form:form>

</body>
</html>