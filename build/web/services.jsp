<!DOCTYPE html>
<html lang="en">
    <head>

        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>Services</title>

        <%@include file="link.jsp" %>
        <style>

            body{
                font-family:Segoe UI;
            }

            /* Banner */

            .services-banner{
                height:65vh;
                background:
                    linear-gradient(rgba(0,0,0,.6),rgba(0,0,0,.6)),
                    url("image/service-banar.jfif");
                background-size:cover;
                
                background-position:center;
                display:flex;
                align-items:center;
                color:white;
                text-align:center;
            }

            /* Service Card */

            .service-card{
                background:white;
                padding:30px;
                border-radius:12px;
                box-shadow:0 10px 25px rgba(0,0,0,0.08);
                transition:.3s;
                height:100%;
            }

            .service-card:hover{
                transform:translateY(-8px);
            }

            .service-card i{
                font-size:40px;
                color:#1abc9c;
            }

            /* Emergency Section */

            .emergency{
                background:#1abc9c;
                color:white;
            }

            /* Process */

            .process-box{
                text-align:center;
                padding:25px;
            }

            .process-box i{
                font-size:40px;
                color:#1abc9c;
            }

        </style>

    </head>

    <body>

        <%@include file="navbar.jsp" %>
        <!-- Banner -->

        <section class="services-banner">

            <div class="container">

                <h1 class="display-4 fw-bold">
                    Our Services
                </h1>

                <p class="lead mt-3">
                    Providing best healthcare services for better life
                </p>

            </div>

        </section>


        <!-- Services -->

        <section class="py-5">

            <div class="container">

                <h2 class="text-center fw-bold mb-5">
                    Our Services
                </h2>

                <div class="row g-4">


                    <div class="col-lg-4 col-md-6">

                        <div class="service-card text-center">

                            <i class="bi bi-heart-pulse"></i>

                            <h5 class="mt-3">
                                Cardiology
                            </h5>

                            <p class="text-muted">
                                Advanced heart care and treatment by expert doctors
                            </p>

                        </div>

                    </div>


                    <div class="col-lg-4 col-md-6">

                        <div class="service-card text-center">

                            <i class="bi bi-brain"></i>

                            <h5 class="mt-3">
                                Neurology
                            </h5>

                            <p class="text-muted">
                                Specialized treatment for brain and nervous system
                            </p>

                        </div>

                    </div>


                    <div class="col-lg-4 col-md-6">

                        <div class="service-card text-center">

                            <i class="bi bi-lungs"></i>

                            <h5 class="mt-3">
                                Pulmonology
                            </h5>

                            <p class="text-muted">
                                Complete care for lungs and respiratory diseases
                            </p>

                        </div>

                    </div>


                    <div class="col-lg-4 col-md-6">

                        <div class="service-card text-center">

                            <i class="bi bi-hospital"></i>

                            <h5 class="mt-3">
                                General Surgery
                            </h5>

                            <p class="text-muted">
                                Modern surgical treatments with advanced equipment
                            </p>

                        </div>

                    </div>


                    <div class="col-lg-4 col-md-6">

                        <div class="service-card text-center">

                            <i class="bi bi-activity"></i>

                            <h5 class="mt-3">
                                Diagnostics
                            </h5>

                            <p class="text-muted">
                                Accurate testing and diagnosis with modern labs
                            </p>

                        </div>

                    </div>


                    <div class="col-lg-4 col-md-6">

                        <div class="service-card text-center">

                            <i class="bi bi-capsule"></i>

                            <h5 class="mt-3">
                                Pharmacy
                            </h5>

                            <p class="text-muted">
                                24/7 pharmacy service with quality medicines
                            </p>

                        </div>

                    </div>


                </div>

            </div>

        </section>


        <!-- Emergency Section -->

        <section class="emergency py-5 text-center">

            <div class="container">

                <h2 class="fw-bold">
                    24/7 Emergency Medical Care
                </h2>

                <p class="mt-3">
                    Our hospital provides immediate emergency care services anytime
                </p>

                <a href="tel:+918808720522" class="btn btn-light mt-3 px-4">
                    Call Emergency
                </a>

            </div>

        </section>


        <!-- Service Process -->

        <section class="py-5">

            <div class="container">

                <h2 class="text-center fw-bold mb-5">
                    How Our Service Works
                </h2>

                <div class="row g-4">


                    <div class="col-lg-3 col-md-6">

                        <div class="process-box">

                            <i class="bi bi-calendar-check"></i>

                            <h6 class="mt-3">
                                Book Appointment
                            </h6>

                        </div>

                    </div>


                    <div class="col-lg-3 col-md-6">

                        <div class="process-box">

                            <i class="bi bi-person-check"></i>

                            <h6 class="mt-3">
                                Consult Doctor
                            </h6>

                        </div>

                    </div>


                    <div class="col-lg-3 col-md-6">

                        <div class="process-box">

                            <i class="bi bi-clipboard2-pulse"></i>

                            <h6 class="mt-3">
                                Medical Checkup
                            </h6>

                        </div>

                    </div>


                    <div class="col-lg-3 col-md-6">

                        <div class="process-box">

                            <i class="bi bi-heart"></i>

                            <h6 class="mt-3">
                                Get Treatment
                            </h6>

                        </div>

                    </div>


                </div>

            </div>

        </section>


        <!-- Call To Action -->

        <section class="py-5 bg-light text-center">

            <div class="container">

                <h2 class="fw-bold">
                    Need a Doctor Consultation?
                </h2>

                <p class="mt-3">
                    Book your appointment with our specialist doctors today
                </p>

                <a href="#" class="btn btn-success mt-3 px-4">
                    Book Appointment
                </a>

            </div>

        </section>

        <%@include file="footer.jsp" %>
    </body>
</html>