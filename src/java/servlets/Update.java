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
import java.text.ParseException;
import java.text.SimpleDateFormat;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mainpackage.Admin;
import mainpackage.Doctor;
//import java.sql.Date;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author DELL
 */
@WebServlet("/admin/Update")
public class Update extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
    }
    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        String username = request.getParameter("username");
//        Accounts ac = new Accounts();
//        Doctor doc = ac.getInfoDoctor(username);
//        request.setAttribute("doc", doc);
//        request.getRequestDispatcher("info.jsp").forward(request, response);
//    }



    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String spec = request.getParameter("spec");
        String doctorName = request.getParameter("doctorName");
        String doctorPhone = request.getParameter("doctorPhone");
        String doctorEmail = request.getParameter("doctorEmail");
        String doctorAddress = request.getParameter("doctorAddress");
        String doctorBirthday =  request.getParameter("doctorBirthday");
        String doctorGender = request.getParameter("doctorGender");
        String intro = request.getParameter("intro");
        String photo = request.getParameter("photo"); 
        boolean suc = false;
       
        try {
            suc= Accounts.updateDoc(username, password, spec, doctorName, doctorPhone,
                    doctorEmail, doctorAddress, doctorBirthday, doctorGender, intro, photo);
        } catch (SQLException ex) {
            Logger.getLogger(Update.class.getName()).log(Level.SEVERE, null, ex);
        }
                
        Accounts ac = new Accounts();
        List<Doctor> doc = ac.getAllDoctor();
        request.setAttribute("listS", doc);
      
        ServletUtils.showForm(request, response, suc?"Success! You cancel your appointment on ": "234234Error! please try again"+suc, "managerDoctor.jsp");
        
    }
  
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
