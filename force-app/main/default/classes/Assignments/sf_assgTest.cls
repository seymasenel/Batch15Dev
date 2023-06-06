@isTest
public class sf_assgTest {
    @isTest
    public static void insertsfTest() {
        sf_assg.insertsf();
        list<Salesforce_Project__c> ListSP=[select id, Project_Name__c from Salesforce_Project__c];
        System.assertEquals(10, ListSP.size());
        for(Salesforce_Project__c sP: ListSP){
            system.assertEquals('Phone23', sP.Project_Name__c);
        }
    }
    @isTest
    private static void updateSFTest(){
        List<Salesforce_Project__c> projectsList = new List<Salesforce_Project__c>();
        for (Integer i = 0; i < 10; i++) {
            Salesforce_Project__c varsf = new Salesforce_Project__c(Project_Name__c = ' Phone');
            projectsList.add(varsf);
        }
        insert projectsList;

        test.startTest();
    
        sf_assg.updatesf();

        test.stopTest();

        List<Salesforce_Project__c> updateList = [SELECT Id, Project_Name__c FROM Salesforce_Project__c w];
        System.assertEquals(1, updateList .size()); 
        system.assertEquals('Phone2', updateList[0].Project_Name__c); 
    }
}