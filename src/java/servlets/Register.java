package servlets;

import database.Accounts;
import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mainpackage.Patient;

@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String patientCCCD = request.getParameter("patientCCCD");
                String patientName = request.getParameter("patientName");
		String patientPhone = request.getParameter("patientPhone");
		String patientAddress = request.getParameter("patientAddress");
                String patientGender = request.getParameter("patientGender");
                String patientDOB = request.getParameter("patientDOB");
		
         
		if (ServletUtils.isEmpty(username) || ServletUtils.isEmpty(password) || ServletUtils.isEmpty(patientCCCD) || ServletUtils.isEmpty(patientName) || ServletUtils.isEmpty(patientPhone) || ServletUtils.isEmpty(patientAddress)|| ServletUtils.isEmpty(patientGender)|| ServletUtils.isEmpty(patientDOB)) {
			ServletUtils.showForm(request, response, "One or more fields are empty", "error.jsp");
			
		}
		
		Patient pat = new Patient(username,password,patientCCCD,patientName,patientPhone,patientAddress,patientGender,patientDOB);
		
		if(Accounts.register(pat)){
                       HttpSession session = request.getSession();
		session.setAttribute("user-info", pat);
		session.setMaxInactiveInterval(60*60);//one hour
			ServletUtils.showForm(request, response, "Success! Your new appointment scheduled on " , "patient/index.jsp");
		}else{
			ServletUtils.showForm(request, response, " please try again", "Login.jsp");
		}
	
                
		
		
		
	}

}
