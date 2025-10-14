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
import java.util.Collection;

/**
 *
 * @author kamlendu
 */
@Named(value = "person")
@RequestScoped
public class Person {
    
    
    String name;
    String email;
    Double salary;
    String phone;
    String gender;
    String city;
    Collection<String> hobbies;

    /**
     * Creates a new instance of Person
     */
    public Person() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Double getSalary() {
        return salary;
    }

    public void setSalary(Double salary) {
        this.salary = salary;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public Collection<String> getHobbies() {
        return hobbies;
    }

    public void setHobbies(Collection<String> hobbies) {
        this.hobbies = hobbies;
    }
    
    public void validateSalary(FacesContext ctx, UIComponent uc, Object obj)
    {
        Double sal = (Double)obj;
        
        if(sal<100)
        {
            FacesMessage msg = new FacesMessage("Salar cannot ve less than 100");
            msg.setSeverity(FacesMessage.SEVERITY_ERROR);
            throw new ValidatorException(msg);
        }
        
    }
    public String show()
    {
        return "Show";
    }
}
