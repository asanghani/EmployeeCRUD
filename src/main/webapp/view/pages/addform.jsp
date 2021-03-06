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
<!-- Page-Stylesheet   -->	<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
					   </head>
					   
					   <body>
							<div id="page_area">      
<!-- logo_area         -->	    <div id="logo_area" >           Logo           </div>
<!-- banner_area       -->		<div id="banner_area">          banner         </div>
<!-- topnav_area       -->		<div id="topnav_area">          <%@include file="/view/template/menubar.jsp" %>     </div>
<!-- leftpanel_area    -->		<div id="leftmenupanel_area" >  <%@include file="/view/template/sidemenubar.jsp" %> </div>
<!-- contentpanel_area -->		
<div id="containt_area" >      
     <form:form method="POST" action="create.do" commandName="emodel">    
	    <fieldset class="fildset_style1">    
 		   <legend>Student Information:</legend>
 		   <p>
		       <form:label path="EId">EId</form:label>
		       <form:input path="EId" id="EId" />
		       <form:errors path="EId" cssClass="error" />
		   </p><p>		
		   	   <form:label path="FirstName">FirstName</form:label>
		       <form:input path="FirstName" />
		       <form:errors path="FirstName" cssClass="error" />
		    </p><p>	
		       <form:label path="LastName">LastName</form:label>
		       <form:input path="LastName" />
		       <form:errors path="LastName" cssClass="error" />
		   </p><p>	   
		       <form:label path="MiddleName">MiddleName</form:label>
		       <form:input path="MiddleName" />
		       <form:errors path="MiddleName" cssClass="error" />
		    </p><p>	
		       <form:label path="Age">Age</form:label>
		       <form:input path="Age" />
		       <form:errors path="Age" cssClass="error" />
		   </p><p>	    
		       <form:label path="Phone">Phone</form:label>
		       <form:input path="Phone" />
		       <form:errors path="Phone" cssClass="error" />
		   </p><p>	    
		       <form:label path="Address">Address</form:label>
		       <form:input path="Address" />
		       <form:errors path="Address" cssClass="error" />
	       </p><p>		 
		       <input type="submit" value="Submit"/>
		   </p>     
		</fieldset>
	</form:form>
 </div>
<!-- rightpanel_area   -->		<div id="rightmenupanel_area" > <%@include file="/view/template/right_sidemenubar.jsp" %> </div>
</div>	<!-- mainpage-end -->
<!-- footer_area       -->	    <div id="footer_area" >         Footer         </div>		  
</body>
</html>
