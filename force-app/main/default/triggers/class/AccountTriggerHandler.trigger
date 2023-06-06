trigger AccountTriggerHandler on Account(before insert, after insert, before update, after update, before delete, after delete, after undelete) {
   
  
//     if(trigger.isAfter && trigger.isunDelete){
//         AccountTriggerHandler.sendRestorantionEmaill(trigger.new);
//     }


//    if(trigger.isBefore && trigger.isDelete) {
//     AccountTriggerHandler.validateDelete(trigger.old);
//    }

//    if(trigger.isBefore &&(trigger.isInsert || trigger.isUpdate)){
//     AccountTriggerHandler.updateAccDescription(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
//    }

//    if(trigger.isAfter && trigger.isUpdate){
//     AccountTriggerHandler.updateVIPContacts(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
//    }

}



//    System.debug('-------------------------------------');

//    if(trigger.isBefore){ 
//         for(account eachAcc : trigger.new){
//             if(trigger.isInsert &&  eachAcc.active__c == 'Yes'){
//                 System.debug('Before insert trigger on account , changed description....');
//                 eachAcc.description='Account is now active. Enjoy enjoy!!';
//         }

//         //check if update
//         if(trigger.isUpdate){
//             //if acive field changed and new one is yes
//             for(account eachAcc1 : trigger.new){
//                 if(eachacc.Active__c != trigger.oldMap.get(eachacc.id).active__c && eachAcc.active__c == 'Yes'){
//                     eachAcc1.description ='Account is now active. Enjot buddy!';
//                 }
//             }
//         }
//         }
//     } 

    // if(trigger.isBefore){ 
    //     for(account eachAcc : trigger.new){
    //         boolean updateDesc = false;
    //         if(trigger.isInsert &&  eachAcc.active__c == 'Yes'){
    //             updateDesc= true;
    //     }

    //     //check if update
    //     if(trigger.isUpdate){
    //         //if acive field changed and new one is yes
            
    //         if(eachacc.Active__c != trigger.oldMap.get(eachacc.id).active__c && eachAcc.active__c == 'Yes'){
    //                 updateDesc = true;
    //           }
    //     }
    //     if(updateDesc){
    //         eachAcc.Description ='Account is now active. Enjoy budyy!';
    //     }
    //     }
    // } 
    
//Execution
        //1. system validation
        //2.before trigger (record is not saved yet. ID is not generated.)
            //change filed values HERE (it is allowed because record is NOT saved yet)
        //3.custom validation
        //4. SAVE (ID is generated. Not available for use. Not Committed)
        //5. fter trigger (record is saved ID is generated. Trigger. new is READ ONLY now)
   
   

   
    
