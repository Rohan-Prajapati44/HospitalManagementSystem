<%@ include file="connection.jsp" %>

<%
    int id = Integer.parseInt(request.getParameter("id"));
    String name = request.getParameter("name");
    String specialization = request.getParameter("specialization");
    String mobile = request.getParameter("mobile");
    String email = request.getParameter("email");

    PreparedStatement ps = con.prepareStatement(
            "UPDATE doctor SET name=?, specialization=?, mobile=?, email=? WHERE id=?");

    ps.setString(1, name);
    ps.setString(2, specialization);
    ps.setString(3, mobile);
    ps.setString(4, email);
    ps.setInt(5, id);

    ps.executeUpdate();

    response.sendRedirect("dashboard.jsp");
%>