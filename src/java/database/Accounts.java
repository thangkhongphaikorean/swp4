package database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import javax.sql.DataSource;

import mainpackage.Admin;
import mainpackage.Appointment;
import mainpackage.Count;
import mainpackage.Doctor;
import mainpackage.Patient;
import mainpackage.User;

@WebListener
public class Accounts implements ServletContextListener{
	private static PreparedStatement stm1, stm2, stm3, stm4, stm5, stm6, stm7,stm8, stm9,stm10,stm11,
                stm12,stm13,stm14,stm15,stm16,stm17, stm18 ,stm19,stm20;
	private static Connection con;
	
	@Override
	public void contextInitialized(ServletContextEvent sce) {
		try {
			InitialContext context = new InitialContext();
			DataSource src = (DataSource) context.lookup("java:comp/env/jdbc/postgres");
			con = src.getConnection();
			//statements
                        
                    
			stm1 = con.prepareStatement("SELECT * FROM patient WHERE username = ? AND password = ?");
			stm2 = con.prepareStatement("INSERT INTO PATIENT(username,password,patientcccd,patientname,patientphone,patientaddress,patientgender,patientdob) VALUES( ?, ?, ?, ?, ?, ?, ?, ?)");
			stm3 = con.prepareStatement("SELECT * FROM doctor WHERE username = ? AND password = ?");
			stm4 = con.prepareStatement("SELECT * FROM admin WHERE username = ? AND password = ?");
			stm5 = con.prepareStatement("INSERT INTO doctor(username,password,name,surname,spec) VALUES( ?, ?, ?, ?, ?::specialty)");
			stm6 = con.prepareStatement("DELETE FROM doctor WHERE username = ?");
			stm7 = con.prepareStatement("DELETE FROM patient WHERE username = ?");                   
                           stm8 = con.prepareStatement("SELECT * FROM doctor");
            stm10 = con.prepareStatement("SELECT * FROM doctor WHERE username = ?");
            stm11 = con.prepareStatement("SELECT * FROM admin WHERE username = ?");
//            stm12 = con.prepareStatement("UPDATE doctor set password = ?, spec = ?, doctorName = ?, "
//                    + "doctorPhone = ?, doctorEmail = ?, doctorAddress = ?, doctorBirthday = ?, doctorGender = ?, intro = ?, photo = ? "
//                    + "WHERE username = ?");
            stm14 = con.prepareStatement("SELECT * FROM patient");
            
            stm18 = con.prepareStatement("SELECT * FROM patient WHERE username = ?");
		} catch (NamingException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		try {
			stm1.close();stm2.close();stm3.close();stm4.close();stm5.close();stm6.close();stm7.close();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
        
        public static ArrayList<Doctor> getDoctorSpec(String spec1) {
            ArrayList<Doctor> specs = new ArrayList<>();
		try {
			
                        String stm ="SELECT * FROM doctor WHERE spec =" + " \'" + spec1 + "\'";
                        stm8 = con.prepareStatement(stm);
			
			ResultSet rs = stm8.executeQuery();
			while (rs.next()) {
				
				Doctor dt = new Doctor(rs.getString(1),
                                                      rs.getString(2),
                                                      rs.getString(3),
                                                      rs.getString(4),
                                                      rs.getString(5),
                                                      rs.getString(6),
                                                      rs.getString(7),
                                                      rs.getDate(8),
                                                      rs.getString(9),
                                                      rs.getString(10),
                                                      rs.getString(11));
				specs.add(dt);
                                
                                                                                                         
			}
                        return specs;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
        
	public static Patient getPatient(String username, String password) {
		try {
			stm1.setString(1, username);
			stm1.setString(2, password);
			ResultSet rs = stm1.executeQuery();
			if (rs.next()) {
				
				return new Patient(rs.getString(1),
                                        rs.getString(2),
                                       rs.getString(3),
                                        rs.getString(4),
                                       rs.getString(5),
                                     rs.getString(6),
                                        rs.getString(7),
                                     rs.getString(8));
                                                
                                                            
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public static Doctor getDoctor(String username, String password) {
                
		try {
			stm3.setString(1, username);
			stm3.setString(2, password);
			ResultSet rs = stm3.executeQuery();
                        if (rs.next()) {
				
				return new Doctor(rs.getString(1),
                                                      rs.getString(2),
                                                      rs.getString(3),
                                                      rs.getString(4),
                                                      rs.getString(5),
                                                      rs.getString(6),
                                                      rs.getString(7),
                                                      rs.getDate(8),
                                                      rs.getString(9),
                                                      rs.getString(10),
                                                      rs.getString(11));
				
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public static Admin getAdmin(String username, String password) {
		try {
			stm4.setString(1, username);
			stm4.setString(2, password);
			ResultSet rs = stm4.executeQuery();
			if (rs.next()) {
				
				Admin a = new Admin(rs.getString(1),
                                                    rs.getString(2),
                                                    rs.getString(3),
                                                    rs.getString(4),
                                                    rs.getString(5),
                                                    rs.getDate(6),
                                                    rs.getString(7));
				
				return a;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public static boolean register(Patient pat) {
		try {
			stm2.setString(1, pat.getUsername());
			stm2.setString(2, pat.getPassword());
			stm2.setString(3, pat.getPatientCCCD());
			stm2.setString(4, pat.getPatientName());
			stm2.setString(5, pat.getPatientPhone());
                        stm2.setString(6, pat.getPatientAddress());
                        stm2.setString(7, pat.getPatientGender());
                        stm2.setDate(8, pat.getPatientDOB());
			return stm2.executeUpdate() != 0;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}
	
	public static boolean register(Doctor doc) {
		try {
			stm5.setString(1, doc.getUsername());
			stm5.setString(2, doc.getPassword());
			stm5.setString(3, doc.getSpec());
			stm5.setString(4, doc.getDoctorName());
			stm5.setString(5, doc.getDoctorPhone());
                        stm5.setString(1, doc.getDoctorEmail());
			stm5.setString(2, doc.getDoctorAddress());
			stm5.setDate(3, doc.getDoctorBirthday());
			stm5.setString(4, doc.getDoctorGender());
			stm5.setString(5, doc.getIntro());
                        stm5.setString(5, doc.getPhoto());
			return stm5.executeUpdate() != 0;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}
	
	 public static boolean deleteDoc(String username){
		try{
			stm6.setString(1, username);
			return stm6.executeUpdate() == 1;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}
	 
	 public static boolean deletePatient(String username) {
		 try{
			 stm7.setString(1, username);
			 return stm7.executeUpdate() == 1;
		 } catch (SQLException e) {
			 e.printStackTrace();
			 return false;
		 }
	 }
         
         
           public List<Doctor> listSearchDoctor(String search) {
        List<Doctor> doc = new ArrayList<>();
        try {
            stm9 = con.prepareStatement("select * from doctor where doctorname ilike ?");
            stm9.setString(1, "%" + search + "%");
            ResultSet rs = stm9.executeQuery();

            while (rs.next()) {
                Doctor d = new Doctor(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getDate(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11));
                doc.add(d);
            }
            return doc;
        } catch (Exception e) {
        }
        return null;
    }

    public ArrayList<Doctor> getAllDoctor() {
        try {

            ArrayList<Doctor> doc = new ArrayList<>();
            ResultSet rs = stm8.executeQuery();
            while (rs.next()) {
                Doctor d = new Doctor(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getDate(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11));
                doc.add(d);
            }
            return doc;
        } catch (Exception e) {
        }
        return null;
    }

    public static Doctor getInfoDoctor(String username) {
        try {
            stm10.setString(1, username);

            ResultSet rs = stm10.executeQuery();
            if (rs.next()) {

                Doctor d = new Doctor(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getDate(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11));

                return d;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
    
      public static Patient getInfoPatient(String username) {
        try {
            stm18.setString(1, username);

            ResultSet rs = stm18.executeQuery();
            if (rs.next()) {

                Patient p = new Patient(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getDate(8))
                       ;

                return p;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public static Admin getInfoAdmin(String username) {
        try {
            stm11.setString(1, username);
            ResultSet rs = stm11.executeQuery();
            if (rs.next()) {

                Admin a = new Admin(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getDate(6),
                        rs.getString(7));

                return a;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public static boolean updateDoc(String username,String password, String spec, String doctorName, String doctorPhone, String doctorEmail, String doctorAddress, 
                                    String doctorBirthday, String doctorGender, String intro, String photo) throws SQLException {
        
           String at  =  "UPDATE doctor set password = "+ "\'" + password+ "\'" + ", spec ="+ "\'" + spec+ "\'" + ", doctorName = " + "\'" + doctorName + "\'" 
                     + ",doctorPhone = " + "\'" + doctorPhone + "\'" + ", doctorEmail = " + "\'" + doctorEmail  
                   + "\'" + ", doctorAddress = " + "\'" +doctorAddress+ "\'" + ", doctorBirthday = " + "\'" + doctorBirthday + "\'" + ", doctorGender = " + "\'" + doctorGender + "\'" + ", intro = " + "\'" + intro + "\'" +", photo = "+ "\'" +photo + "\'"
                     + "WHERE username = " + "\'" + username + "\'" +";";
           stm12=con.prepareStatement(at);

            return stm12.executeUpdate() > 0;
       
    }
    
     public static boolean updatePat(String username,String password, String cccd, String patientName, String patientPhone, String patientAddress, 
                                    String patientGender, String patientDOB) throws SQLException {
        
           String at1  =  "UPDATE patient set password = "+ "\'" + password+ "\'" + ", patientCCCD ="+ "\'" + cccd+ "\'" + ", patientName = " + "\'" + patientName + "\'" 
                     + ",patientPhone = " + "\'" + patientPhone + "\'"  
                 + ", patientAddress = " + "\'" + patientAddress + "\'" + ", patientGender = " + "\'" + patientGender + "\'" + ",patientDOB = " + "\'" + patientDOB + "\'"
                     + "WHERE username = " + "\'" + username + "\'" +";";
           stm19=con.prepareStatement(at1);

            return stm19.executeUpdate() > 0;
       
    }
     
     public static boolean updateAdmin(String username,String password, String adminName, String adminPhone, String adminEmail, 
                                    String adminDOB, String adminAddress) throws SQLException {
        
           String at2  =  "UPDATE admin set password = "+ "\'" + password+ "\'" + ", adminName ="+ "\'" + adminName+ "\'" 
                     + ",adminPhone = " + "\'" + adminPhone + "\'"  
                 + ", adminEmail = " + "\'" + adminEmail + "\'" + ", adminDOB = " + "\'" + adminDOB + "\'" + ",adminAddress = " + "\'" + adminAddress + "\'"
                     + "WHERE username = " + "\'" + username + "\'" +";";
           stm20=con.prepareStatement(at2);

            return stm20.executeUpdate() > 0;
       
    }
    public ArrayList<Patient> listSearchPatient(String search) {
        ArrayList <Patient> lpa = new ArrayList<>();
        try {
            stm13 = con.prepareStatement("select * from patient where patientname ilike ?");
            stm13.setString(1, "%" + search + "%");
            ResultSet rs = stm13.executeQuery();

            while (rs.next()) {
                Patient pa = new Patient(rs.getString(1),
                rs.getString(2),
                rs.getString(3),
                rs.getString(4),
                rs.getString(5),
                rs.getString(6),
                rs.getString(7),
                rs.getDate(8));
                lpa.add(pa);
            }
            return lpa;
        } catch (Exception e) {
        }
        return null;
    }
    public ArrayList<Patient> getAllPatient() {
        
        try {
            ArrayList<Patient> lpa = new ArrayList<>();
            ResultSet rs = stm14.executeQuery();

            while (rs.next()) {
                Patient pa = new Patient(rs.getString(1),
                rs.getString(2),
                rs.getString(3),
                rs.getString(4),
                rs.getString(5),
                rs.getString(6),
                rs.getString(7),
                rs.getDate(8));
                lpa.add(pa);
            }
            return lpa;
        } catch (Exception e) {
        }
        return null;
    }
         
       public Count countDoc() {
       Count c = new Count();
        try {
            String query = "SELECT COUNT(*) \n" +
                            "FROM doctor;";
            stm15 = con.prepareStatement(query);
            ResultSet rs = stm15.executeQuery();
            while(rs.next()) {
                c = new Count(rs.getInt(1));
                
            }
            return c;
        } catch (Exception e) {
        }
        return null;
    }   
       
        public Count countPat() {
       Count c = new Count();
        try {
            String query = "SELECT COUNT(*) \n" +
                            "FROM patient;";
            stm16 = con.prepareStatement(query);
            ResultSet rs = stm16.executeQuery();
            while(rs.next()) {
                c = new Count(rs.getInt(1));
                
            }
            return c;
        } catch (Exception e) {
        }
        return null;
    }   
        
         public Count countAppointment() {
       Count c = new Count();
        try {
            String query = "SELECT COUNT(*) \n" +
                            "FROM appointments;";
            stm17 = con.prepareStatement(query);
            ResultSet rs = stm17.executeQuery();
            while(rs.next()) {
                c = new Count(rs.getInt(1));
                
            }
            return c;
        } catch (Exception e) {
        }
        return null;
    }   

}
