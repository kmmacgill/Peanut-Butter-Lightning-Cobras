/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import objects.Gear;

/**
 * Data Access Object
 * @author justin
 */
public class GearDao {
    
    public void createGear(String type, int fire, int cold, int lightning, int quality, long value, int userId) {
        
        // get the connection
        Connection c = new MysqlConnecter().getDBConnection();
        
        try {
            // sql
            String sql;
            
            if (type.equals("sword")) {
                sql = "INSERT INTO gear (gear_type, value, owned_by, base_dmg, fire_dmg, cold_dmg, lightning_dmg)"
                        + " VALUES (?,?,?,?,?,?,?)";
            } else {
                sql = "INSERT INTO gear (gear_type, value, owned_by, armor_rating, fire_resist, cold_resist, lightning_resist"
                        + " VALUES (?,?,?,?,?,?,?)";
            }
            
            // bind the values
            PreparedStatement s = c.prepareStatement(sql);
            
            s.setString(1, type);
            s.setLong(2, value);
            s.setInt(3, userId);
            s.setInt(4, 10 + quality);
            s.setInt(5, fire);
            s.setInt(6, cold);
            s.setInt(7, lightning);
            
            // execute
            s.executeUpdate();
            
        } catch (SQLException ex) {
            Logger.getLogger(GearDao.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public List<Gear> getUserGear(int userId) {
        return null;
    }
}
