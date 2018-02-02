<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />


<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Online shopping - ${title}</title>

<script>
	window.menu = '${title}';
</script>


<!-- Bootstrap core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${css}/myapp.css" rel="stylesheet">


<%-- <!-- bootstrap-readable-theme -->
<link href="${css}/bootstrap-readable-theme.css" rel="stylesheet">
 --%>


<script type="text/javascript"
	src="https://gc.kis.v2.scr.kaspersky-labs.com/98B3FA1A-8ADD-5F44-BDFD-60B999B49E19/main.js"
	charset="UTF-8"></script>
</head>

<body>

	<!-- Navigation -->
	<%@include file="./shared/navbar.jsp"%>

	<!-- Page Content -->
	<c:if test="${userClickHome == true }">
		<%@include file="home.jsp"%>
	</c:if>

	<!-- Load only when user click about -->
	<c:if test="${userClickAbout == true }">
		<%@include file="about.jsp"%>
	</c:if>

	<!-- Load only when user click contact -->
	<c:if test="${userClickContact == true }">
		<%@include file="contact.jsp"%>
	</c:if>

	<!-- Footer -->
	<%@include file="./shared/footer.jsp"%>


	<!-- Bootstrap core JavaScript -->
	<script src="${js}/jquery.min.js"></script>
	<script src="${js}/bootstrap.bundle.min.js"></script>

	<!-- self coded JS file -->
	<script src="${js}/myapp.js"></script>



</body>

</html>
