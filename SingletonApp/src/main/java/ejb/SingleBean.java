/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/J2EE/EJB40/SingletonEjbClass.java to edit this template
 */
package ejb;

import jakarta.annotation.PostConstruct;
import jakarta.annotation.Resource;
import jakarta.ejb.ConcurrencyManagement;
import jakarta.ejb.ConcurrencyManagementType;
import jakarta.ejb.DependsOn;
import jakarta.ejb.Singleton;
import jakarta.ejb.LocalBean;
import jakarta.ejb.Lock;
import jakarta.ejb.LockType;
import jakarta.ejb.Startup;
import jakarta.ejb.TransactionManagement;
import jakarta.ejb.TransactionManagementType;
import jakarta.transaction.SystemException;
import jakarta.transaction.UserTransaction;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author kamlendu
 */


@ConcurrencyManagement(ConcurrencyManagementType.BEAN)
@TransactionManagement(TransactionManagementType.BEAN)
@Singleton
@LocalBean
@Startup
@DependsOn({"FirstBean","SecondBean"})

public class SingleBean {
    
    String fname;
    String lname;
    
    @Resource UserTransaction utx;
    

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")

    @PostConstruct
    void initialize()
{
    fname="Rakesh";
    lname = "Shah";
    System.out.println("Singleton Bean Initalized .......");
    
    
}

    @Lock(LockType.READ)
    public String getFname() {
        return fname;
    }

    @Lock(LockType.WRITE)
    public void setFname(String fname) {
        this.fname = fname;
    }

    @Lock(LockType.READ)
    public String getLname() {
        return lname;
    }
@Lock(LockType.WRITE)
    public void setLname(String lname) {
        this.lname = lname;
    }

 public String getFullName()
 {
      String fullName="";
        try {
            utx.begin();
       
       
      fullName = fname + " "+ lname;
     utx.commit();
      } catch (Exception ex) {
            ex.printStackTrace();
            
          try {
              
              utx.rollback();
          
          } catch (IllegalStateException ex1) {
              Logger.getLogger(SingleBean.class.getName()).log(Level.SEVERE, null, ex1);
          } catch (SecurityException ex1) {
              Logger.getLogger(SingleBean.class.getName()).log(Level.SEVERE, null, ex1);
          } catch (SystemException ex1) {
              Logger.getLogger(SingleBean.class.getName()).log(Level.SEVERE, null, ex1);
          }
        }
     
     
     return fullName;
 }
    
    
}
