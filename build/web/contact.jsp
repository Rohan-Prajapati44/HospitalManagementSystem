<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Contact Us</title>

    <%@include file="link.jsp" %>
        <style>
            body {
                font-family: Segoe UI;
            }

            /* Banner */

            .contact-banner {
                height: 60vh;
                background:
                    linear-gradient(rgba(0, 0, 0, .6), rgba(0, 0, 0, .6)),
                    url("image/contact-banner.jfif");
                background-size: cover;
                background-position: center;
                display: flex;
                align-items: center;
                color: white;
                text-align: center;
            }

            /* Contact Cards */

            .contact-card {
                padding: 30px;
                border-radius: 12px;
                box-shadow: 0 10px 25px rgba(0, 0, 0, 0.08);
                transition: .3s;
                background: white;
            }

            .contact-card:hover {
                transform: translateY(-6px);
            }

            .contact-card i {
                font-size: 40px;
                color: #1abc9c;
            }

            /* Form */

            .contact-form {
                background: #f6fbfb;
                padding: 40px;
                border-radius: 12px;
                box-shadow: 0 10px 20px rgba(0, 0, 0, 0.08);
            }

            /* CTA */

            .contact-cta {
                background: #1abc9c;
                color: white;
            }
        </style>

</head>

<body>


    <%@include file="navbar.jsp" %>

        <!-- Banner -->

        <section class="contact-banner">

            <div class="container">

                <h1 class="display-4 fw-bold">
                    Contact Our Hospital
                </h1>

                <p class="lead mt-3">
                    We are always ready to help you
                </p>

            </div>

        </section>



        <!-- Contact Info -->

        <section class="py-5">

            <div class="container">

                <div class="row g-4 text-center">


                    <div class="col-lg-4 col-md-6">

                        <div class="contact-card">

                            <i class="bi bi-geo-alt"></i>

                            <h5 class="mt-3">Our Location</h5>

                            <p class="text-muted">
                                123 Medical Street, City, India
                            </p>

                        </div>

                    </div>


                    <div class="col-lg-4 col-md-6">

                        <div class="contact-card">

                            <i class="bi bi-telephone"></i>

                            <h5 class="mt-3">Phone Number</h5>

                            <p class="text-muted">
                                +91 9876543210
                            </p>

                        </div>

                    </div>


                    <div class="col-lg-4 col-md-6">

                        <div class="contact-card">

                            <i class="bi bi-envelope"></i>

                            <h5 class="mt-3">Email Address</h5>

                            <p class="text-muted">
                                hospital@email.com
                            </p>

                        </div>

                    </div>


                </div>

            </div>

        </section>



        <!-- Contact Form -->

        <section class="py-5">

            <div class="container">

                <div class="row align-items-center g-4">





                    <div class="col-lg-12 text-center">

                        <div class="contact-form">

                            <h3 class="fw-bold mb-4">
                                Send Us a Message
                            </h3>

                            <form>

                                <div class="mb-3">
                                    <input type="text" class="form-control" placeholder="Your Name">
                                </div>

                                <div class="mb-3">
                                    <input type="email" class="form-control" placeholder="Your Email">
                                </div>

                                <div class="mb-3">
                                    <input type="text" class="form-control" placeholder="Phone Number">
                                </div>

                                <div class="mb-3">
                                    <textarea class="form-control" rows="4" placeholder="Your Message"></textarea>
                                </div>

                                <button class="btn btn-success w-100">
                                    Send Message
                                </button>

                            </form>

                        </div>

                    </div>

                </div>

            </div>

        </section>



        <!-- Map -->

        <section class="py-5 bg-light">

            <div class="container">

                <h2 class="text-center fw-bold mb-4">
                    Our Location
                </h2>

                <div class="ratio ratio-16x9">

                    <iframe src="https://maps.google.com/maps?q=hospital&t=&z=13&ie=UTF8&iwloc=&output=embed">
                    </iframe>

                </div>

            </div>

        </section>



        <!-- CTA -->

        <section class="contact-cta py-5 text-center">

            <div class="container">

                <h2 class="fw-bold">
                    Need Emergency Medical Help?
                </h2>

                <p class="mt-3">
                    Call our emergency service anytime
                </p>

                <a href="tel:+918808720522" class="btn btn-light mt-3 px-4">
                    Call Now <i class="bi bi-arrow-right"></i>
                </a>

            </div>

        </section>



        <%@include file="footer.jsp" %>
</body>

</html>