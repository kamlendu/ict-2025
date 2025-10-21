package jsfapp.resources;

import ejb.DataBean;
import entity.BookMaster;
import jakarta.ejb.EJB;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.Produces;
import java.util.Collection;

/**
 *
 * @author 
 */
@Path("rest")
public class JakartaEE10Resource {
    @EJB DataBean db;
    
    @GET
    @Produces("application/json")
    public Collection<BookMaster> getAllBooks(){
        return db.getAllBooks();
    }
}
