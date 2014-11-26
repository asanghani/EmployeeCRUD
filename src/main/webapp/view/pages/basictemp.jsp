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
			   <%@include file="/view/template/menubar.jsp" %> 
			</div>
			
			<div id="leftmenupanel_area" >
			   <%@include file="/view/template/sidemenubar.jsp" %> 
			 
			</div>
			
			<div id="containt_area" >
			containt_area
			 
			</div>
			
			<div id="rightmenupanel_area" >
			   <%@include file="/view/template/right_sidemenubar.jsp" %> 
			</div>
		</div>	
			
			<div id="footer_area" >
			Footer
			 
			</div>
		  
		  
		  
</body>
</html>
