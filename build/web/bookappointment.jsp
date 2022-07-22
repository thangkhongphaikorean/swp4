<%-- 
    Document   : bookappointment
    Created on : Jul 13, 2022, 4:49:08 PM
    Author     : PC
--%>


<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <meta http-equiv="X-UA-Compatible" content="ie=edge" />

    <meta name="copyright" content="MACode ID, https://macodeid.com/" />

    <title>One Health - Medical Center HTML5 Template</title>
</head>

<body>
    <!-- Back to top button -->
    <div class="back-to-top"></div>

    <header>
        <div class="topbar">
            <div class="container">
                <div class="row">
                    <div class="col-sm-8 text-sm">
                        <div class="site-info">
                            <a href="#"><span class="mai-call text-primary"></span> +84 852 115
                  999</a
                >
                <span class="divider">|</span>
                <a href="#"
                  ><span class="mai-mail text-primary"></span>
                  tamthan@fpt.edu.vn</a
                >
              </div>
            </div>
            <div class="col-sm-4 text-right text-sm">
              <div class="social-mini-button">
                <a href="#"><span class="mai-logo-facebook-f"></span></a>
                            <a href="#"><span class="mai-logo-twitter"></span></a>
                            <a href="#"><span class="mai-logo-dribbble"></span></a>
                            <a href="#"><span class="mai-logo-instagram"></span></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <nav class="navbar navbar-expand-lg navbar-light shadow-sm">
            <div class="container">
                <a class="navbar-brand" href="${pageContext.request.contextPath}/index.jsp"><span class="text-primary">FPT</span>-Hopital</a
        >
        <form action="#">
          <div class="input-group input-navbar">
            <div class="input-group-prepend">
              <span class="input-group-text" id="icon-addon1"
                ><span class="mai-search"></span
              ></span>
            </div>
            <input
              type="text"
              class="form-control"
              placeholder="Enter keyword.."
              aria-label="Username"
              aria-describedby="icon-addon1"
            />
          </div>
        </form>

        <button
          class="navbar-toggler"
          type="button"
          data-toggle="collapse"
          data-target="#navbarSupport"
          aria-controls="navbarSupport"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupport">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
              <a class="nav-link" href="${pageContext.request.contextPath}/index.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/about.jsp">About Us</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/doctor.jsp">Doctors</a>
                </li>
                <!-- <li class="nav-item">
              <a class="nav-link" href="blog.html">News</a>
            </li> -->
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/contact.jsp">Contact</a>
                </li>
                <li class="nav-item">
                    <a class="btn btn-primary ml-lg-3" href="${pageContext.request.contextPath}/login.jsp">Login / Register</a>
                </li>
                </ul>
            </div>
            <!-- .navbar-collapse -->
            </div>
            <!-- .container -->
        </nav>
    </header>
    <div class="page-hero bg-image overlay-dark" style="background-image: url(${pageContext.request.contextPath}/assets/img/bg_image_1.jpg)">
        <div class="hero-section">
            <div class="container text-center wow zoomIn">
                <span class="subhead">Let's make your life happier</span>
                <h1 class="display-4">Healthy Living</h1>
                <a href="#" class="btn btn-primary">Let's Consult</a>
            </div>
        </div>
    </div>
    <div>
      <form>
        <div>
          
        </div>
      </form>
    </div>
</body>
