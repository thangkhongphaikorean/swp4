/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import database.Accounts;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mainpackage.Doctor;
import mainpackage.Patient;

/**
 *
 * @author PC
 */
@WebServlet(name = "UpdatePatient", urlPatterns = {"/admin/UpdatePatient"})
public class UpdatePatient extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UpdatePatient</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UpdatePatient at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
         String username = request.getParameter("username");
        String password = request.getParameter("password");
        String cccd = request.getParameter("cccd");
        String patientName = request.getParameter("patientName");
        String patientPhone = request.getParameter("patientPhone");
        String patientAddress = request.getParameter("patientAddress");
        String patientDOB =  request.getParameter("patientDOB");
        String patientGender = request.getParameter("patientGender");
      
        boolean suc = false;
       
     
        try {
            suc= Accounts.updatePat(username, password, cccd, patientName, patientPhone,
                    patientAddress, patientGender, patientDOB);
        } catch (SQLException ex) {
            Logger.getLogger(UpdatePatient.class.getName()).log(Level.SEVERE, null, ex);
        }
      
                
        Accounts ac = new Accounts();
        List<Patient> pa = ac.getAllPatient();
        request.setAttribute("listP", pa);
      
        ServletUtils.showForm(request, response, suc?"Success! You cancel your appointment on ": "234234Error! please try again"+suc, "managerPatient.jsp");
        
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
