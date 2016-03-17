/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daos;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * This class handles connecting to the database
 * @author justin
 */
public class MysqlConnecter {
    
    static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";

    public MysqlConnecter() {
        
        // check for openshift environment
        String db_host = System.getenv("OPENSHIFT_MYSQL_DB_HOST");
        if (db_host == null) {
            db_host = "localhost/";
            
            // Kory, this is all that needs filled in
            // load a properties file
            
            // username = . . .
            // password = . . .
            
        } else {
            // openshift environment
            username = System.getenv("OPENSHIFT_MYSQL_DB_USERNAME");
            password = System.getenv("OPENSHIFT_MYSQL_DB_PASSWORD");
        }
        
        // do this either way
        db_url = "jdbc:mysql://" + db_host;
    }    
    
    public Connection getDBConnection() {
        
        Connection c;
        
        try {
            // register the driver
            Class.forName("com.mysql.jdbc.Driver");
            
            // get the connection to return
            c = DriverManager.getConnection(db_url, username, password);
            
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(MysqlConnecter.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
        
        return c;
    }
    
    String username;
    String password;
    String db_url;
}
