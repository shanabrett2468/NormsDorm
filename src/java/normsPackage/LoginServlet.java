package normsPackage;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Random;
import java.sql.*;
import java.util.regex.*;

@WebServlet(name="LoginServlet", urlPatterns={"/LoginServlet"})
public class LoginServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        User theUser;
        
        if (request.getParameter("action").equals("signup")){
            
            Random rand = new Random();
            int intCode = rand.nextInt(999999);
            String code = Integer.toString(intCode);
            boolean verify = false;
            
            //if (Pattern.matches("^[_a-z0-9-]+(\\.[_a-z0-9-]+)*@uncc\\.edu$",request.getParameter("email"))) {
            if (request.getParameter("email").equals(request.getParameter("email"))) {
                theUser = new User(request.getParameter("username"),request.getParameter("fullname"),request.getParameter("email"),
                    request.getParameter("password"), code, verify);
                DBUtil.addUser(theUser);
                email.sendEmail(theUser.getEmail(), theUser.getCode());
                request.getRequestDispatcher("/index.jsp").forward(request,response);
            } else {
                response.setContentType("text/html;charset=UTF-8");
                try (PrintWriter out = response.getWriter()) {
                out.println("<!DOCTYPE html>");
                out.println("<html>");
                out.println("<body>");
                out.println("<h1>You must use a UNCC Email you dumbass.</h1>");
                out.println("</body>");
                out.println("</html>");
                }
            }
        }
        
        if (request.getParameter("action").equals("login")){
            theUser = (User) DBUtil.tryLogin(request.getParameter("email"),request.getParameter("password"));
            session.setAttribute("theUser", theUser);
            request.getRequestDispatcher("/homepage.jsp").forward(request,response);
        }
        
        if (request.getParameter("action").equals("logout")) {
            session.removeAttribute("theUser");
            request.getRequestDispatcher("/index.jsp").forward(request,response);
        }
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
