public class LeadBatchApexAssg implements Database.Batchable<sObject> {

    public Database.QueryLocator start(Database.BatchableContext BC) {
        return database.getQueryLocator([SELECT Id, Description FROM Lead WHERE LeadSource ='Web']);
    }

    public void execute(Database.BatchableContext BC, List<Lead> scope) {
        list<Lead> upsLeads= new List<Lead>();
        for(Lead l : scope){
            l.Description = 'Updated by Scheduled batch at ' +
             Datetime.now();
             upsLeads.add(l);
        }
        update upsLeads;
    }

    public void finish(Database.BatchableContext BC) {
        System.debug('Lead Batch Apex processed.');
    }
}

