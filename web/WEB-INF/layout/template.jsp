<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
  <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <meta http-equiv="X-UA-Compatible" content="ie=edge" />

    <meta name="copyright" content="MACode ID, https://macodeid.com/" />

    <title>One Health - Medical Center HTML5 Template</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/maicons.css" />

    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.css" />

    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/vendor/owl-carousel/css/owl.carousel.css" />

    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/vendor/animate/animate.css" />

    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/theme.css" />

</head>
<body>
	
	<nav>
		<jsp:include page="/WEB-INF/${param.menu}"></jsp:include>
		<!--patient_menu, doctor_menu, admin_menu -->
	</nav>
	<hr>
	<article>
		<h3>${param.title}</h3>
		<jsp:include page="/WEB-INF/${param.content}"/>
	</article>
</body>
</html>
