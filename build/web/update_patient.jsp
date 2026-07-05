<%@ include file="connection.jsp" %>

<%    int id = Integer.parseInt(request.getParameter("id"));
    String name = request.getParameter("name");
    int age = Integer.parseInt(request.getParameter("age"));
    String gender = request.getParameter("gender");
    String mobile = request.getParameter("mobile");
    String disease = request.getParameter("disease");
    String address = request.getParameter("address");

    PreparedStatement ps = con.prepareStatement(
            "UPDATE patient SET name=?, age=?, gender=?, mobile=?, disease=?, address=? WHERE id=?");

    ps.setString(1, name);
    ps.setInt(2, age);
    ps.setString(3, gender);
    ps.setString(4, mobile);
    ps.setString(5, disease);
    ps.setString(6, address);
    ps.setInt(7, id);

    ps.executeUpdate();

    response.sendRedirect("dashboard.jsp");
%>