<%@ include file="connection.jsp" %>

<%
    int id = Integer.parseInt(request.getParameter("id"));

    PreparedStatement ps = con.prepareStatement("SELECT * FROM billing WHERE id=?");
    ps.setInt(1, id);

    ResultSet rs = ps.executeQuery();
    rs.next();
%>

<!DOCTYPE html>
<html>
    <head>
        <title>Print Bill</title>
    </head>

    <body onload="window.print()">

        <h2>Hospital Bill</h2>

        <p><b>Name:</b> <%=rs.getString("name")%></p>
        <p><b>Amount:</b> ? <%=rs.getInt("amount")%></p>
        <p><b>Description:</b> <%=rs.getString("description")%></p>
        <p><b>Date:</b> <%=rs.getString("created_at")%></p>

        <hr>

        <h3>Thank You!</h3>

    </body>
</html>