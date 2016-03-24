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
import java.util.ArrayList;
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
     * @param name The name of the item
     * @param fire The value of fire damage or fire resistance (depending on if
     * it's armor or a weapon)
     * @param cold Same as fire, but for cold
     * @param lightning Same as above
     * @param quality Extra damage for swords, extra block rate for shields, or
     * extra armor rating for everything else.
     * @param value The value in gold of a gear
     * @param userId The user that owns this gear
     */
    public void createGear(String type, String name, int fire, int cold, int lightning, int quality, long value, int userId) {
        
        // get the connection
        Connection c = new MysqlConnecter().getDBConnection();
        
        try {
            // sql
            String sql;
            
            sql = "INSERT INTO gear (gear_type, value, owned_by, quality, fire, cold, lightning, name)"
                        + " VALUES (?,?,?,?,?,?,?,?)";
            
            // bind the values
            try (PreparedStatement s = c.prepareStatement(sql)) {
                s.setString(1, type);
                s.setLong(2, value);
                s.setInt(3, userId);
                s.setInt(4, 10 + quality);
                s.setInt(5, fire);
                s.setInt(6, cold);
                s.setInt(7, lightning);
                s.setString(8, name);
                
                // execute
                s.executeUpdate();
            }
            c.close();
            
        } catch (SQLException ex) {
            Logger.getLogger(GearDao.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    /**
     * @param equippedGearId The user's id
     * @return A list of gear that the user has equipped. This will come in this
     * order: left hand, right hand, helm, legs, chest
     */
    public List<Gear> getEquippedGear(int equippedGearId) {
        
        List<Gear> gear = null;
        
        // get the connection
        Connection c = new MysqlConnecter().getDBConnection();
        
        try {
            // sql
            String sql = "SELECT * FROM equipped_gear WHERE id = ?";
            
            // bind the value
            try (PreparedStatement s = c.prepareStatement(sql)) {
                s.setInt(1, equippedGearId);
                
                // execute
                ResultSet rs = s.executeQuery();
                
                gear = new ArrayList<>();
                
                GearDao gDao = new GearDao();
                
                while (rs.next()) {
                    
                    gear.add(gDao.getGear(rs.getInt("l_hand_id")));
                    gear.add(gDao.getGear(rs.getInt("r_hand_id")));
                    gear.add(gDao.getGear(rs.getInt("helm_id")));
                    gear.add(gDao.getGear(rs.getInt("feet_id")));
                    gear.add(gDao.getGear(rs.getInt("chest_id")));
                }
            }
            c.close();
            
        } catch (SQLException ex) {
            Logger.getLogger(GearDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return gear;
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
    
    public Gear getGear(int gearId) {
        
        Gear g = new Gear();
        // get the connection
        Connection c = new MysqlConnecter().getDBConnection();
        
        try {
            // sql
            String sql = "SELECT * FROM gear WHERE id = ?";
            
            // bind the value
            try (PreparedStatement s = c.prepareStatement(sql)) {
                s.setInt(1, gearId);
                
                // execute
                ResultSet rs = s.executeQuery();
                
                
                while (rs.next()) {
                    
                    g.setId(rs.getInt("id"));
                    g.setGear_type(rs.getString("gear_type"));
                    g.setValue(rs.getInt("value"));
                    g.setOwned_by(rs.getInt("owned_by"));
                    g.setQuality(rs.getInt("quality"));
                    g.setFire(rs.getInt("fire"));
                    g.setCold(rs.getInt("cold"));
                    g.setLightning(rs.getInt("lightning"));
                    g.setName(rs.getString("name"));
                }
            }
            c.close();
            
        } catch (SQLException ex) {
            Logger.getLogger(GearDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return g;
    }
    
    /**
     * Get a list of all the weapons that a user owns
     * @param userId The user to get gear for
     * @return A list of all their gear
     */
    public List<Gear> getUserWeapons(int userId) {
        
        List<Gear> gear = null;
        
        // get the connection
        Connection c = new MysqlConnecter().getDBConnection();
        
        try {
            // sql
            String sql = "SELECT * FROM gear WHERE gear_type = 'sword' AND owned_by = ?";
            
            // bind the value
            try (PreparedStatement s = c.prepareStatement(sql)) {
                s.setInt(1, userId);
                
                // execute
                ResultSet rs = s.executeQuery();
                
                gear = new ArrayList<>();
                
                while (rs.next()) {
                    Gear g = new Gear();
                    
                    g.setId(rs.getInt("id"));
                    g.setGear_type(rs.getString("gear_type"));
                    g.setValue(rs.getInt("value"));
                    g.setOwned_by(rs.getInt("owned_by"));
                    g.setQuality(rs.getInt("quality"));
                    g.setFire(rs.getInt("fire"));
                    g.setCold(rs.getInt("cold"));
                    g.setLightning(rs.getInt("lightning"));
                    g.setName(rs.getString("name"));
                    
                    gear.add(g);
                }
            }
            c.close();
            
        } catch (SQLException ex) {
            Logger.getLogger(GearDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return gear;
    }
    
    /**
     * Get a list of all the weapons that a user owns
     * @param userId The user to get gear for
     * @return A list of all their gear
     */
    public List<Gear> getUserArmor(int userId) {
        
        List<Gear> gear = null;
        
        // get the connection
        Connection c = new MysqlConnecter().getDBConnection();
        
        try {
            // sql
            String sql = "SELECT * FROM gear WHERE gear_type != 'sword' AND owned_by = ?";
            
            // bind the value
            try (PreparedStatement s = c.prepareStatement(sql)) {
                s.setInt(1, userId);
                
                // execute
                ResultSet rs = s.executeQuery();
                
                gear = new ArrayList<>();
                
                while (rs.next()) {
                    Gear g = new Gear();
                    
                    g.setId(rs.getInt("id"));
                    g.setGear_type(rs.getString("gear_type"));
                    g.setValue(rs.getInt("value"));
                    g.setOwned_by(rs.getInt("owned_by"));
                    g.setQuality(rs.getInt("quality"));
                    g.setFire(rs.getInt("fire"));
                    g.setCold(rs.getInt("cold"));
                    g.setLightning(rs.getInt("lightning"));
                    g.setName(rs.getString("name"));
                    
                    gear.add(g);
                }
            }
            c.close();
            
        } catch (SQLException ex) {
            Logger.getLogger(GearDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return gear;
    }
    
    /**
     * Get a list of all the gear that a user owns
     * @param userId The user to get gear for
     * @return A list of all their gear
     */
    public List<Gear> getUserGear(int userId) {
        
        List<Gear> gear = null;
        
        // get the connection
        Connection c = new MysqlConnecter().getDBConnection();
        
        try {
            // sql
            String sql = "SELECT * FROM gear WHERE owned_by = ?";
            
            // bind the value
            try (PreparedStatement s = c.prepareStatement(sql)) {
                s.setInt(1, userId);
                
                // execute
                ResultSet rs = s.executeQuery();
                
                gear = new ArrayList<>();
                
                while (rs.next()) {
                    Gear g = new Gear();
                    
                    g.setId(rs.getInt("id"));
                    g.setGear_type(rs.getString("gear_type"));
                    g.setValue(rs.getInt("value"));
                    g.setOwned_by(rs.getInt("owned_by"));
                    g.setQuality(rs.getInt("quality"));
                    g.setFire(rs.getInt("fire"));
                    g.setCold(rs.getInt("cold"));
                    g.setLightning(rs.getInt("lightning"));
                    g.setName(rs.getString("name"));
                    
                    gear.add(g);
                }
            }
            c.close();
            
        } catch (SQLException ex) {
            Logger.getLogger(GearDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return gear;
    }
    public void setLHand(int equippedGearId, int gearId){
        
        // get the connection
        Connection c = new MysqlConnecter().getDBConnection();
        
        try {
            // sql
            String sql = "UPDATE SET l_hand_id = ? WHERE id = ?";
            
            // bind the value
            try (PreparedStatement s = c.prepareStatement(sql)) {
                s.setInt(1, gearId);
                s.setInt(2, equippedGearId);
                
                
            }
            c.close();
            
        } catch (SQLException ex) {
            Logger.getLogger(GearDao.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public void setRHand(int equippedGearId, int gearId){
        
        // get the connection
        Connection c = new MysqlConnecter().getDBConnection();
        
        try {
            // sql
            String sql = "UPDATE SET r_hand_id = ? WHERE id = ?";
            
            // bind the value
            try (PreparedStatement s = c.prepareStatement(sql)) {
                s.setInt(1, gearId);
                s.setInt(2, equippedGearId);
                
                
            }
            c.close();
            
        } catch (SQLException ex) {
            Logger.getLogger(GearDao.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public void setFeet(int equippedGearId, int gearId){
        
        // get the connection
        Connection c = new MysqlConnecter().getDBConnection();
        
        try {
            // sql
            String sql = "UPDATE SET feet_id = ? WHERE id = ?";
            
            // bind the value
            try (PreparedStatement s = c.prepareStatement(sql)) {
                s.setInt(1, gearId);
                s.setInt(2, equippedGearId);
                
                
            }
            c.close();
            
        } catch (SQLException ex) {
            Logger.getLogger(GearDao.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public void setChest(int equippedGearId, int gearId){
        
        // get the connection
        Connection c = new MysqlConnecter().getDBConnection();
        
        try {
            // sql
            String sql = "UPDATE SET chest_id = ? WHERE id = ?";
            
            // bind the value
            try (PreparedStatement s = c.prepareStatement(sql)) {
                s.setInt(1, gearId);
                s.setInt(2, equippedGearId);
                
                
            }
            c.close();
            
        } catch (SQLException ex) {
            Logger.getLogger(GearDao.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public void setHelm(int equippedGearId, int gearId){
        
        // get the connection
        Connection c = new MysqlConnecter().getDBConnection();
        
        try {
            // sql
            String sql = "UPDATE SET helm_id = ? WHERE id = ?";
            
            // bind the value
            try (PreparedStatement s = c.prepareStatement(sql)) {
                s.setInt(1, gearId);
                s.setInt(2, equippedGearId);
                
                
            }
            c.close();
            
        } catch (SQLException ex) {
            Logger.getLogger(GearDao.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
