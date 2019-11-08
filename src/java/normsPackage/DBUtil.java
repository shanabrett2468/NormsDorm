package normsPackage;

import java.util.Random;
import java.util.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpSession;

public class DBUtil {
    
    public static boolean addUser(User user) {

        DbConnection dbCon = new DbConnection();
        Connection connection = DbConnection.getConnection();
        PreparedStatement ps;
        
        try {
            ps = connection.prepareStatement("INSERT INTO users VALUES (?,?,?,?,?,?)");
            
            ps.setString(1, user.getUsername());
            ps.setString(2, user.getFullname());
            ps.setString(3, user.getEmail());
            ps.setString(4, user.getPassword());
            ps.setString(5, user.getCode());
            ps.setBoolean(6, user.getVerify());
            ps.executeUpdate();

        } catch (SQLException se) {
            if (((se.getErrorCode() == 30000) && ("23505".equals(se.getSQLState())))) {
                System.out.println("ERROR: Could not insert record into USER; dup primary key: " + user.getUsername());
            } else {
                System.out.println("ERROR: Could not add row to USER table: " + user.getUsername() + " " + se.getCause());
            }
            return false;
        } catch (Exception e) {
            System.out.println("ERROR: Could not add row to USER table: " + user.getUsername());
            return false;
        }
        System.out.println("Added user to USER table: " + user.getUsername());

        return true;
    }
    
    public static User tryLogin(String email, String password) {

        DbConnection dbCon = new DbConnection();
        Connection connection = DbConnection.getConnection();
        PreparedStatement ps;
        User theUser = new User();
        
        try {
            ps = connection.prepareStatement("SELECT * FROM users WHERE email = ? AND password = ?");
            
            ps.setString(1, email);
            ps.setString(2, password);
            
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String username = rs.getString("username");
                String fullname = rs.getString("fullname");
                email = rs.getString("email");
                password = rs.getString("password");
                String code = rs.getString("code");
                boolean verify = rs.getBoolean("verify");
                theUser = new User(username, fullname, email, password, code, verify);
                return theUser;
            }

        } catch (SQLException se) {
            
        } catch (Exception e) {
            
        }
        return theUser;
    }
    
}
