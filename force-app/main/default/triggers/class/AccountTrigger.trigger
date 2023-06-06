trigger AccountTrigger on account (before insert, after insert, before update, after update) {
      // if(trigger.isAfter && trigger.isUpdate){
      //   AccountTriggerHandler.updateDescription(trigger.new, trigger.oldMap);
        
      // }








   // System.debug('-------------');

   // if(trigger.isAfter && trigger.isUpdate){
   //    for(id eachId : trigger.newMap.keySet()){
   //       //how to check if the particular field is chnged?
   //       account oldAcc = trigger.oldMap.get(eachId);
   //       account newAcc = trigger.newMap.get(eachId);

   //       //if old and new field is different then it is changed.
   //       if(oldAcc.Website != newAcc.Website){
   //          System.debug('For account : ' + newAcc.name +  ' , updated website is ' + newAcc.Website );
   //       }
   //    }
   //  }
   

   // if(trigger.isAfter && trigger.isUpdate){
   //    //old name and new name in one line
       
   //    map<id, account> newAccountsMap = trigger.newMap;

   //    for(id eachId: trigger.newMap.keySet()){
   //          System.debug('Acc id : ' + eachId);

   //          //how to get new Name and Old Name using account id?
   //             //answer : use newMAp , and OldMap
   //             account oldAccount = trigger.oldMap.get(eachId);
   //             account newAccount = trigger.newMap.get(eachId);

   //             System.debug('Old acc name: ' + oldAccount.name+ 'Old acc rating : ' + oldAccount.Rating +  ', new acc name:' + newAccount.name + 'new acc rating: ' +  newAccount.rating );
   //    }
   // }


   // List<Account> newAcc=trigger.new;
   // Map<Id, Account> trgNew=trigger.newMap;
   //  System.debug('-------------');
   //  if(trigger.isBefore &&trigger.isInsert){
   //    System.debug('Before insert, trigger.oldMAp: ' + trigger.oldMAp);
   //    System.debug('Before inert, trigger.newMap: ' + trigger.newMap);
   // }
   // if(trigger.isAfter && trigger.isInsert){
   //    System.debug('After insert, trigger.oldMAp: ' + trigger.oldMAp);
   //    System.debug('After insert, trigger.newMap: ' + trigger.newMap);
   // }

   // if(trigger.isBefore &&trigger.isUpdate){
   //    System.debug('Before update, trigger.oldMap: ' + trigger.oldMap);
   //    System.debug('After update, trigger.newMAp: ' + trigger.newMap);
   // }
   // if(trigger.isAfter && trigger.isUpdate){
   //    System.debug('After update, trigger.oldMAp: ' + trigger.oldMap);
   //    System.debug('After update, trigger.newmap: ' + trigger.newMap);
   // }
   // System.debug('-------------');
   

   // if(trigger.isAfter && trigger.isUpdate){
   //    System.debug('After update, trigger.old: ' + trigger.old);
   //    //list<account> oldAccounts = trigger.old;
   //    for (Account oldAcc : trigger.old) {
   //       system.debug('Old acc id is ' + oldAcc.Id  + ', old acc name is ' + oldAcc.Name);
   //   }
   //   System.debug('--------------------------------');
   //   System.debug('After update trigger.new ' + trigger.new);
   //   for(account newAcc : trigger.new){
   //       system.debug('nEW acc id is ' +  newAcc.Id  + ', new acc name is ' + newAcc.Name);
   //   }

   // }
   
  
}