/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Clinic;
import model.PublicUser;

/**
 *
 * @author user
 */
@WebServlet(name = "EditClinicAcc", urlPatterns = {"/EditClinicAcc"})
public class EditClinicAcc extends HttpServlet {

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
        Clinic currentUser = (Clinic) s.getAttribute("login");
        request.setAttribute("id", currentUser.getId());
        request.setAttribute("password", currentUser.getPassword());
        request.setAttribute("userRole", currentUser.getUserRole());
        request.setAttribute("name", currentUser.getName());
        request.setAttribute("gender", currentUser.getGender());
        request.setAttribute("phone", currentUser.getPhone());
        request.setAttribute("ic", currentUser.getIc());
        request.setAttribute("email", currentUser.getEmail());
        request.setAttribute("address", currentUser.getAddress());
        request.setAttribute("clinicId", currentUser.getClinicId());
        request.setAttribute("clinicName", currentUser.getClinicName());
        request.setAttribute("clinicAddress", currentUser.getClinicAddress());
        request.setAttribute("state", currentUser.getClinicState());
        request.getRequestDispatcher("editClinicAcc.jsp").include(request, response);
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
