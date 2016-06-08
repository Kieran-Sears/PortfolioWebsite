/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import java.io.IOException;
import java.util.Enumeration;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class FrontController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        //TODO Flush session attributes 
        System.out.println("request.getPathTranslated() = " + request.getPathTranslated());
        //int index = request.getPathInfo().lastIndexOf("/");
        //String path = request.getPathInfo().substring(index);
        String path = request.getPathInfo();
        System.out.println("path = " + path);
        session.setAttribute("page", "/WEB-INF/forms" + path + ".jsp");
        System.out.println(session.getAttribute("page"));
        Enumeration<String> parameterNames = request.getParameterNames();
        while (parameterNames.hasMoreElements()) {
            String next = parameterNames.nextElement();
            session.setAttribute(next, request.getParameter(next));
        }

        request.getRequestDispatcher("/WEB-INF/WebsiteTemplate.jsp").forward(request, response);
    }
}
