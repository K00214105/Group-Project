/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.User;
import org.jboss.weld.config.ConfigurationKey;

/**
 *
 * @author Elizabeth.Bourke
 */
public class UserController extends HttpServlet {

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
        User user = (User) session.getAttribute("user");
        if (user == null) {
            user = new User();
            session.setAttribute("user", user);
        }

        String menu = request.getParameter("menu");

        switch (menu) {
            case "Login":
                gotoPage("/login.jsp", request, response);
                break;

            case "SignUp":
                System.out.println("in switch sign up");
                gotoPage("/AddUser.jsp", request, response);
                break;

            case "Save":
                System.out.println("switch save");
                ProcessSave(request, session);
                gotoPage("/home.jsp", request, response);
                break;

            case "Logout":
                session.invalidate();
                gotoPage("/Homepage.jsp", request, response);
                break;

            case "Process Login":
                boolean validLogin = ProcessLogin(request, session);
                System.out.println("in process login");

                if (!validLogin) {
                    System.out.println("not valid login");
                    String message = "invalid logon details.. try again";
                    session.setAttribute("message", message);
                    gotoPage("/login.jsp", request, response);
                } else {
                    System.out.println("Logged in");
                    gotoPage("/home.jsp", request, response);
                }
                break;

            case "Update User Details":
                gotoPage("/UpdateUser.jsp", request, response);
                break;

            case "Save User Details":
                boolean worked = ProcessUserUpdate(request, user, session);
                gotoPage("/home.jsp", request, response);
                break;

            case "Delete User Check":
                System.out.println("case delete");
                gotoPage("/deleteProfile.jsp", request, response);
                break;

            case "Delete User":
                System.out.println("case delete confirm");
                ProcessDelete(request, user, session);
                session.invalidate();
                gotoPage("/home.jsp", request, response);
                break;

            case "Get User Details":

                UserDetails(request, user, session);

                gotoPage("/home.jsp", request, response);
                break;

            default:
                gotoPage("/invalid.jsp", request, response);
                break;
        }
    }

    private boolean ProcessUserUpdate(HttpServletRequest request, User user, HttpSession session) {
        String fName = request.getParameter("fName");
        String lName = request.getParameter("lName");
        String email = request.getParameter("email");
        String username = request.getParameter("username");
        String profilePic = request.getParameter("profilePic");
        String password = request.getParameter("password");
        String bio = request.getParameter("bio");

        int UserID = user.getUserid();
        System.out.println("in process update");

        User u = user.updateDateabase(UserID, fName, lName, email, username, profilePic, password, bio);
        // put it back in the sesssion
        System.out.println("after update");
        session.setAttribute("user", u);
        return true;
    }

    private boolean ProcessLogin(HttpServletRequest request, HttpSession session) {
        System.out.println("in process login method");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        System.out.println(username + " " + password);
        User us = new User(username, password);
        us.Login(username, password);
        session.setAttribute("user", us);

        if (us.getUserid() != 0) {
            return true;
        } else {
            return false;
        }
    }

    private void ProcessSave(HttpServletRequest request, HttpSession session) {

        System.out.println("in Process save");
        String fName = request.getParameter("fName");
        String lName = request.getParameter("lName");
        String email = request.getParameter("email");
        String username = request.getParameter("username");
        String profile_pic = request.getParameter("profile_pic");
        String password = request.getParameter("password");
        String bio = request.getParameter("bio");

        User us = new User(fName, lName, email, username, profile_pic, password, bio);
        us.saveToDatabase();

        session.setAttribute("user", us);
        System.out.println("useridss" + us.getUserid());
    }

    private void ProcessDelete(HttpServletRequest request, User user, HttpSession session) {

        int UserID = user.getUserid();
        System.out.println("in  delete");

        User u = new User(user.getUserid());
        u.deleteDateabase(UserID);
        // put it back in the sesssion
        System.out.println("after delete");
        session.setAttribute("user", u);
    }

    private void gotoPage(String url,
            HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher
                = getServletContext().getRequestDispatcher(url);
        dispatcher.forward(request, response);
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

    private void UserDetails(HttpServletRequest request, User user, HttpSession session) {
        int UserID = user.getUserid();
        User u = new User(user.getUserid());
        u.getUserDetails(UserID);
        session.setAttribute("user", u);
    }

}
