/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package ejb;


//import com.sun.xml.ws.api.model.CheckedException;
import java.text.SimpleDateFormat;
import java.util.Date;
import jakarta.annotation.PostConstruct;
import jakarta.annotation.Resource;
import jakarta.ejb.ScheduleExpression;
import jakarta.ejb.Singleton;
import jakarta.ejb.Startup;
import jakarta.ejb.Timeout;
import jakarta.ejb.Timer;
import jakarta.ejb.TimerConfig;
import jakarta.ejb.TimerService;

/**
 *
 * @author root
 */
@Startup
@Singleton
public class TimerEJB implements TimerEJBRemote {
    
    @Resource TimerService ts;

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
    @PostConstruct
    void setTimer()
    {
       try{ 
        // Single Action Timer
        
   //   Timer atimer= ts.createTimer(10000, null); 
        
  //   Timer timer = ts.createSingleActionTimer(10000, new TimerConfig());

//    SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy HH:mm");
//       Date date = sdf.parse("03/11/2025 12:22");
//        // System.out.println(date.toString());
//      Timer timer1 = ts.createSingleActionTimer(date, new TimerConfig());

   //Timer intervalTimer= ts.createTimer(5000, 3000, null);

//       ScheduleExpression se = new ScheduleExpression();
//       
//       se.dayOfWeek("Tue");
//       se.hour("0-17,23");
//        se.minute("26");
//       se.second("*/5");
//      Timer scheduleTimer = ts.createCalendarTimer(se);
      }
       catch(Exception e) {
           e.printStackTrace();
           
       }
       }
    
    
    @Timeout
    public void speakonTimeout(){

        System.out.println("My Time expired at "+new Date().toString());
        return;
}
    public void hi(){ 
        return;
    }

}
