<%@page import="java.sql.*" %>

<%
    Connection con=null;
    try{
       Class.forName("com.mysql.cj.jdbc.Driver");
        
        String url = "jdbc:mysql://localhost:3306/hospital";
        String user = "root";
        String password = "";
        
        con = DriverManager.getConnection(url, user, password);
        
    }catch(Exception e){
        out.println(e);
    }

%>
