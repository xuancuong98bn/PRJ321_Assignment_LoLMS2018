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
public class TeamModel extends BaseModel{
    private int ID;
    private String name;
    private String coachName;
    private String linkCoachImg;
    private String regionName;
    private String description;
    private String linkTeamImg;
    private String linkLogo;
    
    public TeamModel() {
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

    public String getCoachName() {
        return coachName;
    }

    public void setCoachName(String coachName) {
        this.coachName = coachName;
    }

    public String getLinkCoachImg() {
        return linkCoachImg;
    }

    public void setLinkCoachImg(String linkCoachImg) {
        this.linkCoachImg = linkCoachImg;
    }

    public String getRegionName() {
        return regionName;
    }

    public void setRegionName(String regionName) {
        this.regionName = regionName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getLinkTeamImg() {
        return linkTeamImg;
    }

    public void setLinkTeamImg(String linkTeamImg) {
        this.linkTeamImg = linkTeamImg;
    }

    public String getLinkLogo() {
        return linkLogo;
    }

    public void setLinkLogo(String linkLogo) {
        this.linkLogo = linkLogo;
    }

        
}
