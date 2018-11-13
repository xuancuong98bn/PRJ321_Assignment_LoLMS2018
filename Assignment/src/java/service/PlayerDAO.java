/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import model.PlayerModel;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author MTC
 */
public class PlayerDAO extends BaseDAO<PlayerModel> {

    @Override
    public ArrayList<PlayerModel> all() {
        ArrayList<PlayerModel> listPlayer = new ArrayList<>();
        String sql = "SELECT        Player.ID, Player.name, Team_Player_Position_rf.teamID, Position.position, SubDetail.linkImg\n"
                + "FROM            Position INNER JOIN\n"
                + "                         Team_Player_Position_rf ON Position.ID = Team_Player_Position_rf.positionID INNER JOIN\n"
                + "                         Player ON Team_Player_Position_rf.playerID = Player.ID LEFT OUTER JOIN\n"
                + "                         SubDetail ON Player.ID = SubDetail.playerID";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                PlayerModel a = new PlayerModel();
                a.setID(rs.getInt("ID"));
                a.setName(rs.getString("name").trim());
                a.setTeamID(rs.getInt("teamID"));
                a.setPosition(rs.getString("position"));
                String temp = rs.getString("linkImg");
                temp = temp == null ? "NULL" : temp;
                a.setLinkImgSub(temp.trim());
                listPlayer.add(a);
            }
        } catch (SQLException ex) {
            Logger.getLogger(PlayerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listPlayer;
    }

    public PlayerModel get(String name) {
        PlayerModel a = new PlayerModel();

        String sql = "SELECT        Player.ID, Player.name, Team_Player_Position_rf.teamID, Position.position, SubDetail.linkImg\n"
                + "FROM            Position INNER JOIN\n"
                + "                         Team_Player_Position_rf ON Position.ID = Team_Player_Position_rf.positionID INNER JOIN\n"
                + "                         Player ON Team_Player_Position_rf.playerID = Player.ID LEFT OUTER JOIN\n"
                + "                         SubDetail ON Player.ID = SubDetail.playerID"
                + " Where name = '" + name + "'";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                a.setID(rs.getInt("ID"));
                a.setName(rs.getString("name").trim());
                a.setTeamID(rs.getInt("teamID"));
                a.setPosition(rs.getString("position"));
                String temp = rs.getString("linkImg");
                temp = temp == null ? "NULL" : temp;
                a.setLinkImgSub(temp.trim());
            }
        } catch (SQLException ex) {
            Logger.getLogger(PlayerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return a;
    }

    public ArrayList<PlayerModel> getListPlayersByTeam(int teamID) {
        ArrayList<PlayerModel> listPlayer = new ArrayList<>();
        String sql = "SELECT        Player.ID, Player.name, Team_Player_Position_rf.teamID, Position.position, SubDetail.linkImg\n"
                + "FROM            Position INNER JOIN\n"
                + "                         Team_Player_Position_rf ON Position.ID = Team_Player_Position_rf.positionID INNER JOIN\n"
                + "                         Player ON Team_Player_Position_rf.playerID = Player.ID LEFT OUTER JOIN\n"
                + "                         SubDetail ON Player.ID = SubDetail.playerID\n"
                + "		WHERE teamID = " + teamID;
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                PlayerModel a = new PlayerModel();
                a.setID(rs.getInt("ID"));
                a.setName(rs.getString("name").trim());
                a.setTeamID(rs.getInt("teamID"));
                a.setPosition(rs.getString("position"));
                String temp = rs.getString("linkImg");
                temp = temp == null ? "NULL" : temp;
                a.setLinkImgSub(temp.trim());
                listPlayer.add(a);
            }
        } catch (SQLException ex) {
            Logger.getLogger(PlayerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listPlayer;
    }

    @Override
    public void insert(PlayerModel model) {

    }

    public List<PlayerModel> paggingPlayer(int PageSize, int PageIndex) {
        ArrayList<PlayerModel> listPlayer = new ArrayList<>();

        String sql = "WITH t AS (SELECT        Player.ID, Player.name, Team_Player_Position_rf.teamID, Position.position, SubDetail.linkImg\n"
                + "	FROM            Position INNER JOIN\n"
                + "	Team_Player_Position_rf ON Position.ID = Team_Player_Position_rf.positionID INNER JOIN\n"
                + "	Player ON Team_Player_Position_rf.playerID = Player.ID LEFT OUTER JOIN\n"
                + "	SubDetail ON Player.ID = SubDetail.playerID) \n"
                + "	SELECT * FROM ( SELECT ROW_NUMBER() OVER (ORDER BY ID ASC) AS rn, *  FROM t) AS x\n"
                + "	WHERE rn BETWEEN (?-1)*? + 1 AND ?*?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, PageIndex);
            statement.setInt(2, PageSize);
            statement.setInt(3, PageSize);
            statement.setInt(4, PageIndex);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                PlayerModel a = new PlayerModel();
                a.setID(rs.getInt("ID"));
                a.setName(rs.getString("name").trim());
                a.setTeamID(rs.getInt("teamID"));
                a.setPosition(rs.getString("position"));
                String temp = rs.getString("linkImg");
                temp = temp == null ? "NULL" : temp;
                a.setLinkImgSub(temp.trim());
                listPlayer.add(a);
            }
        } catch (SQLException ex) {
        }
        return listPlayer;

    }

    public void update(PlayerModel model) {

    }

}
