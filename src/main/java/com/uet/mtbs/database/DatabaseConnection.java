package com.uet.mtbs.database;

import java.sql.*;

public class DatabaseConnection {
    public static ResultSet connect(String query) throws SQLException {
        Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/mtbs",
                "root", "hieu6969" );
        Statement statement = connection.createStatement();

        return statement.executeQuery(query);
    }
}
