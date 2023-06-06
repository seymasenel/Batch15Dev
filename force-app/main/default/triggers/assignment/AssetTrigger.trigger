trigger AssetTrigger on Asset (before insert, before update , after insert, after update) {
    
        // if(Trigger.isBefore && Trigger.isInsert){
        //     AssetHandler.assetHandlerUpdate(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
        // }
        // if(Trigger.isBefore && Trigger.isUpdate){
        //     AssetHandler.assetHandlerUpdate(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
        // }
    
    if(trigger.isafter){
        AssetTriggerHandler .countTriggerRan++;
        AssetTriggerHandler .numberOFRecordsInserted+=trigger.size;
        System.debug('Trigger called');
        System.debug('Trigger ran count = ' + AssetTriggerHandler.countTriggerRan);
        System.debug('Number of record inserted = ' + AssetTriggerHandler.numberOFRecordsInserted);
    }
}