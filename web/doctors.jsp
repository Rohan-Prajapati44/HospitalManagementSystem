<!DOCTYPE html>
<html lang="en">
    <head>

        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>Our Doctors</title>

        <%@include file="link.jsp" %>
        <style>

            body{
                font-family:Segoe UI;
            }

            /* Banner */

            .doctor-banner{
                height:60vh;
                background:
                    linear-gradient(rgba(0,0,0,.6),rgba(0,0,0,.6)),
                    url("image/blogs1.png");
                background-size:cover;
                background-position:center;
                display:flex;
                align-items:center;
                color:white;
                text-align:center;
            }

            /* Doctor Card */

            .doctor-card{
                border-radius:12px;
                overflow:hidden;
                box-shadow:0 10px 25px rgba(0,0,0,0.08);
                transition:.3s;
            }

            .doctor-card:hover{
                transform:translateY(-8px);
            }

            .doctor-img{
                height:260px;
                object-fit:cover;
            }

            /* Department */

            .department{
                background:#f6fbfb;
            }

            /* Highlight */

            .highlight{
                background:#1abc9c;
                color:white;
            }

        </style>

    </head>

    <body>

        <%@include file="navbar.jsp" %>
        <!-- Banner -->

        <section class="doctor-banner">

            <div class="container">

                <h1 class="display-4 fw-bold">
                    Our Expert Doctors
                </h1>

                <p class="lead mt-3">
                    Meet our experienced and professional medical specialists
                </p>

            </div>

        </section>



        <!-- Doctors Grid -->

        <section class="py-5">

            <div class="container">

                <h2 class="text-center fw-bold mb-5">
                    Our Medical Specialists
                </h2>

                <div class="row g-4">


                    <div class="col-lg-3 col-md-6">

                        <div class="doctor-card card">

                            <img src="image/doct1.jfif"
                                 class="card-img-top doctor-img">

                            <div class="card-body text-center">

                                <h6 class="fw-bold">
                                    Dr. Diana Ayers
                                </h6>

                                <small class="text-muted">
                                    Cardiologist
                                </small>

                            </div>

                        </div>

                    </div>


                    <div class="col-lg-3 col-md-6">

                        <div class="doctor-card card">

                            <img src="image/doct2.jfif"
                                 class="card-img-top doctor-img">

                            <div class="card-body text-center">

                                <h6 class="fw-bold">
                                    Dr. Tracy Mckay
                                </h6>

                                <small class="text-muted">
                                    Neurologist
                                </small>

                            </div>

                        </div>

                    </div>


                    <div class="col-lg-3 col-md-6">

                        <div class="doctor-card card">

                            <img src="image/doct3.jfif"
                                 class="card-img-top doctor-img">

                            <div class="card-body text-center">

                                <h6 class="fw-bold">
                                    Dr. Jeffrey Davis
                                </h6>

                                <small class="text-muted">
                                    Orthopedic
                                </small>

                            </div>

                        </div>

                    </div>


                    <div class="col-lg-3 col-md-6">

                        <div class="doctor-card card">

                            <img src="image/doct4.jfif"
                                 class="card-img-top doctor-img">

                            <div class="card-body text-center">

                                <h6 class="fw-bold">
                                    Dr. Allen Hartzler
                                </h6>

                                <small class="text-muted">
                                    Cardiologist
                                </small>

                            </div>

                        </div>

                    </div>


                </div>

            </div>

        </section>



        <!-- Departments -->

        <section class="department py-5">

            <div class="container">

                <h2 class="text-center fw-bold mb-5">
                    Our Medical Departments
                </h2>

                <div class="row g-4">


                    <div class="col-lg-3 col-md-6">

                        <div class="text-center p-4 shadow rounded bg-white">

                            <i class="bi bi-heart-pulse fs-1 text-success"></i>

                            <h6 class="mt-3">
                                Cardiology
                            </h6>

                        </div>

                    </div>


                    <div class="col-lg-3 col-md-6">

                        <div class="text-center p-4 shadow rounded bg-white">

                            <i class="bi bi-brain fs-1 text-success"></i>

                            <h6 class="mt-3">
                                Neurology
                            </h6>

                        </div>

                    </div>


                    <div class="col-lg-3 col-md-6">

                        <div class="text-center p-4 shadow rounded bg-white">

                            <i class="bi bi-bandaid fs-1 text-success"></i>

                            <h6 class="mt-3">
                                Orthopedic
                            </h6>

                        </div>

                    </div>


                    <div class="col-lg-3 col-md-6">

                        <div class="text-center p-4 shadow rounded bg-white">

                            <i class="bi bi-lungs fs-1 text-success"></i>

                            <h6 class="mt-3">
                                Pulmonology
                            </h6>

                        </div>

                    </div>


                </div>

            </div>

        </section>



        <!-- Doctor Highlight -->

        <section class="highlight py-5">

            <div class="container">

                <div class="row align-items-center g-4">


                    <div class="col-lg-6">

                        <img src="image/about-banar.jfif"
                             class="img-fluid rounded shadow">

                    </div>


                    <div class="col-lg-6">

                        <h2 class="fw-bold">
                            Consult Our Best Doctor
                        </h2>

                        <p class="mt-3">
                            Our hospital provides world class healthcare services with
                            experienced specialists and modern treatment methods.
                        </p>

                        <ul class="mt-4">

                            <li>Experienced Specialists</li>
                            <li>Modern Medical Equipment</li>
                            <li>Patient Focused Treatment</li>
                            <li>24/7 Emergency Service</li>

                        </ul>

                        <a href="#"
                           class="btn btn-success mt-3 px-4">
                            Book Appointment
                        </a>

                    </div>

                </div>

            </div>

        </section>



        <!-- Appointment CTA -->

        <section class="py-5 text-center">

            <div class="container">

                <h2 class="fw-bold">
                    Need Medical Advice?
                </h2>

                <p class="mt-3">
                    Our expert doctors are available for consultation
                </p>

                <a href="#"
                   class="btn btn-success mt-3 px-4">
                    Book Appointment
                </a>

            </div>

        </section>



        <%@include file="footer.jsp" %>
    </body>
</html>