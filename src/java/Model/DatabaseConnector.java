package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author k2-sears
 */
public class DatabaseConnector {

    String DRIVER;
    String HOST;
    Connection con;
    Statement state;
    ResultSet rs;

   private static DatabaseConnector instance = null;
   
   private DatabaseConnector(String driver, String URL, String username, String password) {
      try {
            Class.forName(driver);
            con = DriverManager.getConnection(URL, username, password);
            state = con.createStatement();
        } catch (ClassNotFoundException | SQLException e) {
            System.err.println("Error: " + e);
        }
   }
   
   public static DatabaseConnector getInstance(String driver, String URL, String username, String password) {
      if(instance == null) {
         instance = new DatabaseConnector( driver,  URL,  username,  password);
      }
      return instance;
   }
}
    

