public with sharing class EmployeeTriggerHandler {
    public static void updateJoinDate(list<Employee__c> empTriggerNew) {
        
           if(trigger.isinsert || trigger.isupdate){
              for(Employee__c eachEmp: empTriggerNew){
                 if(eachEmp.JoinDate__c == null){
                    eachEmp.JoinDate__c= date.today();
                  }
              }
         }
    }
}