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
    
    public void createGear(String type, int fire, int cold, int lightning, int quality, int value, int userId) {
        
        // get the connection
        Connection c = new MysqlConnecter().getDBConnection();
        
        try {
            // sql
            String sql = "INSERT INTO gear (gear_type, value, owned_by, base_dmg, armor_rating, fire_dmg,)"
                    + "VALUES (?,?,?,?,?)";
            PreparedStatement s = c.prepareStatement(sql);
            
            s.setString(, sql);
            
            s.execute();
            
        } catch (SQLException ex) {
            Logger.getLogger(GearDao.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public List<Gear> getUserGear(int userId) {
        return null;
    }
}
