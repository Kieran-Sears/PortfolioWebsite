/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Model.DatabaseConnector;
//import Model.HeadOffice;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

/**
 * Web application lifecycle listener.
 *
 * @author kieran
 */
public class DatabaseListener implements ServletContextListener {

    /*
     * Note: Since version 6.0.24, Tomcat ships with a memory leak detection feature,
     * which in turn can lead to this kind of warning messages when there's a JDBC 4.0 
     * compatible driver in the webapp's /WEB-INF/lib which auto-registers itself during 
     * webapp's startup using the ServiceLoader API, but which did not auto-deregister
     * itself during webapp's shutdown:
    
   * org.apache.catalina.loader.WebappClassLoaderBase.clearReferencesJdbc 
   * The web application [AlphaCabs] registered the JDBC driver [com.mysql.jdbc.Driver]
   * but failed to unregister it when the web application was stopped. To prevent a memory leak,
   * the JDBC Driver has been forcibly unregistered.
    
     * This message is purely informal, Tomcat has 
     * already taken the memory leak prevention action accordingly.
     */
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        // get context and params to initialise database connector
        ServletContext servletContext = sce.getServletContext();
        String url = (String) servletContext.getInitParameter("databaseURL");
        String username = (String) servletContext.getInitParameter("username");
        String password = (String) servletContext.getInitParameter("password");
        String driver = (String) servletContext.getInitParameter("databaseDriver");
        
        // initialise database connector and Head Office and set to Context
        DatabaseConnector DC = DatabaseConnector.getInstance(driver, url, username, password);
        //HeadOffice HO = new HeadOffice(DC);
        servletContext.setAttribute("DC", DC);
        //servletContext.setAttribute("HO", HO);
    }

    /**
     *
     * @param sce
     */
    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        System.out.println("ServletContextListener destroyed");
    }
}
