/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Clinic;
import model.ClinicFacade;
import model.Ministry;
import model.MinistryFacade;
import model.VSUser;
import model.PublicUser;
import model.PublicUserFacade;
import model.VSUserFacade;

/**
 *
 * @author user
 */
@WebServlet(name = "Register", urlPatterns = {"/Register"})
public class Register extends HttpServlet {

    @EJB
    private VSUserFacade vSUserFacade;

    @EJB
    private PublicUserFacade publicUserFacade;

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

        String userRole = request.getParameter("userRole");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String name = request.getParameter("name");
        String gender = request.getParameter("gender");
        String phone = request.getParameter("phone");
        String ic = request.getParameter("ic");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String clinicId = request.getParameter("clinicId");
        String clinicName = request.getParameter("clinicName");
        String clinicAddress = request.getParameter("clinicAddress");
        String state = request.getParameter("state");
        String feedback = "";
        VSUser vsuser = vSUserFacade.find(username);
        try (PrintWriter out = response.getWriter()) {
            if (vsuser == null) {
                switch (userRole) {
                    case "CS":
                        Clinic c = new Clinic(clinicId, clinicName,clinicAddress, state, feedback, username, password, userRole, name, gender, phone, ic, email, address);
                        clinicFacade.create(c);
                        break;
                    case "PU":
                        String status = "Not Vaccinated";
                        PublicUser p = new PublicUser(status, feedback, username, password, userRole, name, gender, phone, ic, email, address);
                        publicUserFacade.create(p);
                        break;
                }
                if (userRole.equals("PU")) {
                    request.getRequestDispatcher("register.jsp").include(request, response);
                } else {
                    request.getRequestDispatcher("registerClinic.jsp").include(request, response);
                }
                out.println("<div class=\"row text-center\"><h5>Successfully register " + username + ".</h5></div>");
            } else {
                if (userRole.equals("PU")) {
                    request.getRequestDispatcher("register.jsp").include(request, response);
                } else {
                    request.getRequestDispatcher("registerClinic.jsp").include(request, response);
                }
                out.println("<div class=\"row text-center\"><h5>Username(" + username + ") has been taken, please try another username.</h5></div>");
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
