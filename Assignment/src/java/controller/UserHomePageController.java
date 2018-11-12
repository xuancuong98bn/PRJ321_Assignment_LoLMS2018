/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.PlayerModel;
import model.RegionModel;
import model.TeamModel;
import service.PlayerDAO;
import service.RegionDAO;
import service.TeamDAO;

/**
 *
 * @author MTC
 */
public class UserHomePageController extends HttpServlet {

    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        
        PlayerDAO playerDAO = new PlayerDAO();
        TeamDAO teamDAO  = new TeamDAO();
        RegionDAO regionDAO = new RegionDAO();
        
        ArrayList<PlayerModel> listPlayer = playerDAO.all();
        ArrayList<TeamModel> listTeam = teamDAO.all();
        ArrayList<RegionModel> listRegion = regionDAO.all();
                
        session.setAttribute("listPlayer", listPlayer);
        session.setAttribute("listTeam", listTeam);
        session.setAttribute("listRegion", listRegion);
        
        request.getRequestDispatcher("./HomePage.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
