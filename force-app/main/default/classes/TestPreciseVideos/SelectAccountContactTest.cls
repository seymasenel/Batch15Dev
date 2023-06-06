@isTest
public class SelectAccountContactTest {
    @isTest
    private static void selectAccountTest() {
        account a = new account();
        a.name ='any account';
        insert a;

        contact c = new contact();
        c.LastName='literally';
        c.AccountId=a.id;
        insert c;

        SelectAccountContact.selectAccCont('any account', 'literally');
        
        list<opportunity> opps =[select id, name , accountid from Opportunity where name = 'opp of any account'];
        System.assert(opps.size()== 1);
        system.assertEquals(a.id, opps[0].accountid);
    }
}