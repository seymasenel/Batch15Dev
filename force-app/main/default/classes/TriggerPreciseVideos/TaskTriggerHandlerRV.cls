public class TaskTriggerHandlerRV {
   //Next_Activity_Date__c(lead) should be auto populated with 'Upcoming' Task Date.
    //if task is closed/deferred, update the Next_Activity_Date__c with OPEN upcoming taskf                                                   
    public static void updateLeadNextActivityDate(list<task> nTaskL, list<task> oTaskL, map<id, task> nTaskMap, map<id, task> oTaskMap) {
        //handler
        //inserted
        set<id> setOfLeadID = new set<id>();
          for(task eachTask : nTaskL){            
                //eachTasl whoId is of Lead
            if(eachTask.WhoId != null && eachTask.whoId.getSobjectType().getDescribe().getName() =='Lead' && eachTask.ActivityDate != null &&
                (
                    oTaskL == null
                        ||
                    (oTaskL!= null && (eachTask.ActivityDate != oTaskMap.get(eachTask.id).ActivityDate) || (eachTask.Status != oTaskMap.get(eachTask.id).Status)
                )
                )){
                    setOfLeadID.add(eachTask.WhoId);
                }                      
            }                
            if(setOfLeadID.isEmpty()){
                return;
            }
        list<lead> allLeads =[SELECT Id, Name, Next_Activity_Date__c, 
                             (SELECT Id, ActivityDate, Status 
                              FROM Tasks
                              WHERE Status !='Completed' and Status != 'Deferred' ORDER BY ActivityDate 
                              LIMIT 1) 
                              FROM Lead 
                              WHERE Id 
                              IN :setOfLeadID ];   
        list<Lead> updateLeads= new list<Lead>();
        for(lead l : allLeads){
            if(l.Tasks != null && !l.Tasks.isEmpty()){
                task t =l.Tasks[0];

                if(t.ActivityDate >= date.today()){
                    l.Next_Activity_Date__c = t.ActivityDate;
                }else{
                    l.Next_Activity_Date__c=null;
                }
            }else{
                l.Next_Activity_Date__c= null;
            }
            updateLeads.add(l);
        }
        if(!updateLeads.isEmpty()){
            update updateLeads;
       }
    }  
}
  