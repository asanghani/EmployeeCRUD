<!doctype html>
<html lang="en">

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<head>
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
	</head>
<body>
	  <div>	
		<%@include file="/view/template/menubar.jsp" %>
	 </div>
	
	<form:form commandName="emodel"> 	
	<div style="margin-left:600px; padding-top: 100px;">
	<h2>Using spring from-without for-each</h2> <br>
	<form:select  id="select_1" path="FirstName">
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
	
	<h2>Car Information</h2> <br>
	<div id="emp_listbox">
		<select >
		<c:forEach var="car" items="${model.carlist}">
		  <option>${car.car_model}</option>
		</c:forEach>
		</select>
	</div>
	
	<div id="emp_table">
	<table>
		<caption>Student Information</caption>
		<thead>
		      <tr>
				<th>CARID</th>
				<th>EMPID</th>
				<th>MANUFACTURER</th>
				<th>CARNUMBER</th>
				<th>CARMODEL</th>
		     </tr>
	   </thead>
	   <tbody>	     
			<tr>
			<c:forEach var="car" items="${model.carlist}">
			   <tr><td>${car.carid}</td>
			   <td>${car.eid}</td>
			   <td>${car.manufacturer}</td>
			   <td>${car.carnumber}</td>
			   <td>${car.car_model}</td></tr>
			</c:forEach>   		
			</tr>
	</tbody>
	<tfoot>
	    <tr>
	       <td colspan="5">colspan use--you can try rowsapn too</td>
	    </tr>
	</tfoot>
	</table>
	
	</div>
	
	
	
	
	
	
</body>
</html>