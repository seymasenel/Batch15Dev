trigger ContactATrigger on contact (before insert, before update, before delete, after insert, after update, after delete, after undelete) {
   //Soru : Yeni bir Contact create edilip bir Accounta bağlandığında, Accounta bağlı bir Contact delete edildiğinde veya Bir Contact update edilerek bir Account ile bağlantısı kesilirse veya baska bir Accounta bağlanırsa ya da bağlantı değişirse Accountta Number_of_Contacts__c fieldi güncellenecek..
    // if (trigger.isAfter) {
    //     // 1. asama insert
    //     if (trigger.isInsert) {
    //     ContactTriggerHandler.insertMetot(trigger.new);
    //     }
    //     // 2. asama update
    //     if (trigger.isUpdate) {
    //     ContactTriggerHandler.updateMetot(trigger.new, trigger.oldMap);
    //     }
    //     // 3. asama delete
    //     if (trigger.isDelete) {
    //     ContactTriggerHandler.deleteMetot(trigger.old);
    //     }
    // }


    
    // if(trigger.isBefore && trigger.isUpdate){
    //     for(contact eachCon : trigger.new){
    //         if(eachCon.LastName != trigger.oldMap.get(eachCon.id).LastName){
    //             System.debug('Lastname degistirildi--> ' + ' - ' + trigger.oldMap.get(eachCon.id).LastName  + ', ' +  eachCon.LastName + + ' olarak degistirildi.') ;
    //         }
    //     }
    // }



        if (Trigger.isBefore && Trigger.isUpdate) {
            //Call handler here.
            CntactHandlerTrigger.validateContactUpdate1(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
            CntactHandlerTrigger.validatecontactUpdate2(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
        }
   
    // if (trigger.isBefore && trigger.isInsert) {
    //     System.debug('Before insert  trigger on contact');
    // }
    // if (trigger.isAfter && trigger.isInsert) {
    //     System.debug('After insert trigger on contact');
    // }
    // if (trigger.isBefore && trigger.isUpdate) {
    //     System.debug('Before update trigger on contact');
    // }
    // if (trigger.isAfter && trigger.isUpdate) {
    //     System.debug('After update trigger on contact');
    // }
    // if (trigger.isBefore && trigger.isDelete) {
    //     System.debug('Before delete trigger on contact');
    // }
    // if (trigger.isAfter && trigger.isDelete) {
    //     System.debug('After delete trigger on contact');
    // }
    // if (trigger.isAfter && trigger.isUndelete) {
    //     System.debug('After undelete trigger on contact');
    // }

    
}