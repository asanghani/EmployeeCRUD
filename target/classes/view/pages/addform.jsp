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
		<form:form method="POST" action="create.do" commandName="emodel">   
		  
		   <fieldset class="fildset_style1">    
 			<legend>Student Information:</legend>
 			<p>
		       <form:label path="EId">EId</form:label>
		       <form:input path="EId" id="EId" />
		       <form:errors path="EId" cssClass="error" />
		   </p>
		   <p>		
		   	   <form:label path="FirstName">FirstName</form:label>
		       <form:input path="FirstName" />
		       <form:errors path="FirstName" cssClass="error" />
		    </p>
		   <p>	
		       <form:label path="LastName">LastName</form:label>
		       <form:input path="LastName" />
		       <form:errors path="LastName" cssClass="error" />
		   </p>
		   <p>	   
		       <form:label path="MiddleName">MiddleName</form:label>
		       <form:input path="MiddleName" />
		       <form:errors path="MiddleName" cssClass="error" />
		    </p>
		   <p>	
		       <form:label path="Age">Age</form:label>
		       <form:input path="Age" />
		       <form:errors path="Age" cssClass="error" />
		   </p>
		   <p>	    
		       <form:label path="Phone">Phone</form:label>
		       <form:input path="Phone" />
		       <form:errors path="Phone" cssClass="error" />
		   </p>
		   <p>	    
		       <form:label path="Address">Address</form:label>
		       <form:input path="Address" />
		       <form:errors path="Address" cssClass="error" />
	       </p>
		   <p>		 
		       <input type="submit" value="Submit"/>
		   </p>     
		   </fieldset>
		</form:form>
      </div>
</body>
</html>