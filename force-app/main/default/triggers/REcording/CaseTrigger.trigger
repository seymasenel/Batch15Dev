trigger CaseTrigger on Case (before insert, after insert, before update, after update) {
    
    System.debug('BEfore insert case trigger');
    

    // if(trigger.isBefore){
    //     CaseHandlerTrigger.printStatusDetails(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
    // }

    if(trigger.isAfter && trigger.isInsert){
        CaseTriggerHandler.createDefaultTask(trigger.new);
    }
}