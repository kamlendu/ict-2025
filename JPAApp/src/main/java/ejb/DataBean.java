/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/J2EE/EJB40/StatelessEjbClass.java to edit this template
 */
package ejb;

import entity.BookMaster;
import jakarta.ejb.Stateless;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import java.util.Collection;

/**
 *
 * @author kamlendu
 */
@Stateless
public class DataBean implements DataBeanLocal {
    
    @PersistenceContext(unitName = "jpapu")
    EntityManager em;

    @Override
    public void addBook(String bookName, String authorName, String publisherName, String synopsis) {
        //throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    
        BookMaster b = new BookMaster();
        b.setBookName(bookName);
        b.setAuthorName(authorName);
        b.setPublisherName(publisherName);
        b.setSynopsis(synopsis);
        
        em.persist(b);
        
    }

    @Override
    public void updateBook(Integer bookId, String bookName, String authorName, String publisherName, String synopsis) {
        //throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    
        BookMaster b = (BookMaster)em.find(BookMaster.class, bookId);
    
        b.setAuthorName(authorName);
        b.setBookName(bookName);
        b.setPublisherName(publisherName);
        b.setSynopsis(synopsis);
        
        em.merge(b);
    
    }

    @Override
    public void removeBook(Integer bookId) {
        //throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
   BookMaster b = (BookMaster)em.find(BookMaster.class, bookId);
    
    em.remove(b);
    
    }

    @Override
    public Collection<BookMaster> getAllBooks() {
      //  throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    
    Collection<BookMaster> books = em.createNamedQuery("BookMaster.findAll").getResultList();
    return books;
    }

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")

    @Override
    public Collection<BookMaster> findBooksByPublisher(String pubName) {
       // throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    
       Collection<BookMaster> books = em.createNamedQuery("BookMaster.findByPublisherName")
                                       .setParameter("publisherName", pubName)
                                       .getResultList();
    
//       Collection<BookMaster> books = em.createQuery("SELECT b FROM BookMaster b WHERE b.publisherName = :publisherName")
//                                       .setParameter("publisherName", pubName)
//                                       .getResultList();
// 
    return books;
    }





}
