package servlets;

import java.io.IOException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import database.Scheduler;
import mainpackage.Availability;
import mainpackage.Doctor;
import org.apache.el.parser.ParseException;

@WebServlet("/patient/DoctorSearch")
public class DoctorSearch extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String spec = request.getParameter("spec");
             String name = request.getParameter("name");
		if(ServletUtils.isEmpty(spec)) {
			ServletUtils.showForm(request, response, "Empty doctor specialty", "showDoctor.jsp");
			return;
		}else if(!ServletUtils.isValidSpec(spec)) {
			ServletUtils.showForm(request, response, "Invalid doctor specialty", "showDoctor.jsp");
			return;
		}

		String startDate = request.getParameter("sDate");
		String currentDate  = new SimpleDateFormat("yyyy-MM-dd").format(new Timestamp(System.currentTimeMillis()));
		if(ServletUtils.isEmpty(startDate)){
			startDate = currentDate;
		}

		startDate+=" 00:00:00";
		currentDate+=" 00:00:00";

		Timestamp st,et;
		long millisPerDay = TimeUnit.DAYS.toMillis(1);
		try{
			st = Timestamp.valueOf(startDate);
			if(st.before(Timestamp.valueOf(currentDate))) st = Timestamp.valueOf(currentDate);
			et = new Timestamp(st.getTime()+ 7 * millisPerDay);
                        SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); //gia tin vasi
		SimpleDateFormat h = new SimpleDateFormat("EEE dd MMM yyyy"); //gia to table tou jsp
                
                List<Availability> doctors ;
		doctors =  Scheduler.getAvailableDoctors(spec.toLowerCase(), f.format(st), f.format(et));
//                Availability ava  ;
//                ava = Availability.getAvailability(doctors,name);
		List<String> dateHeaders = new ArrayList<>();
		for(int i=0;i<7;i++){dateHeaders.add(h.format(new Timestamp(st.getTime()+i*millisPerDay)));}

		String next = f.format(new Timestamp(st.getTime()+7*millisPerDay)).split(" ")[0];
		String prev = f.format(new Timestamp(st.getTime()-7*millisPerDay)).split(" ")[0];

		request.setAttribute("doctors", doctors);
		request.setAttribute("dateHeaders", dateHeaders);
		request.setAttribute("next", next);
		request.setAttribute("prev", prev);  
                request.setAttribute("name", name);
                request.setAttribute("spec", spec);
		request.getRequestDispatcher("showDoctor.jsp").forward(request, response);
		}catch (IllegalArgumentException ie){
			ServletUtils.showForm(request, response, "Bad date format! must be yyyy-mm-dd", "showDoctor.jsp");
			return;
		} catch (NullPointerException ie){
			ServletUtils.showForm(request, response, "Bad date format! must be yyyy-mm-dd", "showDoctor.jsp");
			return;
		} 

	}

}
