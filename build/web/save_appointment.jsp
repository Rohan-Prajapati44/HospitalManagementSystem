<%@ include file="connection.jsp" %>

<%    int patient_id = Integer.parseInt(request.getParameter("patient_id"));
    int doctor_id = Integer.parseInt(request.getParameter("doctor_id"));
    String date = request.getParameter("appointment_date");

    PreparedStatement ps = con.prepareStatement(
            "INSERT INTO appointment(patient_id, doctor_id, appointment_date) VALUES(?,?,?)"
    );

    ps.setInt(1, patient_id);
    ps.setInt(2, doctor_id);
    ps.setString(3, date);

    ps.executeUpdate();

    response.sendRedirect("dashboard.jsp");
%>