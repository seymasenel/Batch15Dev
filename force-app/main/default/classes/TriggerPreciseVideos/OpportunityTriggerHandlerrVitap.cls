public class OpportunityTriggerHandlerrVitap {
    @future
    public static void updateOwner(set<id> oppIds) {
        System.debug('Future method called.');
        // get records using set of id
        list<opportunity> listOpp =[select id, ownerid, new_owner__c from Opportunity where id in :oppIds];
        List<Opportunity> updateOpps = new List<Opportunity>();
        
        map<id, string> mapUserIDTitle = new map<id, string>();
        for(Opportunity eachOpp : listOpp){
            if(eachOpp.new_owner__C != null){
                mapUserIDTitle.put(eachOpp.new_owner__c, eachOpp.name+ ' Manager');
                eachOpp.OwnerId = eachOpp.new_owner__c;
                eachOpp.new_owner__c = null;
                updateOpps.add(eachOpp);
            }
            //set owner as new owner
            //set new owner as blank
        }
        if(!updateOpps.isEmpty()){
            update updateOpps;
        }
        //update
        updateUserDetails(mapUserIDTitle);
    }

    @future
    private static void updateUserDetails(map<id, string> mapUserDetail) {
        
        profile standardUserProfile =[select id from profile where name ='Standard User'];
        list<user> allUser =[select id, title, profileid from user where id in:mapUserDetail.keySet()];
        for(user eachUser: allUser){
            eachUser.ProfileId= standardUserProfile.id;
            eachUser.Title=mapUserDetail.get(eachUser.id);
        }
        update allUser;
    }
  
  
    public static void validateOppClosed(List<Opportunity> oTriggerNew, List<Opportunity> oTriggerOld, map<id, Opportunity> oTriggerNewMap, map<id, Opportunity> oTriggerOldMap ) {
       //set of id
       set<id> oppIds = new set<id>();
       //for loop on trigger new
       for(Opportunity o : oTriggerNew){
        if(o.StageName != oTriggerOldMap.get(o.id).StageName &&(o.StageName == 'Closed Won' || o.StageName =='Closed Lost')){
            oppIds.add(o.id);
        }
       }
       //check if status is changed
            //add in set od id

       //ListOPPT soql opp with tasks for set of id
       List<Opportunity> listOppTask =[select id, stagename, (select id, status from tasks where status != 'Completed' and status != 'Deferred' limit 1) from Opportunity where id in :oppIds];

       //for loop on ListOPPT
       for(Opportunity opp: listOppTask){
            if(opp.Tasks != null && opp.Tasks.size()>0){
                //validate
                Opportunity oppTriggerNew = oTriggerNewMap.get(opp.id);
                oppTriggerNew.addError('CANNOT CLOSE OPPORTUNITY. FIRST CLOSE ALL TASK. THEN COME BACK. GO AWAY NOW!!');
            }
       }
    }
}