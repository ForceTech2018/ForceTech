package com.servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


@WebServlet(name = "Logout")
public class Logout extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("Logout");
        Cookie[] cooks = request.getCookies();
        for(Cookie c:cooks){
            c.setMaxAge(0);
            response.addCookie(c);
        }
        response.sendRedirect("/index.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("Logout");
        Cookie[] cooks = request.getCookies();
        for(Cookie c:cooks){
            c.setMaxAge(0);
            response.addCookie(c);
        }

        PrintWriter out = response.getWriter();
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Ai fost deconectat pentru inactivitate!');");
        out.println("location='index.jsp';");
        out.println("</script>");
    }
}
