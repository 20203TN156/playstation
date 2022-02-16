package com.gms.playstation.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionMySQL {
    public static Connection getConnection() throws SQLException {
        DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
        return DriverManager.getConnection(
                "jdbc:mysql://clase-hugod-mysql.crjljwba5znc.us-east-1.rds.amazonaws.com/playstation",
                "admin",
                "Mayoneso21"
        );
    }

    public static void main(String[] args) {
        try{
            System.out.println("Abriendo conexión...");
            Connection con = ConnectionMySQL.getConnection();
            System.out.println("Conexión establecida");
            con.close();
            System.out.println("Conexión cerrada");
        }catch (Exception ex){
            System.out.println("Error de conexión");
            ex.printStackTrace();
        }
    }
}