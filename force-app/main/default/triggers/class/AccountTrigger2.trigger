
 trigger AccountTrigger3 on Account (before insert,after insert, before update,  after update) {

        //if we are creating 1 record, we will get 1 record in trigger.new
            //the number of records we are processing in ONE execution, we will get that many number of records in trigger.new
        
        //trigger.new  is LIST
        // List<account> newAccounts = trigger.new;
        // if (Trigger.isBefore && Trigger.isInsert) {
        //     system.debug('Trigger.new before insert : ' + trigger.new);
        //     system.debug('Before insert number of records: ' + trigger.new.size());

        //     for(account eachAcc : trigger.new){
        //         System.debug('Before acc id ' + eachAcc.id);
        //         System.debug('Before acc name ' + eachAcc.name);
        //     }
    
        // }
        // if (Trigger.isAfter && Trigger.isInsert) {
        //     system.debug('Trigger.new after insert : ' + trigger.new);
        //     system.debug('After insert number of records: ' + newAccounts.size());
        //     for(account eachAcc : newAccounts){
        //         System.debug('After acc id ' + eachAcc.id);
        //         System.debug('After acc name ' + eachAcc.name);
        //     }
    
        // }

        // if (Trigger.isBefore && Trigger.isUpdate) {
        //     //in before update record is not saved
        //     system.debug('trigger.new before update : ' + trigger.new);
        //     system.debug('before update number of records: ' + trigger.new.size());
    
    
        // }
        // if (Trigger.isAfter && Trigger.isUpdate) {
        //      //in after update record is saved
        //     system.debug('trigger.new after update : ' + trigger.new);
        //     system.debug('after update number of records: ' + newAccounts.size());
        // }

    // if(trigger.isinsert && trigger.isBefore){
    //     System.debug('Before updateisUpdate trigger called');
    // }
    // if(trigger.isInsert && trigger.isAfter){
    //     System.debug('After insert trigger called');
    // }
    // if(trigger.isupdate && trigger.isBefore){
    //     System.debug('After insert trigger called');
    // }
    // if(trigger.isupdate && trigger.isAfter){
    //     System.debug('After insert trigger called.');
    // }


    // if(trigger.isInsert){
    //     System.debug('Insert account trigger ');
    // }
    // if(trigger.isUpdate){
    //     System.debug('update account trigger ');
    // }

    // if(trigger.isbefore){
    //     System.debug('Before update account trigger');
    // }
    // if(trigger.isAfter){
    //     System.debug('after update account trigger');
    // }


}