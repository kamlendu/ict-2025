/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/J2EE/EJB30/MessageDrivenBean.java to edit this template
 */
package ejb;

import java.util.logging.Level;
import java.util.logging.Logger;
import jakarta.ejb.ActivationConfigProperty;
import jakarta.ejb.MessageDriven;
import jakarta.jms.JMSException;
import jakarta.jms.Message;
import jakarta.jms.MessageListener;
import jakarta.jms.TextMessage;

/**
 *
 * @author root
 */
@MessageDriven(activationConfig = {
    @ActivationConfigProperty(propertyName = "destinationLookup", propertyValue = "jms/ictqueue"),
    @ActivationConfigProperty(propertyName = "destinationType", propertyValue = "jakarta.jms.Queue")
})
public class SecondQueueBean implements MessageListener {
    
    public SecondQueueBean() {
    }
    
    @Override
    public void onMessage(Message message) {
        String msg =null;
    if(message instanceof TextMessage)
    {
            try {
                
                msg =  ((TextMessage) message).getText();
                
                System.out.println("SecondQueueBean has recieved the message " + msg);
                
            } catch (JMSException ex) {
                Logger.getLogger(FirstQueueBean.class.getName()).log(Level.SEVERE, null, ex);
            }
    }
    }
    
}
