public class DepartmentsBatch implements Database.Batchable<sObject> {

    public Database.QueryLocator start(Database.BatchableContext BC) {
        return Database.getQueryLocator([SELECT Id, Number_Of_Employees__c, (SELECT id FROM employees__r)from Department__c]);
    }

    public void execute(Database.BatchableContext BC, List<Department__c> scope) {
        System.debug('Inside execute method..');

        for(Department__c eachDep: scope){
            if(eachDep.Employees__r != null){
                eachDep.Number_Of_Employees__c = eachDep.Employees__r.size();
            }
        }
        update scope;
    }

    public void finish(Database.BatchableContext BC) {
        System.debug('Vitap will write something buddy');
    }

} 