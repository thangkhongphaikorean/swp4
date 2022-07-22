<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="mainpackage.Patient, mainpackage.Appointment, java.net.URLEncoder,java.sql.Timestamp,
database.Scheduler, java.util.List, java.text.SimpleDateFormat" %>

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
                            Profile
                        </li>
                    </ol>
                </nav>
                <h1 class="font-weight-normal">Profile</h1>
            </div>
            <!-- .container -->
        </div>
        <!-- .banner-section -->
    </div>
	
                   

	<% Patient pat = (Patient)session.getAttribute("user-info"); 
		SimpleDateFormat f = new SimpleDateFormat("dd-MM-yyyy");
        SimpleDateFormat f1 = new SimpleDateFormat("HH:mm");
         SimpleDateFormat f2 = new SimpleDateFormat("yyyy-MM-dd HH:mm");%>
                
              <div class="page-section">
        <div class="container-fluid">
            <h2 class="text-center wow fadeInUp mb-4">Patient Information</h2>

            <form class="">
                <div class="row ">
                    <div class="col-3">
                        
                    </div>
                    <div class="col-6">
                        
                        <div class="card mb-4 rounded-1 " >
                            <div class="card-header  bg-primary ">
                               <p class="card-text"><i class="fas fa-user-md me-2"></i>Name: <%= pat.getPatientName()%></p>
                            </div>
                               <div class="row">      
		                            <div class="card-body col-12">
		                            	
		                            	<p class="card-text pl-3"><i class="fas fa-phone-alt me-2"></i>Phone: <%= pat.getPatientPhone()%></p> 
		                        
		                            	<p class="card-text pl-3"><i class="fas fa-location-arrow me-2"></i>Address: <%= pat.getPatientAddress()%></p>        
		                                <p class="card-text pl-3"><i class="fas fa-birthday-cake me-2"></i>Birthday: <%= pat.getPatientDOB()%></p>                      
		                              
		                             
		                                <p class="card-text pl-3"><i class="fas fa-venus-mars me-2"></i>Gender: <%= pat.getPatientGender()%></p>

		                            </div>
                                            
                            	</div>
                        </div>
                        
                    </div>
                    <div class="col-3">
                        
                    </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
     
	<div class="text-primary text-center">
            <h2>${message}</h2>
	</div>
        <h2 class="text-center mb-4">Upcoming appointments</h2>
        <% List<Appointment> aps = Scheduler.getSchedule(pat); %>
        <%if(aps.isEmpty()){ %>
        <h4 class="text-center"><i>Your appointment schedule is empty.</i></h4>
	<%}else{%>
         <table class="table bg-white rounded shadow-sm  table-hover mb-5">
                  <thead>
                      <tr class="bg-primary">
                         
                          <th class="tableheading" scope="col">Doctor's name</th>
                          <th class="tableheading" scope="col">Date</th>
                          <th class="tableheading" scope="col">Time</th>
                          <th class="tableheading" scope="col">Action</th>
                      </tr>
                  </thead>
                <%for(int i=0; i<aps.size();i++){%>
                    <div class="modal fade" id="exampleModal111" tabindex="-1" aria-labelledby="exampleModalLabe4" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabe4">Do you want to delete appointment ?</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        
         
           <div class="mb-3 ">
               <a class="btn btn-primary" href="${pageContext.request.contextPath}/patient/CancelAppointment?username=<%= URLEncoder.encode(aps.get(i).getDoctor().getUsername(), "UTF-8") %>&appointmentDate=<%=URLEncoder.encode(f2.format(aps.get(i).getDate()), "UTF-8") %>" title="Delete Appointment"> Oke</a>
             <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
          </div>
        
      </div>
                  <tbody>
                      <tr>
                         
                          <td><%= aps.get(i).getDoctor().getName() %></td>
                          <td><%= f.format(aps.get(i).getDate()) %></td>
                          <td><%= f1.format(aps.get(i).getDate()) %></td>
                           <td><%if( aps.get(i).getDate().after( new Timestamp(System.currentTimeMillis()))){%>
                               <i class="fas fa-trash-alt text-primary  at me-3" data-bs-toggle="modal" data-bs-target="#exampleModal111" data-bs-whatever="@mdo"></i>
				<%} %></td>
                         
                      </tr>
                  <tbody> 
                  <%}%>
 	<%}%>
            </table>  
            
        

	
	<!-- CONTENT HERE -->
	
		
        



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
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
    crossorigin="anonymous"></script>
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
     var el = document.getElementById("wrapper");
    var toggleButton = document.getElementById("menu-toggle");

    toggleButton.onclick = function () {
      el.classList.toggle("toggled");
    };
</script>
</body>
</html>