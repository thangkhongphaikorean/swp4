
<%@page import="mainpackage.Patient"%>
<%@page import="mainpackage.Doctor"%>
<%@page import="database.Accounts"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style1.css" />
        <title>Profile Patient</title>
    </head>
    
    <% Patient pa = new Patient(); 
    String username = request.getParameter("username");
       pa = Accounts.getInfoPatient(username);   
    %>
        <form action="${pageContext.request.contextPath}/admin/UpdatePatient" method="get">
            
            <div class="container rounded bg-white mt-5 mb-5">
                <div class="row">

                    <div class="col-sm-5 border-right">
                        <div class="d-flex flex-column align-items-center text-center p-3 py-5">
                            <img class="rounded-circle mt-5" width="150px" src="https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg">
                            <span class="font-weight-bold"></span>
                            <span class="text-black-50"></span>
                        </div>
                    </div>
                    <div class="col-sm-5 border-right">
                        <div class="p-3 py-5">
                            <div class="d-flex justify-content-between align-items-center mb-3">
                                <h4 class="text-right">Profile Patient</h4>
                            </div>

                            <div class="row mt-3">
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
                               
                            
                          
                            
                            <div class="mt-5 text-center">
                                <button class="btn btn-primary profile-button" type="submit">Save Profile</button></div>
                        </div>
                    </div>
                    
                </div>
            </div>
        </form>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    
</html>
