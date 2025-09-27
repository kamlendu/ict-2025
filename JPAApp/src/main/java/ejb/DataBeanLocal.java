/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/J2EE/EJB40/SessionLocal.java to edit this template
 */
package ejb;

import entity.BookMaster;
import jakarta.ejb.Local;
import java.util.Collection;

/**
 *
 * @author kamlendu
 */
@Local
public interface DataBeanLocal {
    
    void addBook(String bookName, String authorName, String publisherName, String synopsis);
    void updateBook(Integer bookId,String bookName, String authorName, String publisherName, String synopsis);
    void removeBook(Integer bookId);
    Collection<BookMaster> findBooksByPublisher(String pubNAme);
    Collection<BookMaster> getAllBooks();
    
}
