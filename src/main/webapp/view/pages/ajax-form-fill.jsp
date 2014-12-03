<!doctype html>
<html lang="en">
		
<!-- spring-formTag   -->	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- jsp/jstl-formTag -->	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
				
						<head>
						    <meta charset="utf-8">
<!-- jquery-nativefile -->	<link href="<c:url value="/resources/css/jquery-ui.min.css" />" rel="stylesheet">
							<link href="<c:url value="/resources/css/jquery-ui.structure.min.css" />" rel="stylesheet">
							<link href="<c:url value="/resources/css/jquery-ui.theme.min.css" />" rel="stylesheet">
							<script src="<c:url value="/resources/js/jquery-2.1.1.min.js" />"></script>
							<script src="<c:url value="/resources/js/jquery-ui.min.js" />"></script>
							<script src="<c:url value="/resources/js/ajax_test.js" />"></script>
<!-- Page-Stylesheet   -->	<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
					   </head>
					   
<body>
							
  <div id="page_area">      
		
		<!-- logo_area         -->	    
		        <div id="logo_area" >Logo</div>
		
		<!-- banner_area       -->		
		        <div id="banner_area">banner</div>
		
		<!-- topnav_area       -->		
		        <div id="topnav_area"><%@include file="/view/template/menubar.jsp" %></div>
		
		<!-- leftpanel_area    -->		
		        <div id="leftmenupanel_area" ><%@include file="/view/template/sidemenubar.jsp" %> </div>
		
		<!-- contentpanel_area -->		
		        <div id="containt_area" >      
		             
		<form:form id="form" method="POST" action="create.do" commandName="emodel">
				
					<h2>Using spring from-without for-each</h2> <br>
					<form:select  id="select_1" path="FirstName" onchange="getemp();">
								<form:option value="NONE" label="-------- Select --------"/>
								<form:options items="${model.emp1}" itemValue="eId" itemLabel="FirstName" />  
					</form:select>	    
			    <fieldset class="fildset_style1">    
		 		   <legend>Student Information:</legend>
		 		   <p>
				       <form:label path="EId">EId</form:label>
				       <form:input path="EId" id="EId" />
				       <form:errors path="EId" cssClass="error" />
				   </p><p>		
				   	   <form:label path="FirstName">FirstName</form:label>
				       <form:input path="FirstName" id="firstname" />
				       <form:errors path="FirstName" cssClass="error" />
				    </p><p>	
				       <form:label path="LastName">LastName</form:label>
				       <form:input path="LastName" id="lastname"/>
				       <form:errors path="LastName" cssClass="error" />
				   </p><p>	   
				       <form:label path="MiddleName">MiddleName</form:label>
				       <form:input path="MiddleName" id="middlename"/>
				       <form:errors path="MiddleName" cssClass="error" />
				    </p><p>	
				       <form:label path="Age">Age</form:label>
				       <form:input path="Age" id="age"/>
				       <form:errors path="Age" cssClass="error" />
				   </p><p>	    
				       <form:label path="Phone">Phone</form:label>
				       <form:input path="Phone" id="phone"/>
				       <form:errors path="Phone" cssClass="error" />
				   </p><p>	    
				       <form:label path="Address">Address</form:label>
				       <form:input path="Address" id="address"/>
				       <form:errors path="Address" cssClass="error" />
			       </p><p>		 
				       <input type="submit" value="Submit"/>
				   </p>     
				</fieldset>
	</form:form>
		         
		         
		         
		                 
		        </div>
		
		<!-- rightpanel_area   -->		
		        <div id="rightmenupanel_area" ><%@include file="/view/template/right_sidemenubar.jsp" %> </div>
   </div>	
        <!-- footer_area       -->	    
                <div id="footer_area" >Footer</div>		  

</body>
</html>






























<%-- <!doctype html>
<html lang="en">
		
<!-- spring-formTag   -->	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- jsp/jstl-formTag -->	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
				
						<head>
						    <meta charset="utf-8">
<!-- jquery-nativefile -->	<link href="<c:url value="/resources/css/jquery-ui.min.css" />" rel="stylesheet">
							<link href="<c:url value="/resources/css/jquery-ui.structure.min.css" />" rel="stylesheet">
							<link href="<c:url value="/resources/css/jquery-ui.theme.min.css" />" rel="stylesheet">
							<script src="<c:url value="/resources/js/jquery-2.1.1.min.js" />"></script>
							<script src="<c:url value="/resources/js/jquery-ui.min.js" />"></script>
<!-- Page-Stylesheet   -->	<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
					   </head>
					   
<body>
							
  <div id="page_area">      
		
		<!-- logo_area         -->	    
		        <div id="logo_area" >Logo</div>
		
		<!-- banner_area       -->		
		        <div id="banner_area">banner</div>
		
		<!-- topnav_area       -->		
		        <div id="topnav_area"><%@include file="/view/template/menubar.jsp" %></div>
		
		<!-- leftpanel_area    -->		
		        <div id="leftmenupanel_area" ><%@include file="/view/template/sidemenubar.jsp" %> </div>
		
		<!-- contentpanel_area -->		
		        <div id="containt_area" >      
		                 
		        </div>
		
		<!-- rightpanel_area   -->		
		        <div id="rightmenupanel_area" ><%@include file="/view/template/right_sidemenubar.jsp" %> </div>
   </div>	
        <!-- footer_area       -->	    
                <div id="footer_area" >Footer</div>		  

</body>
</html>
 --%>