<!DOCTYPE html>
<html lang="en">

     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <head>
	    <meta charset="utf-8">
		<link href="<c:url value="/resources/css/testcomponent_style.css" />" rel="stylesheet">
		<link href="<c:url value="/resources/css/jquery-ui.min.css" />" rel="stylesheet">
		<link href="<c:url value="/resources/css/jquery-ui.structure.min.css" />" rel="stylesheet">
		<link href="<c:url value="/resources/css/jquery-ui.theme.min.css" />" rel="stylesheet">
		<script src="<c:url value="/resources/js/jquery-2.1.1.min.js" />"></script>
		<script src="<c:url value="/resources/js/jquery-ui.min.js" />"></script>
		<%-- <script src="<c:url value="/resources/js/mainscript.js" />"></script> --%>
		
		
		<script type="text/javascript">
		 
		$(function(){
		$("#birthday").datepicker();	
		$("#sign_up").button();
		$('#optionmenu').selectmenu();
		});
		
		
		</script>
		<style type="text/css">
		select {
		background-color:white;
		      width: 200px;
		    }
		</style>
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
	
	
	
	<input type="text" name="birthday" id="birthday" />
	<input type="submit" id="sign_up" />
		<!-- -----------------------------------------------------------Jquery-table-------- -->
	<table id="example" class="display">
        <thead>
            <tr>
                <th>Name</th>
                <th>Position</th>
                <th>Office</th>
                <th>Age</th>
                <th>Start date</th>
                <th>Salary</th>
            </tr>
        </thead>
 
        <tfoot>
            <tr>
                <th>Name</th>
                <th>Position</th>
                <th>Office</th>
                <th>Age</th>
                <th>Start date</th>
                <th>Salary</th>
            </tr>
        </tfoot>
 
        <tbody>
            <tr>
                <td>Tiger Nixon</td>
                <td>System Architect</td>
                <td>Edinburgh</td>
                <td>61</td>
                <td>2011/04/25</td>
                <td>$320,800</td>
            </tr>
            <tr>
                <td>Garrett Winters</td>
                <td>Accountant</td>
                <td>Tokyo</td>
                <td>63</td>
                <td>2011/07/25</td>
                <td>$170,750</td>
            </tr>
            <tr>
                <td>Ashton Cox</td>
                <td>Junior Technical Author</td>
                <td>San Francisco</td>
                <td>66</td>
                <td>2009/01/12</td>
                <td>$86,000</td>
            </tr>
            <tr>
                <td>Cedric Kelly</td>
                <td>Senior Javascript Developer</td>
                <td>Edinburgh</td>
                <td>22</td>
                <td>2012/03/29</td>
                <td>$433,060</td>
            </tr>
            <tr>
                <td>Airi Satou</td>
                <td>Accountant</td>
                <td>Tokyo</td>
                <td>33</td>
                <td>2008/11/28</td>
                <td>$162,700</td>
            </tr>
            <tr>
                <td>Brielle Williamson</td>
                <td>Integration Specialist</td>
                <td>New York</td>
                <td>61</td>
                <td>2012/12/02</td>
                <td>$372,000</td>
            </tr>
            <tr>
                <td>Herrod Chandler</td>
                <td>Sales Assistant</td>
                <td>San Francisco</td>
                <td>59</td>
                <td>2012/08/06</td>
                <td>$137,500</td>
            </tr>
            <tr>
                <td>Rhona Davidson</td>
                <td>Integration Specialist</td>
                <td>Tokyo</td>
                <td>55</td>
                <td>2010/10/14</td>
                <td>$327,900</td>
            </tr>
            <tr>
                <td>Colleen Hurst</td>
                <td>Javascript Developer</td>
                <td>San Francisco</td>
                <td>39</td>
                <td>2009/09/15</td>
                <td>$205,500</td>
            </tr>
            <tr>
                <td>Sonya Frost</td>
                <td>Software Engineer</td>
                <td>Edinburgh</td>
                <td>23</td>
                <td>2008/12/13</td>
                <td>$103,600</td>
            </tr>
            <tr>
                <td>Jena Gaines</td>
                <td>Office Manager</td>
                <td>London</td>
                <td>30</td>
                <td>2008/12/19</td>
                <td>$90,560</td>
            </tr>
            <tr>
                <td>Quinn Flynn</td>
                <td>Support Lead</td>
                <td>Edinburgh</td>
                <td>22</td>
                <td>2013/03/03</td>
                <td>$342,000</td>
            </tr>
            <tr>
                <td>Charde Marshall</td>
                <td>Regional Director</td>
                <td>San Francisco</td>
                <td>36</td>
                <td>2008/10/16</td>
                <td>$470,600</td>
            </tr>

        </tbody>
    </table>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
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
			<select id="optionmenu">
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
