<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 <%@ page import="mainpackage.Patient, mainpackage.Appointment, java.sql.Timestamp,
database.Scheduler,java.util.List, java.text.SimpleDateFormat" %>
<%
Patient pat = (Patient)session.getAttribute("user-info");
List<Appointment> aps = Scheduler.getAppointmentHistory(pat);
   SimpleDateFormat f1 = new SimpleDateFormat("yyyy-MM-dd ");
         SimpleDateFormat f2 = new SimpleDateFormat("HH:mm");
%> 

<!DOCTYPE html>
 
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<meta http-equiv="X-UA-Compatible" content="ie=edge" />

<meta name="copyright" content="MACode ID, https://macodeid.com/" />

<title>One Health - Medical Center HTML5 Template</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/maicons.css" />

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/bootstrap.css" />

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/vendor/owl-carousel/css/owl.carousel.css" />

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/vendor/animate/animate.css" />

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/theme.css" />

        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css" />
</head>
<body>
	<div class="back-to-top"></div>

	<header>
		<div class="topbar">
			<div class="container">
				<div class="row">
					<div class="col-sm-8 text-sm">
						<div class="site-info">
							<a href="#"><span class="mai-call text-primary"></span> +84
								852 115 999</a> <span class="divider">|</span> <a href="#"><span
								class="mai-mail text-primary"></span> tamthan@fpt.edu.vn</a>
						</div>
					</div>
					<div class="col-sm-4 text-right text-sm">
						<div class="social-mini-button">
							<a href="#"><span class="mai-logo-facebook-f"></span></a> <a
								href="#"><span class="mai-logo-twitter"></span></a> <a href="#"><span
								class="mai-logo-dribbble"></span></a> <a href="#"><span
								class="mai-logo-instagram"></span></a>
						</div>
					</div>
				</div>
				<!-- .row -->
			</div>
			<!-- .container -->
		</div>
		<!-- .topbar -->

		<nav class="navbar navbar-expand-lg navbar-light shadow-sm">
			<div class="container">
				<a class="navbar-brand" href="#"><span class="text-primary">FPT</span>-Hopital</a>

				<form action="SearchServlet" method="get">
					<div class="input-group input-navbar">
						<div class="input-group-prepend">
							<span type="submit" class="input-group-text" id="icon-addon1"><span
								class="mai-search"></span></span>
						</div>
						<input type="text" name="searchdoctor" class="form-control"
							placeholder="Enter keyword.." aria-label="Username"
							aria-describedby="icon-addon1" />
					</div>
				</form>

				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarSupport" aria-controls="navbarSupport"
					aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<div class="collapse navbar-collapse" id="navbarSupport">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item active"><a class="nav-link"
							href="${pageContext.request.contextPath}/patient/index.jsp">Home</a></li>
						<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/patient/info.jsp">Profile
								</a></li>
						<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/patient/history.jsp">History</a>
						</li>
						
						<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/patient/selectDepartment.jsp"><button type="button" class="btn btn-primary " ><i class="fas fa-plus-circle me-2"></i>Add New Appointment</button></a>
						</li>
						<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/logout.jsp">Logout</a>
						</li>
						<ul>
		
	</ul>
					</ul>
				</div>
				<!-- .navbar-collapse -->
			</div>
			<!-- .container -->
		</nav>
	</header>

	 <div class="page-banner overlay-dark bg-image" style="background-image: url(${pageContext.request.contextPath}/assets/img/bg_1.jpg)">
        <div class="banner-section">
            <div class="container text-center wow fadeInUp">
                <nav aria-label="Breadcrumb">
                    <ol class="breadcrumb breadcrumb-dark bg-transparent justify-content-center py-0 mb-2">
                        <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/patient/index.jsp">Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page">
                            History
                        </li>
                    </ol>
                </nav>
                <h1 class="font-weight-normal">History</h1>
            </div>
            <!-- .container -->
        </div>
        <!-- .banner-section -->
    </div>
                        
                        <div class=" mt-5 mb-5">
                            <div class="row">
                                <div class="col-3"></div>
                                 <div class="col-6"><%if(aps.isEmpty()){ %>
                                     <h3 class="text-center"><i>Your appointment history is empty.</i></h3>
	<%}else{%>
            <table class="table bg-white rounded shadow-sm  table-hover">
                  <thead>
                      <tr class="bg-primary">
                         
                          <th class="tableheading" scope="col">Doctor's name</th>
                          <th class="tableheading" scope="col">Date</th>
                          <th class="tableheading" scope="col">Time</th>
                          
                      </tr>
                  </thead>
                <%for(int i=0; i<aps.size();i++){%>
                  <tbody>
                      <tr>
                         
                          <td><%= aps.get(i).getDoctor().getName() %></td>
                          <td><%= f1.format(aps.get(i).getDate()) %></td>
                          <td><%= f2.format(aps.get(i).getDate()) %></td>
                         
                         
                      </tr>
                  <tbody> 
                  <%}%>
 	<%}%>
            </table>        </div>
                                  <div class="col-3"></div>
                            </div>
                        
	

	
        

</div>

	<footer class="page-footer">
		<div class="container">
			<div class="row px-md-3">
				<div class="col-sm-6 col-lg-3 py-3">
					<h5>Company</h5>
					<ul class="footer-menu">
						<li><a href="#">About Us</a></li>
						<li><a href="#">Career</a></li>
						<li><a href="#">Editorial Team</a></li>
						<li><a href="#">Protection</a></li>
					</ul>
				</div>
				<div class="col-sm-6 col-lg-3 py-3">
					<h5>More</h5>
					<ul class="footer-menu">
						<li><a href="#">Terms & Condition</a></li>
						<li><a href="#">Privacy</a></li>
						<li><a href="#">Advertise</a></li>
						<li><a href="#">Join as Doctors</a></li>
					</ul>
				</div>
				<div class="col-sm-6 col-lg-3 py-3">
					<h5>Our partner</h5>
					<ul class="footer-menu">
						<li><a href="#">FPT-Fitness</a></li>
						<li><a href="#">FPT-Drugs</a></li>
						<li><a href="#">FPT-Live</a></li>
					</ul>
				</div>
				<div class="col-sm-6 col-lg-3 py-3">
					<h5>Contact</h5>
					<p class="footer-link mt-2">FPT City, FPT University</p>
					<a href="#" class="footer-link">84-852-115-999</a> <a href="#"
						class="footer-link">tamthan@fpt.edu.vn</a>

					<h5 class="mt-3">Social Media</h5>
					<div class="footer-sosmed mt-3">
						<a href="#" target="_blank"><span class="mai-logo-facebook-f"></span></a>
						<a href="#" target="_blank"><span class="mai-logo-twitter"></span></a>
						<a href="#" target="_blank"><span
							class="mai-logo-google-plus-g"></span></a> <a href="#"
							target="_blank"><span class="mai-logo-instagram"></span></a> <a
							href="#" target="_blank"><span class="mai-logo-linkedin"></span></a>
					</div>
				</div>
			</div>
	</footer>

	<script src="${pageContext.request.contextPath}/assets/js/jquery-3.5.1.min.js"></script>

	<script src="${pageContext.request.contextPath}/assets/js/bootstrap.bundle.min.js"></script>

	<script
		src="${pageContext.request.contextPath}/assets/vendor/owl-carousel/js/owl.carousel.min.js"></script>

	<script src="${pageContext.request.contextPath}/assets/vendor/wow/wow.min.js"></script>

	<script src="${pageContext.request.contextPath}/assets/js/theme.js"></script>
	
	<script>
    $(function(){
      // bind change event to select
      $('#departement').on('change', function () {
          var url = $(this).val(); // get selected value
          if (url) { // require a URL
              window.location = url; // redirect
          }
          return false;
      });
    });
</script>
</body>
</html>