@isTest
public class SoqlAndDmlDemoTurkceTest {
    @isTest
    private static void getAccWithOppTest() {
        list<account> accList = new list<account>();
        account acc = new account();
        acc.name='Demo 1';
        accList.add(acc);

        account acc2 = new account();
        acc2.name ='Demo 2';
        accList.add(acc2);

        insert accList;
        list<opportunity> oppList = new list<opportunity>();
        for(account acc3: accList){
            Opportunity opp = new Opportunity();
            opp.name = acc.name + ' Opportunity';
            opp.CloseDate= date.today().addDays(30);
            OPP.StageName='Prospecting';
            opp.AccountId = acc.id;
            oppList.add(opp);
        }
        insert oppList;
        test.startTest();
        integer accSys = SoqlAndDmlDemoTurkce.getAccWithOpp();
        test.stopTest();
        assert.areEqual(2, accSys);
    }
    @isTest
    private static void createAccountTest() {
        test.startTest();
        SoqlAndDmlDemoTurkce.createAccount('Softinnovas');
        test.stopTest();
        account acc = [select id, name from account limit 1];
        assert.areEqual('Softinnovas', acc.name);
        list<contact> conList =[select id from contact];
        assert.isTrue(conList.size()>0);
    }
}