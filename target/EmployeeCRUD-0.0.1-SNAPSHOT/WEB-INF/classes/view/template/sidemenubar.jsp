<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
  <head>
	<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
	
  </head>
<body>
	<div id="menuwrapper">
    <ul>
        <li><a href="#">Home</a></li>
        <li><a href="#">Products</a>
            <ul>
                <li><a href="#">Product 1</a>
                    <ul>
                        <li><a href="#">Sub Product 1</a></li>
                        <li><a href="#">Sub Product 2</a></li>
                        <li><a href="#">Sub Product 3</a></li>
                    </ul>
                </li>
                <li><a href="#">Product 2</a></li>
                <li><a href="#">Product 3</a></li>
            </ul>
        </li>
        <li><a href="#">About Us</a>
            <ul>
                <li><a href="#">Faqs</a></li>
                <li><a href="#">Contact Us</a></li>
                <li><a href="#">Where are we?</a></li>
            </ul>
        </li>
        <li><a href="#">Help</a>
    </ul>
</div>
</body>



</html>
