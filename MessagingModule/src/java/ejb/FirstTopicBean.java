/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/J2EE/EJB30/MessageDrivenBean.java to edit this template
 */
package ejb;

import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import jakarta.ejb.ActivationConfigProperty;
import jakarta.ejb.MessageDriven;
import jakarta.jms.Connection;
import jakarta.jms.ConnectionFactory;
import jakarta.jms.JMSException;
import jakarta.jms.Message;
import jakarta.jms.MessageListener;
import jakarta.jms.MessageProducer;
import jakarta.jms.Queue;
import jakarta.jms.Session;
import jakarta.jms.TextMessage;
import javax.naming.Context;
import javax.naming.InitialContext;

/**
 *
 * @author root
 */
@MessageDriven(activationConfig = {
    @ActivationConfigProperty(propertyName = "clientId", propertyValue = "jms/icttopic1"),
    @ActivationConfigProperty(propertyName = "destinationLookup", propertyValue = "jms/icttopic"),
    @ActivationConfigProperty(propertyName = "subscriptionDurability", propertyValue = "Durable"),
    @ActivationConfigProperty(propertyName = "subscriptionName", propertyValue = "jms/icttopic"),
    @ActivationConfigProperty(propertyName = "destinationType", propertyValue = "jakarta.jms.Topic")
})
public class FirstTopicBean implements MessageListener {
    
    public FirstTopicBean() {
    }
    
    @Override
    public void onMessage(Message message) {
        
        String msg =null;
    if(message instanceof TextMessage)
    {
            try {
                
                msg =  ((TextMessage) message).getText();
                
                System.out.println("FirstTopicBean has recieved the message " + msg);
                
                
                
                
                
                
                
            } catch (JMSException ex) {
                Logger.getLogger(FirstQueueBean.class.getName()).log(Level.SEVERE, null, ex);
            }
            
           
    }
    }
    
}
