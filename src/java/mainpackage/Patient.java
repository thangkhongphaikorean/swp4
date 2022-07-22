package mainpackage;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Patient extends User {
	private String patientCCCD;
        private String patientName;
        private String patientPhone;
        private String patientAddress;
        private String patientGender;
        private Date patientDOB;
                
	public Patient(){
		super();
	}

    public Patient(String username, String password,String patientCCCD, String patientName, String patientPhone, String patientAddress, String patientGender, Date patientDOB) {
        super(username, password);
        this.patientCCCD = patientCCCD;
        this.patientName = patientName;
        this.patientPhone = patientPhone;
        this.patientAddress = patientAddress;
        this.patientGender = patientGender;
        this.patientDOB = patientDOB;
    }

      public Patient(String username, String password,String patientCCCD, String patientName, String patientPhone, String patientAddress, String patientGender, String patientDOB) {
        super(username, password);
        this.patientCCCD = patientCCCD;
        this.patientName = patientName;
        this.patientPhone = patientPhone;
        this.patientAddress = patientAddress;
        this.patientGender = patientGender;
        setPatientDOB(patientDOB) ;
    }
    
    public String getPatientCCCD() {
        return patientCCCD;
    }

    public void setPatientCCCD(String patientCCCD) {
        this.patientCCCD = patientCCCD;
    }

    public String getPatientName() {
        return patientName;
    }

    public void setPatientName(String patientName) {
        this.patientName = patientName;
    }

    public String getPatientPhone() {
        return patientPhone;
    }

    public void setPatientPhone(String patientPhone) {
        this.patientPhone = patientPhone;
    }

    public String getPatientAddress() {
        return patientAddress;
    }

    public void setPatientAddress(String patientAddress) {
        this.patientAddress = patientAddress;
    }

    public String getPatientGender() {
        return patientGender;
    }

    public void setPatientGender(String patientGender) {
        this.patientGender = patientGender;
    }

    public Date getPatientDOB() {
        return patientDOB;
    }

  
    public void setPatientDOB(String patientDOB) {
         SimpleDateFormat sd= new SimpleDateFormat("yyyy-MM-dd");  
        try {
            this.patientDOB = new Date(sd.parse(patientDOB).getTime());
        } catch (ParseException ex) {
            Logger.getLogger(Patient.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String toString() {
        return  patientName ;
    }

    
}
