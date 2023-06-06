public class Trigger_Map {
    public static id InsertSF_Project() {
        Salesforce_Project__c sp = new Salesforce_Project__c();
        sp.Project_Name__c='Learning Dml';
        insert sp;
        return sp.id;
    }
    public static void UpdateSF_Project(id spId, string spName){
        Salesforce_Project__c sp = [select id, Project_Name__c from Salesforce_Project__c where id = :spId ];
        sp.Project_Name__c = spName;
        update sp;
    }
}