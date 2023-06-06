@isTest
public class InsertAccountContactTest {
    @isTest
    private static void insertAccountTest() {
        InsertAccountContact.insertAccount('test acc  name', 'cnt last name');

        //SOQL
        list<account>acc=[select id, name from account where name ='acc test name'];//1 acc
        system.assert(acc.size()==1);

        list<contact> cont=[select id, name, lastname, accountid from contact where lastname ='cnt last name'];
        system.assert(cont.size()==1);
        system.assertEquals(acc[0].id, cont[0].accountId);
    }

}