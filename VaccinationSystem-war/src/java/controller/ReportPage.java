/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.util.ArrayList;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Ministry;
import model.PublicUser;
import model.PublicUserFacade;
import model.VSUser;
import model.VSUserFacade;
import model.Vaccination;
import model.VaccinationFacade;

/**
 *
 * @author user
 */
@WebServlet(name = "ReportPage", urlPatterns = {"/ReportPage"})
public class ReportPage extends HttpServlet {

    @EJB
    private PublicUserFacade publicUserFacade;

    @EJB
    private VSUserFacade vSUserFacade;

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
        Ministry currentUser = (Ministry) s.getAttribute("login");
        request.setAttribute("ministryId", currentUser.getId());

        List<PublicUser> publicUserList = new ArrayList<>();
        publicUserList = publicUserFacade.findAll();
        //vaccination status report
        int notVac = 0;
        int firstDose = 0;
        int secondDose = 0;
        for (PublicUser p : publicUserList) {
            switch (p.getVaccinationStatus()) {
                case "First Dose":
                    firstDose += 1;
                    break;
                case "Second Dose":
                    secondDose += 1;
                    break;
                default:
                    notVac += 1;
                    break;
            }
        }
        request.setAttribute("notVac", notVac);
        request.setAttribute("firstDose", firstDose);
        request.setAttribute("secondDose", secondDose);

        List<VSUser> userList = new ArrayList<>();
        userList = vSUserFacade.findAll();
        //gender report
        int male = 0;
        int female = 0;
        for (VSUser user : userList) {
            if (user.getGender().startsWith("M")) {
                male += 1;
            } else {
                female += 1;
            }
        }
        request.setAttribute("male", male);
        request.setAttribute("female", female);

        //user report
        int ms = 0;
        int cs = 0;
        int pu = 0;
        for (VSUser user : userList) {
            if (user.getUserRole().equals("MS")) {
                ms += 1;
            } else if (user.getUserRole().equals("CS")) {
                cs += 1;
            } else if (user.getUserRole().equals("PU")) {
                pu += 1;
            }
        }
        request.setAttribute("ms", ms);
        request.setAttribute("cs", cs);
        request.setAttribute("pu", pu);

        List<Vaccination> vaccinationList = new ArrayList<>();
        vaccinationList = vaccinationFacade.findAll();
        //vaccine brand report
        int pfizer = 0;
        int sinovac = 0;
        int az = 0;
        for (Vaccination vac : vaccinationList) {
            if (vac.getVaccineBrand().equals("Pfizer")) {
                pfizer += 1;
            } else if (vac.getVaccineBrand().equals("Sinovac")) {
                sinovac += 1;
            } else if (vac.getVaccineBrand().equals("AstraZeneca")) {
                az += 1;
            }
        }
        request.setAttribute("pfizer", pfizer);
        request.setAttribute("sinovac", sinovac);
        request.setAttribute("az", az);

        //rejected and approved appointment
        int approved = 0;
        int rejected = 0;
        int pending = 0;
        for (Vaccination vac : vaccinationList) {
            if (vac.getStatus().equals("Reject")) {
                rejected += 1;
            } else if (vac.getStatus().equals("Pending for approval")) {
                pending += 1;
            } else {
                approved += 1;
            }
        }
        request.setAttribute("approved", approved);
        request.setAttribute("rejected", rejected);
        request.setAttribute("pending", pending);

        request.getRequestDispatcher("reportPage.jsp").include(request, response);
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
