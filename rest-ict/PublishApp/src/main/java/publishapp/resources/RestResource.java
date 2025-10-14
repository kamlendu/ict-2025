/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/WebServices/GenericResource.java to edit this template
 */
package publishapp.resources;

import ejb.PublishBeanLocal;
import entity.Address;
import entity.Customer;
import entity.Subscription;
import jakarta.ejb.EJB;
import jakarta.ws.rs.core.Context;
import jakarta.ws.rs.core.UriInfo;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.Produces;
import jakarta.ws.rs.Path;
import jakarta.enterprise.context.RequestScoped;
import jakarta.ws.rs.Consumes;
import jakarta.ws.rs.DELETE;
import jakarta.ws.rs.POST;
import jakarta.ws.rs.PUT;
import jakarta.ws.rs.PathParam;
import java.util.Collection;

/**
 * REST Web Service
 *
 * @author kamlendu
 */
@Path("rest")
@RequestScoped
public class RestResource {
    @EJB PublishBeanLocal pbl;

    @Context
    private UriInfo context;

    /**
     * Creates a new instance of RestResource
     */
    public RestResource() {
    }

    /**
     * Retrieves representation of an instance of publishapp.resources.RestResource
     * @return an instance of java.lang.String
     */
    @GET
    @Produces("application/json")
    public Collection<Customer> getAllCustomers() {
        //TODO return proper representation object
       return pbl.getAllCustomers();
    }

    @POST
    @Path("addcust/{fname}/{lname}")
    public void addCustomer(@PathParam("fname") String firstName, @PathParam("lname") String lastName) {
      pbl.addCustomer(firstName, lastName);

    }

    @PUT
    @Path("updatecust/{cid}/{fname}/{lame}")
    public void updateCustomer(@PathParam("cid") Integer custId,@PathParam("fname") String firstName, @PathParam("lname") String lastName) {
      
    pbl.updateCustomer(custId, firstName, lastName);
    }

    @DELETE
    @Path("remcust/{cid}")
    public void removeCustomer(@PathParam("cid") Integer custId) {
       pbl.removeCustomer(custId);
    
    }

    @GET
    @Path("findcustbyfname/{fname}")
    @Produces("application/json")
    public Collection<Customer> findCustomerByFirstName(@PathParam("fname") String fname) {
       // throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    
       
    return pbl.findCustomerByFirstName(fname);
    }

    
//    public Collection<Customer> findCustomerByLastName(String lname) {
//        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
//    }

    @GET
    @Path("findbycustid/{cid}")
    @Produces("application/json")
    public Customer findCustomerbyId(@PathParam("cid") Integer id) {
       // throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
   
       return pbl.findCustomerbyId(id);
    }

    @GET
    @Path("findaddofcust/{cid}")
    @Produces("application/json")
    public Collection<Address> getAddressesOfCustomer(@PathParam("cid") Integer custId) {
        //throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
   
    
    return pbl.getAddressesOfCustomer(custId);
    
    }

     @GET
    @Path("getcustbyadd/{aid}")
    @Produces("application/json")
    public Customer getCustomerByAddress(@PathParam("aid") Integer aid) {
       // throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    
    return pbl.getCustomerByAddress(aid);
    }

    @POST
    @Path("addaddresstocust/{street}/{city}/{state}/{zip}/{cid}")
    public void addAddressToCustomer(@PathParam("street") String street,@PathParam("city") String city,@PathParam("state") String state,@PathParam("zip") String zip,@PathParam("cid") Integer custId) {
       pbl.addAddressToCustomer(street, city, state, zip, custId);
    }

    
//    public void updateAddressToCustomer(Integer aid, String street, String city, String state, String zip, Integer custId) {
//        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
//    }

    @DELETE
    @Path("remaddressofcust/{aid}/{cid}")
    public void removeAddressFromCustomer(@PathParam("aid") Integer addressId, @PathParam("cid") Integer custId) {
      
      pbl.removeAddressFromCustomer(addressId, custId);
    
    }

    
//    public Collection<Address> getAddressesByCity(String city) {
//        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
//    }
//
//    
//    public Collection<Address> getAddressesByState(String state) {
//        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
//    }
//
//    
//    public Collection<Address> getAddressesByZip(String zip) {
//        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
//    }

    @GET
    @Path("getsubsofcust/{cid}")
    @Produces("application/json")
    public Collection<Subscription> getSubscriptionsOfCustomer( @PathParam("cid") Integer custId) {
       // throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
     
        return pbl.getSubscriptionsOfCustomer(custId);
        
    }

     @GET
    @Path("getcustsofsubs/{sid}")
    @Produces("application/json")
    public Collection<Customer> getCustomersOfSuscription(@PathParam("sid") Integer subId) {
     
    return pbl.getCustomersOfSuscription(subId);
    
    }

    @POST
    @Path("addsubs/{title}/{type}")
    public void addSubscription(@PathParam("title") String title,@PathParam("type") String type) {
     pbl.addSubscription(title, type);
    
    }

    
//    public void updateSubscription(Integer subId, String title, String type) {
//        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
//    }

    @DELETE
    @Path("remsubs/{sid}")
    public void removeSubscription(@PathParam("sid") Integer subId) {
       pbl.removeSubscription(subId);
    }

    @GET
    @Path("getallsubs")
    @Produces("application/json")
    public Collection<Subscription> getAllSubscriptions() {
       // throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    
    return pbl.getAllSubscriptions();
    }

    
//    public Collection<Subscription> getSubscriptionsByType(String type) {
//        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
//    }
//
//    
//    public Collection<Subscription> getSubscriptionsByTitle(String title) {
//        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
//    }

    @POST
    @Path("addsustocust/{cid}")
    @Produces("application/json")
    @Consumes("application/json")
    public void addSubscriptionsToCustomer(@PathParam("cid") Integer custId, Collection<Integer> subIds) {
      
      pbl.addSubscriptionsToCustomer(custId, subIds);
    }

     @POST
    @Path("remsustocust/{cid}")
    @Produces("application/json")
    @Consumes("application/json")
    public void removeSubscriptionsToCustomer(@PathParam("cid")Integer custId, Collection<Integer> subIds) {
       pbl.removeSubscriptionsToCustomer(custId, subIds);
    }

}
