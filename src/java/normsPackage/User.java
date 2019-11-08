package normsPackage;

import java.io.Serializable;


public class User implements Serializable{
    private String username;
    private String fullname;
    private String email;
    private String password;
    private String code;
    private boolean verify;
    
    public User() {
        username = "";
        fullname = "";
        email = "";
        password = "";
        code = "";
        verify = false;
    }
    
    public User(String username, String fullname, String email, String password, String code, boolean verify) {
        this.username = username;
        this.fullname = fullname;
        this.email =  email;
        this.password = password;
        this.code = code;
        this.verify = verify;
    }
    
    public String getUsername() {
        return username;
    }
    
    public void setUsername(String username) {
        this.username = username;
    }
    
    public String getFullname() {
        return fullname;
    }
    
    public void setFullame(String fullname) {
        this.fullname = fullname;
    }
    
    public String getEmail() {
        return email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }
    
    public String getPassword() {
        return password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }
    
    public String getCode() {
        return code;
    }
    
    public void setCode(String code) {
        this.code = code;
    }
    
    public boolean getVerify() {
        return verify;
    }
    
    public void setVerify(boolean verify) {
        this.verify = verify;
    }
}
    
