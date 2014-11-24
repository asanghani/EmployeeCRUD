<!doctype html>
<html lang="en">

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<head>
	<script src="<c:url value="/resources/js/jquery-2.1.1.min.js" />"></script>
	<meta charset="utf-8">
	<style type="text/css">
			#emp_listbox{width: 300px;margin-left: 500px;}
			#emp_listbox select{width: 300px;height: 30px;}
			
			#emp_table{width: 900px;margin-left: 500px}
			#emp_table table{border:1px solid black;border-collapse: collapse;} 
			th,td{border: 1px solid black;padding: 5px;}
			tr:nth-child(2n){background-color: gray;}
			thead{background-color:white;}
	</style>
	
	<script type="text/javascript">
	
	function getemp(){
		/*   var mydata;
		 $.ajax({
			    url: 'ajaxupdate.do',
			    dataType: 'json',
			    success: function( data ) {
			    	 $('#test').text('');
			            
			            
			            	$('#test').append(data[index].firstName);
			           
			    },
			    error: function( data ) {
			      alert( "ERROR:  " + data );
			    }
			  });   */
		
		    $.getJSON("ajaxupdate", {empid: $('#select_1').val()}, function(ajaxupdate){
		        	  	
		            $('#test').text('');
		            
		            for(var index in ajaxupdate){
		            	$('#test').append(ajaxupdate[index].age);
		            }
		         
		         });  
			  
			  
			
	}
	
	</script>
	</head>
<body>
	  <div>	
		<%@include file="/view/template/menubar.jsp" %>
	 </div>
	
	<form:form commandName="emodel"> 	
	<div style="margin-left:600px; padding-top: 100px;">
	<h2>Using spring from-without for-each</h2> <br>
	<form:select  id="select_1" path="FirstName" onchange="getemp();">
				<form:option value="NONE" label="-------- Select --------"/>
				 <form:options items="${model.emp1}" itemValue="eId" itemLabel="FirstName" />  
	</form:select>	
	</div>	
	</form:form>
		
<h2>Student Information</h2> <br>
	<div id="emp_listbox">
		<select >
			<c:forEach var="emp" items="${model.emp1}">
			  <option> ${emp.firstName}</option>
			</c:forEach>
		</select>
		
	</div>
	<div id="test">
	result goes here.....
	
	
	</div>
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
	
	

</body>
</html>