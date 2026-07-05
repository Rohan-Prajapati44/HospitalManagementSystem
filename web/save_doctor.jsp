<%@ include file="connection.jsp" %>
<%@ page import="java.sql.*" %>

<% String docName = request.getParameter("doc_name");
    String specialization = request.getParameter("specialization");
    String mobile = request.getParameter("mobile");
    String email = request.getParameter("email");
    PreparedStatement ps = null;
    try {
        String query = "INSERT INTO doctor(name, specialization, mobile, email) VALUES (?, ?, ?, ?)";
        ps = con.prepareStatement(query);
        ps.setString(1, docName);
        ps.setString(2, specialization);
        ps.setString(3,
                mobile);
        ps.setString(4, email);
        int i = ps.executeUpdate();
        if (i > 0) {
%>
<script>
    alert("Doctor Added Successfully!");
    window.location = "dashboard.jsp";
</script>
<% } else { %>
<script>
    alert("Failed to Add Doctor!");
    window.history.back();
</script>
<% }
    } catch (Exception e) {
        out.println("Error: " + e);
    }
%>