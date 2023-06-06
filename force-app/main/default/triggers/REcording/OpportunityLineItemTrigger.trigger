trigger OpportunityLineItemTrigger on OpportunityLineItem (before insert, before update, before delete, after insert, after update, after delete, after undelete) {
    if(trigger.isBefore){
        if(trigger.isDelete){
            System.debug('Before delete trigger.new ' + trigger.new);
            System.debug('Before delete trigger.newMAp ' + trigger.newMap);
            System.debug('Before delete trigger.old ' + trigger.old);
            System.debug('Before delete trigger.oldMAp ' + trigger.oldMap);
        }
    }
    if(trigger.isAfter){
        if(trigger.isDelete){
            System.debug('After delete trigger.new ' + trigger.new);
            System.debug('After delete trigger.newMAp ' + trigger.newMap);
            System.debug('After delete trigger.old ' + trigger.old);
            System.debug('After delete trigger.oldMAp ' + trigger.oldMap);
        }
        if(trigger.isUndelete){
            System.debug('After undelete trigger.new ' + trigger.new);
            System.debug('After undelete trigger.newMAp ' + trigger.newMap);
            System.debug('After undelete trigger.old ' + trigger.old);
            System.debug('After undelete trigger.oldMAp ' + trigger.oldMap);
        }
    }
}