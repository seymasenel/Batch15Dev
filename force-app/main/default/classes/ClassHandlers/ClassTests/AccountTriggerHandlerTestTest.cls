@isTest
public class AccountTriggerHandlerTestTest {
    @isTest
    private static void insertANdUpdateTest() {
        account acc = new account();
        acc.name='Demo';
        //tets insert edildiginde olmus oluyor
        insert acc;

        acc.name='Demo update';
        //test; update yazildiginda test gerceklesmis oluyor..
        update acc;

        account acc2= [select id, name , description ,(select id from contacts) from account where name='Demo update'];
        //olusan contact var i?
        System.assert(acc.contacts.size()>0);
        //description kontrolunu yapalim..
        System.assertEquals('Bu recordda isim degisikligi oldu', acc2.Description);
    }
}