/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package converter;

import jakarta.faces.component.UIComponent;
import jakarta.faces.context.FacesContext;
import jakarta.faces.convert.Converter;
import jakarta.faces.convert.FacesConverter;

/**
 *
 * @author kamlendu
 */
@FacesConverter(value = "convert")
public class MyConverter implements Converter {

    @Override
    public Object getAsObject(FacesContext fc, UIComponent uic, String str) {
       // throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    
    return "ABC-"+str;
    }

    @Override
    public String getAsString(FacesContext fc, UIComponent uic, Object t) {
        //throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    
        String str = (String) t;
        
        return str.substring(4);
    
    }
    
    
    
}
