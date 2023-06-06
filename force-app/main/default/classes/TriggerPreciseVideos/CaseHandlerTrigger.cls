public class CaseHandlerTrigger {
    public static void printStatusDetails(list<case> newCase, list<case> oldCase, map<id, case> newCaseMAp, map<id, case> oldCaseMap) {
        //this part for inserting
        if(oldCase==null){
            for(case eachCase: newCase){
                System.debug('Satus set to ' + eachCase.status);
            }
        }
        //this part for updating
        if(oldCase!=null){
            for(case eachCase: newCase){
                case old = oldCaseMap.get(eachCase.id);
                if(old.status !=eachCase.status){
                    System.debug('Status updated to ' + eachCase.status + ', from ' + old.Status);
                }
            }
        }
    }
    public static void createDefaultTask(list<case> caseTriggerNewL) {
       //Create default task with Subject='Email' when case is created  
        //create task list
        list<task> createTask = new list<task>();

        //for loop on case
        for(case eachCase : caseTriggerNewL){
            //create a task
            task t = new task();
            //set fields
            t.Subject='Email';
            t.Priority='Normal';
            t.WhoId= eachCase.ContactId;
            t.WhatId= eachCase.id;
            t.ActivityDate= date.today();
            createTask.add(t);
            // add to task list
        }
        if(!createTask.isEmpty()){
            insert createTask;
        }
    }
}