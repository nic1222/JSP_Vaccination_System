/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Clinic;
import model.ClinicFacade;

/**
 *
 * @author user
 */
@WebServlet(name = "UpdateClinicProceed", urlPatterns = {"/UpdateClinicProceed"})
public class UpdateClinicProceed extends HttpServlet {

    @EJB
    private ClinicFacade clinicFacade;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession s = request.getSession(false);

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String clinicName = request.getParameter("clinicName");
        String clinicAddress = request.getParameter("clinicAddress");
        String clinicState = request.getParameter("state");
        if (username != null && password != null && phone != null && email != null && address != null && clinicName != null && clinicAddress != null && clinicState != null) {
            Clinic toEditUser = clinicFacade.find(username);
            toEditUser.setPassword(password);
            toEditUser.setName(name);
            toEditUser.setPhone(phone);
            toEditUser.setEmail(email);
            toEditUser.setAddress(address);
            toEditUser.setClinicName(clinicName);
            toEditUser.setClinicAddress(clinicAddress);
            toEditUser.setClinicState(clinicState);
            clinicFacade.edit(toEditUser);
        }
        request.getRequestDispatcher("manageMinistryAcc.jsp").include(request, response);

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
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
        processRequest(request, response);
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
        processRequest(request, response);
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
