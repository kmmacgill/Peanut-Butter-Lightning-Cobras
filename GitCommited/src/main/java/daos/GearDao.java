/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package daos;

import java.sql.Connection;
import java.util.List;
import objects.Gear;

/**
 * Data Access Object
 * @author justin
 */
public class GearDao {
    
    public void createGear(String type, int fire, int cold, int lightning, int quality, int userId) {
        Connection c = new MysqlConnecter().getDBConnection();
        
        // do stuff with the connection
    }
    
    public List<Gear> getUserGear(int userId) {
        return null;
    }
}
