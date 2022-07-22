<%-- 
    Document   : logout
    Created on : Jul 15, 2022, 8:33:32 AM
    Author     : PC
--%>

<%@page import="mainpackage.Doctor"%>
<%@page import="mainpackage.Patient"%>
<%@page import="database.Accounts"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
  <%@ page import="mainpackage.User" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout</title>
         <title>One Health - Medical Center HTML5 Template</title>

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/maicons.css" />

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/bootstrap.css" />

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/vendor/owl-carousel/css/owl.carousel.css" />

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/vendor/animate/animate.css" />

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/theme.css" />
    </head>
    <body>
     
<% User user = (User)session.getAttribute("user-info"); 		
String name =(String) user.getUsername();
String pass = (String) user.getPassword();
if(user instanceof Patient){
    name = Accounts.getPatient(name, pass).getPatientName();
}else if(user instanceof Doctor){
    name =  Accounts.getDoctor(name, pass).getDoctorName();
}else{    
   name = Accounts.getAdmin(name, pass).getAdminName();
};    
session.invalidate(); %>
<div class="mt-5">
<h1 class=" text-primary text-center"> Thanks for coming by, <%= name%>!</h1>
               <br>
               <h3 class="text-center"><a  href="${pageContext.request.contextPath}/index.jsp" style="text-decoration: none;">Click here to continue</a></h3>
 
</div>
</body>
</html>
