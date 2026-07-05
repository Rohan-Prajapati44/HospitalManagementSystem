
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>Home Page</title>
            
        <%@include file="link.jsp"%>
        <style>


            /*banar section*/
            .hero{
                background: linear-gradient(to right,#3c7c88,#66b2be);
                color:white;
                padding:100px 0;
            }

            .hero h1{
                font-size:60px;
                font-weight:700;
                line-height:1.2;
            }

            .hero p{
                margin-top:20px;
                font-size:16px;
                max-width:500px;
            }

            .hero-btn{
                margin-top:15px;
                background:#39c5a5;
                border:none;
                padding:12px 25px;
                border-radius:8px;
                color:white;
                font-weight:500;
            }

            .hero-btn:hover{
                background:#2aa68a;
            }

            .hero img{
                max-width:75%;
                height:auto;
            }

            @media (max-width:768px){

                .hero{
                    text-align:center;
                    padding:70px 0;
                }

                .hero h1{
                    font-size:35px;
                }

            }

            /*features*/
            .features{
                margin-top:-100px;

            }

            .feature-box{
                background:white;
                padding:20px 20px;
                text-align:center;
                border-radius:15px;
                box-shadow:0 10px 25px rgba(0,0,0,0.1);
                height:100%;
                transition:0.4s;
            }

            .feature-box:hover{
                transform:scale(1.03);
                box-shadow:0 15px 35px rgba(0,0,0,0.2);
            }

            .feature-box i{
                font-size:40px;
                color:#2fbfa5;
                margin-bottom:15px;
            }

            .feature-box h4{
                color:#2c5aa0;
                font-weight:600;
            }

            .feature-box p{
                color:#777;
                font-size:14px;
            }

            /* about section */

            .section-padding{
                padding:50px 0;

            }

            .subtitle{
                color:#28b8a7;
                font-weight:600;
                letter-spacing:1px;
            }

            .title{
                font-size:48px;
                font-weight:700;
                color:#0c1b2a;
                margin-bottom:20px;
            }

            .desc{
                color:#6c757d;
                line-height:1.8;
                margin-bottom:30px;
            }

            .feature{
                display:flex;
                align-items:center;
                gap:10px;
                margin-bottom:15px;
                font-size:16px;
            }

            .btn-appointment{
                background:#3cc3b3;
                border:none;
                padding:12px 28px;
                color:#fff;
                border-radius:8px;
                font-weight:500;
            }

            .btn-appointment:hover{
                background:#2ea89a;
            }

            .doctor-img img{
                max-width:70%;
                height:auto;
            }

            /* Tablet */
            @media (max-width:991px){

                .title{
                    font-size:36px;
                }

                .section-padding{
                    padding:60px 0;
                }

            }

            /* Mobile */

            @media (max-width:576px){

                .title{
                    font-size:28px;
                }

                .desc{
                    font-size:14px;
                }

                .feature{
                    font-size:14px;
                }

                .doctor-img img{
                    max-width:100%;
                }

            }

            /* Counter Section */

            .counter-section{
                background:#2f64b3;
                padding:40px 0;
            }

            .counter-section h2{
                font-size:36px;
                font-weight:700;
                margin-bottom:5px;
            }

            .counter-section p{
                margin:0;
                font-size:14px;
            }


            /* Services Section */

            .services-section{
                padding:80px 0;
                background:#f7f9fb;
            }

            .service-subtitle{
                color:#28b8a7;
                font-weight:600;
                letter-spacing:1px;
                font-size:14px;
            }

            .service-title{
                font-size:36px;
                font-weight:700;
                margin-top:10px;
            }

            .service-card{
                background:#eaf4f3;
                padding:35px 25px;
                border-radius:10px;
                transition:0.3s;
            }

            .service-card:hover{
                transform:translateY(-8px);
                box-shadow:0 10px 25px rgba(0,0,0,0.1);
            }

            .service-card h5{
                color:#1f3d7a;
                font-weight:600;
                margin-top:15px;
            }

            .service-card p{
                font-size:14px;
                color:#6c757d;
            }

            .icon{
                width:60px;
                height:60px;
                background:#3cc3b3;
                color:#fff;
                border-radius:50%;
                display:flex;
                align-items:center;
                justify-content:center;
                font-size:24px;
                margin:auto;
            }

            .active-card{
                background:#ffffff;
                box-shadow:0 10px 25px rgba(0,0,0,0.08);
            }

            .service-card a{
                color:#2f64b3;
                font-weight:500;
                text-decoration:none;
            }

            /* Responsive */

            @media(max-width:768px){

                .service-title{
                    font-size:28px;
                }

                .counter-section h2{
                    font-size:28px;
                }

            }

            /* TESTIMONIAL */

            .testimonial-section{
                background:#eaf4f3;
                padding:80px 0;
            }

            .section-subtitle{
                color:#3cc3b3;
                font-weight:600;
                letter-spacing:1px;
                font-size:14px;
            }

            .section-title{
                font-size:36px;
                font-weight:700;
                margin:10px 0;
            }

            .section-desc{
                color:#6c757d;
                font-size:14px;
            }

            .testimonial-card{
                background:#fff;
                padding:25px;
                border-radius:10px;
                box-shadow:0 5px 15px rgba(0,0,0,0.05);
            }

            .small-card{
                opacity:0.8;
            }

            .testimonial-user{
                display:flex;
                align-items:center;
                margin-top:20px;
            }

            .testimonial-user img{
                border-radius:50%;
                margin-right:10px;
            }

            .testimonial-user h6{
                margin:0;
                font-size:14px;
                font-weight:600;
            }

            .testimonial-user span{
                font-size:12px;
                color:#777;
            }

            /*works*/
            .work-section{
                background:#f7f9fb;
            }

            .work-box{
                padding:25px;
            }

            .icon-circle{
                width:90px;
                height:90px;
                border-radius:50%;
                background:#e8f5f3;
                display:flex;
                align-items:center;
                justify-content:center;
                margin:auto;
                font-size:35px;
                color:#2b7a78;
            }


            /* PROCESS */

            .process-section{
                padding:80px 0;
                background:#fff;
            }

            .process-card{
                padding:20px;
                text-align:center;
            }

            .process-icon{
                width:80px;
                height:80px;
                background:#eaf4f3;
                border-radius:50%;
                display:flex;
                align-items:center;
                justify-content:center;
                font-size:30px;
                margin:auto;
                margin-bottom:15px;
            }

            .process-card h5{
                font-weight:600;
                color:#2f64b3;
            }

            .process-card p{
                font-size:14px;
                color:#6c757d;
            }


            /* Responsive */

            @media(max-width:991px){

                .section-title{
                    font-size:28px;
                }

                .testimonial-section{
                    text-align:center;
                }

                .testimonial-buttons{
                    margin-top:20px;
                }

            }

            @media(max-width:576px){

                .section-title{
                    font-size:24px;
                }

                .process-icon{
                    width:60px;
                    height:60px;
                    font-size:24px;
                }

            }

            /*facilities*/
            .facilities-section{
                background:#f7fbfb;
            }

            .section-subtitle{
                color:#1abc9c;
                font-size:14px;
                font-weight:600;
                letter-spacing:1px;
            }

            .facility-card{
                background:linear-gradient(135deg,#3cc5b4,#26a69a);
                color:#fff;
                padding:30px;
                border-radius:12px;
                box-shadow:0 10px 20px rgba(0,0,0,0.08);
                transition:0.3s;
            }

            .facility-card i{
                width: 20%;
                padding: 3px;
                box-sizing: border-box;
                padding-left: 10px;
                border-radius: 50%;
                font-size:30px;
                margin-bottom:15px;
                color: #668DC4;
                background: white;

                display:block;
            }

            .facility-card h6{
                font-weight:600;
                margin-bottom:10px;
            }

            .facility-card p{
                font-size:14px;
                opacity:.9;
            }

            .facility-card:hover{
                transform:translateY(-6px);
            }


            /*doctors*/
            .doctor-card{
                background:#fff;
                box-shadow:0 10px 25px rgba(0,0,0,0.08);
                border-radius:6px;
                overflow:hidden;
                transition:0.3s;
            }

            .doctor-card img{
                width:100%;
                height:260px;
                /*object-fit:cover;*/
            }

            .doctor-info{
                padding:18px;
                background:white;
            }

            .active-doctor .active{
                background:#2db9a4;
                padding:20px;
            }


            .doctor-card:hover{
                transform:translateY(-6px);
            }

            /*blogs*/
            .blog-section{
                background:#f7f9fb;
            }

            .section-subtitle{
                color:#2bb673;
                font-weight:600;
                letter-spacing:1px;
            }

            .section-title{
                font-weight:700;
            }

            .blog-card{
                background:#fff;
                border-radius:8px;
                overflow:hidden;
                transition:.3s;
                box-shadow:0 5px 15px rgba(0,0,0,0.05);
            }

            .blog-card:hover{
                transform:translateY(-8px);
                box-shadow:0 10px 25px rgba(0,0,0,0.1);
            }

            .blog-img{
                overflow:hidden;
            }

            .blog-img img{
                width:100%;
                transition:.4s;
            }

            .blog-card:hover img{
                transform:scale(1.1);
            }

            .blog-content{
                padding:20px;
            }

            .blog-meta{
                font-size:14px;
                color:#777;
                margin-bottom:10px;
                display:flex;
                gap:15px;
            }

            .blog-meta i{
                color:#2bb673;
                margin-right:4px;
            }

            .blog-content h5{
                font-weight:600;
                margin-bottom:10px;
            }

            .blog-btn{
                text-decoration:none;
                font-weight:500;
                color:#2bb673;
            }

            .blog-btn:hover{
                letter-spacing:1px;
            }

            .more-btn{
                background:#2bb673;
                color:#fff;
                padding:10px 25px;
                border-radius:6px;
                text-decoration:none;
                font-weight:500;
            }

            .more-btn:hover{
                background:#249c5f;
            }


        </style>

    </head>

    <body>

        <!--navbar-->
        <%@include file="navbar.jsp"%>

        <!--banar start-->
        <section class="hero">
            <div class="container">
                <div class="row align-items-center">

                    <div class="col-lg-6">

                        <p style="letter-spacing:2px;" class="fw-bold"><i class="fa-solid fa-plus fw-bold"></i> WELCOME TO MEDCARE</p>

                        <h1>
                            Taking care of your health is our top priority.
                        </h1>

                        <p>
                            Being healthy is more than just not getting sick. It entails mental,
                            physical, and social well-being. It's not just about treatment,
                            it's about healing.
                        </p>

                        <button class="hero-btn" data-bs-toggle="modal" data-bs-target="#loginModal">
                            Make Appointment <i class="bi bi-arrow-right"></i>
                        </button>

                    </div>

                    <div class="col-lg-6 text-center">

                        <img src="image/banar.png" alt="doctor">

                    </div>

                </div>
            </div>
        </section>
        <!--banar end-->

        <section class="features">
            <div class="container">

                <div class="row g-4">

                    <div class="col-md-4">

                        <div class="feature-box">

                            <i class="fa-solid fa-user-doctor"></i>

                            <h4>Qualified Doctors</h4>

                            <p>
                                Developing whole individuals is our goal. 
                                We have a flexible, high-trust environment.
                            </p>

                        </div>

                    </div>

                    <div class="col-md-4">

                        <div class="feature-box">

                            <i class="fa-solid fa-helicopter "></i>

                            <h4>Emergency Helicopter</h4>

                            <p>
                                The air ambulance feature is now available 
                                even to middle class people, saving lives.
                            </p>

                        </div>

                    </div>

                    <div class="col-md-4">

                        <div class="feature-box">

                            <i class="fa-solid fa-virus"></i>

                            <h4>Covid - 19</h4>

                            <p>
                                With rising Covid-19 cases, it is hard 
                                to imagine a positive start to your date.
                            </p>

                        </div>

                    </div>

                </div>

            </div>
        </section>

        <!--about start-->
        <section class="section-padding">
            <div class="container">

                <div class="row align-items-center">

                    <!-- Left Content -->
                    <div class="col-lg-6 col-md-12 order-2 order-lg-1 text-center text-lg-start">

                        <p class="subtitle">~ ABOUT US</p>

                        <h1 class="title">
                            Welcome To Medcare <br>
                            Central Hospital
                        </h1>

                        <p class="desc">
                            Where compassionate care meets advanced medical technology. Our hospital is dedicated to providing high-quality healthcare services to patients with professionalism and empathy.
                        </p>

                        <div class="row text-start">

                            <div class="col-12 col-sm-6">
                                <div class="feature"> 15+ Years of excellence</div>
                                <div class="feature"> A Multispecialty hospital</div>
                            </div>

                            <div class="col-12 col-sm-6">
                                <div class="feature"> 24/7 Hour Medical Service</div>
                                <div class="feature"> A team of professionals</div>
                            </div>

                        </div>

                        <button class="hero-btn" data-bs-toggle="modal" data-bs-target="#loginModal">
                            Make Appointment <i class="bi bi-arrow-right"></i>
                        </button>

                    </div>


                    <!-- Right Image -->
                    <div class="col-lg-6 col-md-12 text-center order-1 order-lg-2 mb-4 mb-lg-0 doctor-img">

                        <img src="image/banar1.png" class="img-fluid" alt="Doctor">

                    </div>

                </div>

            </div>
        </section>
        <!--about end-->

        <!-- Counter Section -->
        <section class="counter-section">
            <div class="container">
                <div class="row text-center text-white">

                    <div class="col-6 col-md-3 mb-3 mb-md-0">
                        <h2>35+</h2>
                        <p>National Awards</p>
                    </div>

                    <div class="col-6 col-md-3 mb-3 mb-md-0">
                        <h2>125+</h2>
                        <p>Expert Doctors</p>
                    </div>

                    <div class="col-6 col-md-3">
                        <h2>5k+</h2>
                        <p>Satisfied Patients</p>
                    </div>

                    <div class="col-6 col-md-3">
                        <h2>8k+</h2>
                        <p>Operation Success</p>
                    </div>

                </div>
            </div>
        </section>


        <!-- Services Section -->
        <section class="services-section">

            <div class="container">

                <div class="text-center mb-5">

                    <p class="service-subtitle">~ MEDICAL SERVICES</p>

                    <h2 class="service-title">
                        Find Out More About <br>
                        Our Services
                    </h2>

                </div>

                <div class="row g-4">

                    <!-- Card 1 -->
                    <div class="col-lg-4 col-md-6">
                        <div class="service-card text-center">

                            <div class="icon"><i class="fa-solid fa-heart-pulse"></i></div>

                            <h5>Cardiology</h5>

                            <p>
                                We offer comprehensive cardiac care including heart checkups, ECG, blood pressure monitoring.
                            </p>

                        </div>
                    </div>


                    <!-- Card 2 -->
                    <div class="col-lg-4 col-md-6">
                        <div class="service-card text-center active-card">

                            <div class="icon"><i class="fa-solid fa-brain"></i></div>

                            <h5>Neurology</h5>

                            <p>
                                We treat a wide range of neurological conditions including headaches, migraines, epilepsy, stroke.
                            </p>

                            <a href="#">Read More <i class="bi bi-arrow-right"></i></a>

                        </div>
                    </div>


                    <!-- Card 3 -->
                    <div class="col-lg-4 col-md-6">
                        <div class="service-card text-center">

                            <div class="icon"><i class="fa-solid fa-droplet"></i></div>

                            <h5>Urology</h5>

                            <p>
                                We treat a wide range of conditions including kidney stones, urinary infections, prostate problems.
                            </p>

                        </div>
                    </div>


                    <!-- Card 4 -->
                    <div class="col-lg-4 col-md-6">
                        <div class="service-card text-center">

                            <div class="icon"><i class="fa-solid fa-lungs"></i></div>

                            <h5>Pulmonary</h5>

                            <p>
                                Medcare Central Hospital specializes in the diagnosis and treatment of diseases related to the lungs and respiratory system.
                            </p>

                        </div>
                    </div>


                    <!-- Card 5 -->
                    <div class="col-lg-4 col-md-6">
                        <div class="service-card text-center">

                            <div class="icon"><i class="fa-solid fa-x-ray"></i></div>

                            <h5>Radiology</h5>

                            <p>
                                Our skilled radiologists carefully analyze medical images to detect diseases, injuries, and internal health problems at an early stage.
                            </p>

                        </div>
                    </div>


                    <!-- Card 6 -->
                    <div class="col-lg-4 col-md-6">
                        <div class="service-card text-center">

                            <div class="icon"><i class="fa-solid fa-head-side-virus"></i></div>

                            <h5>Hypnotherapy</h5>

                            <p>
                                Our trained therapists work closely with patients to help them relax deeply and access a focused state of mind.
                            </p>

                        </div>
                    </div>

                </div>

            </div>

        </section>

        <!-- TESTIMONIAL SECTION -->
        <section class="testimonial-section">
            <div class="container">
                <div class="row align-items-center">

                    <!-- Left Content -->
                    <div class="col-lg-5 mb-4 mb-lg-0">

                        <p class="section-subtitle">~ TESTIMONIALS</p>

                        <h2 class="section-title">Great Patient Stories</h2>

                        <p class="section-desc">
                            Our patients? success stories reflect our commitment to providing high-quality treatment and personalized care.
                        </p>
                    </div>

                    <!-- Right Cards -->
                    <div class="col-lg-7">

                        <div class="row g-3">

                            <div class="col-md-8">
                                <div class="testimonial-card active-card">

                                    <p>
                                        Nulla sit amet finibus lacus. Lorem ipsum dolor sit amet,
                                        consectetur adipiscing elit. Nullam viverra sapien.
                                    </p>

                                    <div class="testimonial-user">

                                        <img src="image/testi.jfif" alt="user">

                                        <div>
                                            <h6>Kevin B. Ibarra</h6>
                                            <span>Patient</span>
                                        </div>

                                    </div>

                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="testimonial-card small-card">

                                    <p>
                                        Nulla sit amet finibus lacus. Lorem ipsum dolor sit amet.
                                    </p>

                                    <div class="testimonial-user">

                                        <img src="image/testi1.jfif" alt="user">

                                        <div>
                                            <h6>Kevin B. Ibarra</h6>
                                            <span>Patient</span>
                                        </div>

                                    </div>

                                </div>
                            </div>

                        </div>

                    </div>

                </div>
            </div>
        </section>

        <!-- WORK PROCESS -->
        <section class="work-section py-5">
            <div class="container text-center">

                <p class="text-success fw-semibold">OUR WORK PROCESS</p>
                <h2 class="fw-bold mb-3">Let's See How We Work</h2>

                <div class="row g-4">

                    <div class="col-lg-4 col-md-6">
                        <div class="work-box">
                            <div class="icon-circle">
                                <i class="fa-solid fa-user-doctor"></i>
                            </div>
                            <h5 class="mt-3">Seeing Patients</h5>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6">
                        <div class="work-box">
                            <div class="icon-circle">
                                <i class="fa-solid fa-magnifying-glass-plus"></i>
                            </div>
                            <h5 class="mt-3">Making a Diagnosis</h5>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-12">
                        <div class="work-box">
                            <div class="icon-circle">
                                <i class="fa-solid fa-briefcase-medical"></i>
                            </div>
                            <h5 class="mt-3">Developing a Treatment</h5>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                        </div>
                    </div>

                </div>
            </div>
        </section>

        <!--facilities section-->

        <section class="facilities-section py-5">
            <div class="container">

                <div class="row align-items-center">

                    <!-- Left Content -->
                    <div class="col-lg-5 mb-4 mb-lg-0">

                        <span class="section-subtitle">OUR FACILITIES</span>

                        <h2 class="fw-bold mb-3">
                            Facilities That We <br> Provide
                        </h2>

                        <p class="text-muted mb-4">
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
                            Etiam eu turpis molestie, dictum est a, mattis tellus.
                        </p>

                        <a href="#" class="btn btn-outline-success px-4">
                            View All <i class="bi bi-arrow-right"></i>
                        </a>

                    </div>


                    <!-- Right Cards -->
                    <div class="col-lg-7">

                        <div class="row g-4">

                            <div class="col-md-6">
                                <div class="facility-card mt-lg-4">
                                    <i class="bi bi-camera-video"></i>
                                    <h6>Online Sessions</h6>
                                    <p>Lorem ipsum dolor sit amet consectetur adipiscing.</p>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="facility-card">
                                    <i class="bi bi-lightning"></i>
                                    <h6>Instant Operation</h6>
                                    <p>Lorem ipsum dolor sit amet consectetur adipiscing.</p>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="facility-card">
                                    <i class="bi bi-heart-pulse"></i>
                                    <h6>Emergency Care</h6>
                                    <p>Lorem ipsum dolor sit amet consectetur adipiscing.</p>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="facility-card mt-lg-4">
                                    <i class="bi bi-shield-check"></i>
                                    <h6>Private & Secure</h6>
                                    <p>Lorem ipsum dolor sit amet consectetur adipiscing.</p>
                                </div>
                            </div>

                            <div class="col-md-6 offset-md-6">
                                <div class="facility-card">
                                    <i class="bi bi-people"></i>
                                    <h6>Outdoor Service</h6>
                                    <p>Lorem ipsum dolor sit amet consectetur adipiscing.</p>
                                </div>
                            </div>

                        </div>
                    </div>

                </div>
            </div>
        </section>

        <!--doctors-->
        <section class="py-5 bg-light">
            <div class="container">

                <div class="d-flex justify-content-between align-items-center mb-5 flex-wrap">

                    <div>
                        <span class="text-success small fw-bold">OUR DOCTORS</span>
                        <h2 class="fw-bold">Our Best Doctors</h2>
                    </div>

                    <div>
                        <button class="btn btn-light rounded-circle shadow-sm me-2">
                            <i class="bi bi-chevron-left"></i>
                        </button>

                        <button class="btn btn-success rounded-circle shadow-sm">
                            <i class="bi bi-chevron-right"></i>
                        </button>
                    </div>

                </div>

                <div class="row g-4 text-center">

                    <!-- Doctor 1 -->
                    <div class="col-lg-3 col-md-6 col-sm-12">
                        <div class="doctor-card">

                            <img src="image/doct1.jfif" class="img-fluid">

                            <div class="doctor-info">
                                <h6 class="fw-bold text-primary">Dr. Diana Ayers</h6>
                                <small class="text-muted">Cardiologist</small>
                            </div>

                        </div>
                    </div>


                    <!-- Doctor 2 Highlight -->
                    <div class="col-lg-3 col-md-6 col-sm-12">
                        <div class="doctor-card active-doctor">

                            <img src="image/doct2.jfif" class="img-fluid">

                            <div class="doctor-info active">

                                <h6 class="fw-bold text-white">Dr. Tracy Mckay</h6>
                                <small class="text-white">Cardiologist</small>



                            </div>

                        </div>
                    </div>


                    <!-- Doctor 3 -->
                    <div class="col-lg-3 col-md-6 col-sm-12">
                        <div class="doctor-card">

                            <img src="image/doct3.jfif" class="img-fluid">

                            <div class="doctor-info">
                                <h6 class="fw-bold text-primary">Dr. Jeffrey Davis</h6>
                                <small class="text-muted">Cardiologist</small>
                            </div>

                        </div>
                    </div>


                    <!-- Doctor 4 -->
                    <div class="col-lg-3 col-md-6 col-sm-12">
                        <div class="doctor-card">

                            <img src="image/doct4.jfif" class="img-fluid">

                            <div class="doctor-info">
                                <h6 class="fw-bold text-primary">Dr. Allen Hartzler</h6>
                                <small class="text-muted">Cardiologist</small>
                            </div>

                        </div>
                    </div>


                </div>
            </div>
        </section>

        <!--blogs-->
        <section class="blog-section py-5">
            <div class="container">

                <div class="text-center mb-5">
                    <p class="section-subtitle">OUR BLOGS</p>
                    <h2 class="section-title">Latest Blogs & Articles</h2>
                </div>

                <div class="row g-4">

                    <!-- Blog 1 -->
                    <div class="col-lg-4 col-md-6">
                        <div class="blog-card">

                            <div class="blog-img">
                                <img src="https://images.unsplash.com/photo-1586773860418-d37222d8fce3" class="img-fluid">
                            </div>

                            <div class="blog-content">

                                <div class="blog-meta">
                                    <span><i class="fa-regular fa-user"></i> Jeffrey Davis</span>
                                    <span><i class="fa-regular fa-calendar"></i> 24 Jan 2023</span>
                                </div>

                                <h5>New Technology Make for Pulmonary Operation</h5>

                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>

                                <a href="#" class="blog-btn">View Details <i class="bi bi-arrow-right"></i></a>

                            </div>
                        </div>
                    </div>


                    <!-- Blog 2 -->
                    <div class="col-lg-4 col-md-6">
                        <div class="blog-card">

                            <div class="blog-img">
                                <img src="https://images.unsplash.com/photo-1559839734-2b71ea197ec2" class="img-fluid">
                            </div>

                            <div class="blog-content">

                                <div class="blog-meta">
                                    <span><i class="fa-regular fa-user"></i> Allen Hartzler</span>
                                    <span><i class="fa-regular fa-calendar"></i> 22 Jan 2023</span>
                                </div>

                                <h5 class="text-primary">To Be Good Health Take Doctor Suggestions</h5>

                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>

                                <a href="#" class="blog-btn">View Details <i class="bi bi-arrow-right"></i></a>

                            </div>
                        </div>
                    </div>


                    <!-- Blog 3 -->
                    <div class="col-lg-4 col-md-6">
                        <div class="blog-card">

                            <div class="blog-img">
                                <img src="https://images.unsplash.com/photo-1576091160550-2173dba999ef" class="img-fluid">
                            </div>

                            <div class="blog-content">

                                <div class="blog-meta">
                                    <span><i class="fa-regular fa-user"></i> Diana Ayers</span>
                                    <span><i class="fa-regular fa-calendar"></i> 20 Jan 2023</span>
                                </div>

                                <h5>A Guide to Maintaining Healthy Bones</h5>

                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>

                                <a href="#" class="blog-btn">View Details <i class="bi bi-arrow-right"></i></a>

                            </div>
                        </div>
                    </div>

                </div>


                <div class="text-center mt-5">
                    <a href="#" class="more-btn">More Articles</a>
                </div>

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

        </div>

        <%@include file="footer.jsp"%>
    </body>
</html>