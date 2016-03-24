/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package objects;

/**
 * This is a Gear object
 * @author justin
 */
public class Gear {
    
    private int id;
    private String gear_type;
    private String name;
    private int value;
    private int owned_by;
    private int quality;
    private int fire;
    private int cold;
    private int lightning;
    
    public int getHalfValue() {
        return value / 2;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getGear_type() {
        return gear_type;
    }

    public void setGear_type(String gear_type) {
        this.gear_type = gear_type;
    }

    public int getValue() {
        return value;
    }

    public void setValue(int value) {
        this.value = value;
    }

    public int getOwned_by() {
        return owned_by;
    }

    public void setOwned_by(int owned_by) {
        this.owned_by = owned_by;
    }

    public int getQuality() {
        return quality;
    }

    public void setQuality(int quality) {
        this.quality = quality;
    }

    public int getFire() {
        return fire;
    }

    public void setFire(int fire) {
        this.fire = fire;
    }

    public int getCold() {
        return cold;
    }

    public void setCold(int cold) {
        this.cold = cold;
    }

    public int getLightning() {
        return lightning;
    }

    public void setLightning(int lightning) {
        this.lightning = lightning;
    }

   
    
}
