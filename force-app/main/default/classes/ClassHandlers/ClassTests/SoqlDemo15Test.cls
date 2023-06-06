@isTest
public  class SoqlDemo15Test {
 //we can create common records in a test class using TESTSETUp method.
    // we can use it in both test methods

    @TestSetup
    static void makeData(){
        list<account> accs = new list<account>();
        for(integer i=1; i<=15; i++){
            account acc = new account(name='Trying someting new Babe ' + i, Industry='Energy' );
            accs.add(acc);
        }
        insert accs;

        
        list<contact> listCon = new list<contact>();
        for (integer i=0; i<30; i++){
            contact con = new contact(lastname ='Testng', accountid = accs[0].id);
            listCon.add(con);
        }
        insert listCon;

        list<opportunity> listOpp = new list<opportunity>();
        for (integer i=0; i<30; i++){
            Opportunity opp = new Opportunity(name ='Test Man', stagename='New', closedate =date.today(), amount = 50000, accountid = accs[0].id);
            listOpp.add(opp);
        }
        insert listOpp;

        Department__c dep= new Department__c();
        dep.name__c='Again Test';
        insert dep;
        Employee__c emp = new Employee__c();
        emp.First_Name__c='Child of dep';
        emp.Department__c= dep.id;
        insert emp;

    }

        

    @isTest
    static void testSoql1(){
        //we can use acc records created in SEtup
        SoqlDemo15.oppAccQuery();
    }

    @isTest
    static void testSoql2(){
        //we can use acc records created in SEtup
        SoqlDemo15.accContactQuery();
    }

    @isTest
    static void testSoql3(){
        //we can use acc records created in SEtup
        SoqlDemo15.detmenDetails();
    }

}