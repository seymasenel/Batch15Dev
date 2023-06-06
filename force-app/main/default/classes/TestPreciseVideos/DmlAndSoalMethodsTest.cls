@isTest
public class DmlAndSoalMethodsTest {
    @isTest
    private static void createAccountTest() {
        test.startTest();
        DmlANdSoqlMethods.createAccount();
        test.stopTest();


        list<account> accList =[select id, name from account where name ='Salesforce'];
        assert.areEqual(1, accList.size());
        assert.areEqual('Salesforce', accList[0].name);
    }
    @isTest
    private static void createAndUpdateAccountTest() {
        test.startTest();
        DmlANdSoqlMethods.createAndUpdateAccount();
        test.stopTest();

        list<account> accList=[select id , name from account];
        assert.areEqual(1, accList.size());
        assert.areEqual('Softinnovas Inc.', accList[0].name);
    }

    @isTest
    private static void createContactTest() {
        account acc = new account();
        acc.name='Salesforce';
        insert acc;


       
        test.startTest();
        DmlANdSoqlMethods.createContact();
        test.stopTest();

       
        list<contact> conList=[select id , name from contact where lastname='Doe'];
        assert.areEqual(1, conList.size());
    }
}