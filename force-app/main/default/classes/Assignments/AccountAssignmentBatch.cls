public class AccountAssignmentBatch implements Database.Batchable<sObject>, Database.stateful, Schedulable{
    public integer numberOfOpps=0;
    public integer numberOfCons=0;
    public Database.QueryLocator start(Database.BatchableContext BC) {
        return Database.getQueryLocator([SELECT Id, (SELECT Id FROM Contacts), (SELECT Id FROM Opportunities) FROM Account]);
    }
    public void execute(Database.BatchableContext BC, List<Account> scope) {
        List<Opportunity> oppList = new List<Opportunity>();
        List<Contact> conList = new List<Contact>();
        for(Account acc: scope){
            if(acc.Opportunities.isEmpty()){
               Opportunity opp= new Opportunity(Name= 'Batch Apex Opp', StageName='Prospecting');
                oppList.add(opp);
                numberOfOpps++;
            }
            if(acc.Contacts.isEmpty()){
               Contact con= new Contact(LastName='Batch Apex Con');
                conList.add(con);
                numberOfCons++;
            }
        }
        if(!oppList.isEmpty()){
            insert oppList;
        }
        if(!conList.isEmpty()){
            insert conList;
        }    
    }
    public void finish(Database.BatchableContext BC) {
        System.debug('Total number of opportunities ==> ' +numberOfOpps + ', total number of Contacts ==> ' +numberOfCons);
    }
    public void execute(SchedulableContext SC){
        Database.executeBatch(new AccountAssignmentBatch(),5);
    }

}