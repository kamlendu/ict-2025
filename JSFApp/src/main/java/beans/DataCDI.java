/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSF/JSFManagedBean.java to edit this template
 */
package beans;

import client.BookClient;
import entity.BookMaster;
import jakarta.inject.Named;
import jakarta.enterprise.context.RequestScoped;
import jakarta.ws.rs.core.GenericType;
import jakarta.ws.rs.core.Response;
import java.util.ArrayList;
import java.util.Collection;

/**
 *
 * @author kamlendu
 */
@Named(value = "dataCDI")
@RequestScoped
public class DataCDI {
    
    BookClient cl;
    Response res;
    Collection<BookMaster> books;
    GenericType<Collection<BookMaster>> gbooks;

    
    
    public Collection<BookMaster> getBooks() {
        
        res = cl.getAllBooks(Response.class);
        books = res.readEntity(gbooks);
        return books;
    }

    /**
     * Creates a new instance of DataCDI
     */
    public void setBooks(Collection<BookMaster> books) {
        this.books = books;
    }

    public DataCDI() {
        
        cl = new BookClient();
        books = new ArrayList<>();
        gbooks = new GenericType<Collection<BookMaster>>(){};
    }
    
}
