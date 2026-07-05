<%@ include file="connection.jsp" %>

<%    int id = Integer.parseInt(request.getParameter("id"));

    PreparedStatement ps = con.prepareStatement("DELETE FROM appointment WHERE id=?");
    ps.setInt(1, id);

    ps.executeUpdate();

    response.sendRedirect("dashboard.jsp");
%>