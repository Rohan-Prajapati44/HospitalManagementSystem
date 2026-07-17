<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>About Us</title>

        <%@include file="link.jsp"%>
        <style>

            body{
                font-family: 'Segoe UI', sans-serif;
            }

            /* HERO */

            .about-hero{
                background:linear-gradient(rgba(0,0,0,.6),rgba(0,0,0,.6)),url("image/about-banar.jfif");
                background-size:cover;
                background-position:center;
                padding:180px 0;
                color:white;
                text-align:center;
            }

            /* SECTION TITLE */

            .section-title{
                color:#16c2a3;
                font-size:14px;
                font-weight:600;
                letter-spacing:1px;
            }

            /* ABOUT IMAGE */

            .about-img{
                border-radius:15px;
            }

            /* ICON BOX */

            .icon-box{
                background:white;
                padding:25px;
                border-radius:10px;
                box-shadow:0 10px 25px rgba(0,0,0,0.08);
                transition:.3s;
            }

            .icon-box:hover{
                transform:translateY(-6px);
            }

            .icon-box i{
                font-size:32px;
                color:#16c2a3;
            }

            /* STATS */

            .stats{
                background:#f6fbfb;
            }

            .stat-box{
                text-align:center;
            }

            .stat-box h2{
                color:#16c2a3;
                font-weight:bold;
            }

            /* CTA */

            .cta{
                background:#16c2a3;
                color:white;
            }

            .about-images{
                width: 100%;
                height: 500px;
                object-fit: cover;
            }

            .galary-image{
                width: 100%;
                height: 280px;
                object-fit: cover;
            }

        </style>
    </head>

    <body>
        <%@include file="navbar.jsp" %>

        <!-- HERO SECTION -->

        <section class="about-hero">
            <div class="container">

                <h1 class="fw-bold">About Our Center</h1>
                <p class="mt-3">
                    Providing world class healthcare services with modern technology.
                </p>

            </div>
        </section>



        <!-- ABOUT SECTION -->

        <section class="py-5">
            <div class="container">

                <div class="row align-items-center g-4">

                    <div class="col-lg-6">
                        <img src="image/about-img.jfif" class="img-fluid rounded about-images">
                    </div>

                    <div class="col-lg-6">

                        <span class="section-title">ABOUT US</span>

                        <h2 class="fw-bold mt-2">
                            We Provide The Best Healthcare Services
                        </h2>

                        <p class="text-muted mt-3">
                            Our medical center is dedicated to providing high quality healthcare
                            services with experienced doctors and modern technology.
                        </p>

                        <div class="row mt-4">

                            <div class="col-md-6 mb-3">
                                <p><i class="bi bi-check-circle text-success"></i> Qualified Doctors</p>
                                <p><i class="bi bi-check-circle text-success"></i> Emergency Services</p>
                            </div>

                            <div class="col-md-6">
                                <p><i class="bi bi-check-circle text-success"></i> Modern Equipment</p>
                                <p><i class="bi bi-check-circle text-success"></i> Online Appointment</p>
                            </div>

                        </div>

                        <a href="#" class="btn btn-success mt-3 px-4">
                            Learn More
                        </a>

                    </div>

                </div>

            </div>
        </section>



        <!-- MISSION / VISION -->

        <section class="py-5 bg-light">
            <div class="container">

                <div class="row g-4">

                    <div class="col-lg-4 col-md-6">
                        <div class="icon-box text-center">
                            <i class="bi bi-heart-pulse"></i>
                            <h5 class="mt-3">Our Mission</h5>
                            <p class="text-muted">
                                To provide affordable healthcare services to every patient.
                            </p>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6">
                        <div class="icon-box text-center">
                            <i class="bi bi-eye"></i>
                            <h5 class="mt-3">Our Vision</h5>
                            <p class="text-muted">
                                To become the most trusted healthcare provider worldwide.
                            </p>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6">
                        <div class="icon-box text-center">
                            <i class="bi bi-award"></i>
                            <h5 class="mt-3">Our Values</h5>
                            <p class="text-muted">
                                Integrity, compassion and excellence in patient care.
                            </p>
                        </div>
                    </div>

                </div>

            </div>
        </section>



        <!-- STATS SECTION -->

        <section class="stats py-5">
            <div class="container">

                <div class="row">

                    <div class="col-lg-3 col-md-6 mb-4">
                        <div class="stat-box">
                            <h2>120+</h2>
                            <p>Expert Doctors</p>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6 mb-4">
                        <div class="stat-box">
                            <h2>15K+</h2>
                            <p>Happy Patients</p>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6 mb-4">
                        <div class="stat-box">
                            <h2>50+</h2>
                            <p>Medical Departments</p>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6 mb-4">
                        <div class="stat-box">
                            <h2>20+</h2>
                            <p>Years Experience</p>
                        </div>
                    </div>

                </div>

            </div>
        </section>

        <!--Galary-->
        <section class="py-5 bg-light">
            <div class="container">

                <h2 class="text-center fw-bold mb-5">Hospital Gallery</h2>

                <div class="row g-4">

                    <div class="col-lg-4 col-md-6">
                        <img src="image/galary1.jfif" class="img-fluid rounded shadow galary-image">
                    </div>

                    <div class="col-lg-4 col-md-6">
                        <img src="image/galary2.jfif" class="img-fluid rounded shadow galary-image">
                    </div>

                    <div class="col-lg-4 col-md-6">
                        <img src="image/galary3.jpg" class="img-fluid rounded shadow galary-image">
                    </div>

                </div>

            </div>
        </section>



        <!-- CALL TO ACTION -->

        <section class="cta py-5 text-center">
            <div class="container">

                <h2 class="fw-bold">
                    Need Medical Consultation?
                </h2>

                <p class="mt-3">
                    Book an appointment with our specialist doctors today.
                </p>

                <a href="#" class="btn btn-light px-4 mt-3">
                    Book Appointment
                </a>

            </div>
        </section>
        <!--login form-->
        <div class="modal fade" id="loginModal">

            <div class="modal-dialog modal-dialog-centered">

                <div class="modal-content">

                    <div class="modal-header">
                        <h5 class="modal-title">Hospital Login</h5>
                        <button class="btn-close" data-bs-dismiss="modal"></button>
                    </div>

                    <div class="modal-body">

                        <form action="login.jsp" method="post">

                            <div class="mb-3">
                                <label>Email</label>
                                <input type="email" name="email" class="form-control" required>
                            </div>

                            <div class="mb-3">
                                <label>Password</label>
                                <input type="password" name="pass" class="form-control" required>
                            </div>

                            <button class="btn btn-success w-100" name="login">Login</button>

                        </form>

                    </div>

                </div>

            </div>

        <%@include file="footer.jsp" %>
    </body>
</html>