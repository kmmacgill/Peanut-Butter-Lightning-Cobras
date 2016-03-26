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
import java.sql.Statement;
import static java.sql.Statement.RETURN_GENERATED_KEYS;
import java.util.logging.Level;
import java.util.logging.Logger;
import objects.User;

/**
 *
 * @author kmmac
 */
public class userDao {
    
    public void createUser(String userName, String ghUsername, String password) {
        User newguy = new User();
        newguy.setUsername(userName);
        newguy.setGHUsername(ghUsername);
        newguy.setPassword(password);
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
        try(Statement statement = c.createStatement()) {
            int equipId = statement.executeUpdate(insert, Statement.RETURN_GENERATED_KEYS);
            newguy.setEquippedGearId(equipId);
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
    
    
    public boolean validateUser(String user, String pass) {
        boolean returnValue = false;
        //check if the user exists in the DB
        Connection c = new MysqlConnecter().getDBConnection();
        try {
            String sql;
            sql = "SELECT password FROM user WHERE username = ?";
            
            try(PreparedStatement st = c.prepareStatement(sql)) {
                st.setString(1, user);               
                ResultSet rs = st.executeQuery();
                
                if (rs == null) {
                    returnValue = false;
                }
                else {
                    //TODO check the hash - hash the pass and check it against rs...
                    //fornow...
                    String userPassword = rs.getString("password");
                    if (pass.equals(userPassword)) {
                        returnValue = true;
                    }
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(userDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return returnValue;
    }
    
    
}//end of USERDAO class
