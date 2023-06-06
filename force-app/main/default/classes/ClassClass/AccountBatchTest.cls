@isTest
public class AccountBatchTest {
    @isTest
    private static void accountBatchTest() {
        List<Account> testAccounts = new List<Account>();
        for (Integer i = 0; i < 900; i++) {
            Account acc = new Account(name = 'Test Account ' + i, description = 'Test Description', active__c = 'Yes');
            testAccounts.add(acc);
        }
        insert testAccounts;

        AccountsBatch ab = new AccountsBatch();
        Test.startTest();
        Database.executeBatch(ab, 900);
        Test.stopTest();

        List<Account> accL =[select id, name , description from Account ];

       for(account eachAcc: accL){
        assert.isTrue(eachAcc.Description.containsIgnoreCase('batch'));
       }

    }
}
