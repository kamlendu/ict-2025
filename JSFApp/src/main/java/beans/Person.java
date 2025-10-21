/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSF/JSFManagedBean.java to edit this template
 */
package beans;

import jakarta.inject.Named;
import jakarta.enterprise.context.RequestScoped;
import jakarta.faces.application.FacesMessage;
import jakarta.faces.component.UIComponent;
import jakarta.faces.context.FacesContext;
import jakarta.faces.validator.ValidatorException;

/**
 *
 * @author kamlendu
 */
@Named(value = "person")
@RequestScoped
public class Person {
    
    String pname;
    String gender;
    String email;
    double salary;
    int age;
    String city;  
    String [] hobbies;
            

    /**
     * Creates a new instance of Person
     */
    public Person() {
    }

    public String getPname() {
        return pname;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public double getSalary() {
        return salary;
    }

    public void setSalary(double salary) {
        this.salary = salary;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getCity() {
        return city;
    }

    public void validateSalary(FacesContext ctx, UIComponent cmp, Object obj)
    {
        Double sal = (Double) obj;
    
        if(sal <2500)
        {
            FacesMessage msg = new FacesMessage("Salary can not be less than 2500");
            msg.setSeverity(FacesMessage.SEVERITY_ERROR);
            throw new ValidatorException(msg);
        }
        
    }
    public void setCity(String city) {
        this.city = city;
    }

    public String[] getHobbies() {
        return hobbies;
    }

    public void setHobbies(String[] hobbies) {
        this.hobbies = hobbies;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }
    
    
    public String show()
    {
        return "Show";
    }
    
    
}
