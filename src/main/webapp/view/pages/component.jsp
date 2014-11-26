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
							<script src="<c:url value="/resources/js/testcomponent.js" />"></script>
<!-- Page-Stylesheet   -->	<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
					   </head>
					   
					   <body>
							<div id="page_area">      
<!-- logo_area         -->	    <div id="logo_area" >           Logo           </div>
<!-- banner_area       -->		<div id="banner_area">          banner         </div>
<!-- topnav_area       -->		<div id="topnav_area">          <%@include file="/view/template/menubar.jsp" %>     </div>
<!-- leftpanel_area    -->		<div id="leftmenupanel_area" >  <%@include file="/view/template/sidemenubar.jsp" %> </div>
<!-- contentpanel_area -->		<div id="containt_area" >       

<input type="text" name="birthday" id="birthday" />
	<input type="submit" id="sign_up" />
		
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

  </div>
<!-- rightpanel_area   -->		<div id="rightmenupanel_area" > <%@include file="/view/template/right_sidemenubar.jsp" %> </div>
							</div>	
<!-- footer_area       -->	    <div id="footer_area" >         Footer         </div>		  
					   </body>
</html>




 	


