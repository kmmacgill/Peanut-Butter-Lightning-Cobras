/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Date;
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
        newguy.setGold(0);
        newguy.setWins(0);
        newguy.setLosses(0);
        newguy.setRefreshDate(new Date());
        
        Connection c = new MysqlConnecter().getDBConnection();
        
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
    
    
    
}//end of USERDAO class
