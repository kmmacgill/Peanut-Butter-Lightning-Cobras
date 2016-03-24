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
import java.util.Date;
import java.util.HashSet;
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
        newguy.setRefreshDate(new Date());
        
        Connection c = new MysqlConnecter().getDBConnection();
        
        //write the euipped gear stuff here.
        
        try {
            //sql
            String sql;
            sql = "INSERT INTO user (username, gh_username, password, refresh, equipped_gear_id, gold, wins, losses) "
                    + "VALUES (?,?,?,?,?,?,?,?)";
            
            try (PreparedStatement s = c.prepareStatement(sql)) {
                s.setString(1, newguy.getUsername());
                s.setString(2, newguy.getGHUsername());
                s.setString(3, newguy.getPassword());
                s.setDate(4, (java.sql.Date) newguy.getRefreshDate());
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
        //check if the user exists in the DB
        Connection c = new MysqlConnecter().getDBConnection();
        try {
            String sql;
            sql = "SELECT password FROM user WHERE username = ?";
            
            try(PreparedStatement st = c.prepareStatement(sql)) {
                st.setString(1, user);               
                ResultSet rs = st.executeQuery();
                
                if (rs == null) {
                    return false;
                }
                else {
                    //TODO check the hash - hash the pass and check it against rs...
                }
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(userDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return false;
    }
    
    
}//end of USERDAO class
