/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import static java.sql.Statement.RETURN_GENERATED_KEYS;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import objects.User;
import org.mindrot.jbcrypt.BCrypt;

/**
 *
 * @author kmmac
 */
public class userDao {
    
    public void createUser(String userName, String ghUsername, String password) {
        User newguy = new User();
        newguy.setUsername(userName);
        newguy.setGHUsername(ghUsername);
        
        //hash the password and set it as the user's password.
        String hashed = BCrypt.hashpw(password, BCrypt.gensalt(12)); // 12 is the number of times it will be hashed, don't go higher or infinite loop due to getting bigger than DB size
        
        newguy.setPassword(hashed);
        newguy.setGold(500);
        newguy.setWins(0);
        newguy.setLosses(0);
        newguy.setRefreshDate(0);
        
        Connection c = new MysqlConnecter().getDBConnection();
        
        /******************************************************************************************
         ***
         * This is the part that makes the equipped_gear id. not functioning completely though...
         ***
         *****************************************************************************************/
        String insert = "INSERT INTO equipped_gear VALUES ()";
        try(PreparedStatement statement = c.prepareStatement(insert, RETURN_GENERATED_KEYS)) {
            
            statement.executeUpdate(); 
            
            ResultSet generatedKeysResultSet = statement.getGeneratedKeys();
            //first row of this set will contain generated keys
            generatedKeysResultSet.next(); //execturing next() method to navigate to first row of generated keys.
            int id = generatedKeysResultSet.getInt(1); // since our row contains only one column, we can get it this way.
            
            //now we give the newguy his ID
            newguy.setEquippedGearId(id);
            
        } catch (SQLException ex) {
            Logger.getLogger(userDao.class.getName()).log(Level.SEVERE, null, ex);
        }
                
        try {
            //sql
            String sql;
            sql = "INSERT INTO user (username, gh_username, password, refresh, equipped_gear_id, gold, wins, losses) "
                    + "VALUES (?,?,?,?,?,?,?,?)";
            
            try (PreparedStatement s = c.prepareStatement(sql)) {
                s.setString(1, newguy.getUsername());
                s.setString(2, newguy.getGHUsername());
                s.setString(3, newguy.getPassword());
                s.setLong(4, newguy.getRefreshDate());
                s.setInt(5, newguy.getEquippedGearId());
                s.setInt(6, newguy.getGold());
                s.setInt(7, newguy.getWins());
                s.setInt(8, newguy.getLosses());
                
                //execute
                s.executeUpdate();                   
            }
            c.close();
            
        } catch (SQLException ex) {
            Logger.getLogger(userDao.class.getName()).log(Level.SEVERE, null, ex);
        }   
    }//end of void createUser
    
    public void editGold(int userId, int amount) {
        Connection c = new MysqlConnecter().getDBConnection();
        try {
            String sql;
            sql = "UPDATE user SET gold = gold + " + amount + " WHERE id = " + userId;
            
            try (PreparedStatement stmnt = c.prepareStatement(sql)) {
                stmnt.executeUpdate();
            }
        } catch (SQLException ex) {
            Logger.getLogger(userDao.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public int retrieveGold(int userId) {
        int goldToReturn = 0;
        Connection c = new MysqlConnecter().getDBConnection();
        try {
            String sql;
            sql = "SELECT gold FROM user where id = " + userId;

            try (PreparedStatement state = c.prepareStatement(sql)) {
                ResultSet rs = state.executeQuery();
                
                while(rs.next()){
                    goldToReturn = rs.getInt("gold");
                }
            }         
            c.close();
        } catch (SQLException ex) {
            Logger.getLogger(userDao.class.getName()).log(Level.SEVERE, null, ex);
        }  
        return goldToReturn;
    }
    
    public int getEquitppedGearId(int userId) {
        String id = "SELECT equipped_gear_id FROM user where id = " + userId;
        return Integer.parseInt(id);
    }
    
    public boolean validateUser(String user, String pass) {
        boolean returnValue = false;
        //check if the user exists in the DB
        Connection c = new MysqlConnecter().getDBConnection();
        try {
            String sql;
            sql = "SELECT password FROM user WHERE username = ?";
            
            String userPassword = "DEFAULT STRING";
            
            try(PreparedStatement st = c.prepareStatement(sql)) {
                st.setString(1, user);               
                ResultSet hashedPass = st.executeQuery();
                if (hashedPass == null) {
                    returnValue = false;
                }
                else {
                    while(hashedPass.next()) {
                    String tablesPass = hashedPass.getString("password");
                    userPassword = tablesPass;
                    System.out.println("The returned password: " + ":::" + tablesPass + ":::");
                }
                    //String userPassword = hashedPass.getString("password"); //IS THROWING EXCEPTION.
                    if (BCrypt.checkpw(pass, userPassword)) {
                        returnValue = true;
                    }
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(userDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return returnValue;
    }
    
    /**
     * This function returns a list of all users, but the password field is null
     * @return 
     */
    public List<User> getAllUsers() {
        
        List<User> list = new ArrayList();
        
        Connection c = new MysqlConnecter().getDBConnection();
        
        try {
            // sql
            String sql = "SELECT * FROM USER";
        
            // no values to bind
            try (PreparedStatement s = c.prepareStatement(sql)) {
                
                // execute
                ResultSet rs = s.executeQuery();
                
                
                while (rs.next()) {
                    User u = new User();
                    
                    u.setId(rs.getInt("id"));
                    u.setUsername(rs.getString("username"));
                    u.setGHUsername(rs.getString("gh_username"));
                    u.setRefreshDate(rs.getLong("refresh"));
                    u.setEquippedGearId(rs.getInt("equipped_gear_id"));
                    u.setGold(rs.getInt("gold"));
                    u.setWins(rs.getInt("wins"));
                    u.setLosses(rs.getInt("losses"));
                    
                    list.add(u);
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(GearDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return list;
    }
    
}//end of USERDAO class
