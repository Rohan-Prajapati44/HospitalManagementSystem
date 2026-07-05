<%@ include file="connection.jsp" %>
<%@ page import="java.sql.*" %>

<%
    String name = request.getParameter("name");
    String ageStr = request.getParameter("age");
    String gender = request.getParameter("gender");
    String mobile = request.getParameter("mobile");
    String disease = request.getParameter("disease");
    String address = request.getParameter("address");

    PreparedStatement ps = null;

    try {
        // Age convert (important)
        int age = Integer.parseInt(ageStr);

        String query = "INSERT INTO patient(name, age, gender, mobile, disease, address) VALUES (?, ?, ?, ?, ?, ?)";

        ps = con.prepareStatement(query);
        ps.setString(1, name);
        ps.setInt(2, age);
        ps.setString(3, gender);
        ps.setString(4, mobile);
        ps.setString(5, disease);
        ps.setString(6, address);

        int i = ps.executeUpdate();

        if(i > 0){
%>
            <script>
                alert("Patient Added Successfully!");
                window.location="dashboard.jsp";
            </script>
<%
        } else {
%>
            <script>
                alert("Failed to Add Patient!");
                window.history.back();
            </script>
<%
        }

    } catch(Exception e){
        out.println("Error: " + e);
    }
%>