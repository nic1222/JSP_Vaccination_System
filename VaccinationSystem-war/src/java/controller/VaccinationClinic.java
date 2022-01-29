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
import java.util.ArrayList;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.PublicUser;
import model.PublicUserFacade;
import model.Vaccination;
import model.VaccinationFacade;

/**
 *
 * @author user
 */
@WebServlet(name = "VaccinationClinic", urlPatterns = {"/VaccinationClinic"})
public class VaccinationClinic extends HttpServlet {

    @EJB
    private PublicUserFacade publicUserFacade;

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

        String[] selectedId = request.getParameterValues("checkBox");
        String[] values = request.getParameterValues("status");

        if (values != null && selectedId != null) {
            List<Vaccination> vacList = new ArrayList<>();
            vacList = vaccinationFacade.findAll();
            for (Vaccination vac : vacList) {
                for (String upd : selectedId) {
                    if (vac.getPublicUserId().equals(upd)) {
                        Vaccination toEdit = vaccinationFacade.find(vac.getVaccinationId());
                        toEdit.setStatus(values[0]);
                        vaccinationFacade.edit(toEdit);
                        PublicUser toEditUser = publicUserFacade.find(vac.getPublicUserId());
                        toEditUser.setVaccinationStatus(values[0]);
                        publicUserFacade.edit(toEditUser);
                    }
                }
            }
        }
        request.getRequestDispatcher("VaccinationClinicPage").forward(request, response);
        try (PrintWriter out = response.getWriter()) {
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
