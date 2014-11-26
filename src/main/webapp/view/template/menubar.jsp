<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
  <head>
		<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
		<script src="<c:url value="/resources/js/jquery-2.1.1.min.js" />"></script>
		<script src="<c:url value="/resources/js/mainscript.js" />"></script>
	
  </head>
<body>
	<ul id="nav">
		<li><a href="${pageContext.request.contextPath}/view/pages/welcome.jsp">Home</a></li>
		<li><a href="${pageContext.request.contextPath}/AddForm.do">Add New Employee</a></li>
		<li><a href="${pageContext.request.contextPath}/AddcarForm.do">Add Car</a></li>
		<li><a href="${pageContext.request.contextPath}/GetForm.do">Find Employee</a></li>
		<li><a href="${pageContext.request.contextPath}/DeleteForm.do">Delete Employee</a></li>
		<li><a href="${pageContext.request.contextPath}/UpdateForm.do">Update Employee</a></li>
		
	</ul>
	
	
</body>



</html>
