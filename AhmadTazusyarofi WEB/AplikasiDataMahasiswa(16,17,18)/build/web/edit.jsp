<%-- 
    Document   : edit
    Created on : Dec 6, 2023, 11:04:35 AM
    Author     : TOSHIBA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="style.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
          <%@page import="java.sql.*"%>
           <%@page import="javax.swing.*"%>
                <%
                   String topmenu="<nav><ul>"
                           + "<li><a href=index.jsp>Home</a></li>"
                           + "<li><a href=new.jsp>Tambah Data Mahasiswa</a></li>"
                           + "</li>"
                           + "</ul>"
                           + "</nav>";
                   String NIM=request.getParameter("NIM");
                   Connection connection=null;
                   Statement statement=null;
                   ResultSet rs=null;
                   try{
                       String connectionURL = "jdbc:mysql://localhost/ahmad";
                       String username = "root";
                       String password = "";
                       Class.forName("com.mysql.jdbc.Driver");
                       connection = DriverManager.getConnection(connectionURL, username, password);
                       
                       statement = connection.createStatement();
                       String query="SELECT * FROM datamahasiswa WHERE NIM="+NIM+"";
                       rs = statement.executeQuery(query);
                       while (rs.next()){
                   %>
                   <center>
        <table width="80%" bgcolor="#eeeeee">
            <tr>
                <td colspan="4" align="center">
                    <br>
                    <h2 colspan="4" align="center">
                        Data Mahasiswa</h2>
                    <h1 colspan="4" align="center">
                        UNIVERSITAS PAMULANG</h1>
                    <h4 colspan="4" align="center">
                        Jl.Surya Kencana No. 1 Pamulang, Tangerang Selatan, Banten</h4>
                    <%=topmenu%>
                    </center>
                    <br>
                    <form colspan="4" align="center" action="proses-edit.jsp" method="POST">
                        <label>NIM :</label> <input type="text" name="nim" /> <br/>
                        <label>Nama Mahasiswa :</label> <input type="text" name="nama" /> <br/>
                        <label>Alamat:</label> <input type="text" name="alamat"/> <br/>
                        <label>Program Studi:</label>
                        <select id="prodi" name="prodi">
                            <option value="Teknik Informatika">Teknik Informatika </option><option value="Sistem Informasi">Sistem Informasi</option>
                            <option value="Akuntansi">Akuntansi</option><option value="Manajemen">Manajemen</option>
                        </select><br/>
                        <input type="submit" name="submit" value="update"/>
                        <br><br>
                    </form>
                     <center>
                        <tr>
                            <td colspan="4" align="center" bgcolor="#eeeeff">
                                <small>
                                     Copyright &copy; 2022 Universitas Pamulang<br>
                                     Jl. Surya kencana No. 1 Pamulang, Tangerang Selatan, Banten<br>
                                </small>
                            </td>
                        </tr>
                     </table>
                    </center>     
                    <%
                        }
                            rs.close();
                            statement.close();
                            connection.close();
                        } catch (Exception e){
                          System.err.println("GAGAL KONEKSI"+e.getMessage());
                          out.println("GAGAL"+e.getMessage());
                        }
%>
    </body>
</html>
