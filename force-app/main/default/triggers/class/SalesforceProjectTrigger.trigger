trigger SalesforceProjectTrigger on Salesforce_Project__c (before insert, after insert, before update, after update) {
   
    // if (Trigger.isAfter && Trigger.isUpdate) {
    //     SalesforceProjectHandler.projectStatusCompleted(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    // }
    // if (Trigger.isAfter && Trigger.isInsert) {
    //     //call future method
    //     system.debug('about to call future method');
    //     SalesforceProjectHandler.updateDescriptionFuture(Trigger.newMap.keySet());
    //     system.debug('JUST CALLED future method');

    //     //call handler method to insert default salesforce ticket.
    //     SalesforceProjectHandler.createDefaultTicket(Trigger.New);

    // }

    // if(Trigger.isBefore && Trigger.isUpdate){
    //     //call method to validate project completion
    //     //SPTriggerHandler.validate1(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    // }


    if (Trigger.isAfter && Trigger.isInsert) {
        //call future method
        SalesforceProjectHandler.updateDescriptionFuture(Trigger.newMap.keySet());

        //call handler method to insert default salesforce ticket.
        SalesforceProjectHandler.createDefaultTicket(Trigger.New);

    }

    // if(Trigger.isBefore && Trigger.isUpdate){
    //     //call method to validate project completion
    //     SalesforceProjectHandler.validate1(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    // }
}
    
    
    
    // if(trigger.isBefore && trigger.isInsert){
    //     for(Salesforce_Project__c eachSP : trigger.new){
    //         eachSP.Project_Name__c='New Trigger Project';
    //         System.debug('Project name is --->' + eachSP.Project_Name__c);
    //     }
    // }
    // if(trigger.isUpdate){
    //     if(trigger.isAfter){
    //         for(Salesforce_Project__c eachSp : trigger.new){
    //             System.debug('New Project Name is--> ' + eachSp.Project_Name__c);
    //             System.debug('Old Project name is -->' + trigger.oldMap.get(eachSp.id).Project_Name__c);
    //         }
    //     }
    // }
