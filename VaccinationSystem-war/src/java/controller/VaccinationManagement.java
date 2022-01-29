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
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Vaccination;
import model.VaccinationFacade;

/**
 *
 * @author user
 */
@WebServlet(name = "VaccinationManagement", urlPatterns = {"/VaccinationManagement"})
public class VaccinationManagement extends HttpServlet {

    @EJB
    private VaccinationFacade vaccinationFacade;

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
        String publicUserId = request.getParameter("publicUserId");
        String clinicId = request.getParameter("clinicId");
        String firstDate = request.getParameter("firstDate");
        String firstTime = request.getParameter("firstTime");
        String secondDate = request.getParameter("secondDate");
        String secondTime = request.getParameter("secondTime");
        String brand = request.getParameter("brand");
        String status = "Pending for approval";
        boolean hasAppointment = false;
        try (PrintWriter out = response.getWriter()) {
            List<Vaccination> vacList = new ArrayList<>();
            vacList = vaccinationFacade.findAll();
            for (Vaccination vac : vacList) {
                if (vac.getPublicUserId().equals(publicUserId)) {
                    hasAppointment = true;
                    request.getRequestDispatcher("vaccinationManagement.jsp").include(request, response);
                    out.println("<div class=\"row text-center\"><h5>User " + publicUserId + " already had an appointment.</h5></div>");
                }
            }
            if (!hasAppointment) {
                Vaccination v = new Vaccination(publicUserId, clinicId, firstDate, firstTime, secondDate, secondTime, brand, status);
                vaccinationFacade.create(v);
                request.getRequestDispatcher("vaccinationManagement.jsp").include(request, response);
            }  
        }
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
