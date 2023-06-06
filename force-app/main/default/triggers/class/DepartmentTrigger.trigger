trigger DepartmentTrigger on Department__c (before insert, after insert) {
    // if(trigger.isAfter&& trigger.isInsert){
    //     //call future method to create default employee
    //     DepartmentTriggerHandler.createDefaultEmp(Trigger.newMAp.keySet());
    // }
}