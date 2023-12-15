<%-- 
    Document   : delete
    Created on : Dec 10, 2023, 9:19:29 AM
    Author     : TOSHIBA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete</title>
    </head>
    <body>
        <%@page import="java.sql.*"%>
        <%
            String NIM = request.getParameter("NIM");
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/ahmad","root","");
                Statement st=conn.createStatement();
                int i=st.executeUpdate("DELETE FROM datamahasiswa WHERE NIM="+NIM+"");
                response.sendRedirect("index.jsp");
            } catch (Exception e) {
                response.sendRedirect("index.jsp");
            }
            %>
    </body>
</html>
