trigger CaseTriggerC on case (before insert) {
    System.debug(' Before insert case trigger');
    //integer recordCount = 0;
    CaseTriggerHandlerC.recordCount += trigger.size;
    System.debug('Number of records processed ' + CaseTriggerHandlerC.recordCount);
    CaseTriggerHandlerC.triggercount ++ ;
    System.debug('Total number of executin is  ' + CaseTriggerHandlerC.triggercount);
}