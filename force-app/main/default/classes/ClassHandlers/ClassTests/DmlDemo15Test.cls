@isTest
public class DmlDemo15Test {
   @isTest
    private static void testDml1() {
       //this is create one record
        //where? it will not create record in the org
        DmlDemo15.dmlInsertDemo1();

        //how to assert if record is created?
        //soql
        list<account> listAcc =[select id, name from account];
        system.assertEquals(1, listAcc.size());
        assert.areEqual(1, listAcc.size());

        assert.areEqual('Salesforce', listAcc[0].name);
    }
    @isTest
    private static void testDml2() {
        DmlDemo15.dmlInsertDemoCO1();
        list<Department__c> listAcc =[select id, name from Department__c];
        system.assertEquals(1, listAcc.size());
        system.assertEquals('Human Resource', listAcc[0].Name__c);
        
    }
    @istest
    static void testDml3(){
       
            account acc = new account(name ='Test');
            insert acc;
            
        
        DmlDemo15.dmlUpdateDemo2();
        list<account> accList =[select id, name from account];
        system.assertEquals('Softinnovas Inc.',accList[0].name);
        
    }
    @isTest
    private static void testDML4() {
        //prepare data
            //what data?
        Department__c dept = new Department__c(Name__c = 'QA');
        insert dept;

        //call method
        DmlDemo15.insertRelatedRec2();

        //assert
            //what to assert?
        Employee__c emp = [select id, name, first_name__c, last_name__c, Department__c from Employee__c where Department__c = :dept.id limit 1];
        Assert.areEqual('Don', emp.First_Name__c);
    }
    @isTest
    static void testdml5(){
        list<account> accs = new list<account>();
        for(integer i=1; i<=1555; i++){
            account acc = new account(name='Trying someting new Babe ' + i );
            accs.add(acc);
        }
        if(!accs.isEmpty()){
            insert accs;
        }

        test.startTest();
        DmlDemo15.bulkUpdateRight();
        test.stopTest();

        list<account> listAcc =[select name from account where id = :accs ];

        for(account acc: listAcc){
            system.assertEquals(acc.name + ' v2', acc.name);
        }
        //assert.isTrue(acc.name.contains('v2'));

    }
}
