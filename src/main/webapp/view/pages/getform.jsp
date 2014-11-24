<!doctype html>
<html lang="en">

		<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

		<head>
		<meta charset="utf-8">
		</head>
<body>
        <%@include file="/view/template/menubar.jsp" %>
		
		
<h2>Student Information</h2>
<form:form method="POST" action="read.do" commandName="emodel">
   <input type="submit" value="List_emp/list_car"/>
</form:form>

</body>
</html>