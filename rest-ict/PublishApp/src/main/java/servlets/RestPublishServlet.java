/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import client.PublishClient;
import entity.Address;
import entity.Customer;
import entity.Subscription;
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

/**
 *
 * @author kamlendu
 */
@WebServlet(name = "RestPublishServlet", urlPatterns = {"/RestPublishServlet"})
public class RestPublishServlet extends HttpServlet {
    
    PublishClient pbl;
    Response rs;
    Collection<Customer> customers;
    Collection<Address> addresses;
    Collection<Subscription> subs;
    GenericType<Collection<Customer>> gcusts;
    GenericType<Collection<Address>> gaddresses;
    GenericType<Collection<Subscription>> gsubs;
    

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
            out.println("<title>Servlet RestPublishServlet</title>");
            out.println("</head>");
            out.println("<body><h3>");
            
            pbl = new PublishClient();
            customers = new ArrayList<>();
            addresses = new ArrayList<>();
            subs = new ArrayList<>();
            
            gcusts = new GenericType<Collection<Customer>>(){};
              gaddresses = new GenericType<Collection<Address>>(){};
              gsubs = new GenericType<Collection<Subscription>>(){};
            
          //  pbl.addCustomer("Rakesh","Shukla");
           //pbl.addAddressToCustomer("L-432", "Vadodara", "Gujarat", "382134", "13");
            // pbl.addAddressToCustomer("M-65", "Indore", "MP", "395006","13");
         
          
          Collection<Integer> ids = new ArrayList<>();
          ids.add(1);
          ids.add(3);
          ids.add(5);
          
         // pbl.addSubscriptionsToCustomer(ids, "13");
         // pbl.removeSubscriptionsToCustomer(ids, "13");
         // pbl.removeAddressFromCustomer("8", "13");
          //pbl.removeAddressFromCustomer("9", "13");
          
          //pbl.removeCustomer("13");
          
          
          rs = pbl.getAllCustomers(Response.class);
          
             customers = rs.readEntity(gcusts);
            for(Customer c : customers)
            {
            
                out.println("<br/>id : "+ c.getCustomerID()+ "  Name : "+ c.getFirstName()+ " "+ c.getLastName());
                
             rs = pbl.getAddressesOfCustomer(Response.class, c.getCustomerID().toString());
                addresses = rs.readEntity(gaddresses);
             
                    for(Address a : addresses) {
                     out.println("<br/>id : "+ a.getAddressId()+ "  Street : "+ a.getStreet()+ " City  "+ a.getCity()+ "  State : "+ a.getState());
       
                    }
                
              rs = pbl.getSubscriptionsOfCustomer(Response.class, c.getCustomerID().toString());
              subs = rs.readEntity(gsubs);
              
                        for(Subscription s : subs)
                        {
                             out.println("<br/>id : "+ s.getSubscriptionId()+ "  Title : "+ s.getTitle()+ " Type : " + s.getType());
               
                        }
                        
                        out.println("<hr/>");
            
            
            }
            
            out.println("<h1>Servlet RestPublishServlet at " + request.getContextPath() + "</h1>");
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
