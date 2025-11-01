/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSF/JSFManagedBean.java to edit this template
 */
package beans;

import jakarta.inject.Named;
import jakarta.enterprise.context.Dependent;
import jakarta.enterprise.context.RequestScoped;

/**
 *
 * @author kamlendu
 */
@Named(value = "converterBean")
@RequestScoped
public class ConverterBean {
    
    String pname ="ABC-Rahul";

    /**
     * Creates a new instance of ConverterBean
     */
    public ConverterBean() {
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }
    
}
