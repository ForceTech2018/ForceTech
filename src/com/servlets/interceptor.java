package com.servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by CristyBv on 24-Mar-18.
 */
@WebServlet(name = "interceptor")
public class interceptor extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("post");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String page= (String) request.getAttribute("page");
        System.out.println(page);
            String name=null;
            String pass=null;
            Cookie[] cookies = request.getCookies();
            if(cookies != null){
                for(Cookie c : cookies){
                    if(c.getName().equals("user"))
                      name=c.getValue();
                    if(c.getName().equals("pass"))
                      pass=c.getValue();
                }
         }
        if(page=="welcome"){
            if(name!=null && pass!=null){
                request.setAttribute("go","1");
                request.getRequestDispatcher("/welcome.jsp").forward(request,response);
            }
            else if(name==null || pass==null) response.sendRedirect("login.jsp");
        }

        else if(page=="welcome2"){
            if(name!=null && pass!=null){
                request.setAttribute("go","1");
                request.getRequestDispatcher("/welcome2.jsp").forward(request,response);
            }
            else if(name==null || pass==null) response.sendRedirect("login.jsp");
        }
        if(page=="exercitii1")
        {
            if(name!=null && pass!=null){
                request.setAttribute("go","1");
                request.getRequestDispatcher("/exercitii1.jsp").forward(request,response);
            }
            else
            {
                response.sendRedirect("login.jsp");
            }
        }


    }
}
