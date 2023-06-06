trigger AccountTriggerAs on account (before insert, before update, after insert, after update ) {
   
     // if(trigger.isAfter && trigger.isinsert){
    //     AccountHandler_assg.createContact(Trigger.new, trigger.old , Trigger.newMap, trigger.oldMap);
    // }


    // if(trigger.isAfter && trigger.isInsert){
    //     AccountTriggrHAndlerAT.contactOppsCreate(trigger.new);
    // }


//     if(trigger.isInsert && trigger.isBefore ){
//          AccountTriggrHAndlerAT.noDublicateAccountName(trigger.new, trigger.oldMap);
//     }

    
    // if(trigger.isBefore&& trigger.isUpdate ){
    //     for(account eachAcc : trigger.new){
    //         if(eachAcc.AnnualRevenue != trigger.oldMap.get(eachAcc.id).AnnualRevenue){
    //             decimal difference = eachAcc.AnnualRevenue - trigger.oldMap.get(eachAcc.id).AnnualRevenue;
    //             if(difference>0){
    //                 eachAcc.Description= 'Increased by ' + difference;
    //             }else{
    //                 eachAcc.Description= 'Decreased by ' +  math.abs(difference);
    //             }
    //         }
    //     }
    // }

 }
