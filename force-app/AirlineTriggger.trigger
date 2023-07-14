trigger AirlineTriggger on Airline__c (after insert) {
    if(trigger.isAfter && trigger.isInsert){
        for(Airline__c a : trigger.new){
            RestCallout.postAirlines(a.id);
        }
    }
}