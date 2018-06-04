package com.servlets;

import com.users.UserData;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

@WebServlet(name = "Inregistrare")
public class Inregistrare extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("Inregistrare");
        String user=request.getParameter("name");
        String pass=request.getParameter("pass");
        String email=request.getParameter("email");
        UserData userData = new UserData(user,pass);
        try {
            userData.createConnection();
            if(userData.isValidUser("user")){
                response.setContentType("text/html");
                PrintWriter out = response.getWriter();
                out.write("<html><head><title>ForceTech - Register</title><script>alert('Contul deja exista'); location.replace('/index.jsp');</script></head><body></body></html>");
            }
            else{
                userData.registerUser();
                userData.setValueOf("email",email);
                response.setContentType("text/html");
                PrintWriter out = response.getWriter();
                out.write("<html><head><title>ForceTech - Register</title><script>alert('Inregistrare cu succes!'); location.replace('/index.jsp');</script></head><body></body></html>");
            }
            userData.closeConnection();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
