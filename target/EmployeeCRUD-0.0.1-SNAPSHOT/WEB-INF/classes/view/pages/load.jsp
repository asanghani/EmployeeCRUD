<!doctype html>
<html lang="en">

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>
<meta charset="utf-8">
</head>



<%@include file="/view/template/menubar.jsp" %>

	
	
	<form:form method="POST" action="${pageContext.request.contextPath}/onchangesubmit_using_controller.do" commandName="emodel">  
	
		<form:select id="select_1" path="FirstName" onchange="submit()" >
			<form:option value="NONE" label="--- Select ---"/>
			 <form:options items="${emp_list}" itemValue="FirstName" itemLabel="eId" /> 
			 
	    </form:select>
</form:form>
        
        
         <select>
			<c:forEach var="emp" items="${emp_list}">
			  <option>${emp.firstName}</option>
			</c:forEach>
		</select>

</body>
</html>