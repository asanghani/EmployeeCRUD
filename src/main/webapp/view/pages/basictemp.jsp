<!DOCTYPE html>
	<%@page import="org.apache.taglibs.standard.lang.jstl.test.PageContextImpl"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
      <head>
				 <!--  <script  type="text/javascript">
			        function autoResizeDiv()
			        {
			            document.getElementById('page_area').style.height = window.innerHeight - 35 +'px';
			        }
			        window.onresize = autoResizeDiv;
			        autoResizeDiv();
			    </script> -->
			<link href="<c:url value="/resources/css/basicstyle.css" />" rel="stylesheet">
			<script src="<c:url value="/resources/js/jquery-2.1.1.min.js" />"></script>
            <script src="<c:url value="/resources/js/commonscripttemplate.js" />"></script>
	   </head>

	   <body>
		
		<div id="page_area">
		
		        
			<div id="logo_area" >
			       Logo
			       
			</div>
			
			
			<div id="banner_area" >
			
					banner
			    
			</div>
			
			
			<div id="topnav_area" >
			<%-- <%@include file="/view/template/menubar.jsp" %> --%>
			 
			    
			</div>
			
			<div id="leftmenupanel_area" >
			leftpanel
			 
			</div>
			
			<div id="containt_area" >
			containt_area
			 
			</div>
			
			<div id="rightmenupanel_area" >
			A high-level programming language developed by Sun Microsystems. Java was originally called OAK,
		    and was designed for handheld devices and set-top boxes. Oak was unsuccessful so in 1995 Sun changed the name to Java and 
			modified the language to take advantage of the burgeoning World Wide Web.
			A high-level programming language developed by Sun Microsystems. Java was originally called OAK,
		    and was designed for handheld devices and set-top boxes. Oak was unsuccessful so in 1995 Sun changed the name to Java and 
			modified the language to take advantage of the burgeoning World Wide Web.
			</div>
		</div>	
			
			<div id="footer_area" >
			Footer
			 
			</div>
		  
		  
		  
</body>
</html>
