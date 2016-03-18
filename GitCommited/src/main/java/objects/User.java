/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package objects;

import java.sql.Date;



/**
 *
 * @author jason
 */
public class User {
    int id;
    String username;
    String GHUsername;
    String password;
    Date refreshDate;
    int equippedGearId;
    int gold;
    int wins;
    int losses;

    public User() {
    }

    public User(int id, String username, String GHUsername, String password, Date refreshDate, int equippedGearId, int gold, int wins, int losses) {
        this.id = id;
        this.username = username;
        this.GHUsername = GHUsername;
        this.password = password;
        this.refreshDate = refreshDate;
        this.equippedGearId = equippedGearId;
        this.gold = gold;
        this.wins = wins;
        this.losses = losses;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getGHUsername() {
        return GHUsername;
    }

    public void setGHUsername(String GHUsername) {
        this.GHUsername = GHUsername;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Date getRefreshDate() {
        return refreshDate;
    }

    public void setRefreshDate(Date refreshDate) {
        this.refreshDate = refreshDate;
    }

    public int getEquippedGearId() {
        return equippedGearId;
    }

    public void setEquippedGearId(int equippedGearId) {
        this.equippedGearId = equippedGearId;
    }

    public int getGold() {
        return gold;
    }

    public void setGold(int gold) {
        this.gold = gold;
    }

    public int getWins() {
        return wins;
    }

    public void setWins(int wins) {
        this.wins = wins;
    }

    public int getLosses() {
        return losses;
    }

    public void setLosses(int losses) {
        this.losses = losses;
    }
    
}
