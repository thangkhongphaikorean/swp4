
<%@page import="database.Accounts"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="mainpackage.Doctor, mainpackage.Availability, database.Scheduler, java.util.List, java.text.SimpleDateFormat" %>

<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style1.css" />
  <title>Dashboard Doctor</title>
</head>

<body>
       <%
Doctor doc = (Doctor)session.getAttribute("user-info");
SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd ");
SimpleDateFormat f1 = new SimpleDateFormat("HH:mm");
String name = Accounts.getDoctor(doc.getUsername(), doc.getPassword()).getDoctorName();
%>
  <div class="d-flex" id="wrapper">
    <!-- Sidebar -->
    <div class="bg-white" id="sidebar-wrapper">
      <div class="sidebar-heading text-center py-4 primary-text fs-4 fw-bold text-uppercase border-bottom"><i
          class="fas fa-user-secret me-2"></i>Doctor</div>
      <div class="list-group list-group-flush my-3">
        <a href="${pageContext.request.contextPath}/doctor/index.jsp" class="list-group-item list-group-item-action bg-transparent second-text active"><i
            class="fas fa fa-home me-2"></i>Dashboard</a>
        <a href="${pageContext.request.contextPath}/doctor/schedule.jsp" class="list-group-item list-group-item-action bg-transparent second-text fw-bold "><i class="fas me-2 fa-solid fa-list "></i>Appointment</a>
        <a href="${pageContext.request.contextPath}/doctor/availability.jsp" class="list-group-item list-group-item-action bg-transparent second-text fw-bold"><i
            class="fas fa-solid fa-calendar-check me-2"></i>Schedule</a>
       
        <a href="${pageContext.request.contextPath}/logout.jsp" class="list-group-item list-group-item-action bg-transparent text-danger fw-bold"><i
            class="fas fa-power-off me-2"></i>Logout</a>
      </div>
    </div>

    <div id="page-content-wrapper">
      <nav class="navbar navbar-expand-lg navbar-light bg-transparent py-4 px-4">
        <div class="d-flex align-items-center">
          <i class="fas fa-align-left primary-text fs-4 me-3" id="menu-toggle"></i>
          <h2 class="fs-2 m-0">Dashboard</h2>
        </div>

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle second-text fw-bold" href="#" id="navbarDropdown" role="button"
                data-bs-toggle="dropdown" aria-expanded="false">
                <i class="fas fa-user me-2"></i><%= name %>
              </a>
              <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                <li><a class="dropdown-item" href="${pageContext.request.contextPath}/doctor/info.jsp">Profile</a></li>               
                <li><a class="dropdown-item" href="${pageContext.request.contextPath}/logout.jsp">Logout</a></li>
              </ul>
            </li>
          </ul>
        </div>
      </nav>

      <div class="container-fluid px-4 text-center mt-5">

           <div class="col">
     <div id="info-message">
	${message}
</div>

<!--<form action="${pageContext.request.contextPath}/doctor/AddAvailability" method="POST">
	FROM: <input type="text" name="from" value="2017-12-30 18:30"/><br>
	TO: <input type="text" name="to" value="2017-12-30 18:30"/><br>
	<input type="submit" value="Add"/>
</form>-->

<button type="button" class="btn btn-primary mb-5" data-bs-toggle="modal" data-bs-target="#exampleModal" data-bs-whatever="@mdo"><i class="fas fa-plus-circle me-2"></i>Add New schedule</button>


<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Add New schedule</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form action="${pageContext.request.contextPath}/doctor/AddAvailability" method="POST">
          <div class="mb-3">
              <label for="date" class="col-form-label "><h5>Date</h5></label>
            <input type="date" class="form-control" id="date" name="date">
          </div>
          <div class="mb-3">
            <label for="from" class="col-form-label "><h5>From</h5></label>
            <input type="time"  class="form-control" id="from" name="from"></input>
          </div>
           <div class="mb-3">
            <label for="message-text" class="col-form-label"><h5>To</h5></label>
            <input type="time"  class="form-control" id="message-text" name="to"></input>
          </div>
           <div class="mb-3">
             <button type="submit" class="btn btn-primary" >Add</button>
             <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
          </div>
        </form>
      </div>
      
    </div>
  </div>
</div>               

<% List<Availability> avs = Scheduler.getAvailableTimeSpans(doc);
if(avs.isEmpty()){ %>
	<i>Your availability schedule is empty.</i>
<%}else{ %>
	
	
         <table class="table bg-white rounded shadow-sm  table-hover">
                  <thead>
                      <tr style="background-color: rgb(10, 157, 254)">
                         
                          <th class="tableheading" scope="col">Date</th>
                          <th class="tableheading" scope="col">From</th>
                          <th class="tableheading" scope="col">To</th>
                          
                      </tr>
                  </thead>
                  <%for(Availability av : avs) {%>
                  <tbody>
                      <tr>
                         
                          <td><%= f.format(av.getStart()) %></td>
                          <td><%= f1.format(av.getStart()) %></td>
                           <td><%= f1.format(av.getEnd()) %></td>
                         
                      </tr>
                  <tbody> 
                      <%}%>
 	<%}%>
            </table>  
            
            
	


	</div>
      </div>
    </div>
  </div>

</div>



  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
    crossorigin="anonymous"></script>
  <script>
    var el = document.getElementById("wrapper");
    var toggleButton = document.getElementById("menu-toggle");

    toggleButton.onclick = function () {
      el.classList.toggle("toggled");
    };
  </script>
</body>

</html>