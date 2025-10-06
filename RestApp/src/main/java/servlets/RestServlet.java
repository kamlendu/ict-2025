/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.ws.rs.core.GenericType;
import jakarta.ws.rs.core.Response;
import java.util.ArrayList;
import java.util.Collection;
import restclient.MyRestClient;

/**
 *
 * @author kamlendu
 */
@WebServlet(name = "RestServlet", urlPatterns = {"/RestServlet"})
public class RestServlet extends HttpServlet {
    
    MyRestClient cl;
    Response res;
    Collection<String> lcases;
    Collection<String> ucases;
    GenericType<Collection<String>> gcases;

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet RestServlet</title>");
            out.println("</head>");
            out.println("<body>");
            
            cl = new MyRestClient();
            lcases = new ArrayList<>();
             ucases = new ArrayList<>();
             gcases = new GenericType<Collection<String>>(){};
         
             out.println("<h2>"+ cl.sayHello()+"</h2>");
             out.println("<h2>"+ cl.saySpecialHello("Prakash")+"</h2>");
             
             lcases.add("usha");
             lcases.add("param");
             lcases.add("sarita");
             
             res = cl.ucases(lcases, Response.class);
             
             ucases = res.readEntity(gcases);
             
             for(String s : ucases)
             {
             
              out.println("<h2>"+ s+"</h2>");
             }
             
             
             
             
            
            out.println("<h1>Servlet RestServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
