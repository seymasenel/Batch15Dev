trigger OpportunityTrigger on Opportunity (before insert, before update, after insert, after update) {
    
    // if(trigger.isBefore && trigger.isUpdate){
    //     OpportunityHandler.oppDescription(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
    // }
    
    // if(trigger.isInsert ){
    //     if(trigger.isBefore){
    //         System.debug('Insert before ic ie 2 if..');
    //     }
    // }
    // if(trigger.isInsert && trigger.isAfter){
    //     System.debug('insert after tek if..');
    // }
    // if(trigger.isUpdate){
    //     if(trigger.isBefore){
    //         /*Bir opportunity in stage name i update edildiginde closed lost olarak degistirildiginde Description
    //         da 'cok uzgunuz' mesajini yazdirsin. Closed won olarak degistirildiginde 'Yasasin' mesaji yazdirsin. Prospecting olarak degistirilmek istediginizde izin verme hata mesaji olarak 'sureci basa donduremezsiniz..' mesajini ver.*/

    //         //stagename de bir degisiklik var mi?
    //         for(opportunity opp: trigger.new){
    //             if(opp.StageName != trigger.oldMap.get(opp.id).StageName){
    //                 if(opp.StageName =='Closed Lost'){
    //                     opp.Description='Cok uzgunuz bu firsati kacirdiniz.';
    //                 }
    //                 if(opp.StageName =='Closed Won'){
    //                     opp.Description='Yasasin bu firsati kazandiniz..';
    //                 }
    //                 if(opp.StageName == 'Prospecting'){
    //                     opp.stagename.addError('Sureci basa donduremezsiniz. Bu degisikligi yapamazsiniz.');
    //                 }
    //             }
    //         }
            
    //     }
    // }

    // if(trigger.isInsert && trigger.isBefore){
    //     System.debug('=======before insert trigger tetiklendi.============');
    //     System.debug('trigger new = ' + trigger.new);
       
    //     for(Opportunity op: trigger.new){
    //         System.debug('opportunity name = ' + op.name);
    //         System.debug('id = ' + op.id);
    //         System.debug(' Crerated date = ' + op.createddate);
    //     }
    //     System.debug('Trigger old = ' + trigger.old);
    //     System.debug('Trigger new map = ' +  trigger.newMap);
    //     System.debug('Trigger old Map = ' + trigger.oldMap );
    //     System.debug('=====================================================');
    // }
    // if(trigger.isInsert && trigger.isAfter){
    //     System.debug('==========after insert trigger tetiklendi.==========');
    //     System.debug('trigger new = ' + trigger.new);
    //     for(Opportunity op: trigger.new){
    //         System.debug('opportunity name = ' + op.name);
    //         System.debug('id = ' + op.id);
    //         System.debug(' Crerated date = ' + op.createddate);
    //     }
    //     System.debug('Trigger old = ' + trigger.old);
    //     System.debug('Trigger new map = ' +  trigger.newMap);
    //     System.debug('Trigger old Map = ' + trigger.oldMap );
    //     System.debug('=====================================================');
    // }
    // if(trigger.isUpdate && trigger.isBefore){
    //     System.debug('========before update triggrer tetiklendi.==========');
    //     System.debug('trigger new = ' + trigger.new);
    //     System.debug('Trigger old = ' + trigger.old);
    //     System.debug('Trigger new map = ' +  trigger.newMap);
    //     System.debug('Trigger old Map = ' + trigger.oldMap );
    //     System.debug('=====================================================');
    // }
   
    // if(trigger.isUpdate&& trigger.isAfter){
    //     System.debug('==========after update trigger tetiklendi.==========');
    //     System.debug('trigger new = ' + trigger.new);
    //     System.debug('Trigger old = ' + trigger.old);
    //     System.debug('Trigger new map = ' +  trigger.newMap);
    //     System.debug('Trigger old Map = ' + trigger.oldMap );
    //     System.debug('=====================================================');
    // }
}