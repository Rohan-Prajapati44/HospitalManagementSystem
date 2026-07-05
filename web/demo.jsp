<!DOCTYPE html>
<html>
<head>
    <title>Hospital Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f4f6f9;
        }
        .sidebar {
            height: 100vh;
            background: #343a40;
            color: white;
            padding: 20px;
        }
        .sidebar a {
            color: white;
            display: block;
            padding: 10px;
            text-decoration: none;
        }
        .sidebar a:hover {
            background: #495057;
        }
        .card {
            border-radius: 10px;
        }
    </style>
</head>

<body>

<div class="container-fluid">
    <div class="row">

        <!-- Sidebar -->
        <div class="col-md-2 sidebar">
            <h4>Hospital</h4>
            <a href="#">Dashboard</a>
            <a href="#">Patients</a>
            <a href="#">Doctors</a>
            <a href="#">Appointments</a>
            <a href="#">Billing</a>
        </div>

        <!-- Main Content -->
        <div class="col-md-10 p-4">

            <h3>Dashboard</h3>

            <div class="row mt-4">

                <div class="col-md-3">
                    <div class="card bg-primary text-white p-3">
                        <h5>Total Patients</h5>
                        <h2>120</h2>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="card bg-success text-white p-3">
                        <h5>Doctors</h5>
                        <h2>25</h2>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="card bg-warning text-white p-3">
                        <h5>Appointments</h5>
                        <h2>40</h2>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="card bg-danger text-white p-3">
                        <h5>Revenue</h5>
                        <h2>?50,000</h2>
                    </div>
                </div>

            </div>

        </div>
    </div>
</div>

</body>
</html>