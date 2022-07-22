package mainpackage;

import database.Accounts;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Doctor extends User {
    private String spec;
    private String doctorName;
    private String doctorPhone ;
    private String doctorEmail;
    private String doctorAddress;
    private Date doctorBirthday ;
    private String doctorGender;
    private String intro;
    private String photo;
	
    public Doctor() {}

    public Doctor(String username,String password, String spec) {
        super(username, password);
        this.spec = spec;
       
    }
        
    public Doctor(String username,String password, String spec, String doctorName, String doctorPhone, String doctorEmail, String doctorAddress, Date doctorBirthday, String doctorGender, String intro, String photo) {
        super(username, password);
        this.spec = spec;
        this.doctorName = doctorName;
        this.doctorPhone = doctorPhone;
        this.doctorEmail = doctorEmail;
        this.doctorAddress = doctorAddress;
        this.doctorBirthday = doctorBirthday;
        this.doctorGender = doctorGender;
        this.intro = intro;
        this.photo = photo;
    }
    
     public Doctor(String username,String password, String spec, String doctorName, String doctorPhone, String doctorEmail, String doctorAddress, String doctorBirthday, String doctorGender, String intro, String photo) {
        super(username, password);
        this.spec = spec;
        this.doctorName = doctorName;
        this.doctorPhone = doctorPhone;
        this.doctorEmail = doctorEmail;
        this.doctorAddress = doctorAddress;
        setDoctorBirthday(doctorBirthday);
        this.doctorGender = doctorGender;
        this.intro = intro;
        this.photo = photo;
    }

    public String getSpec() {
        return spec;
    }

    public void setSpec(String spec) {
        this.spec = spec;
    }

    public String getDoctorName() {
        return doctorName;
    }

    public void setDoctorName(String doctorName) {
        this.doctorName = doctorName;
    }

    public String getDoctorPhone() {
        return doctorPhone;
    }

    public void setDoctorPhone(String doctorPhone) {
        this.doctorPhone = doctorPhone;
    }

    public String getDoctorEmail() {
        return doctorEmail;
    }

    public void setDoctorEmail(String doctorEmail) {
        this.doctorEmail = doctorEmail;
    }

    public String getDoctorAddress() {
        return doctorAddress;
    }

    public void setDoctorAddress(String doctorAddress) {
        this.doctorAddress = doctorAddress;
    }

    public Date getDoctorBirthday() {
        return doctorBirthday;
    }

    public void setDoctorBirthday(String doctorBirthday) {
         SimpleDateFormat sd= new SimpleDateFormat("yyyy-MM-dd");  
        try {
            this.doctorBirthday = new Date(sd.parse(doctorBirthday).getTime());
        } catch (ParseException ex) {
            Logger.getLogger(Patient.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public String getDoctorGender() {
        return doctorGender;
    }

    public void setDoctorGender(String doctorGender) {
        this.doctorGender = doctorGender;
    }

    public String getIntro() {
        return intro;
    }

    public void setIntro(String intro) {
        this.intro = intro;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public ArrayList<Doctor> getAll(){
        return Accounts.getDoctorSpec(getSpec());
    }
    @Override
    public String toString() {
        return "Doctor{" + "spec=" + spec + ", doctorName=" + doctorName + ", doctorPhone=" + doctorPhone + ", doctorEmail=" + doctorEmail + ", doctorAddress=" + doctorAddress + ", doctorBirthday=" + doctorBirthday + ", doctorGender=" + doctorGender + ", intro=" + intro + ", photo=" + photo + '}';
    }
  	      
}
