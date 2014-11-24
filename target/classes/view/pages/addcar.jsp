<!doctype html>
<html lang="en">

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>
<meta charset="utf-8">
		<style type="text/css">
			.fildset_style1{width: 500px;}		
			.fildset_style1 label{float: left;width: 100px;}
			.error {color: #ff0000;}
            .errorblock{color: #000;background-color: #ffEEEE;border: 3px solid #ff0000;padding:8px;margin:16px;}		
		</style>
		<script type="text/javascript">
		     function validate_form() {
		    	 
		    	 var EId = document.getElementById('EId').value;
		    	 
		    	 if(EId==""){
		    		 alert('Plese enter value');
		    		 return false;
		    	 }else{
		    		 return true; 
		    	 }
				
			}
		
		</script>
</head>
<body>
		<%@include file="/view/template/menubar.jsp" %>
		
		
		<div style="margin-left: 300px;">
		<h2>Student Information</h2>
		
		<%-- <form:form method="POST" action="create.do" commandName="emodel" onsubmit="return validate_form()"> --%>
		<%-- <form:form method="POST" action="${pageContext.request.contextPath}/create.do" commandName="emodel"> --%>
		<form:form method="POST" action="createcar.do" commandName="cmodel">   
		  
		   <fieldset class="fildset_style1">    
 			<legend>Car Information:</legend>
 			<p>
		       <form:label path="carid">CarID</form:label>
		       <form:input path="carid" id="carid" />
		       <form:errors path="carid" cssClass="error" />
		   </p>
		   <p>    
		       <form:label path="eid">EId</form:label>
		       <form:input path="eid" id="eid" />
		       <form:errors path="eid" cssClass="error" />
		   </p>
		   <p>		
		   	   <form:label path="manufacturer">Manufacturer</form:label>
		       <form:input path="manufacturer" />
		       <form:errors path="manufacturer" cssClass="error" />
		    </p>
		   <p>	
		       <form:label path="carnumber">CarNumber</form:label>
		       <form:input path="carnumber" />
		       <form:errors path="carnumber" cssClass="error" />
		   </p>
		   <p>	   
		       <form:label path="car_model">Carmodel</form:label>
		       <form:input path="car_model" />
		       <form:errors path="car_model" cssClass="error" />
		    </p>
		   
		   <p>		 
		       <input type="submit" value="Submit"/>
		   </p>     
		   </fieldset>
		</form:form>
      </div>
</body>
</html>