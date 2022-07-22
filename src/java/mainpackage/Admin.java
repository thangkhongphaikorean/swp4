package mainpackage;

import java.sql.Date;

public class Admin extends User {
        private String adminName;
        private String adminPhone;
        private String adminEmail;
        private Date adminDOB;
        private String adminAddress;
 
        public Admin(){ super();}
    public Admin(String username, String password, String adminName, String adminPhone, String adminEmail, Date adminDOB, String adminAddress) {
        super(username, password);
        this.adminName = adminName;
        this.adminPhone = adminPhone;
        this.adminEmail = adminEmail;
        this.adminDOB = adminDOB;
        this.adminAddress = adminAddress;
    }

 
    public String getAdminName() {
        return adminName;
    }

    public void setAdminName(String adminName) {
        this.adminName = adminName;
    }

    public String getAdminPhone() {
        return adminPhone;
    }

    public void setAdminPhone(String adminPhone) {
        this.adminPhone = adminPhone;
    }

    public String getAdminEmail() {
        return adminEmail;
    }

    public void setAdminEmail(String adminEmail) {
        this.adminEmail = adminEmail;
    }

    public Date getAdminDOB() {
        return adminDOB;
    }

    public void setAdminDOB(Date adminDOB) {
        this.adminDOB = adminDOB;
    }

    public String getAdminAddress() {
        return adminAddress;
    }

    public void setAdminAddress(String adminAddress) {
        this.adminAddress = adminAddress;
    }

    @Override
    public String toString() {
        return "Admin{" + "adminName=" + adminName + ", adminPhone=" + adminPhone + ", adminEmail=" + adminEmail + ", adminDOB=" + adminDOB + ", adminAddress=" + adminAddress + '}';
    }
        
        
	
}
