/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daos;

import java.sql.Connection;
import java.util.Date;
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
        
        String sql; 
        
    }    
}
