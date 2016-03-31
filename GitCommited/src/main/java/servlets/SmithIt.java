/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import daos.GearDao;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author justin
 */
@WebServlet(name = "SmithIt", urlPatterns = {"/SmithIt"})
public class SmithIt extends HttpServlet {

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
        
        // first off, get the numbers
        int fire = Integer.parseInt(request.getParameter("fire"));
        int cold = Integer.parseInt(request.getParameter("cold"));
        int lightning = Integer.parseInt(request.getParameter("lightning"));
        int quality = Integer.parseInt(request.getParameter("quality"));
        
        //int id = 2;
        
        int id = (Integer) request.getSession().getAttribute("user_id");
        
        String type = request.getParameter("type");
        String name = request.getParameter("name");
        
        long value = Math.round(Math.pow(fire + cold + lightning + quality, 2) + 100);
        
        System.out.println("Type: " + type);
        System.out.println("Fire: " + fire);
        System.out.println("Cold: " + cold);
        System.out.println("Lightning: " + lightning);
        System.out.println("Quality: " + quality);
        System.out.println("Cost: " + Math.round(value * 1.5));
        
        GearDao dao = new GearDao();
        
        dao.createGear(type, name, fire, cold, lightning, quality, value, id);
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
