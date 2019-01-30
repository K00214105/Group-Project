/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Entry;
import model.Uploads;
import model.User;

/**
 *
 * @author Daniel
 */
@WebServlet(name = "ShowController", urlPatterns = {"/ShowController"})
public class ShowController extends HttpServlet {

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
        String snid = "";
        int nid;

        User user = (User) session.getAttribute("user");
        if (user == null) {
            user = new User();
            session.setAttribute("user", user);
        }
        
        Uploads upload = (Uploads) session.getAttribute("uploads");
        
        if (upload == null) {
            upload = new Uploads();
            session.setAttribute("uploads", upload);
        }

        response.setContentType("text/html;charset=UTF-8");
        String menu = "home";
        menu = request.getParameter("menu");
        
        if (menu == null) {
            menu = "home";
        }
        
        System.out.println("upload controller");
        User current = new User();
        current = (User) session.getAttribute("user");

        switch (menu) {
            case "home":
                getAllUploads(session);
                gotoPage("/userGallery.jsp", request, response);
                break;

            case "SubmitEntry":               
                int uploadid = (current.getUserid());
                Uploads userUpload = new Uploads();
                ArrayList<Uploads> userUploads = new ArrayList<>();
                userUploads = userUpload.getUserUploads(uploadid);
                session.setAttribute("userUploads", userUploads);
                System.out.println("`size of upload user" + userUploads.size());
                gotoPage("/enterShow.jsp", request, response);
                break;

            case "Enter for show":
                snid = request.getParameter("uploadId");
                nid = Integer.parseInt(snid);
                Uploads uu = new Uploads();
                Uploads uus = uu.getSelectedUpload(nid);
                session.setAttribute("selectedUpload", uus);
                gotoPage("/addShowEntry.jsp", request, response);
                break;

            case "Add Entry":         
                Entry e = new Entry();
                int uploadId = Integer.parseInt(request.getParameter("uploadId"));
                System.out.println(uploadId);
                LocalDate today = LocalDate.now();
                e.saveToDatabase(uploadId, 1, today, Double.parseDouble(request.getParameter("price")));
                Uploads userUpload1 = new Uploads();
                ArrayList<Uploads> userUploads2 = new ArrayList<>();
                userUploads2 = userUpload1.getUserUploads(uploadId);
                session.setAttribute("userUploads", userUploads2);
                gotoPage("/userShowPage.jsp", request, response);
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

    private void getAllUploads(HttpSession session) {
        Uploads uploads = new Uploads();
        ArrayList<Uploads> alluploads = new ArrayList<>();
        alluploads = uploads.getAllUploads();
        session.setAttribute("alluploads", alluploads);
    }

}
