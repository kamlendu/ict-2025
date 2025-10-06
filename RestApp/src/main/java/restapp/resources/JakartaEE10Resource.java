package restapp.resources;

import jakarta.ws.rs.Consumes;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.PUT;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.PathParam;
import jakarta.ws.rs.Produces;
import java.util.ArrayList;
import java.util.Collection;

/**
 *
 * @author 
 */
@Path("rest")
public class JakartaEE10Resource {
    
    @GET
    @Produces("text/html")
    public String sayHello(){
        return "<h2> Hello World of Rest </h2>";
    }
   
     
    @GET
    @Path("special/{pname}")    
    @Produces("text/html")       
    public String saySpecialHello(@PathParam("pname") String name)
    {
       
        return "<h2>Special Hello to "+ name + "</h2>";
    }
   
    @PUT
    @Path("ucases")
    @Consumes("application/json")
    @Produces("application/json") 
    public Collection<String> ucases(Collection<String> lcases)
    {
        Collection<String> ucase = new ArrayList<>();
        
        for(String s : lcases)
        {
            ucase.add(s.toUpperCase());
        }
        
    return ucase;
    }
}
