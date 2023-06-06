@isTest
public class DepartmentTriggerHandlerTest {
    @isTest
    private static void createDefaultEmpTest() {
        list<department__c> listDep = new list<department__c>{
        new Department__c(Name__c = 'Test'),
        new Department__c(Name__c = 'Soql'),
        new Department__c(Name__c = 'Trigger'),
        new Department__c(Name__c = 'Dml')   
        };
    // test.startTest();
    insert listDep;
    // test.stopTest();

    set<id> setIDs = new set<id> {listDep[0].id, listDep[1].id};
    DepartmentTriggerHandler.createDefaultEmp(setIDs);

    List<Employee__c> listEmp=[select id, first_name__c from Employee__c];
    for(Employee__c eachEmp: listEmp){
        assert.areEqual('Richard', eachEmp.first_name__c);
    }
    
    }
}