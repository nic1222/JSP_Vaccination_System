/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
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
@WebServlet(name = "EditClinicAccProceed", urlPatterns = {"/EditClinicAccProceed"})
public class EditClinicAccProceed extends HttpServlet {

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
        Clinic toEditUser = (Clinic) s.getAttribute("login");
        toEditUser.setPassword(request.getParameter("password"));
        toEditUser.setName(request.getParameter("name"));
        toEditUser.setGender(request.getParameter("gender"));
        toEditUser.setPhone(request.getParameter("phone"));
        toEditUser.setIc(request.getParameter("ic"));
        toEditUser.setEmail(request.getParameter("email"));
        toEditUser.setAddress(request.getParameter("address"));
        toEditUser.setClinicName(request.getParameter("clinicName"));
        toEditUser.setClinicAddress(request.getParameter("clinicAddress"));
        toEditUser.setClinicState(request.getParameter("state"));
        clinicFacade.edit(toEditUser);

        request.getRequestDispatcher("Home").forward(request, response);
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
