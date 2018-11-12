/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author MTC
 */
public class PlayerModel  extends BaseModel{
    private int ID;
    private String name;
    private int teamID;
    private String position;
    private String linkImgSub;

    public PlayerModel() {
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getTeamID() {
        return teamID;
    }

    public void setTeamID(int teamID) {
        this.teamID = teamID;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getLinkImgSub() {
        return linkImgSub;
    }

    public void setLinkImgSub(String linkImgSub) {
        this.linkImgSub = linkImgSub;
    }
    
    
}
