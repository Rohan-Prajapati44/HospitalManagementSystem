<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Navbar page</title>
        <style>
            .navbar{
                background:#eaf3f2;
            }

            .logo-text{
                font-weight:600;
                font-size:22px;
            }

            .logo-text span{
                color:#2fbfa5;
            }

            .nav-link{
                margin:0 10px;
                color:#555;
                font-weight:500;
            }

            .nav-link.active{
                color:#2fbfa5;
            }

            .appointment-btn{
                cursor: pointer;
                background:#2f66b3;
                color:white;
                padding:10px 18px;
                border-radius:6px;
                text-decoration:none;
            }

            .appointment-btn:hover{
                background:#1f4e8f;
            }

            /*call*/
            .floating-buttons {
                position: fixed;
                right: 15px;
                bottom: 20px;
                z-index: 9999;
                display: flex;
                flex-direction: column;
                gap: 10px;
            }

            .float-btn {
                width: 50px;
                height: 50px;
                border-radius: 50%;
                color: #fff;
                font-size: 22px;
                display: flex;
                align-items: center;
                justify-content: center;
                text-decoration: none;
                box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
            }

            .whatsapp {
                background: #25D366;
            }

            .call {
                background: #0d6efd;
            }

            .float-btn:hover {
                transform: scale(1.1);
                transition: 0.3s;
            }

        </style>
        <%--<%@include file="link.jsp"%>--%>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg">
            <div class="container">

                <a class="navbar-brand logo-text" href="index.jsp">
                    ➕ Axis<span>care</span>
                </a>

                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#menu">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse justify-content-center" id="menu">

                    <ul class="navbar-nav">

                        <li class="nav-item">
                            <a class="nav-link active" href="index.jsp">Home</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="about.jsp">About</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="services.jsp">Services</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="doctors.jsp">Doctors</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="blogs.jsp">Blogs</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="contact.jsp">Contact</a>
                        </li>

                    </ul>

                </div>

                <a class="appointment-btn" data-bs-toggle="modal" data-bs-target="#loginModal">
                            Make Appointment <i class="bi bi-arrow-right"></i>
                        </a>

            </div>
        </nav>

        <!-- ===== Floating WhatsApp & Call Buttons ===== -->
        <div class="floating-buttons">
            <!-- WhatsApp -->
            <a href="https://wa.me/918808720522" target="_blank" class="float-btn whatsapp" title="Chat on WhatsApp">
                <i class="fab fa-whatsapp"></i>
            </a>

            <!-- Call -->
            <a href="tel:+918808720522" class="float-btn call" title="Call Now">
                <i class="fas fa-phone"></i>
            </a>
        </div>
    </body>
</html>
