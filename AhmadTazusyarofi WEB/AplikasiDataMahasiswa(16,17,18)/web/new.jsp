<%-- 
    Document   : new
    Created on : Dec 5, 2023, 10:23:49 PM
    Author     : TOSHIBA
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="style.css" rel="stylesheet" type="text/css"/>
        <title>Tambah Data Mahasiswa</title>
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
                   String nim=request.getParameter("Nim");
                   String nama=request.getParameter("Nama");
                   String alamat=request.getParameter("Alamat");
                   String prodi=request.getParameter("Prodi");
                   String URL = "jdbc:mysql://localhost/ahmad";
                   Connection conn = null;
                   PreparedStatement ps= null;
                   Class.forName("com.mysql.jdbc.Driver").newInstance();
                   int updateQuery=0;
                   if (nim!=null && nama !=null && alamat!=null && prodi!=null){
                       try{
                           conn=DriverManager.getConnection (URL, "root", "");
                           String query = "INSERT INTO datamahasiswa (Nim, Nama, Alamat, Prodi) VALUES (?,?,?,?)"; ps = conn.prepareStatement (query);
                           ps.setString(1, nim);
                           ps.setString(2, nama);
                           ps.setString(3, alamat);
                           ps.setString(4, prodi);
                           updateQuery=ps.executeUpdate();
                           if (updateQuery!=0) {
                               JOptionPane.showMessageDialog(null, "Berhasil Tambah Data Mahasiswa");
                               response.sendRedirect("new.jsp");
                           } 
                       } catch (Exception e) {
                           response.sendRedirect("new.jsp");
                       } finally {
                           ps.close();
                           conn.close();
                       }
                       }
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
                    <form colspan="4" align="center" action="" method="POST">
                        <label>NIM :</label> <input type="text" name="Nim" /> <br/>
                        <label>Nama Mahasiswa :</label> <input type="text" name="Nama" /> <br/>
                        <label>Alamat:</label> <input type="text" name="Alamat"/> <br/>
                        <label>Program Studi:</label>
                        <select id="prodi" name="Prodi">
                            <option value="Teknik Informatika">Teknik Informatika </option><option value="Sistem Informasi">Sistem Informasi</option>
                            <option value="Akuntansi">Akuntansi</option><option value="Manajemen">Manajemen</option>
                        </select><br/>
                        <br>
                        <input type="submit" name="submit" value="Simpan"/>
                        <a href="modifikasiper14.jsp"><button>Kembali</button></a><br><br>
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
                    </center>            
    </body>
</html>