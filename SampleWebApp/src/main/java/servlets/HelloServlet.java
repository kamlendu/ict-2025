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
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author kamlendu
 */
@WebServlet(name = "HelloServlet", urlPatterns = {"/HelloServlet"})
public class HelloServlet extends HttpServlet {

    String destination = "target";
    
    @Override
    public void init() throws ServletException {
        super.init(); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    
        System.out.println(" I am Initialized");
    
    }

    @Override
    public void destroy() {
        super.destroy(); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
      System.out.println(" I am being destroyed... Good bye");
    
    }
    
    
    
    
    

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
            out.println("<title>Servlet HelloServlet</title>");
            out.println("</head>");
            out.println("<body>");
            HttpSession session = request.getSession(true);
           
//             out.println("<h3>"+ request.getQueryString()+"</h3>"); 
//             out.println("<h3>"+ request.getMethod()+"</h3>"); 
//            out.println("<h3>"+ request.getRemoteUser()+"</h3>"); 
//            out.println("<h3>"+ request.getRemoteAddr()+"</h3>"); 
//            
//            if(destination.equals("target"))
//                response.sendRedirect("http://localhost:8080/SampleWebApp/Target");
//            
//            response.
            
//            String names[] = request.getParameterValues("names");
//            
//            for(int i=0; i< names.length;i++)
//               out.println("<h3>"+ names[i]+"</h3>"); 
//            
//            
            
            
            
//            String user = request.getParameter("uname");
//            
//            Enumeration hnames = request.getHeaderNames();
//            
//            while(hnames.hasMoreElements())
//            {
//                String hname = hnames.nextElement().toString();
//                
//                out.println("<h3>"+ request.getHeader(hname));
//            }
//            
            
//        ServletContext ctx = request.getServletContext();
//        
//        ctx.setAttribute("company", "ABC India Ltd.");


            
          out.println("<h1>Hello World of Servlets </h1>");
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
         System.out.println(" I am in Get method");
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
            throws ServletException, IOException { System.out.println(" I am in Post method");
        
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
