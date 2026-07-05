<%@include file="connection.jsp" %>

<%    String user_email = request.getParameter("email");
    String user_password = request.getParameter("pass");

    PreparedStatement ps = null;
    ResultSet rs = null;

    try {
        // ? Correct query (direct match database se)
        String query = "SELECT * FROM admin WHERE email=? AND password=?";
        ps = con.prepareStatement(query);

        ps.setString(1, user_email);
        ps.setString(2, user_password);

        rs = ps.executeQuery();

        if (rs.next()) {
            // ? Session me email store karo
            session.setAttribute("email", rs.getString("email"));

            // ? Dashboard pe bhejo
            response.sendRedirect("dashboard.jsp");
        } else {
            out.println("Invalid Email or Password");
        }

    } catch (Exception e) {
        out.println(e);
    }
%>