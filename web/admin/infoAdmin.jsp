
<%@page import="database.Accounts"%>
<%@page import="mainpackage.Admin"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style1.css" />
        <title>Profile Admin</title>
    </head>
    <body>
            <%
                Admin admin = (Admin) session.getAttribute("user-info");
              admin = Accounts.getInfoAdmin(admin.getUsername());
            %>
            <form action="${pageContext.request.contextPath}/admin/UpdateAdmin" method="get">
            <div class="container rounded bg-white mt-5 mb-5">
                <div class="row">

                    <div class="col-sm-5 border-right">
                        <div class="d-flex flex-column align-items-center text-center p-3 py-5">
                            <img class="rounded-circle mt-5" width="150px" src="https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg">
                            <span class="font-weight-bold"></span><%= admin.getUsername()%>
                            <span class="text-black-50"></span><%= admin.getPassword() %></div>
                    </div>
                    
                    <div class="col-sm-5 border-right">
                         <div class="info-message text-primary">
                                ${message}
                            </div>
                        <div class="p-3 py-5">
                            <div class="d-flex justify-content-between align-items-center mb-3">
                                <h4 class="text-right">Profile Admin</h4>
                            </div>
                            
                            <div class="row mt-3">
                                <div class="col-sm-12">
                                    <label class="labels">Username</label>
                                    <input type="text" name="username" class="form-control" value="<%= admin.getUsername()%>"></div>
                                <div class="col-sm-12">
                                    <label class="labels">Password</label>
                                    <input type="text" name="password" class="form-control" value="<%= admin.getPassword()%>"></div>
                                <div class="col-sm-12">
                                    <label class="labels">Name</label>
                                    <input type="text" name="adminName" class="form-control" value="<%= admin.getAdminName()%>"></div>
                                <div class="col-sm-12">
                                    <label class="labels">Phone</label>
                                    <input type="text" name="adminPhone" class="form-control" value="<%= admin.getAdminPhone()%>"></div>
                                <div class="col-sm-12">
                                    <label class="labels">Email</label>
                                    <input type="text" name="adminEmail" class="form-control" value="<%= admin.getAdminEmail()%>"></div>
                                <div class="col-sm-12">
                                    <label class="labels">Address</label>
                                    <input type="text" name="adminAddress" class="form-control" value="<%= admin.getAdminAddress()%>"></div>
                                <div class="col-sm-12">
                                    <label class="labels">DOB</label>
                                    <input type="text" name="adminDOB" class="form-control" value="<%= admin.getAdminDOB() %>"></div>
                                
                            </div>
                           
                            <div class="mt-5 text-center">
                                <button class="btn btn-primary profile-button mr-2" type="submit">Save Profile</button>
                                <a href="${pageContext.request.contextPath}/admin/index.jsp"><button class="btn btn-primary cancel-button" type="button">Cancel</button></a>
                            </div>
                        </div>
                    </div>
                    
                    
                </div>
            </div>
                            </form>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    </body>
</html>

