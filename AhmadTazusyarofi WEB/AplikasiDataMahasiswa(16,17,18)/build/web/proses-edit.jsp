<%-- 
    Document   : proses-edit
    Created on : Dec 6, 2023, 10:16:06 PM
    Author     : TOSHIBA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%@page import="java.sql.*"%>
         <%
             String nim=request.getParameter("NIM");
                   String nama=request.getParameter("Nama");
                   String alamat=request.getParameter("Alamat");
                   String prodi=request.getParameter("Prodi");
                   if (nim !=null){
                       Connection conn=null;
                       PreparedStatement ps =null;
                       try{
                           Class.forName("com.mysql.jdbc.Driver");
                           conn = DriverManager.getConnection("jdbc:mysql://localhost/ahmad","root","");
                            String query = "UPDATE datamahasiswa SET nim=?, nama=?, alamat=?, prodi=? WHERE nim="+nim+"";
                            ps = conn.prepareStatement (query);
                            ps.setString(1, nim);
                           ps.setString(2, nama);
                           ps.setString(3, alamat);
                           ps.setString(4, prodi);
                           int i=ps.executeUpdate();
                           response.sendRedirect("index.jsp");
                       } catch (Exception e){
                           response.sendRedirect("index.jsp");
                       }}
                   %>
                   
                   
    </body>
</html>