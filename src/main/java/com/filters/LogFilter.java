package com.filters;

import com.users.CheckCookies;
import com.users.CookiesClass;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter(filterName = "LogFilter")
public class LogFilter implements javax.servlet.Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        System.out.println("LogFilter");

        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) resp;

        CheckCookies check = new CheckCookies();
        CookiesClass cook = check.isLogged(request, response);

        String path = request.getHeader("Referer");
        String[] pat;
        if (path != null) {
            pat = path.split("/");
            path = pat[pat.length - 1];
        }

        String pathgo = request.getRequestURI();
        if (pathgo.compareTo("/index.jsp") == 0 || pathgo.compareTo("/") == 0) {

            if (cook.getUser() == null || cook.getPass() == null) {  //getUser ia user-ul din baza de date si il verifica
                request.setAttribute("verif", "0");
            } else {
                request.setAttribute("verif", "1");
                request.setAttribute("numeuser", cook.getUser());
            }


        } else if (cook.getUser() == null || cook.getPass() == null) {  //daca nu sunt logat, sa ma redirec. pe index automat

            response.sendRedirect("/index.jsp");

        } else if (cook.getNowReg().compareTo("1") == 0) {
            response.sendRedirect("/profile.jsp");
        }  //este proaspat inregistrat, deci trebuie completat profilul mai intai
        else {
            HttpSession session = request.getSession(false);
            if(session != null)
                if(session.getAttribute("user") == null) response.sendRedirect("/logout");
        }

        if(pathgo.compareTo("/chat.jsp") == 0) {
            request.setAttribute("nume",cook.getNume());
            request.setAttribute("prenume",cook.getPrenume());
        }

        request.setAttribute("avatar", cook.getAvatar_url());
        request.setAttribute("medalii", cook.getMedalii());

        chain.doFilter(request, response);

    }



    public void init(FilterConfig config) throws ServletException {

    }

}
