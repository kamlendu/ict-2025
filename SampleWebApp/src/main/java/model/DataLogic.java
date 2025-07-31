/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collection;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author kamlendu
 */
public class DataLogic {
    
    Connection con;
   // Statement stmt;
    ResultSet rs;

    public DataLogic()  {
        
        try {
            // Load the driver
            Class.forName("com.mysql.jdbc.Driver");
            
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test?useSSL=false", "root", "ompandey");
       
        
        } catch (ClassNotFoundException ex) {
             System.out.println("Driver not found");
        }
        catch(SQLException sq)
        {
            System.out.println("Could not connect to Database");
        }
        
    }
    
    public Collection<Employee> getAllEmployees() 
    {
        
        Collection<Employee> employees = new ArrayList<>();
        
        try {
        Statement  stmt = con.createStatement();
        
        ResultSet rs = stmt.executeQuery("select * from employee");
        
        while(rs.next())
        {
            Employee e = new Employee();
            e.setEmpno(rs.getInt("empno"));
            e.setEname(rs.getString("ename"));
            e.setSalary(rs.getDouble("salary"));
            
            employees.add(e);
            
        }
        }
        catch(SQLException sqe)
        {
            sqe.printStackTrace();
        }
        
        return employees;
        
    }
    
    
    public void insertEmployee(int empno, String ename, double salary)
    {
        
        try {
           
            Statement stmt = con.createStatement();
            
            String insert = "insert into employee values("+empno+",'"+ ename+"',"+salary+")";
            
            stmt.executeUpdate(insert);
            
            
            
        } catch (SQLException ex) {
            Logger.getLogger(DataLogic.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    public void removeEmployee(int empno)
    {
        
        try {
           
            Statement stmt = con.createStatement();
            
            String del = "delete from employee where empno="+empno;
            
            stmt.executeUpdate(del);
            
            
            
        } catch (SQLException ex) {
            Logger.getLogger(DataLogic.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    } 
    
}
