<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<html>
<head>
<title><tiles:getAsString name="title" /></title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
	<div>
		<tiles:insertAttribute name="nav" />
	</div>
	<div style="min-height: 10%; margin: 0 0;">
		<tiles:insertAttribute name="header" />
	</div>
	<div
		style="min-height: 50%; margin: 0 250; font-family: Sans-serif; line-height: 2.0em;  padding: 0px 25px;">
		<tiles:insertAttribute name="main" />
	</div>
	
	<div style="min-height: 10%; padding: 20 0 0 0;">
		<tiles:insertAttribute name="footer" />
		
	</div>

</body>
</html>