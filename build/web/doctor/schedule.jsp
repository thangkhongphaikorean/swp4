
<%@page import="database.Accounts"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="mainpackage.Doctor, mainpackage.Appointment,mainpackage.Patient, java.sql.Timestamp, java.net.URLEncoder,
database.Scheduler,java.util.List, java.text.SimpleDateFormat" %>

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
List<Appointment> aps = Scheduler.getSchedule(doc);
SimpleDateFormat f = new SimpleDateFormat("dd-MM-yyyy");
SimpleDateFormat f1 = new SimpleDateFormat("HH:mm");
SimpleDateFormat f2 = new SimpleDateFormat("yyyy-MM-dd HH:mm");
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

      <div class="container-fluid px-4  mt-5">
           <h2 class="fs-4 mb-5">List Appoinment</h2>
           <div class="text-primary">
               ${message};
           </div>
           <div class="col">
          <%if(aps.isEmpty()){ %>
		<i>Your appointment schedule is empty.</i>
	<%}else{%>
            <table class="table bg-white rounded shadow-sm mt-3 table-hover">
                  <thead>
                      <tr style="background-color: rgb(10, 157, 254)">
                          <th class="tableheading" scope="col" width="100">#</th>
                          <th class="tableheading" scope="col">Patient</th>
                          <th class="tableheading" scope="col">Date</th>
                          <th class="tableheading" scope="col">Time</th>
                          <th class="tableheading" scope="col">Action</th>
                      </tr>
                  </thead>
                  <%for(int i=0; i<aps.size();i++){%>
                   <div class="modal fade" id="exampleModal11" tabindex="-1" aria-labelledby="exampleModalLabe3" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabe3">Do you want to delete appointment ?</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        
         
           <div class="mb-3 ">
               <a class="btn btn-primary" href="${pageContext.request.contextPath}/doctor/CancelAppointment?username=<%= URLEncoder.encode(aps.get(i).getPatient().getUsername(), "UTF-8") %>&appointmentDate=<%=URLEncoder.encode(f2.format(aps.get(i).getDate()), "UTF-8") %>" title="Delete Appointment"> Oke</a>
             <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
          </div>
        
      </div>
      
    </div>
  </div>
</div>   
             <div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabe2" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabe2">Profile patient</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
          <% Patient pa = new Patient();
           pa = Accounts.getInfoPatient(aps.get(i).getPatient().getUsername());
          %>
       <div class="col-sm-12">
                                    <label class="labels">Username</label>
                                    <input type="text" class="form-control" name="username" value="<%= pa.getUsername() %>"></div>
                                <div class="col-sm-12">
                                    <label class="labels">Password</label>
                                    <input type="text" class="form-control" name="password" value="<%= pa.getPassword() %>"></div>
                                <div class="col-sm-12"
                                    <label class="labels">CCCD</label>
                                    <input type="text" class="form-control" name="cccd" value="<%= pa.getPatientCCCD() %>"></div>
                                <div class="col-sm-12">
                                    <label class="labels">Name</label>
                                    <input type="text" class="form-control" name="patientName" value="<%= pa.getPatientName() %>"></div>
                                <div class="col-sm-12">
                                    <label class="labels">Phone</label>
                                    <input type="text" class="form-control" name="patientPhone" value="<%= pa.getPatientPhone() %>"></div>
                                <div class="col-sm-12">
                                    <label class="labels">Gender</label>
                                    <input type="text" class="form-control" name="patientGender" value="<%= pa.getPatientGender() %>"></div>
                                <div class="col-sm-12">
                                    <label class="labels">Address</label>
                                    <input type="text" class="form-control" name="patientAddress" value="<%= pa.getPatientAddress() %>"></div>
                                <div class="col-sm-12">
                                    <label class="labels">DOB</label>
                                    <input type="date" class="form-control" name="patientDOB" value="<%= pa.getPatientDOB() %>"></div>
                               
      </div>
      
    </div>
  </div>
</div>  
                  <tbody>
                      <tr>
                          <th scope="row"><%= i+1 %></th>
                          <td ><%= aps.get(i).getPatient().getName() %></td>
                          <td><%= f.format(aps.get(i).getDate()) %></td>
                           <td><%= f1.format(aps.get(i).getDate()) %></td>
                          <td>
                              
                              <a href="#" ></a> <i class="fas fa-trash-alt text-primary  at me-3" data-bs-toggle="modal" data-bs-target="#exampleModal11" data-bs-whatever="@mdo"></i>   </a>
                                <a href="#" title="View profile "> <i class="fas fa-eye" data-bs-toggle="modal" data-bs-target="#exampleModal1" data-bs-whatever="@mdo"></i></a>
                          </td>
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