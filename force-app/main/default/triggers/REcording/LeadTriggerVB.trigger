trigger LeadTriggerVB on Lead (before insert, before update, after insert, after update) {
   
    if(trigger.isBefore ){
        LeadHandlerTrigger.checkClosedLostReason(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
    }
    if(trigger.isbefore){
        LeadHandlerTrigger.updateClosedLostDate(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
    }
    
    
    
    
    
    //lead objectinde yeni bir record olusturuldugunda ya da update edildiginde firsName in onune 'SF Developer.' oneki eklenecektir.
    // if(trigger.isBefore){
    //     if(trigger.isInsert){
    //         LeadHandler.changeOfName(trigger.new);
    //     }
    // }

    //System.debug('Lead creating.. before insert');
    //debug
    // System.debug('Lead saved by now.After inseert trigger.');
}