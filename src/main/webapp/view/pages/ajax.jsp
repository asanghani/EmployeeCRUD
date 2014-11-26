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
<!-- logo_area         -->	    <div id="logo_area" >           Logo           </div>
<!-- banner_area       -->		<div id="banner_area">          banner         </div>
<!-- topnav_area       -->		<div id="topnav_area">          <%@include file="/view/template/menubar.jsp" %>     </div>
<!-- leftpanel_area    -->		<div id="leftmenupanel_area" >  <%@include file="/view/template/sidemenubar.jsp" %> </div>
<!-- contentpanel_area -->		
<div id="containt_area" >      
  
  <form:form commandName="emodel"> 	
	<div style="padding-top: 100px;">
	<h2>Using spring from-without for-each</h2> <br>
	
			<form:select  id="select_1" path="FirstName" onchange="getemp();">
						<form:option value="NONE" label="-------- Select --------"/>
						 <form:options items="${model.emp1}" itemValue="eId" itemLabel="FirstName" />  
			</form:select>	
	</div>	
	</form:form>
		

	<div style="margin-bottom: 50px;" id="test">Ajax refresh goes here.....</div>
	
	<div id="emp_table">
	<table>
		<caption>Student Information</caption>
		<thead>
		      <tr>
				<th>ID</th>
				<th>FirstName</th>
				<th>MiddleName</th>
				<th>LastName</th>
				<th>Age</th>
				<th>Phone</th>
				<th>Address</th>
		     </tr>
	   </thead>
	   <tbody>	     
			<tr>
			<c:forEach var="emp" items="${model.emp1}">
			   <tr><td>${emp.EId}</td>
			   <td>${emp.firstName}</td>
			   <td>${emp.lastName}</td>
			   <td>${emp.middleName}</td>
			   <td>${emp.age}</td>
			   <td>${emp.phone}</td>
			   <td>${emp.address}</td></tr>
			</c:forEach>   		
			</tr>
	</tbody>
	<tfoot>
	    <tr>
	       <td colspan="7">colspan use--you can try rowsapn too</td>
	    </tr>
	</tfoot>
	</table>
	
	</div>
  
  
  
  
 </div>
<!-- rightpanel_area   -->		<div id="rightmenupanel_area" > <%@include file="/view/template/right_sidemenubar.jsp" %> </div>
</div>	<!-- mainpage-end -->
<!-- footer_area       -->	    <div id="footer_area" >         Footer         </div>		  
</body>
</html>
