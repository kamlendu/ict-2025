
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

//package ejb;javaee-endorsed-api-6.0

import java.util.Date;
import jakarta.annotation.PostConstruct;
import jakarta.ejb.LocalBean;
import jakarta.ejb.Schedule;
import jakarta.ejb.Singleton;
import jakarta.ejb.Startup;
import jakarta.ejb.Stateless;

/**
 *
 * @author root
 */
@Startup
@Singleton
@LocalBean
public class SchedulerBean {
    
    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
    
@PostConstruct
void initialize()
    {
   // speakOnSchedule();
    }
public void hi()
    {
    // System.out.println("executing on my schedule "+ new Date());
    return;
    }

@Schedule(dayOfWeek="*",month="*",year="*", hour="0-23", minute="58", second="*/5")
void speakOnSchedule()
    {
    System.out.println("executing on my schedule "+ new Date());
    }
}


