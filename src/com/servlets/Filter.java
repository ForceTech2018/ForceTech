package com.servlets;

import com.users.CheckCookies;
import com.users.CookiesClass;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by CristyBv on 26-Mar-18.
 */
@WebFilter(filterName = "Filter")
public class Filter implements javax.servlet.Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        System.out.println("Filter");
        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) resp;

        CheckCookies check = new CheckCookies();
        CookiesClass cook = check.isLogged(request, response);
        /*Cookie[] cc=request.getCookies();
        for(Cookie c:cc) System.out.println(c.getName()+" "+c.getValue());*/

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
            }
        } else if (cook.getUser() == null || cook.getPass() == null) {  //daca nu sunt logat, sa ma redirec. pe index automat
            response.sendRedirect("/index.jsp");
//<<<<<<< HEAD
        } else if (cook.getNowReg().compareTo("1") == 0) {
            response.sendRedirect("/profile.jsp");
        }  //este proaspat inregistrat, deci trebuie completat profilul mai intai
//=======

        else if (cook.getNowReg().compareTo("1") == 0) {
            response.sendRedirect("/profile.jsp");
        }
//>>>>>>> c6de897c4fd019f476e016ff204866c24aae092c

        chain.doFilter(request, response);

        /*if(name==null || pass==null)
            if(pathgo.compareTo("/logare")!=0 && pathgo.compareTo("/register.jsp")!=0 && pathgo.compareTo("/inregistrare")!=0) {
                System.out.println("daaaaa");
            request.getRequestDispatcher("/login.jsp").forward(req,resp);}*/
    }



    public void init(FilterConfig config) throws ServletException {

    }

}
