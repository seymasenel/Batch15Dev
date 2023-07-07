trigger OpportunityTriggerrRVitap on Opportunity (after update) {
    
    if(trigger.isafter && trigger.isinsert){
        System.debug('Calling future method NOW.');
        //map<id, Opportunity> oppNewMap = trigger.newMap;
        OpportunityTriggerHandlerrVitap.updateOwner(trigger.newMap.keySet());
        System.debug('Called future method Done already..');
    }   
    
    IF(TRIGGER.isAfter && trigger.isUpdate){
        OpportunityTriggerHandlerrVitap.validateOppClosed(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);

    }
}