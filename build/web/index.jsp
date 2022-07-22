<%-- 
    Document   : index.jsp
    Created on : Jul 13, 2022, 4:29:05 PM
    Author     : PC
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html >

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <meta http-equiv="X-UA-Compatible" content="ie=edge" />

    <meta name="copyright" content="MACode ID, https://macodeid.com/" />

    <title>One Health - Medical Center HTML5 Template</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/maicons.css" />

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/bootstrap.css" />

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/vendor/owl-carousel/css/owl.carousel.css" />

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/vendor/animate/animate.css" />

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/theme.css" />
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

    <div class="page-hero bg-image overlay-dark" style="background-image: url(${pageContext.request.contextPath}/assets/img/bg_image_1.jpg)">
        <div class="hero-section">
            <div class="container text-center wow zoomIn">
                <span class="subhead">Let's make your life happier</span>
                <h1 class="display-4">Healthy Living</h1>
                <a href="#" class="btn btn-primary">Let's Consult</a>
            </div>
        </div>
    </div>

    <div class="bg-light">
        <div class="page-section py-3 mt-md-n5 custom-index">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-4 py-3 py-md-0">
                        <div class="card-service wow fadeInUp">
                            <div class="circle-shape bg-secondary text-white">
                                <span class="mai-chatbubbles-outline"></span>
                            </div>
                            <p><span>Chat</span> with a doctors</p>
                        </div>
                    </div>
                    <div class="col-md-4 py-3 py-md-0">
                        <div class="card-service wow fadeInUp">
                            <div class="circle-shape bg-primary text-white">
                                <span class="mai-shield-checkmark"></span>
                            </div>
                            <p><span>FPT</span>-Hopital Protection</p>
                        </div>
                    </div>
                    <div class="col-md-4 py-3 py-md-0">
                        <div class="card-service wow fadeInUp">
                            <div class="circle-shape bg-accent text-white">
                                <span class="mai-basket"></span>
                            </div>
                            <p><span>FPT</span>-Hopital Pharmacy</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- .page-section -->

        <div class="page-section pb-0">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-6 py-3 wow fadeInUp">
                        <h1>
                            Welcome to Your FPT-Hopital
                        </h1>
                        <p class="text-grey mb-4">
                            FPT-Health, established in 2022, has had a long experience in the field of high-end medical care and has gained high trust from customers in Da Nang City as well as neighboring provinces. near. FPT-Health clinic system has many branches at convenient
                            traffic locations in the city, full of specialties, serving outpatient examination and treatment functions. The facility is invested with modern equipment according to American, European, and Japanese standards imported from
                            the US, Japan, UK, Germany... The team of doctors and nurses is dynamic, enthusiastic, has many years of experience, and is closely linked. continuing to train in the US, Australia, Japan... and commit to practicing medicine
                            on the basis of Evidence-Based Medicine.
                        </p>
                        <a href="about.jsp" class="btn btn-primary">Learn More</a>
                    </div>
                    <div class="col-lg-6 wow fadeInRight" data-wow-delay="400ms">
                        <div class="img-place custom-img-1">
                            <img src="${pageContext.request.contextPath}/assets/img/bg-doctor.png" alt="" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- .bg-light -->
    </div>
    <!-- .bg-light -->

    <div class="page-section">
        <div class="container">
            <h1 class="text-center mb-5 wow fadeInUp">Our Doctors</h1>

            <div class="owl-carousel wow fadeInUp" id="doctorSlideshow">
                <div class="item">
                    <div class="card-doctor">
                        <div class="header">
                            <img src="${pageContext.request.contextPath}/assets/img/doctors/doctor_1.jpg" alt="" />
                            <div class="meta">
                                <a href="#"><span class="mai-call"></span></a>
                                <a href="#"><span class="mai-logo-whatsapp"></span></a>
                            </div>
                        </div>
                        <div class="body">
                            <p class="text-xl mb-0">Dr. Ngoc Thang</p>
                            <span class="text-sm text-grey">Cardiology</span>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="card-doctor">
                        <div class="header">
                            <img src="${pageContext.request.contextPath}/assets/img/doctors/doctor_2.jpg" alt="" />
                            <div class="meta">
                                <a href="#"><span class="mai-call"></span></a>
                                <a href="#"><span class="mai-logo-whatsapp"></span></a>
                            </div>
                        </div>
                        <div class="body">
                            <p class="text-xl mb-0">Dr. Thai Bao</p>
                            <span class="text-sm text-grey">Dental</span>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="card-doctor">
                        <div class="header">
                            <img src="${pageContext.request.contextPath}/assets/img/doctors/doctor_3.jpg" alt="" />
                            <div class="meta">
                                <a href="#"><span class="mai-call"></span></a>
                                <a href="#"><span class="mai-logo-whatsapp"></span></a>
                            </div>
                        </div>
                        <div class="body">
                            <p class="text-xl mb-0">Dr. Ngoc Thang</p>
                            <span class="text-sm text-grey">General Health</span>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="card-doctor">
                        <div class="header">
                            <img src="${pageContext.request.contextPath}/assets/img/doctors/doctor_3.jpg" alt="" />
                            <div class="meta">
                                <a href="#"><span class="mai-call"></span></a>
                                <a href="#"><span class="mai-logo-whatsapp"></span></a>
                            </div>
                        </div>
                        <div class="body">
                            <p class="text-xl mb-0">Dr. Rebecca Steffany</p>
                            <span class="text-sm text-grey">General Health</span>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="card-doctor">
                        <div class="header">
                            <img src="${pageContext.request.contextPath}/assets/img/doctors/doctor_3.jpg" alt="" />
                            <div class="meta">
                                <a href="#"><span class="mai-call"></span></a>
                                <a href="#"><span class="mai-logo-whatsapp"></span></a>
                            </div>
                        </div>
                        <div class="body">
                            <p class="text-xl mb-0">Dr. Rebecca Steffany</p>
                            <span class="text-sm text-grey">General Health</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- <div class="page-section bg-light">
      <div class="container">
        <h1 class="text-center wow fadeInUp">Latest News</h1>
        <div class="row mt-5">
          <div class="col-lg-4 py-2 wow zoomIn">
            <div class="card-blog">
              <div class="header">
                <div class="post-category">
                  <a href="#">Covid19</a>
                </div>
                <a href="blog-details.html" class="post-thumb">
                  <img src="../assets/img/blog/blog_1.jpg" alt="" />
                </a>
              </div>
              <div class="body">
                <h5 class="post-title">
                  <a href="blog-details.html"
                    >List of Countries without Coronavirus case</a
                  >
                </h5>
                <div class="site-info">
                  <div class="avatar mr-2">
                    <div class="avatar-img">
                      <img src="../assets/img/person/person_1.jpg" alt="" />
                    </div>
                    <span>Roger Adams</span>
                  </div>
                  <span class="mai-time"></span> 1 week ago
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-4 py-2 wow zoomIn">
            <div class="card-blog">
              <div class="header">
                <div class="post-category">
                  <a href="#">Covid19</a>
                </div>
                <a href="blog-details.html" class="post-thumb">
                  <img src="../assets/img/blog/blog_2.jpg" alt="" />
                </a>
              </div>
              <div class="body">
                <h5 class="post-title">
                  <a href="blog-details.html"
                    >Recovery Room: News beyond the pandemic</a
                  >
                </h5>
                <div class="site-info">
                  <div class="avatar mr-2">
                    <div class="avatar-img">
                      <img src="../assets/img/person/person_1.jpg" alt="" />
                    </div>
                    <span>Roger Adams</span>
                  </div>
                  <span class="mai-time"></span> 4 weeks ago
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-4 py-2 wow zoomIn">
            <div class="card-blog">
              <div class="header">
                <div class="post-category">
                  <a href="#">Covid19</a>
                </div>
                <a href="blog-details.html" class="post-thumb">
                  <img src="../assets/img/blog/blog_3.jpg" alt="" />
                </a>
              </div>
              <div class="body">
                <h5 class="post-title">
                  <a href="blog-details.html"
                    >What is the impact of eating too much sugar?</a
                  >
                </h5>
                <div class="site-info">
                  <div class="avatar mr-2">
                    <div class="avatar-img">
                      <img src="../assets/img/person/person_2.jpg" alt="" />
                    </div>
                    <span>Diego Simmons</span>
                  </div>
                  <span class="mai-time"></span> 2 months ago
                </div>
              </div>
            </div>
          </div>

          <div class="col-12 text-center mt-4 wow zoomIn">
            <a href="blog.html" class="btn btn-primary">Read More</a>
          </div>
        </div>
      </div>
    </div> -->
    <!-- .page-section -->

    <div class="page-section">
        <div class="container">
            <h1 class="text-center wow fadeInUp">Make an Appointment</h1>

            <form class="main-form">
                <div class="row mt-5">
                    <div class="col-12 col-sm-6 py-2 wow fadeInLeft">
                        <input type="text" class="form-control" placeholder="Full name" />
                    </div>
                    <div class="col-12 col-sm-6 py-2 wow fadeInRight">
                        <input type="text" class="form-control" placeholder="Email address.." />
                    </div>
                    <div class="col-12 col-sm-6 py-2 wow fadeInLeft" data-wow-delay="300ms">
                        <input type="date" class="form-control" />
                    </div>
                    <div class="col-12 col-sm-6 py-2 wow fadeInRight" data-wow-delay="300ms">
                        <select name="departement" id="departement" class="custom-select">
                <option value="general">General Health</option>
                <option value="cardiology">Cardiology</option>
                <option value="dental">Dental</option>
                <option value="neurology">Neurology</option>
                <option value="orthopaedics">Orthopaedics</option>
              </select>
                    </div>
                    <div class="col-12 py-2 wow fadeInUp" data-wow-delay="300ms">
                        <input type="text" class="form-control" placeholder="Number.." />
                    </div>
                    <div class="col-12 py-2 wow fadeInUp" data-wow-delay="300ms">
                        <textarea name="message" id="message" class="form-control" rows="6" placeholder="Enter message.."></textarea>
                    </div>
                </div>

                <button type="submit" class="btn btn-primary mt-3 wow zoomIn">
            Submit Request
          </button>
            </form>
        </div>
    </div>
    <!-- .page-section -->

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
                    <a href="#" class="ml-2"><img src="${pageContext.request.contextPath}/sssassets/img/app_store.svg" alt="" /></a>
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

    <script src="${pageContext.request.contextPath}/assets/js/theme.js"></script>
</body>

</html>