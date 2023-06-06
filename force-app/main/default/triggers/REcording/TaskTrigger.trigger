trigger TaskTrigger on task (before insert, after insert, after update) {
    
        TaskTriggerHandlerRV.updateLeadNextActivityDate(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
    
}