
<%@page import="mainpackage.Doctor"%>
<%@page import="database.Accounts"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style1.css" />
        <title>Profile Doctor</title>
    </head>
    
    <%  Doctor dt = (Doctor) session.getAttribute("user-info");
              dt = Accounts.getInfoDoctor(dt.getUsername());
        
    %>
      
            
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
                                <h4 class="text-right">Profile Doctor</h4>
                            </div>

                            <div class="row mt-3">
                                <div class="col-sm-12">
                                    <label class="labels">Username</label>
                                    <input type="text" class="form-control" name="username" value="<%= dt.getUsername() %>"></div>
                                <div class="col-sm-12">
                                    <label class="labels">Password</label>
                                    <input type="text" class="form-control" name="password" value="<%= dt.getPassword() %>"></div>
                                <div class="col-sm-12"
                                    <label class="labels">Specialized</label>
                                    <input type="text" class="form-control" name="spec" value="<%= dt.getSpec() %>"></div>
                                <div class="col-sm-12">
                                    <label class="labels">Name</label>
                                    <input type="text" class="form-control" name="doctorName" value="<%= dt.getDoctorName() %>"></div>
                                <div class="col-sm-12">
                                    <label class="labels">Phone</label>
                                    <input type="text" class="form-control" name="doctorPhone" value="<%= dt.getDoctorPhone() %>"></div>
                                <div class="col-sm-12">
                                    <label class="labels">Email</label>
                                    <input type="text" class="form-control" name="doctorEmail" value="<%= dt.getDoctorEmail() %>"></div>
                                <div class="col-sm-12">
                                    <label class="labels">Address</label>
                                    <input type="text" class="form-control" name="doctorAddress" value="<%= dt.getDoctorAddress() %>"></div>
                                <div class="col-sm-12">
                                    <label class="labels">DOB</label>
                                    <input type="date" class="form-control" name="doctorBirthday" value="<%= dt.getDoctorBirthday() %>"></div>
                                <div class="col-sm-12">
                                    <label class="labels">Gender</label>
                                    <input type="text" class="form-control" name="doctorGender" value="<%= dt.getDoctorGender() %>"></div>
                            
                            <div class="col-sm-12">
                                    <label class="labels">Intro</label>
                                    <input type="text" class="form-control" name="intro" value="<%= dt.getIntro() %>"></div>
                            
                            <div class="col-sm-12">
                                    <label class="labels">Photo</label>
                                    <input type="text" class="form-control" name="photo" value="<%= dt.getPhoto() %>"></div>
                            
                            
                            <div class="mt-5 text-center">
                                <a href="${pageContext.request.contextPath}/doctor/index.jsp"><button class="btn btn-primary cancel-button" type="button">Cancel</button></a>
                        </div>
                    </div>
                    
                </div>
            </div>
        </form>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    
</html>
