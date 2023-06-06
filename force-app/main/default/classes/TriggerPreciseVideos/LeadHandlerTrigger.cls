public class LeadHandlerTrigger {
    public static void updateClosedLostDate(list<lead> nLeadlist, list<lead> oLeadList, map<id, lead> nLeadMap,map<id, lead> oLeadMap) {

        boolean wantToupdateDate = false;
            for(lead eachLEad : nLeadlist){
                       if(oLeadList==null){
                    //then go ahead and update the dates.
                    wantToupdateDate = true;
                }
                if(oLeadList != null){
                    //check if STATUS is changed, then ONLY go ahead and update the dates.
                    if(oLeadMap.get(eachLead.id).Status != eachLead.status && eachLead.Status=='Closed - Not Converted'){
                        wantToupdateDate = true;
                    }
                }
                switch on eachLEad.status {
                 //if status = contacted
                    // contacted date - now
                 //if created and status= open
                    //created date
                 //if status = closed won
                    //closed won date = now 
                    when null{
                        eachLEad.Created_Date__c = Datetime.now();
                    }
                    when ' ' {
                        eachLEad.Created_Date__c = Datetime.now();
                    }
                    when 'Open - Not Contacted'{
                        eachLEad.Created_Date__c = Datetime.now();
                    }
                    when 'Working - Contacted'{
                        eachLEad.Contacted_Date__c = Datetime.now();
                    }
                    when 'Closed - Converted'{
                        eachLEad.Closed_Won_Date__c = Datetime.now();
                    }
                    when 'Closed - Not Converted'{
                        eachLEad.Closed_Lost_Date__c = Datetime.now();           
                    }
                }     
        }
    }    
       public static void checkClosedLostReason(list<lead> nLeadlist, list<lead> oLeadList, map<id, lead> nLeadMap,map<id, lead> oLeadMap){
        for(lead eachLead : nLeadlist){
            //if it is inseet and status is closed lost
                //and reason is emtpy
                //then VALIDATE --
            //if it is update and status is changed
                //and status is close lost
                //andreason is empty
                //then validate
             if(oLeadList == null || oLeadList != null ){
                if(eachLead.status == 'Closed - Not Converted' && eachLead.Closed_Lost_Resson__c == null){
                    eachLead.Closed_Lost_Resson__c.addError('Tell us why not converted. Now. Right Now!!');
                }
             }
        }   
    }
    public static void changeOfName(list<lead> leadTriggerNew) {
        //1. trigger new i bir for dongusune alip first nameleri update etmeliyim
        // for(lead eachLead: leadTriggerNew){
        //     eachLead.firstname='SF. Developer. ' + eachLead.firstName;
        // }
    } 
    
}
