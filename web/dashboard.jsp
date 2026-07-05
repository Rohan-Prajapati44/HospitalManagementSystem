<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Hospital Dashboard</title>
        <%@ include file="connection.jsp" %>
        <%@include file="link.jsp" %>
        <style>

            body{
                background:#f4f7fc;
                font-family:Arial;
            }

            /* TOPBAR */

            .topbar{
                display:none;
                background:white;
                padding:12px 15px;
                box-shadow:0 2px 8px rgba(0,0,0,0.1);
                align-items:center;
                gap:15px;
            }

            .menu-btn{
                border:none;
                background:none;
                font-size:22px;
            }

            /* SIDEBAR */

            .sidebar{
                width:250px;
                height:100vh;
                background:#1f2d3d;
                position:fixed;
                color:white;
                overflow:auto;
                transition:.3s;
            }

            .sidebar h4{
                text-align:center;
                padding:20px;
                border-bottom:2px solid rgba(255,255,255,0.1);
            }

            .sidebar a{
                display:block;
                color:white;
                padding:14px 20px;
                text-decoration:none;
                transition:.3s;
            }

            .sidebar a i{
                margin-right:10px;
            }

            .sidebar a:hover{
                background:skyblue;
                color:black;
                padding-left:30px;
            }

            /* SUBMENU */

            .submenu{
                display:none;
                background:#2c3e50;
            }

            .submenu a{
                padding-left:45px;
                font-size:14px;
            }

            /* MAIN */

            .main{
                margin-left:250px;
                padding:30px;
            }

            /* CARDS */

            .card-box{
                padding:20px;
                border-radius:12px;
                color:white;
                box-shadow:0 10px 20px rgba(0,0,0,0.15);
            }

            .blue{
                background:#0d6efd;
            }
            .green{
                background:#198754;
            }
            .orange{
                background:#ffc107;
            }
            .red{
                background:#dc3545;
            }

            /* WELCOME BOX */

            .welcome-box{
                background:#e9f6ff;
                padding:25px;
                border-radius:12px;
                margin-bottom:30px;
                border-left:5px solid #0d6efd;
                box-shadow:0 5px 10px rgba(0,0,0,0.08);
            }

            /* MOBILE */

            @media(max-width:768px){

                .topbar{
                    display:flex;
                }

                .sidebar{
                    left:-250px;
                    z-index:1000;
                }

                .sidebar.active{
                    left:0;
                }

                .main{
                    margin-left:0;
                    padding:20px;
                }

            }

            .welcome-box{
                background:#e9f6ff;
                padding:20px;
                border-radius:12px;
                margin-bottom:30px;
                border-left:5px solid #0d6efd;
                box-shadow:0 5px 10px rgba(0,0,0,0.08);
            }


            /*add patient*/
            .card{
                max-width:500px;
                margin:auto;
                margin-top:60px;
                border-radius:15px;
                box-shadow:0 5px 15px rgba(0,0,0,0.2);
            }

            /*patient form*/
            * {
                box-sizing: border-box;
                margin: 0;
                padding: 0;
                font-family: Arial;
            }



            .container {
                width: 90%;
                max-width: 420px;
                background: white;
                padding: 20px;
                border-radius: 12px;
                box-shadow: 0 4px 15px rgba(0,0,0,0.2);
            }

            h2 {
                text-align: center;
                margin-bottom: 15px;
                color: #333;
            }

            label {
                font-size: 14px;
                margin-top: 10px;
                display: block;
            }

            input[type=text],
            input[type=number] {
                width: 100%;
                padding: 10px;
                margin-top: 5px;
                border: 1px solid #ccc;
                border-radius: 6px;
                font-size: 14px;
            }

            .gender {
                margin-top: 8px;
                display: flex;
                gap: 15px;
                font-size: 14px;
            }

            input[type=submit] {
                width: 100%;
                margin-top: 15px;
                background: #4CAF50;
                color: white;
                padding: 12px;
                border: none;
                border-radius: 6px;
                font-size: 16px;
                cursor: pointer;
                transition: 0.3s;
            }

            input[type=submit]:hover {
                background: #45a049;
            }

            /* ? Mobile Adjustments */
            @media (max-width: 480px) {
                .container {
                    padding: 15px;
                }

                h2 {
                    font-size: 18px;
                }

                input[type=submit] {
                    font-size: 14px;
                    padding: 10px;
                }
            }

            /* ? Tablet */
            @media (min-width: 481px) and (max-width: 768px) {
                .container {
                    max-width: 500px;
                }
            }

            /* ? Desktop */
            @media (min-width: 769px) {
                .container {
                    max-width: 420px;
                }
            }

            .card{
                border-radius:12px;
            }

            @media(max-width:768px){
                .row{
                    flex-direction:column;
                }
            }

            .table-responsive{
                overflow-x:auto;
            }

            @media(max-width:768px){
                h3{
                    font-size:20px;
                }

                .btn{
                    font-size:12px;
                    padding:5px 8px;
                }
            }


        </style>

    </head>

    <body>

        <!-- TOPBAR -->

        <div class="topbar">

            <button class="menu-btn" onclick="toggleSidebar()">
                <i class="fa fa-bars"></i>
            </button>

            <h5 class="m-0">AxisCare</h5>

        </div>

        <!-- SIDEBAR -->

        <div class="sidebar">

            <h4 class="fw-bold" style="color:#00A5A3;">
                <i class="fa-solid fa-plus"></i> AxisCare
            </h4>

            <a href="#" onclick="toggleDashboard()">
                <i class="fa fa-chart-line"></i> Dashboard
            </a>

            <!-- Patients -->

            <a href="#" onclick="togglePatientMenu()">
                <i class="fa fa-user-injured"></i> Patients
            </a>

            <div id="patientSubMenu" class="submenu">

                <a href="#" onclick="showPatientForm()">Add Patient</a>

                <a href="#" onclick="showPatientTable()">View Patient</a>

            </div>

            <!-- Doctors -->

            <a href="#" onclick="toggleDoctorMenu()">
                <i class="fa fa-user-doctor"></i> Doctors
            </a>

            <div id="doctorSubMenu" class="submenu">

                <a href="#" onclick="showDoctorForm()">Add Doctor</a>

                <a href="#" onclick="showDoctorTable()">View Doctor</a>

            </div>

            <a href="#" onclick="showAppointments()">
                <i class="fa fa-calendar-check"></i> Appointments
            </a>

            <a href="#" onclick="showDepartments()"><i class="fa fa-hospital"></i> Departments</a>

            <a href="#" onclick="showBilling()"><i class="fa fa-file-invoice-dollar"></i> Billing</a>

            <a href="#" onclick="showReports()"><i class="fa fa-chart-pie"></i> Reports</a>

            <!--<a href="#" onclick="showSettings()"><i class="fa fa-gear"></i> Settings</a>-->

            <a href="index.jsp"><i class="fa fa-right-from-bracket"></i> Logout</a>

        </div>

        <!-- MAIN -->

        <div class="main">

            <div class="welcome-box d-flex justify-content-between align-items-center">


                <h4 class="text-success">
                    Welcome, <%= user%>
                </h4>

                <a class="btn btn-outline-danger" href="index.jsp">
                    <i class="fa fa-right-from-bracket"></i> Logout
                </a>

            </div>

            <!--Dashboard-->
            <div id="dashboard_item" style="display:none">
                <div class="col-md-10 p-4">

                    <h3>Dashboard</h3>

                    <div class="row mt-4">


                        <div class="col-md-3">
                            <div class="card bg-primary text-white p-3">
                                <h5>Total Patients</h5>


                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="card bg-success text-white p-3">
                                <h5>Doctors</h5>

                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="card bg-warning text-white p-3">
                                <h5>Appointments</h5>

                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="card bg-danger text-white p-3">
                                <h5>Revenue</h5>

                            </div>
                        </div>

                    </div>

                </div>
            </div> 

            <!-- ADD PATIENT -->

            <div id="patientForm" style="display:none">

                <div class="container">
                    <h2>Patient Registration</h2>

                    <form action="save_patient.jsp" method="post" >

                        <label>Name</label>
                        <input type="text" name="name" placeholder="Enter Name" required>

                        <label>Age</label>
                        <input type="number" name="age" placeholder="Enter Age" required>

                        <label>Gender</label>
                        <div class="gender">
                            <label><input type="radio" name="gender" value="Male"> Male</label>
                            <label><input type="radio" name="gender" value="Female"> Female</label>
                        </div>

                        <label>Mobile</label>
                        <input type="text" name="mobile" placeholder="Enter Mobile Number" required>

                        <label>Disease</label>
                        <input type="text" name="disease" placeholder="Enter Disease" required>


                        <label>Address</label>
                        <input type="text" name="address" placeholder="Enter Address" required>


                        <input type="submit" value="Save Patient">

                    </form>
                </div>

            </div>



            <!-- PATIENT TABLE -->

            <div id="patientTable" style="display:none">

                <h3>Patient List</h3>

                <table class="table table-bordered table-striped">

                    <tr class="bg-dark text-white">
                        <th>ID</th>
                        <th>Name</th>
                        <th>Age</th>
                        <th>Gender</th>
                        <th>Mobile</th>
                        <th>Disease</th>
                        <th>Address</th>
                        <th>Action</th>
                    </tr>

                    <%
                        try {

                            Statement st = con.createStatement();
                            ResultSet rs = st.executeQuery("SELECT * FROM patient");

                            while (rs.next()) {
                    %>

                    <tr>
                        <td><%=rs.getInt("id")%></td>
                        <td><%=rs.getString("name")%></td>
                        <td><%=rs.getInt("age")%></td>
                        <td><%=rs.getString("gender")%></td>
                        <td><%=rs.getString("mobile")%></td>
                        <td><%=rs.getString("disease")%></td>
                        <td><%=rs.getString("address")%></td>
                        <td>
                            <a href="#" 
                               class="btn btn-warning btn-sm"
                               onclick="openEditModal(
                                               '<%=rs.getInt("id")%>',
                                               '<%=rs.getString("name")%>',
                                               '<%=rs.getInt("age")%>',
                                               '<%=rs.getString("gender")%>',
                                               '<%=rs.getString("mobile")%>',
                                               '<%=rs.getString("disease")%>',
                                               '<%=rs.getString("address")%>'
                                               )">
                                Edit
                            </a>

                            <a href="delete_patient.jsp?id=<%=rs.getInt("id")%>" 
                               class="btn btn-danger btn-sm"
                               onclick="return confirm('Are you sure you want to delete?');">
                                Delete
                            </a>
                        </td>
                    </tr>

                    <%
                            }

                        } catch (Exception e) {
                            out.println("Error: " + e);
                        }
                    %>

                </table>

            </div>

            <!-- ADD DOCTOR -->

            <div id="doctorForm" style="display:none">

                <div class="container">
                    <h2>Add Doctor</h2>

                    <form action="save_doctor.jsp" method="post">

                        <label>Doctor Name</label>
                        <input type="text" name="doc_name" placeholder="Enter Doctor Name" required>

                        <label>Specialization</label>
                        <input type="text" name="specialization" placeholder="Enter Specialization" required>

                        <label>Mobile</label>
                        <input type="text" name="mobile" placeholder="Enter Mobile Number" required>

                        <label>Email</label>
                        <input type="text" name="email" placeholder="Enter Email Address" required>

                        <input type="submit" value="Save Doctor">

                    </form>
                </div>

            </div>

            <!-- DOCTOR TABLE -->

            <div id="doctorTable" style="display:none">

                <h3>Doctor List</h3>

                <table class="table table-bordered table-striped">

                    <tr class="bg-dark text-white">
                        <th>ID</th>
                        <th>Name</th>
                        <th>Specialization</th>
                        <th>Mobile</th>
                        <th>Email</th>
                        <th>Action</th>
                    </tr>

                    <%    Statement st = con.createStatement();
                        ResultSet rs = st.executeQuery("SELECT * FROM doctor");

                        while (rs.next()) {
                    %>

                    <tr>
                        <td><%=rs.getInt("id")%></td>
                        <td><%=rs.getString("name")%></td>
                        <td><%=rs.getString("specialization")%></td>
                        <td><%=rs.getString("mobile")%></td>
                        <td><%=rs.getString("email")%></td>

                        <td>
                            <a href="#" class="btn btn-warning btn-sm"
                               onclick="openDoctorModal(
                                               '<%=rs.getInt("id")%>',
                                               '<%=rs.getString("name")%>',
                                               '<%=rs.getString("specialization")%>',
                                               '<%=rs.getString("mobile")%>',
                                               '<%=rs.getString("email")%>'
                                               )">Edit</a>

                            <a href="delete_doctor.jsp?id=<%=rs.getInt("id")%>" 
                               class="btn btn-danger btn-sm"
                               onclick="return confirm('Delete this doctor?')">Delete</a>
                        </td>
                    </tr>

                    <%
                        }
                    %>

                </table>

            </div>

            <!-- APPOINTMENTS -->
            <div id="appointmentsSection" style="display:none">

                <h3 class="mb-3">Appointment Management</h3>

                <!-- SEARCH -->
                <form method="get" class="mb-3">
                    <input type="text" name="search" class="form-control" placeholder="Search Patient...">
                </form>

                <div class="row">

                    <!-- FORM -->
                    <div class="col-md-5 mb-3">
                        <div class="card p-3 shadow-sm">

                            <h5 class="text-primary">Book Appointment</h5>

                            <form action="save_appointment.jsp" method="post">

                                <label>Patient</label>
                                <select name="patient_id" class="form-control mb-2">

                                    <%
                                        Statement ps1 = con.createStatement();
                                        ResultSet rs1 = ps1.executeQuery("SELECT * FROM patient");
                                        while (rs1.next()) {
                                    %>
                                    <option value="<%=rs1.getInt("id")%>"><%=rs1.getString("name")%></option>
                                    <% } %>

                                </select>

                                <label>Doctor</label>
                                <select name="doctor_id" class="form-control mb-2">

                                    <%
                                        Statement ps2 = con.createStatement();
                                        ResultSet rs2 = ps2.executeQuery("SELECT * FROM doctor");
                                        while (rs2.next()) {
                                    %>
                                    <option value="<%=rs2.getInt("id")%>">
                                        <%=rs2.getString("name")%> - <%=rs2.getString("specialization")%>
                                    </option>
                                    <% } %>

                                </select>

                                <label>Date</label>
                                <input type="date" name="appointment_date" class="form-control mb-3">

                                <button class="btn btn-success w-100">Book</button>

                            </form>

                        </div>
                    </div>

                    <!-- TABLE -->
                    <div class="col-md-7">
                        <div class="card p-3 shadow-sm">

                            <h5 class="text-success">Appointment List</h5>

                            <table class="table table-bordered">

                                <tr>
                                    <th>ID</th>
                                    <th>Patient</th>
                                    <th>Doctor</th>
                                    <th>Date</th>
                                    <th>Status</th>
                                    <th>Action</th>
                                </tr>

                                <%
                                    String search = request.getParameter("search");

                                    String query = "SELECT a.*, p.name pname, d.name dname FROM appointment a "
                                            + "JOIN patient p ON a.patient_id=p.id "
                                            + "JOIN doctor d ON a.doctor_id=d.id";

                                    if (search != null && !search.equals("")) {
                                        query += " WHERE p.name LIKE '%" + search + "%'";
                                    }

                                    st = con.createStatement();
                                    rs = st.executeQuery(query);

                                    while (rs.next()) {
                                %>

                                <tr>
                                    <td><%=rs.getInt("id")%></td>
                                    <td><%=rs.getString("pname")%></td>
                                    <td><%=rs.getString("dname")%></td>
                                    <td><%=rs.getString("appointment_date")%></td>

                                    <td>
                                        <%
                                            String status = rs.getString("status");
                                            if ("Done".equals(status)) {
                                        %>
                                        <span class="badge bg-success">Done</span>
                                        <%
                                        } else {
                                        %>
                                        <span class="badge bg-warning">Pending</span>
                                        <%
                                            }
                                        %>
                                    </td>

                                    <td>

                                        <!-- EDIT -->
                                        <button class="btn btn-warning btn-sm"
                                                onclick="openAppModal(
                                                                '<%=rs.getInt("id")%>',
                                                                '<%=rs.getInt("patient_id")%>',
                                                                '<%=rs.getInt("doctor_id")%>',
                                                                '<%=rs.getString("appointment_date")%>'
                                                                )">Edit</button>

                                        <!-- DELETE -->
                                        <a href="delete_appointment.jsp?id=<%=rs.getInt("id")%>" 
                                           class="btn btn-danger btn-sm"
                                           onclick="return confirm('Delete?')">Delete</a>

                                        <!-- STATUS -->
                                        <a href="status.jsp?id=<%=rs.getInt("id")%>" 
                                           class="btn btn-success btn-sm">Done</a>

                                    </td>

                                </tr>

                                <%
                                    }
                                %>

                            </table>

                        </div>
                    </div>

                </div>
                <%
                    Statement c = con.createStatement();
                    ResultSet r = c.executeQuery("SELECT COUNT(*) FROM appointment");
                    r.next();
                %>

                <h2><%=r.getInt(1)%></h2>

            </div>

            <!-- DEPARTMENTS -->
            <div id="departmentsSection" style="display:none">

                <h3 class="mb-3">Departments</h3>

                <div class="row">

                    <%
                        String[] dept = {"Cardiology", "Neurology", "Orthopedics", "Pediatrics", "Radiology", "Emergency"};

                        for (String d : dept) {
                    %>

                    <div class="col-md-4 mb-3">
                        <div class="card text-center p-3 shadow-sm">

                            <h5 class="text-primary"><%=d%></h5>
                            <p class="text-muted">Department of <%=d%></p>

                        </div>
                    </div>

                    <%
                        }
                    %>

                </div>
            </div>

            <!-- BILLING -->
            <div id="billingSection" style="display:none; width:100%;">

                <!-- FULL WIDTH WRAPPER -->
                <div style="width:100%; padding:20px 30px;">

                    <!-- HEADING -->
                    <div class="text-center mb-2">
                        <h3 class="text-success fw-bold">Billing Management</h3>
                        <p class="text-muted">Generate & Manage Bills</p>
                    </div>

                    <!-- BUTTON -->
                    <div class="text-center mb-3">
                        <button class="btn btn-success px-4" data-bs-toggle="modal" data-bs-target="#billModal">
                            Generate Bill
                        </button>
                    </div>

                    <!-- CARD FULL WIDTH -->
                    <div class="card shadow-sm" style="width:100%;  padding:20px; border-radius:15px;">

                        <h5 class="text-primary mb-3">Bill History</h5>

                        <!-- FULL WIDTH TABLE -->
                        <div style="width:100%; overflow-x:auto;">

                            <table class="table table-bordered table-striped text-center align-middle"
                                   style="width:100%; min-width:1100px;">

                                <thead class="table-dark">
                                    <tr>
                                        <th style="width:80px;">ID</th>
                                        <th style="width:180px;">Name</th>
                                        <th style="width:120px;">Amount</th>
                                        <th style="width:250px;">Description</th>
                                        <th style="width:200px;">Date</th>
                                        <th style="width:200px;">Action</th>
                                    </tr>
                                </thead>

                                <tbody>

                                    <%
                                        st = con.createStatement();
                                        rs = st.executeQuery("SELECT * FROM billing ORDER BY id DESC");

                                        int total = 0;

                                        while (rs.next()) {
                                            total += rs.getInt("amount");
                                    %>

                                    <tr>
                                        <td><%=rs.getInt("id")%></td>
                                        <td><%=rs.getString("name")%></td>
                                        <td>Rs. <%=rs.getInt("amount")%></td>
                                        <td><%=rs.getString("description")%></td>
                                        <td><%=rs.getString("created_at")%></td>

                                        <td>
                                            <a href="delete_bill.jsp?id=<%=rs.getInt("id")%>" 
                                               class="btn btn-danger btn-sm mb-1"
                                               onclick="return confirm('Delete bill?')">
                                                Delete
                                            </a>

                                            <a href="print_bill.jsp?id=<%=rs.getInt("id")%>" 
                                               class="btn btn-primary btn-sm">
                                                Print
                                            </a>
                                        </td>
                                    </tr>

                                    <%
                                        }
                                    %>

                                    <!-- TOTAL -->
                                    <tr class="table-success">
                                        <td colspan="2"><b>Total</b></td>
                                        <td colspan="4"><b>Rs. <%=total%></b></td>
                                    </tr>

                                </tbody>

                            </table>

                        </div>

                    </div>

                </div>

            </div>

            <!-- REPORTS -->
            <div id="reportsSection" style="display:none">

                <h3 class="mb-3">Reports</h3>

                <div class="row">

                    <div class="col-md-4">
                        <div class="card p-3 shadow-sm text-center">
                            <h5>Total Patients</h5>

                            <%
                                Statement s1 = con.createStatement();
                                ResultSet r1 = s1.executeQuery("SELECT COUNT(*) FROM patient");
                                r1.next();
                            %>

                            <h2 class="text-primary"><%=r1.getInt(1)%></h2>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="card p-3 shadow-sm text-center">
                            <h5>Total Doctors</h5>

                            <%
                                Statement s2 = con.createStatement();
                                ResultSet r2 = s2.executeQuery("SELECT COUNT(*) FROM doctor");
                                r2.next();
                            %>

                            <h2 class="text-success"><%=r2.getInt(1)%></h2>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="card p-3 shadow-sm text-center">
                            <h5>Total Appointments</h5>

                            <%
                                Statement s3 = con.createStatement();
                                ResultSet r3 = s3.executeQuery("SELECT COUNT(*) FROM appointment");
                                r3.next();
                            %>

                            <h2 class="text-danger"><%=r3.getInt(1)%></h2>
                        </div>
                    </div>

                </div>

            </div>

            <!-- SETTINGS -->
            <!--            <div id="settingsSection" style="display:none">
            
                            <h3 class="mb-3">Settings</h3>
            
                            <div class="card p-4 shadow-sm" style="max-width:500px;">
            
                                <label>Email Notifications</label>
                                <select class="form-control mb-3">
                                    <option>Enabled</option>
                                    <option>Disabled</option>
                                </select>
            
                                <label>Theme</label>
                                <select class="form-control mb-3">
                                    <option>Light</option>
                                    <option>Dark</option>
                                </select>
            
                                <button class="btn btn-primary w-100">Save Settings</button>
            
                            </div>
            
                        </div>-->

        </div>

        <!-- EDIT PATIENT MODAL -->
        <div class="modal fade" id="editModal">
            <div class="modal-dialog">
                <div class="modal-content">

                    <div class="modal-header bg-success text-white">
                        <h5>Edit Patient</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                    </div>

                    <form action="update_patient.jsp" method="post">
                        <div class="modal-body">

                            <input type="hidden" name="id" id="edit_id">

                            <label>Name</label>
                            <input type="text" name="name" id="edit_name" >

                            <label>Age</label>
                            <input type="number" name="age" id="edit_age" >

                            <label>Gender</label>
                            <select name="gender" id="edit_gender" class="form-control mb-1">
                                <option>Male</option>
                                <option>Female</option>
                            </select>

                            <label>Mobile</label>
                            <input type="text" name="mobile" id="edit_mobile" >

                            <label>Disease</label>
                            <input type="text" name="disease" id="edit_disease" >

                            <label>Address</label>
                            <input type="text" name="address" id="edit_address" >

                        </div>

                        <div class="modal-footer text-center">
                            <button class="text-center btn btn-outline-success w-50">Update</button>
                        </div>
                    </form>

                </div>
            </div>
        </div>

        <!-- DOCTOR EDIT MODAL -->
        <div class="modal fade" id="doctorModal">
            <div class="modal-dialog">
                <div class="modal-content">

                    <div class="modal-header bg-success text-white">
                        <h5>Edit Doctor</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                    </div>

                    <form action="update_doctor.jsp" method="post">
                        <div class="modal-body">

                            <input type="hidden" name="id" id="doc_id">

                            <label>Name</label>
                            <input type="text" name="name" id="doc_name" class="form-control mb-2">

                            <label>Specialization</label>
                            <input type="text" name="specialization" id="doc_spec" class="form-control mb-2">

                            <label>Mobile</label>
                            <input type="text" name="mobile" id="doc_mobile" class="form-control mb-2">

                            <label>Email</label>
                            <input type="text" name="email" id="doc_email" class="form-control mb-2">

                        </div>

                        <div class="modal-footer">
                            <button class="btn btn-success">Update</button>
                        </div>
                    </form>

                </div>
            </div>
        </div>

        <!--edit popup appointment-->
        <div class="modal fade" id="appModal">
            <div class="modal-dialog">
                <div class="modal-content">

                    <div class="modal-header bg-primary text-white">
                        <h5>Edit Appointment</h5>
                        <button class="btn-close" data-bs-dismiss="modal"></button>
                    </div>

                    <form action="update_appointment.jsp" method="post">
                        <div class="modal-body">

                            <input type="hidden" name="id" id="app_id">

                            <label>Date</label>
                            <input type="date" name="date" id="app_date" class="form-control">

                        </div>

                        <div class="modal-footer">
                            <button class="btn btn-success">Update</button>
                        </div>

                    </form>

                </div>
            </div>
        </div>

        <!--billing part-->
        <div class="modal fade" id="billModal">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">

                    <div class="modal-header bg-success text-white">
                        <h5>Generate Bill</h5>
                        <button class="btn-close" data-bs-dismiss="modal"></button>
                    </div>

                    <form action="save_bill.jsp" method="post">

                        <div class="modal-body">
                            <label class="fw-bold">Patient Name</label>
                            <input type="text" name="name" class="form-control mb-2" placeholder="Patient Name" required>
                            <label class="fw-bold">Amount (?)</label>
                            <input type="number" name="amount" class="form-control mb-2" placeholder="Amount" required>
                            <label class="fw-bold">Description</label>
                            <input type="text" name="desc" class="form-control mb-2" placeholder="Description" required>

                        </div>

                        <div class="modal-footer">
                            <button class="btn btn-success w-100">Save Bill</button>
                        </div>

                    </form>

                </div>
            </div>
        </div>

        <script>

            function toggleSidebar() {
                document.querySelector(".sidebar").classList.toggle("active");
            }

            function toggleDashboard() {
                hideAll();
                document.getElementById("dashboard_item").style.display = "block";
            }

            function togglePatientMenu() {
                let menu = document.getElementById("patientSubMenu");
                menu.style.display = menu.style.display === "block" ? "none" : "block";
            }

            function toggleDoctorMenu() {
                let menu = document.getElementById("doctorSubMenu");
                menu.style.display = menu.style.display === "block" ? "none" : "block";
            }

            function showPatientForm() {
                hideAll();
                document.getElementById("patientForm").style.display = "block";
            }

            function showPatientTable() {
                hideAll();
                document.getElementById("patientTable").style.display = "block";
            }

            function showDoctorForm() {
                hideAll();
                document.getElementById("doctorForm").style.display = "block";
            }

            function showDoctorTable() {
                hideAll();
                document.getElementById("doctorTable").style.display = "block";
            }

            function showAppointments() {
                hideAll();
                document.getElementById("appointmentsSection").style.display = "block";
            }

            function showDepartments() {
                hideAll();
                document.getElementById("departmentsSection").style.display = "block";
            }

            function showBilling() {
                hideAll();
                document.getElementById("billingSection").style.display = "block";
            }

            function showReports() {
                hideAll();
                document.getElementById("reportsSection").style.display = "block";
            }

//            function showSettings() {
//                hideAll();
//                document.getElementById("settingsSection").style.display = "block";
//            }

            function hideAll() {
                document.getElementById("dashboard_item").style.display = "none";
                document.getElementById("patientForm").style.display = "none";
                document.getElementById("patientTable").style.display = "none";
                document.getElementById("doctorForm").style.display = "none";
                document.getElementById("doctorTable").style.display = "none";
                document.getElementById("appointmentsSection").style.display = "none";
                document.getElementById("departmentsSection").style.display = "none";
                document.getElementById("billingSection").style.display = "none";
                document.getElementById("reportsSection").style.display = "none";
//                document.getElementById("settingsSection").style.display = "none";
            }


            function closeSidebarMobile() {

                if (window.innerWidth <= 768) {

                    document.querySelector(".sidebar").classList.remove("active");

                }

            }
        </script>

    </body>
    <script>
        function openEditModal(id, name, age, gender, mobile, disease, address) {

            document.getElementById("edit_id").value = id;
            document.getElementById("edit_name").value = name;
            document.getElementById("edit_age").value = age;
            document.getElementById("edit_gender").value = gender;
            document.getElementById("edit_mobile").value = mobile;
            document.getElementById("edit_disease").value = disease;
            document.getElementById("edit_address").value = address;

            var myModal = new bootstrap.Modal(document.getElementById('editModal'));
            myModal.show();
        }
    </script>

    <script>
        function openDoctorModal(id, name, spec, mobile, email) {

            document.getElementById("doc_id").value = id;
            document.getElementById("doc_name").value = name;
            document.getElementById("doc_spec").value = spec;
            document.getElementById("doc_mobile").value = mobile;
            document.getElementById("doc_email").value = email;

            var myModal = new bootstrap.Modal(document.getElementById('doctorModal'));
            myModal.show();
        }
    </script>

    <script>
        function openAppModal(id, pid, did, date) {
            document.getElementById("app_id").value = id;
            document.getElementById("app_date").value = date;

            var m = new bootstrap.Modal(document.getElementById('appModal'));
            m.show();
        }
    </script>


</html>