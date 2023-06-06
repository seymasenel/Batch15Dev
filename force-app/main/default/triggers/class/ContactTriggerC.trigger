trigger ContactTriggerC on contact (before insert, after insert, before update, after update) {
  
    //Trigger .isbefore is true when record reaches BEFORE trigger of timeline

    // if(trigger.isBefore){
    //     System.debug('Before trigger called.');
    //     if(trigger.isInsert){
    //         System.debug('Before insert trigger called.');
    //     }
    //     if(trigger.isUpdate){
    //         System.debug('Before update trigger called.');
    //     }
    // }

    // if(trigger.isAfter){
    //     System.debug('After trigger called.');
    //     if(trigger.isInsert){
    //         System.debug('After insert trigger called.');
    //     }
    //     if(trigger.isUpdate){
    //         System.debug('After update trigger called.');
    //     }
    // }
}