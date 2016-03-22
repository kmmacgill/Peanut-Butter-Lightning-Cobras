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
    
    /**
     * Creates a new row in the gear table
     * @param type A string that says what type of gear this is. Valid options are:
     * 'sword', 'shield', 'legs', 'chest', or 'helm'
     * @param fire The value of fire damage or fire resistance (depending on if
     * it's armor or a weapon)
     * @param cold Same as fire, but for cold
     * @param lightning Same as above
     * @param quality Extra damage for swords, extra block rate for shields, or
     * extra armor rating for everything else.
     * @param value The value in gold of a gear
     * @param userId The user that owns this gear
     */
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
            try (PreparedStatement s = c.prepareStatement(sql)) {
                s.setString(1, type);
                s.setLong(2, value);
                s.setInt(3, userId);
                s.setInt(4, 10 + quality);
                s.setInt(5, fire);
                s.setInt(6, cold);
                s.setInt(7, lightning);
                
                // execute
                s.executeUpdate();
            }
            c.close();
            
        } catch (SQLException ex) {
            Logger.getLogger(GearDao.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    /**
     * Change which user owns an item.
     * @param gearId Which gear to change the owner for
     * @param userId The new owner
     */
    public void changeOwner(int gearId, int userId) {
        
        // get the connection
        Connection c = new MysqlConnecter().getDBConnection();
        
        try {
            // sql
            String sql = "UPDATE gear SET owned_by = ? WHERE id = ?";
            
            // bind the values
            try (PreparedStatement s = c.prepareStatement(sql)) {
                s.setInt(1, userId);
                s.setInt(2, gearId);
                
                // execute
                s.executeUpdate();
            }
            c.close();
            
        } catch (SQLException ex) {
            Logger.getLogger(GearDao.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    /**
     * Get a list of all the gear that a user owns
     * @param userId The user to get gear for
     * @return A list of all their gear
     */
    public List<Gear> getUserGear(int userId) {
        return null;
    }
}