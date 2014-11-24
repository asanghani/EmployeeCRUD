<!DOCTYPE html>
<html lang="en">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <head>
	    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<link href="<c:url value="/resources/css/testcomponent_style.css" />" rel="stylesheet">
		<script src="<c:url value="/resources/js/jquery-2.1.1.min.js" />"></script>
		<script src="<c:url value="/resources/js/mainscript.js" />"></script>
   </head>
<body>
      <!-- ---------------------------------------------------------------Top-Nav-Menu------ -->
    <ul id="nav">
		<li><a href="${pageContext.request.contextPath}/view/pages/welcome.jsp">Home</a></li>
		<li><a href="${pageContext.request.contextPath}/AddForm.do">Add New Employee</a></li>
		<li><a href="${pageContext.request.contextPath}/GetForm.do">Find Employee</a></li>
		<li><a href="${pageContext.request.contextPath}/DeleteForm.do">Delete Employee</a></li>
		<li><a href="${pageContext.request.contextPath}/UpdateForm.do">Update Employee</a></li>
		<li><a href="${pageContext.request.contextPath}/view/pages/component.jsp">TestComponent</a></li>
		<li><a href="${pageContext.request.contextPath}/view/pages/basictemp.jsp">BasicTemplate</a></li>
	</ul>	
	     <!-- ----------------------------------------------------------------Drop-down-------- -->
	<select>
  		<option>Milk</option>
  		<option>Coffee</option>
  		<option>Tea</option>
	</select>
				<!-- -----------------------------------------------------------FirstForm-with-Fildset-------- -->
	<div id="contact-form">    
 
   <form id="contact" method="post" action="">
        <fieldset class="fildset_style">    
 			<legend>Contact:</legend>
 			
			<label for="name">Name</label>
			<input type="text" name="name"><br>
			 
			<label for="email">E-mail</label>
			<input type="email" name="email"><br>
			 
			<label for="phone">Phone</label>
			<input type="text" name="phone"><br>
			 
			<label for="website">Website</label>
			<input type="url" name="url"><br>
			
			<label for="Listbox">Listbox</label>
			<select>
  		           <option>Milk</option>
  		          <option>Coffee</option>
  		             <option>Tea</option>
	        </select><br>
			
			<label for="Option">Option</label>
			<input type="radio" name="radFriendship" value="Not_Applicable" id="radFriendNot_Applicable"/>
            <label for="radFriendNot_Applicable">Not_Applicable</label>
            <input type="radio" name="radFriendship" value="acquaintance" id="radFriendaquaintence"/>
            <label for="radFriendaquaintence">acquaintance</label>
            <input type="radio" name="radFriendship" value="friend" id="radFriendfriend"/>
            <label for="radFriendfriend">friend</label><br><br>
			
			<label for="cb11">Brithday</label>
			<input type="date" id="birthday" name="birthday" size="20" /><br>
			
			<label for="cb1">Pepperoni</label>
			<input type="checkbox" id="cb1" value="pepperoni" /><br> 
			 
			<label for="cb2">Sausage</label>
			<input type="checkbox" id="cb2" value="sausage" /><br>
			
			<label for="cb3">Mushrooms</label>
			<input type="checkbox" id="cb3" value="mushrooms" /><br> 
			 
			<label for="message">Comment</label>
			<textarea name="message"></textarea><br> 			
          
			<input type="submit" name="submit" id="submit" value="Send Message" />
         </fieldset>  
     </form>
     <!-- -----------------------------------------------------------SecondForm-with-Fildset-------- -->
	<form id="example_form">

    <fieldset>
   
        <legend>Please login</legend>
       
        <label for="example_email">Email Address</label>
        <input type="text" size="20" name="example_email" id="example_email" />
       
        <label for="example_password">Password</label>
        <input type="password" size="20" name="example_password" id="example_password" />
        
        <input type="submit" value="Login" />
       
    </fieldset>
	
	
</form> 
 
</div> 
	<!-- ----------------------------------------------------------------xxxxxxxxxxxxxx-------- -->	
</body>
</html>
