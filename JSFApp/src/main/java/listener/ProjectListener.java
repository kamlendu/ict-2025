/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package listener;

import jakarta.faces.event.PhaseEvent;
import jakarta.faces.event.PhaseId;
import jakarta.faces.event.PhaseListener;

/**
 *
 * @author kamlendu
 */
public class ProjectListener implements PhaseListener {

    @Override
    public void afterPhase(PhaseEvent event) {
        PhaseListener.super.afterPhase(event); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
    
    if(event.getPhaseId()== PhaseId.RESTORE_VIEW)
    {
        System.out.println("After Resore View");
    }
    if(event.getPhaseId()== PhaseId.APPLY_REQUEST_VALUES)
    {
        System.out.println("After Applying request value");
    }
    if(event.getPhaseId()== PhaseId.PROCESS_VALIDATIONS)
    {
        System.out.println("After Validation");
    }
    if(event.getPhaseId()== PhaseId.UPDATE_MODEL_VALUES)
    {
        System.out.println("After Updating Model");
    }
    if(event.getPhaseId()== PhaseId.INVOKE_APPLICATION)
    {
        System.out.println("After Invoking Application");
    }
    if(event.getPhaseId()== PhaseId.RENDER_RESPONSE)
    {
        System.out.println("After Render Resonse");
    }
    
    }

    @Override
    public void beforePhase(PhaseEvent event) {
        PhaseListener.super.beforePhase(event); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
   if(event.getPhaseId()== PhaseId.RESTORE_VIEW)
    {
        System.out.println("Before Resore View");
    }
    if(event.getPhaseId()== PhaseId.APPLY_REQUEST_VALUES)
    {
        System.out.println("Before Applying request value");
    }
    if(event.getPhaseId()== PhaseId.PROCESS_VALIDATIONS)
    {
        System.out.println("Before Validation");
    }
    if(event.getPhaseId()== PhaseId.UPDATE_MODEL_VALUES)
    {
        System.out.println("Before Updating Model");
    }
    if(event.getPhaseId()== PhaseId.INVOKE_APPLICATION)
    {
        System.out.println("Before Invoking Application");
    }
    if(event.getPhaseId()== PhaseId.RENDER_RESPONSE)
    {
        System.out.println("Before Render Resonse");
    }
    
    
    }

    
    
    
    
    
    @Override
    public PhaseId getPhaseId() {
       // throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    return PhaseId.ANY_PHASE;
    
    }
    
    
    
}
