/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import model.TeamModel;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author MTC
 */
public class TeamDAO extends BaseDAO<TeamModel> {

    @Override
    public ArrayList<TeamModel> all() {
        ArrayList<TeamModel> listTeam = new ArrayList<>();
        String sql = "SELECT        Team.ID, Team.name, Coach.name AS coachName, Coach.linkImg AS linkCoachImg, Region.name AS regionName, Team.description, Team.linkImg AS linkTeamImg, Team.linkLogo\n"
                + "FROM            Coach INNER JOIN\n"
                + "                         Team ON Coach.ID = Team.coachID INNER JOIN\n"
                + "                         Region ON Team.regionID = Region.ID";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                TeamModel a = new TeamModel();
                a.setID(rs.getInt("ID"));
                a.setName(rs.getString("name").trim());
                a.setCoachName(rs.getString("coachName").trim());
                a.setLinkCoachImg(rs.getString("linkCoachImg").trim());
                a.setRegionName(rs.getString("regionName").trim());
                a.setDescription(rs.getString("description").trim());
                a.setLinkTeamImg(rs.getString("linkTeamImg").trim());
                String temp = rs.getString("linkLogo");
                temp = temp == null ? "NULL": temp;
                a.setLinkLogo(temp.trim());
                listTeam.add(a);
            }
        } catch (SQLException ex) {
            Logger.getLogger(TeamDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listTeam;
    }

    public TeamModel get(int ID) {
        TeamModel a = new TeamModel();

        String sql = "SELECT        Team.ID, Team.name, Coach.name AS coachName, Coach.linkImg AS linkCoachImg, Region.name AS regionName, Team.description, Team.linkImg AS linkTeamImg, Team.linkLogo\n"
                + "	FROM            Coach INNER JOIN\n"
                + "		 Team ON Coach.ID = Team.coachID INNER JOIN\n"
                + "		 Region ON Team.regionID = Region.ID\n"
                + "	WHERE Team.ID = "+ ID;
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                a.setID(rs.getInt("ID"));
                a.setName(rs.getString("name").trim());
                a.setCoachName(rs.getString("coachName").trim());
                a.setLinkCoachImg(rs.getString("linkCoachImg").trim());
                a.setRegionName(rs.getString("regionName").trim());
                a.setDescription(rs.getString("description").trim());
                String temp = rs.getString("linkLogo");
                temp = temp == null ? "NULL": temp;
                a.setLinkLogo(temp.trim());
            }
        } catch (SQLException ex) {
            Logger.getLogger(TeamDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return a;
    }

    @Override
    public void insert(TeamModel model) {

    }

    public void update(TeamModel model) {

    }

}
