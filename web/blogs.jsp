<!DOCTYPE html>
<html lang="en">
    <head>

        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Blog</title>

        <%@include file="link.jsp" %>
        <style>

            body{
                font-family:Segoe UI;
            }

            /* Banner */

            .blog-banner{
                height:60vh;
                background:
                    linear-gradient(rgba(0,0,0,.6),rgba(0,0,0,.6)),
                    url("image/blogs2.png");
                background-size:cover;
                background-position:center;
                display:flex;
                align-items:center;
                color:white;
                text-align:center;
            }

            /* Blog Card */

            .blog-card{
                border-radius:12px;
                overflow:hidden;
                box-shadow:0 10px 20px rgba(0,0,0,0.08);
                transition:.3s;
            }

            .blog-card:hover{
                transform:translateY(-6px);
            }

            .blog-img{
                height:220px;
                object-fit:cover;
            }

            /* Sidebar */

            .sidebar-box{
                background:white;
                padding:20px;
                border-radius:10px;
                box-shadow:0 5px 15px rgba(0,0,0,0.08);
                margin-bottom:25px;
            }

            /* Featured */

            .featured{
                background:#f6fbfb;
            }

            /* Newsletter */

            .newsletter{
                background:#1abc9c;
                color:white;
            }

        </style>

    </head>


    <body>

        <%@include file="navbar.jsp" %>
        
        <!-- Banner -->

        <section class="blog-banner">

            <div class="container">

                <h1 class="display-4 fw-bold">
                    Health & Wellness Blog
                </h1>

                <p class="lead mt-3">
                    Latest health tips and medical news
                </p>

            </div>

        </section>



        <!-- Blog Section -->

        <section class="py-5">

            <div class="container">

                <div class="row">

                    <!-- Blog Posts -->

                    <div class="col-lg-8">

                        <div class="row g-4">


                            <div class="col-md-6">

                                <div class="blog-card card">

                                    <img src="image/blogs1.png"
                                         class="card-img-top blog-img">

                                    <div class="card-body">

                                        <h6 class="fw-bold">
                                            Healthy Lifestyle Tips
                                        </h6>

                                        <p class="text-muted small">
                                            Learn how to maintain a healthy lifestyle and prevent diseases.
                                        </p>

                                        <a href="#" class="text-success">
                                            Read More 
                                        </a>

                                    </div>

                                </div>

                            </div>


                            <div class="col-md-6">

                                <div class="blog-card card">

                                    <img src="image/doct4.jfif"
                                         class="card-img-top blog-img">

                                    <div class="card-body">

                                        <h6 class="fw-bold">
                                            Heart Care Guide
                                        </h6>

                                        <p class="text-muted small">
                                            Important tips to keep your heart strong and healthy.
                                        </p>

                                        <a href="#" class="text-success">
                                            Read More 
                                        </a>

                                    </div>

                                </div>

                            </div>


                            <div class="col-md-6">

                                <div class="blog-card card">

                                    <img src="image/blogs3.png"
                                         class="card-img-top blog-img">

                                    <div class="card-body">

                                        <h6 class="fw-bold">
                                            Benefits of Regular Exercise
                                        </h6>

                                        <p class="text-muted small">
                                            Exercise improves overall health and reduces risk of diseases.
                                        </p>

                                        <a href="#" class="text-success">
                                            Read More 
                                        </a>

                                    </div>

                                </div>

                            </div>


                            <div class="col-md-6">

                                <div class="blog-card card">

                                    <img src="image/blogs4.png"
                                         class="card-img-top blog-img">

                                    <div class="card-body">

                                        <h6 class="fw-bold">
                                            Nutrition and Diet
                                        </h6>

                                        <p class="text-muted small">
                                            Balanced diet plays a major role in good health.
                                        </p>

                                        <a href="#" class="text-success">
                                            Read More 
                                        </a>

                                    </div>

                                </div>

                            </div>


                        </div>

                    </div>



                    <!-- Sidebar -->

                    <div class="col-lg-4">
                        <div class="sidebar-box">

                            <h6 class="fw-bold mb-3">
                                Categories
                            </h6>

                            <ul class="list-unstyled">

                                <li class="mb-2">Health Tips</li>
                                <li class="mb-2">Medical News</li>
                                <li class="mb-2">Heart Care</li>
                                <li class="mb-2">Nutrition</li>

                            </ul>

                        </div>


                        <div class="sidebar-box">

                            <h6 class="fw-bold mb-3">
                                Recent Posts
                            </h6>

                            <p class="small mb-2">
                                Healthy Diet for Better Life
                            </p>

                            <p class="small mb-2">
                                How to Prevent Heart Diseases
                            </p>

                            <p class="small mb-2">
                                Benefits of Morning Exercise
                            </p>

                        </div>

                    </div>

                </div>

            </div>

        </section>



        <!-- Featured Blog -->

        <section class="featured py-5">

            <div class="container">

                <div class="row align-items-center g-4">

                    <div class="col-lg-6">

                        <img src="image/doct1.jfif"
                             class="img-fluid rounded shadow">

                    </div>


                    <div class="col-lg-6">

                        <h2 class="fw-bold">
                            Featured Health Article
                        </h2>

                        <p class="mt-3">
                            Discover how simple lifestyle changes can improve
                            your overall health and prevent major diseases.
                        </p>

                        <a href="#"
                           class="btn btn-success mt-3">
                            Read Article
                        </a>

                    </div>

                </div>

            </div>

        </section>



        <!-- Newsletter -->

        <section class="newsletter py-5 text-center">

            <div class="container">

                <h2 class="fw-bold">
                    Subscribe Our Blog
                </h2>

                <p class="mt-3">
                    Get the latest health tips and updates
                </p>

                <div class="row justify-content-center mt-4">

                    <div class="col-md-6">

                        <div class="input-group">

                            <input type="email"
                                   class="form-control"
                                   placeholder="Enter your email">

                            <button class="btn btn-dark">
                                Subscribe
                            </button>

                        </div>

                    </div>

                </div>

            </div>

        </section>



        <%@include file="footer.jsp" %>
    </body>
</html>