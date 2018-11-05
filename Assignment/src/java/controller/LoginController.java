/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.AccountModel;
import service.AccountDAO;

/**
 *
 * @author MTC
 */
public class LoginController extends BaseController {

    @Override
    protected void processPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        AccountDAO accDAO = new AccountDAO();
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        AccountModel dummy = new AccountModel();
        dummy.setUsername(username);
        dummy.setPassword(password);
        dummy = accDAO.get(dummy);
        if (dummy != null){
            
        } else {
            request.getRequestDispatcher("Login/Login.jsp").forward(request, response);
        }
    }

    @Override
    protected void processGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("Login/Login.jsp").forward(request, response);
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
