
<%@page import="mainpackage.Availability"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="mainpackage.Doctor, java.util.List, java.net.URLEncoder,
java.sql.Timestamp, java.text.SimpleDateFormat"%>

 


<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<meta http-equiv="X-UA-Compatible" content="ie=edge" />

<meta name="copyright" content="MACode ID, https://macodeid.com/" />

<title>One Health - Medical Center HTML5 Template</title>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/maicons.css" />

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/bootstrap.css" />

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/vendor/owl-carousel/css/owl.carousel.css" />

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/vendor/animate/animate.css" />

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/theme.css" />

        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css" />
        
  
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style1.css" />
</head>
<body>
       <%List<Availability> doctors = (List<Availability>)request.getAttribute("doctors");
SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd HH:mm");
List<String> dateHeaders = (List<String>)request.getAttribute("dateHeaders");
String next = (String)request.getAttribute("next");
String prev = (String)request.getAttribute("prev");
String name = (String)request.getAttribute("name");
String spec = (String)request.getAttribute("spec");
       String message = (String)request.getAttribute("message");%>
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
                            Appointment
                        </li>
                    </ol>
                </nav>
                <h1 class="font-weight-normal">Appointment</h1>
            </div>
            <!-- .container -->
        </div>
        <!-- .banner-section -->
    </div>
                        
   <%if(message!=null){%>
   <div class="text-primary text-center mt-5" style="height: 20vh;">
           <h2><%= message%></h2>
        </div>
    <%}else{%>    
	
         <%if( dateHeaders == null) {%>
 <div class="page-section">
        <div class="container-fluid">
            <h1 class="text-center wow fadeInUp mb-4">Doctor Information</h1>

            <form class="">
                <div class="row ">
                    <div class="col-2"></div>
                    <div class="col-8">
                        <c:forEach items="${specs}" var="ls"> 
                        <div class="card mb-4 rounded-1 " >
                            <div class="card-header  bg-primary ">
                               <p class="card-text"><i class="fas fa-user-md me-2"></i>Name: ${ls.doctorName}</p>
                            </div>
                               <div class="row">      
		                            <div class="card-body col-4">
		                            	
		                            	<p class="card-text pl-3"><i class="fas fa-phone-alt me-2"></i>Phone: ${ls.doctorPhone}</p> 
		                            	<p class="card-text pl-3"><i class="fas fa-envelope me-2"></i>Email: ${ls.doctorEmail} </p> 
		                            	<p class="card-text pl-3"><i class="fas fa-location-arrow me-2"></i>Address: ${ls.doctorAddress}</p>        
		                                <p class="card-text pl-3"><i class="fas fa-birthday-cake me-2"></i>Birthday: ${ls.doctorBirthday}</p>                      
		                              
		                             
		                                <p class="card-text pl-3"><i class="fas fa-venus-mars me-2"></i>Gender: ${ls.doctorGender}</p>

		                            </div>
                                                <div class="card-body col-4 text-center" style="position: relative;">
		                             	<p class="card-text" style="position: absolute; top :100px; left: 50px;"><i class="fas fa-stethoscope me-2"></i>Specialized: ${ls.spec} </p>			 
		                             </div>
                                              <div class="card-body col-4 text-center" style="position: relative;">
<!--                                                  <input type="hidden" value="${ls.spec}" name="spec"/>-->
                                                  <a href="${pageContext.request.contextPath}/patient/DoctorSearch?spec=${ls.spec}&name=${ls.doctorName}"> <button type="button" class="btn btn-primary " style="position: absolute; top :90px; right: 50px;" ><i class="fas fa-calendar-check me-2"></i>Check Schedule</button></a>		 
		                             </div>
                            	</div>
                        </div>
                        </c:forEach> 
                    </div>
                    <div class="col-2"></div>
                    </div>
                </div>
            </form>
        </div>
    </div><%}else{%>
    <div class="mt-2" style="height:50vh;">
        <div class="mt-5 text-center">
        
   
        <a href="${pageContext.request.contextPath}/patient/DoctorSearch?sDate=<%=URLEncoder.encode( prev, "UTF-8")%>&spec=${spec}&name=${name}"><i class="fas fa-arrow-left me-2"></i></a>
        <a href="${pageContext.request.contextPath}/patient/DoctorSearch?sDate=<%=URLEncoder.encode( next, "UTF-8")%>&spec=${spec}&name=${name}"><i class="fas fa-arrow-right"></i></a>
        </div>
    
	<table class="table bg-white rounded shadow-sm  ">
            <thead>    
            <tr class="bg-primary">
            
		<th class="tableheading" scope="col">Doctor</th>
		<%for(String day : dateHeaders) {%>
			<th class="tableheading" scope="col"><%= day %></th>
		<%}%>
                       
            </tr>
            </thead> 
            <tbody>
		<%for(Availability a : doctors) {%>
                    <%if(a.getDoctor().getName().equals(name)){%>
                    <tr>
                        <td class="mt-3"><b> <%= a.getDoctor().getName()%> </b></td>
                    
			<%for(List<Timestamp> l : a.getAvail()) {%>
			<td>
				<%if(l.isEmpty()) {%>
                                <i>None</i>
				<%}else{%>
                                 <div class="dropdown">
                                    <a class="btn btn-primary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
                                        Availability
                                    </a>
                                     <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                                    <%for(Timestamp t : l) {%> 
                                    <li ><a class="dropdown-item text-primary" href="${pageContext.request.contextPath}/patient/ScheduleAppointment?docUsername=<%=URLEncoder.encode( a.getDoctor().getUsername(), "UTF-8")%>&appointmentDate=<%=URLEncoder.encode(f.format(t), "UTF-8")%>"><%=f.format(t).split(" ")[1]%></a> </li>
						 
					<%}%>
       
                                    <%}%>
                                      </ul>

                                 </div>
   
			</td>
			<%}%>
                    </tr>
                      <%}%>
                        <%}%>
		<tbody>
        	<table>
       </div>
        <%}%>
      <%}%> 
    

  
    
  

  
 
   
   
        
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