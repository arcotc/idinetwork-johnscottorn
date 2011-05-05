<%@ page language="java" session="false" contentType="text/html; charset=UTF-8" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<html>
	<head>
		<title>Initialise | Confirmation</title>
	</head>
	<body>
		<h1>Initialise</h1>
		<c:choose>
			<c:when test="${initialiseConfirmation == 'true'}">
				The site has been initialised
			</c:when>
			<c:otherwise>
				An error occurred, please retry the operation or get in touch with customer support.
			</c:otherwise>
		</c:choose>
		<br/>
		Go to <a href="/site/management">management</a>.
	</body>
</html>