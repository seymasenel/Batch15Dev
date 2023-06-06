@isTest
public class DmlAndSoqlMethodsTest {
   @TestSetup
   static void makeDAate(){
    list<account> accList = new list<account>();

   account acc = new account();
   acc.name = 'Salesforce';
   acc.industry='Education';
   accList.add(acc);

   account acc1 = new account();
   acc1.name = 'Softinnovas';
   acc1.industry='Energy';
   accList.add(acc1);

   account acc2 = new account();
   acc2.name = 'Softinnovas Inc.';
   acc2.industry='Education';
   accList.add(acc2);

   insert accList;

   list<contact> conList = new list<contact>();
   for(integer i=1; i<=300; i++){
    if(i<=100){
        contact c = new contact();
        c.lastname ='Test 1';
        c.accountid=acc.id;
        conList.add(c);
    }else if(1<=200){
        contact c = new contact();
        c.lastname ='Test 2';
        c.accountid=acc1.id;
        conList.add(c);
    }else{
        contact c = new contact();
        c.lastname ='Test 3';
        c.accountid=acc2.id;
        conList.add(c);
    }
   }
   update conList;
} 
   
    @istest
    private static void accountSelectindustryTest() {
        test.startTest();
        integer sz = DmlAndSoqlMethods2.accountSelectindustry('Education');
        test.stopTest();
        assert.areEqual(2, sz);
    }

    @istest
    private static void childToParentSoqlTest() {
        test.startTest();
        DmlAndSoqlMethods2.childToParentSoql();
        test.stopTest();
        list<contact> conList =[select id , lastname from contact where lastname ='Test 2 update' ];
        system.assert(conList.size()>0);
        system.assertEquals(100, conList.size());
    }
}