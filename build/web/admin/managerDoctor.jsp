

<%@page import="mainpackage.Count"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="servlets.Delete"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="database.Accounts"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="mainpackage.Doctor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style1.css" />
        <title>Dashboard Admin</title>
    </head>

    <body>
       
        <div class="d-flex" id="wrapper">
            <!-- Sidebar -->
            <div class="bg-white" id="sidebar-wrapper">
                <div class="sidebar-heading text-center py-4 primary-text fs-4 fw-bold text-uppercase border-bottom"><i
                        class="fas fa-user-secret me-2"></i>Admin</div>
                <div class="list-group list-group-flush my-3">
                    <a href="${pageContext.request.contextPath}/admin/index.jsp" class="list-group-item list-group-item-action bg-transparent second-text active"><i
                            class="fas fa fa-home me-2"></i>Dashboard</a>
                    <a href="${pageContext.request.contextPath}/admin/listdoctor" class="list-group-item list-group-item-action bg-transparent second-text fw-bold"><i
                            class="fas fa fa-book me-2"></i>Manage Doctors</a>
                    <a href="${pageContext.request.contextPath}/admin/listpatient" class="list-group-item list-group-item-action bg-transparent second-text fw-bold"><i
                            class="fas fa-chart-line me-2"></i>Manage Patients</a>
                 
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
                                    <i class="fas fa-user me-2"></i><%@ page import="mainpackage.Admin" %>
                                    <%
                                        Admin admin = (Admin) session.getAttribute("user-info");
                                    %>
                                    <%= admin.getUsername()%>
                                </a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <li><a class="dropdown-item" href="${pageContext.request.contextPath}/admin/infoAdmin.jsp">Profile</a></li>
                                  
                                    <li><a class="dropdown-item" href="${pageContext.request.contextPath}/logout.jsp">Logout</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </nav>

                <div class="container-fluid px-4">
                    <div class="row g-3 my-2">
                        <div class="col-md-4">
                            <div class="p-3 bg-white shadow-sm d-flex justify-content-around align-items-center rounded">
                                <div>
                                    <h3 class="fs-2"><%
                                       Accounts ac = new Accounts();
                                        Count c = new Count();
                                        c = ac.countAppointment();
                                    %>
                                    <%= c.getCount() %></h3>
                                    <p class="fs-5">Appointments</p>
                                </div>
                                <i class="fas fa-calendar fs-1 primary-text border rounded-full secondary-bg p-3"></i>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="p-3 bg-white shadow-sm d-flex justify-content-around align-items-center rounded">
                                <div>
                                    <h3 class="fs-2"><%
                                      
                                        c = ac.countDoc();
                                    %>
                                    <%= c.getCount() %></h3>
                                    <p class="fs-5">Doctors</p>
                                </div>
                                <i class="fas fa-user-md fs-1 primary-text border rounded-full secondary-bg p-3"></i>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="p-3 bg-white shadow-sm d-flex justify-content-around align-items-center rounded">
                                <div>
                                    <h3 class="fs-2"><%
                                     
                                        c = ac.countPat();  %>
                                    <%= c.getCount() %></h3>
                                    <p class="fs-5">Patients</p>
                                </div>
                                <i class="fas fa-user fs-1 primary-text border rounded-full secondary-bg p-3"></i>
                            </div>
                        </div>

                       
                        <div class="col-md-6"></div>
                        <div class="col-md-2 p-3 my-2">
                            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                Add new Doctor
                            </button>
                            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">Add doctor</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                        </div>
                                        <form action="${pageContext.request.contextPath}/admin/RegisterDoctor" method="POST">
                                            <div class="modal-body">

                                                <div class="mb-1">
                                                    <label class="col-form-label">Username:</label>
                                                    <input type="text" class="form-control" name="username">
                                                </div>
                                                <div class="mb-1">
                                                    <label class="col-form-label">Password:</label>
                                                    <input type="text" class="form-control" name="password">
                                                </div>
                                                <div class="mb-1">
                                                    <input type="radio" name="spec" value="Pathologist" checked> Pathologos<br>
                                                    <input type="radio" name="spec" value="Orthopedist"> Ofthalmiatros<br>
                                                    <input type="radio" name="spec" value="Pediatrician"> Orthopedikos<br>
                                                    <div class="mb-1">
                                                        <label class="col-form-label">Name:</label>
                                                        <input type="text" class="form-control" name="doctorName">
                                                    </div>
                                                    <div class="mb-1">
                                                        <label class="col-form-label">Phone:</label>
                                                        <input type="text" class="form-control" name="doctorPhone">
                                                    </div>
                                                    <div class="mb-1">
                                                        <label class="col-form-label">Email:</label>
                                                        <input type="text" class="form-control" name="doctorEmail">
                                                    </div>
                                                    <div class="mb-1">
                                                        <label class="col-form-label">Address:</label>
                                                        <input type="text" class="form-control" name="doctorAddress">
                                                    </div>
                                                    <div class="mb-1">
                                                        <label class="col-form-label">Birthday:</label>
                                                        <input type="date" class="form-control" name="doctorBirthday">
                                                    </div>
                                                    <div class="mb-1">
                                                        <label class="col-form-label">Gender:</label>
                                                        <input type="text" class="form-control" name="doctorGender">
                                                    </div>
                                                    <div class="mb-1">
                                                        <label class="col-form-label">Intro:</label>
                                                        <input type="text" class="form-control" name="intro">
                                                    </div>
                                                    <div class="mb-1">
                                                        <label class="col-form-label">Photo</label>
                                                        <input type="text" class="form-control" name="photo">
                                                    </div>
                                                </div>

                                            </div>

                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                                <button type="submit" class="btn btn-primary">Save changes</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 p-3 my-2">
                            <form action="${pageContext.request.contextPath}/admin/SearchDoctor" method="get">
                                <div class="input-group">

                                    <input name = "search" type="search" class="form-control rounded" placeholder="Search" 
                                           aria-label="Search" aria-describedby="search-addon" />
                                    <button type="submit" class="btn btn-info">Search</button>


                                </div>
                            </form>
                        </div>

                        <div class="container-fluid px-4">
                            
                            
                            <div class="info-message text-primary">
                                ${message}
                            </div>
                         
                            <div class="row my-0">
                                <h3 class="fs-4 mb-3">List Doctor</h3>
                                <div class="col">
                                    <table class="table bg-white rounded shadow-sm  table-hover">

                                        <thead>
                                            <tr>
                                                <th scope="col" width="50"></th>
                                                <th scope="col">Name</th>
                                                <th scope="col">Address</th>
                                                <th scope="col">Phone</th>
                                                <th scope="col">Birthday</th>
                                                <th scope="col">Gender</th>
                                                <th scope="col">Department</th>
                                                <th scope="col">Action</th>
                                            </tr>
                                        </thead>
                                        <c:forEach items="${listS}" var="d">
                                            <tr>
                                                <td></td>
                                                <td>${d.doctorName}</td>
                                                <td>${d.doctorAddress}</td>
                                                <td>${d.doctorPhone}</td>
                                                <td>${d.doctorBirthday}</td>
                                                <td>${d.doctorGender}</td>
                                                <td>${d.spec}</td>
                                                <td>
                                                    <a href="info.jsp?username=${d.username}" class="list-group-item-action bg-transparent second-text fw-bold">
                                                        <i class="fa fa-eye" aria-hidden="true"></i></a>
                                                    <a href="Delete?username=${d.username}" class="list-group-item-action bg-transparent second-text fw-bold">
                                                        <i class="fa fa-trash" aria-hidden="true"></i></a>
                                                </td>
                                            </tr>
                                        </c:forEach>

                                    </table>
                                </div>
                            </div>
                           
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
