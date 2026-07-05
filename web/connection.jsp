<%@ page import="java.sql.*" %>

<%


//Connection con = null;
    Class.forName("com.mysql.jdbc.Driver");

    String url = "jdbc:mysql://localhost:3306/hospital";
    String user = "root";
    String pass = "";

    Connection con = DriverManager.getConnection(url, user, pass);



%>