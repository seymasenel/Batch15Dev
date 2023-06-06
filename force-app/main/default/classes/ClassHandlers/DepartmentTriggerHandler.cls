public class DepartmentTriggerHandler {
    @future
    public static void createDefaultEmp(set<id> dpIds) {
        List<Employee__c> listEMp = new List<Employee__c>();
        for(id eachID: dpIds){
            Employee__c e = new Employee__c(First_Name__c ='Richard', Last_Name__c='Milles', Department__c=eachID, JoinDate__c=date.today());
            listEMp.add(e);
        }
        insert listEMp;
    }
}