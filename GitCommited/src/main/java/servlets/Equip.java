/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import daos.GearDao;
import daos.userDao;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import objects.Gear;

/**
 *
 * @author jason
 */
@WebServlet(name = "Equip", urlPatterns = {"/Equip"})
public class Equip extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        
        String id = request.getParameter("gear");
        
        userDao uDao = new userDao();
        GearDao gDao = new GearDao();
        
        //int userId = (Integer)request.getSession().getAttribute("user_id");
        int userId = 2; // TODO remove this
        //int equippedGearId = uDao.getEquitppedGearId(userId);
        int gearId = Integer.parseInt(id);
        
        //figure out what type of gear is being equipped
        Gear item = gDao.getGear(gearId);
        String itemType = item.getGear_type();
        
        if(null != itemType)switch (itemType) {
            case "helm":
                gDao.setHelm(gearId, userId);
                break;
            case "chest":
                gDao.setChest(gearId, userId);
                break;
            case "sword":
                gDao.setLHand(gearId, userId);
                break;
            case "shield":
                gDao.setRHand(gearId, userId);
                break;
            default:
                gDao.setFeet(gearId, userId);
                break;
        }
      request.getRequestDispatcher("Inventory").forward(request, response);  
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
