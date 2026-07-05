<%@ include file="connection.jsp" %>

<%
    String name = request.getParameter("name");
    String amount = request.getParameter("amount");
    String desc = request.getParameter("desc");

    PreparedStatement ps = con.prepareStatement(
            "INSERT INTO billing(name, amount, description) VALUES(?,?,?)");

    ps.setString(1, name);
    ps.setString(2, amount);
    ps.setString(3, desc);

    ps.executeUpdate();

    response.sendRedirect("dashboard.jsp");
%>