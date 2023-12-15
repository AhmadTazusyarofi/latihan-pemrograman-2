/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Pertemuan8;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author TOSHIBA
 */
public class koneksi {
private static Connection mysqlconfig;
    public static Connection configDB() {
        try {
            String url= "jdbc:mysql://localhost/ahmad";
            String user="root";
            String pass="";
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            mysqlconfig = (Connection) DriverManager.getConnection(url,user,pass);
        } catch (Exception e){
            System.err.println("Tidak ada koneksi"+e.getMessage());
        }
         return mysqlconfig;
    }
}
