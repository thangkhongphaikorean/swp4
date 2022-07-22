<%-- 
    Document   : contact
    Created on : Jul 13, 2022, 4:47:31 PM
    Author     : PC
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <meta http-equiv="X-UA-Compatible" content="ie=edge" />

    <meta name="copyright" content="MACode ID, https://macodeid.com/" />

    <title>FPT Health</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/maicons.css" />

    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.css" />

    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/vendor/owl-carousel/css/owl.carousel.css" />

    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/vendor/animate/animate.css" />

    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/theme.css" />
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
                <!-- .row -->
            </div>
            <!-- .container -->
        </div>
        <!-- .topbar -->

        <nav class="navbar navbar-expand-lg navbar-light shadow-sm">
            <div class="container">
                <a class="navbar-brand" href="#"><span class="text-primary">FPT</span>-Health</a
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
              <li class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath}/index.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/about.jsp">About Us</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/doctor.jsp">Doctors</a>
                </li>

                <li class="nav-item active">
                    <a class="nav-link" href="${pageContext.request.contextPath}/contact.jsp">Contact</a>
                </li>
                 <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/login.jsp"><button type="button" class="btn btn-primary " ><i class="fas fa-plus-circle me-2"></i>Add New Appointment</button></a>
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

    <div class="page-banner overlay-dark bg-image" style="background-image: url(${pageContext.request.contextPath}/assets/img/bg_image_1.jpg)">
        <div class="banner-section">
            <div class="container text-center wow fadeInUp">
                <nav aria-label="Breadcrumb">
                    <ol class="breadcrumb breadcrumb-dark bg-transparent justify-content-center py-0 mb-2">
                        <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page">
                            Contact
                        </li>
                    </ol>
                </nav>
                <h1 class="font-weight-normal">Contact</h1>
            </div>
            <!-- .container -->
        </div>
        <!-- .banner-section -->
    </div>
    <!-- .page-banner -->

    <div class="page-section">
        <div class="container">
            <h1 class="text-center wow fadeInUp">Get in Touch</h1>

            <form class="contact-form mt-5">
                <div class="row mb-3">
                    <div class="col-sm-6 py-2 wow fadeInLeft">
                        <label for="fullName">Name</label>
                        <input type="text" id="fullName" class="form-control" placeholder="Full name.." />
                    </div>
                    <div class="col-sm-6 py-2 wow fadeInRight">
                        <label for="emailAddress">Email</label>
                        <input type="text" id="emailAddress" class="form-control" placeholder="Email address.." />
                    </div>
                    <div class="col-12 py-2 wow fadeInUp">
                        <label for="subject">Subject</label>
                        <input type="text" id="subject" class="form-control" placeholder="Enter subject.." />
                    </div>
                    <div class="col-12 py-2 wow fadeInUp">
                        <label for="message">Message</label>
                        <textarea id="message" class="form-control" rows="8" placeholder="Enter Message.."></textarea>
                    </div>
                </div>
                <button type="submit" class="btn btn-primary wow zoomIn">
            Send Message
          </button>
            </form>
        </div>
    </div>

    <div class="maps-container wow fadeInUp">
        <div id="google-maps"></div>
    </div>

    <div class="page-section banner-home bg-image" style="background-image: url(${pageContext.request.contextPath}/assets/img/banner-pattern.svg)">
        <div class="container py-5 py-lg-0">
            <div class="row align-items-center">
                <div class="col-lg-4 wow zoomIn">
                    <div class="img-banner d-none d-lg-block">
                        <img src="${pageContext.request.contextPath}/assets/img/mobile_app.png" alt="" />
                    </div>
                </div>
                <div class="col-lg-8 wow fadeInRight">
                    <h1 class="font-weight-normal mb-3">
                        Get easy access of all features using One Health Application
                    </h1>
                    <a href="#"><img src="${pageContext.request.contextPath}/assets/img/google_play.svg" alt="" /></a>
                    <a href="#" class="ml-2"><img src="${pageContext.request.contextPath}/assets/img/app_store.svg" alt="" /></a>
                </div>
            </div>
        </div>
    </div>
    <!-- .banner-home -->

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
                    <a href="#" class="footer-link">84-852-115-999</a>
                    <a href="#" class="footer-link">tamthan@fpt.edu.vn</a>

                    <h5 class="mt-3">Social Media</h5>
                    <div class="footer-sosmed mt-3">
                        <a href="#" target="_blank"><span class="mai-logo-facebook-f"></span
              ></a>
                        <a href="#" target="_blank"><span class="mai-logo-twitter"></span
              ></a>
                        <a href="#" target="_blank"><span class="mai-logo-google-plus-g"></span
              ></a>
                        <a href="#" target="_blank"><span class="mai-logo-instagram"></span
              ></a>
                        <a href="#" target="_blank"><span class="mai-logo-linkedin"></span
              ></a>
                    </div>
                </div>
            </div>
    </footer>

    <script src="${pageContext.request.contextPath}/assets/js/jquery-3.5.1.min.js"></script>

    <script src="${pageContext.request.contextPath}/assets/js/bootstrap.bundle.min.js"></script>

    <script src="${pageContext.request.contextPath}/assets/vendor/owl-carousel/js/owl.carousel.min.js"></script>

    <script src="${pageContext.request.contextPath}/assets/vendor/wow/wow.min.js"></script>

    <script src="${pageContext.request.contextPath}/assets/js/google-maps.js"></script>

    <script src="${pageContext.request.contextPath}/assets/js/theme.js"></script>

    <script async defer src="https://www.google.com/maps/place/%C4%90%E1%BA%A1i+h%E1%BB%8Dc+FPT+%C4%90%C3%A0+N%E1%BA%B5ng+(FPT+university+Da+Nang)/@15.9684863,108.2583681,17z/data=!3m1!4b1!4m5!3m4!1s0x3142116949840599:0x365b35580f52e8d5!8m2!3d15.9684812!4d108.2605568?hl=vi-VN"></script>
</body>

</html>
