package com.users;

import com.DB.DB_user;

import java.sql.SQLException;

public class UserData {
    private DB_user db_user;

    public UserData(String name, String pass) {
         db_user = new DB_user(name,pass);
    }

    public void createConnection() throws SQLException, ClassNotFoundException {
        db_user.createConnection();
    }

    public void closeConnection() throws SQLException {
        db_user.closeConnection();
    }

    public boolean isValidUser(String caut) throws SQLException, ClassNotFoundException {
        return db_user.isValidLogin(caut);
    }

    public void registerUser() throws SQLException, ClassNotFoundException {
        db_user.registerUser();
    }

    public String getValueOf(String value) throws SQLException, ClassNotFoundException {
        return db_user.getValue(value);
    }

    public void setValueOf(String value1, String value2) throws SQLException, ClassNotFoundException {
        db_user.setValue(value1,value2);
    }
}
