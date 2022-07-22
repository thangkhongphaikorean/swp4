package servlets;

import database.Accounts;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mainpackage.Doctor;

@WebServlet("/admin/RegisterDoctor")
public class RegisterDoctor extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String spec = request.getParameter("spec");
        String doctorName = request.getParameter("doctorName");
        String doctorPhone = request.getParameter("doctorPhone");
        String doctorEmail = request.getParameter("doctorEmail");
        String doctorAddress = request.getParameter("doctorAddress");
        String doctorBirthday = request.getParameter("doctorBirthday");
        String doctorGender = request.getParameter("doctorGender");
        String intro = request.getParameter("intro");
        String photo = request.getParameter("photo");
        
        if (ServletUtils.isEmpty(username) || ServletUtils.isEmpty(password) || ServletUtils.isEmpty(doctorName)) {
            ServletUtils.showForm(request, response, "One or more fields are empty", "managerDoctor.jsp");
//            ServletUtils.showForm1(request, response, "One or more fields are empty", "listdoctor");
            return;
        } else if (!ServletUtils.isValidSpec(spec)) {
            ServletUtils.showForm(request, response, "Invalid doctor spec", "managerDoctor.jsp");
//                ServletUtils.showForm1(request, response, "Invalid doctor spec", "listdoctor");
            return;
        }

        Doctor doc = new Doctor();
        doc.setUsername(username);
        doc.setPassword(password);
        doc.setSpec(spec);
        doc.setDoctorName(doctorName);
        doc.setDoctorPhone(doctorPhone);
        doc.setDoctorEmail(doctorEmail);
        doc.setDoctorAddress(doctorAddress);
        doc.setDoctorBirthday(doctorBirthday);
        doc.setDoctorGender(doctorGender);
        doc.setIntro(intro);
        doc.setPhoto(photo);
        
        if (!database.Accounts.register(doc)) {
            ServletUtils.showForm(request, response, "Username already in use", "managerDoctor.jsp");
//            ServletUtils.showForm1(request, response, "Username already in use", "listdoctor");
            return;
        } else {
            response.sendRedirect("listdoctor");
            return;
        }

    }

}
