/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import model.RegionModel;
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
public class RegionDAO extends BaseDAO<RegionModel> {

    @Override
    public ArrayList<RegionModel> all() {
        ArrayList<RegionModel> listTeam = new ArrayList<>();
        String sql = "SELECT ID, name FROM dbo.Region";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                RegionModel a = new RegionModel();
                a.setID(rs.getInt("ID"));
                a.setName(rs.getString("name").trim());
                listTeam.add(a);
            }
        } catch (SQLException ex) {
            Logger.getLogger(RegionDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listTeam;
    }

    public RegionModel get(int ID) {
        RegionModel a = new RegionModel();

        String sql = "SELECT ID, name FROM dbo.Region\n"
                + "	WHERE ID = " + ID;
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                a.setID(rs.getInt("ID"));
                a.setName(rs.getString("name").trim());
            }
        } catch (SQLException ex) {
            Logger.getLogger(RegionDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return a;
    }

    @Override
    public void insert(RegionModel model) {

    }

    public void update(RegionModel model) {

    }

}
