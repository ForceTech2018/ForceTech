package com.DB;

import java.sql.*;

public class DB_user {
    private static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    //private static final String DB_URL = "jdbc:mysql://localhost/webapp?autoReconnect=true&useSSL=false";
    private static final String DB_URL = "jdbc:mysql://sql11.freemysqlhosting.net:3306/sql11227446?autoReconnect=true&useSSL=false";

    private static final String USER = "sql11227446";
    private static final String PASS = "5VHgIpJuWT";
    //private static final String USER = "admin";
    //private static final String PASS = "experimental112";

    private Connection connection;
    private Statement statement;
    private String name;
    private String pass;

    public DB_user(String name,String pass) {
        connection=null;
        statement=null;
        this.name=name;
        this.pass=pass;
    }

    public void createConnection() throws SQLException, ClassNotFoundException {
        Connection conn;
        Statement stmt;
        Class.forName(JDBC_DRIVER);
        System.out.println("Connecting to database (isValidUser)...");
        conn = DriverManager.getConnection(DB_URL,USER,PASS);
        System.out.println(conn);
        System.out.println("Creating statement...");
        stmt = conn.createStatement();
        connection=conn;
        statement=stmt;
    }

    public void closeConnection() throws SQLException {
        System.out.println("Close connection...");
        statement.close();
        connection.close();
    }

    public boolean isValidLogin(String caut) throws ClassNotFoundException, SQLException {
        boolean isValid=false;
        String sql;

        if(caut.compareTo("all")==0) {
            sql = String.format("SELECT * FROM Users where user_name = \"%s\" AND user_password = \"%s\"", name, pass);
        } else sql= String.format("SELECT * FROM Users where user_name = \"%s\"", name);
        System.out.println(sql);

        ResultSet resultSet = statement.executeQuery(sql);

        if(resultSet.next()) isValid=true;

        resultSet.close();
        return isValid;
    }

    public void registerUser() throws SQLException, ClassNotFoundException {

        String sql = String.format("insert into Users (user_name,user_password,now_registered,avatar_url) values (\"%s\",\"%s\",1,\"IMG/noavatar.png\")", name, pass);
        System.out.println(sql);
        statement.executeUpdate(sql);
    }

    public String getValue(String value) throws SQLException, ClassNotFoundException {

        String result="";
        String sql = String.format("select %s from Users where user_name = \"%s\" AND user_password = \"%s\"", value, name, pass);
        System.out.println(sql);

        ResultSet rez = statement.executeQuery(sql);
        if(rez.next()){
            result = rez.getString(value);
        }

        return result;
    }

    public void setValue(String value1, String value2) throws ClassNotFoundException, SQLException {
        String sql = String.format("update Users set %s=\"%s\" where user_name = \"%s\" and user_password = \"%s\"", value1, value2, name, pass);
        System.out.println(sql);
        statement.executeUpdate(sql);
    }
}
