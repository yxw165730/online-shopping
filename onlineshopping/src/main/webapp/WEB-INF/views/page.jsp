<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>online Shopping - ${title}</title>

<script>
	window.menu = '${title}';
	window.contextRoot = '${contextRoot}';
</script>

<!-- Bootstrap core CSS -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap Sandstone Theme -->
<link href="${css}/bootstrap-sandstone-theme.css" rel="stylesheet">

<!-- Bootstrap DataTables -->
<link href="${css}/dataTables.bootstrap.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${css}/myApp.css" rel="stylesheet">

</head>

<body>

	<!-- Navigation -->
	<%@include file="./shared/navbar.jsp"%>

	<!-- Page Content -->
	<!-- Load the home content -->
	<c:if test="${userClickHome == true }">
		<%@include file="home.jsp"%>
	</c:if>

	<!-- Load only when user clicks about -->
	<c:if test="${userClickAbout == true }">
		<%@include file="about.jsp"%>
	</c:if>

	<!-- Load only when user clicks contact -->
	<c:if test="${userClickContact == true }">
		<%@include file="contact.jsp"%>
	</c:if>
	
	<!-- Load only when user clicks All Products -->
	<c:if test="${userClickAllProducts == true or userClickCategoryProducts == true}">
		<%@include file="listProducts.jsp"%>
	</c:if>

	<!-- Footer -->
	<%@include file="./shared/footer.jsp"%>

	<!-- Bootstrap core JavaScript -->
	<script src="${js}/jquery.min.js"></script>
	<script src="${js}/bootstrap.bundle.min.js"></script>

	<!-- Self coded javascript -->
	<script src="${js}/myApp.js"></script>
	
	<!-- DataTable Plugin -->
	<script src="${js}/jquery.dataTables.js"></script>
	
	<!-- DataTable Bootstrap Script -->
	<script src="${js}/dataTables.bootstrap.js"></script>

</body>

</html>
