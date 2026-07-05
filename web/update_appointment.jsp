<%@ include file="connection.jsp" %>

<%
    int id = Integer.parseInt(request.getParameter("id"));
    String date = request.getParameter("date");

    PreparedStatement ps = con.prepareStatement(
            "UPDATE appointment SET appointment_date=? WHERE id=?");

    ps.setString(1, date);
    ps.setInt(2, id);

    ps.executeUpdate();

    response.sendRedirect("dashboard.jsp");
%>