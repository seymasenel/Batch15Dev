trigger ContactTriggerBurakH2 on contact (before insert, before update, after insert, after update) {
    
    
    // if(trigger.isAfter && trigger.isUpdate){
    //     CntactHandlerTrigger.createContact(trigger.new,  trigger.oldMap);
    // }
    
    
    
    //Yeni bir contact mevcut bir accounta bagli olarak olusturuldugunda contact other phone bagli oldugu Account phone olsun.
//     if(trigger.isBefore && trigger.isInsert){
//         ContactTriggerHAndler.updateContactPhone(trigger.new);
//     }
    
    // list<contact> newC = trigger.new;
    // list<contact> oldC = trigger.old;
    // map<id, contact> newMapC = trigger.newMap;
    // map<id, contact> oldMapC = trigger.oldMap;

    // for(contact eachContact : newC){
    //     string printSt = 'New last name = ' + eachContact.LastName;

    //     contact oldContcat =oldMapC.get(eachContact.id);
    //     printSt   += ', OLD last name ' + oldContact.lastname;
    //     System.debug(printSt);
    // }


    //DO NOT TRY THIS AT HOME
    // if(trigger.isAfter  && trigger.isUpdate){
    //     for(contact eachContact :newC){
    //         for(contact eachOldContact : oldC){
    //             if(eachContact.Id == eachOldContact.id){
    //                 System.debug('EXISTING/OLD/ORGINAL/PREVIOUS last name (OLD) : ' + eachOldContact.LastName +  'UPDATED new last name ' + eachContact.lastname);
    //             }
    //         }
    //     }
    // }
}