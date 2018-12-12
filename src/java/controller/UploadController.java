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
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Uploads;
import model.User;

/**
 *
 * @author K00214105
 */
@WebServlet(name = "UploadController", urlPatterns = {"/UploadController"})
public class UploadController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       HttpSession session = request.getSession();

        User user = (User) session.getAttribute("user");
        if (user == null) {
            user = new User();
            session.setAttribute("user", user);
        }
        String menu = "home";
        menu = request.getParameter("menu");
        if (menu == null) {
            menu = "home";
        }
        System.out.println("upload controller");
        switch (menu) {

            case "home":

                Uploads uploads = new Uploads();
                ArrayList<Uploads> alluploads = new ArrayList<>();
                alluploads = uploads.getAllUploads();
                session.setAttribute("alluploadss", alluploads);
                gotoPage("/Homepage.jsp", request, response);
                break;
                
            case "Add Upload":
                System.out.println("In Switch add upload");
                gotoPage("/addProject.jsp", request, response);
                break;
                
            case "Save Upload":
                System.out.println("switch save upload");
                ProcessSave(request, user, session);
                gotoPage("/userHome.jsp", request, response);
                break;
        }
    }

    private void gotoPage(String url,
            HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher
                = getServletContext().getRequestDispatcher(url);
        dispatcher.forward(request, response);
    }
//User userid,
    private void ProcessSave(HttpServletRequest request, User userid, HttpSession session) {
        String image = request.getParameter("image");
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        
        User user = (User) session.getAttribute("user");
        Uploads uploads = new Uploads(image, title, description, user.getUserid());
        System.out.println("process save id: "+user.getUserid());
        uploads = uploads.saveToDatabase();
        
        session.setAttribute("upload", uploads);
        //System.out.println("userid" + us.getUserid());
    }

    private boolean ProcessUpdate(HttpServletRequest request, User userid, HttpSession session) {
        String image = request.getParameter("image");
        String title = request.getParameter("title");
        String description = request.getParameter("description");

        Uploads uploads = new Uploads(image, title, description);
        uploads = uploads.saveToDatabase();

        session.setAttribute("uploads", uploads);
        return true;
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
