package com.filters;

import com.users.CheckCookies;
import com.users.CookiesClass;
import com.users.UserData;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebFilter(filterName = "ProfileFilter")
public class ProfileFilter implements javax.servlet.Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        System.out.println("ProfileFilter");
        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) resp;

        CheckCookies check=new CheckCookies();
        CookiesClass cook = check.isLogged(request,response);
        UserData userData = new UserData(cook.getUser(),cook.getPass());

        if(cook.getUser()!=null && cook.getPass()!=null) {
            request.setAttribute("avatar", cook.getAvatar_url());
            request.setAttribute("nume",cook.getNume());
            request.setAttribute("prenume",cook.getPrenume());
            request.setAttribute("email",cook.getEmail());
            request.setAttribute("sex",cook.getSex());
            request.setAttribute("varsta",cook.getVarsta());
            request.setAttribute("inaltime",cook.getInaltime());
            request.setAttribute("greutate",cook.getGreutate());
            request.setAttribute("nivelact",cook.getNivelact());
            request.setAttribute("tipact",cook.getTipact());
            try {
                userData.createConnection();
                String feedback = userData.getValueOf("feedback");
                request.setAttribute("feedback",feedback);
                userData.closeConnection();
            } catch (SQLException | ClassNotFoundException e) {
                e.printStackTrace();
            }

        }
        else response.sendRedirect("/index.jsp");
        chain.doFilter(request, response);
    }

    public void init(FilterConfig config) throws ServletException {

    }

}
