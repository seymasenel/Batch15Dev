@isTest
public class ContactQueueableApexTest {
    @isTest
    static void contactQueueTest(){
       //creating test datas
        list<Account> accList = new list<Account>();
        for(integer i=0; i<200; i++){
            Account acc = new Account();
            acc.name='Test Queue ' +i;
            if(i <= 100){
                acc.Active__c='Yes';
            }
            accList.add(acc);
        }
        insert accList;
        //inserting data to test area
        Test.startTest();
        list<Account> insertAcc = [SELECT Id FROM Account WHERE Active__c ='Yes'];
        ContactQueableapex cQ = new ContactQueableapex(insertAcc);
        System.enqueueJob(cQ);        
        Test.stopTest();
        
        //Asssertion part

        List<Contact> createdContacts = [SELECT Id, LastName, AccountId FROM Contact];
        Assert.areEqual(accList.size(), createdContacts.size());

        for(Contact c : createdContacts){
            Assert.isTrue(c.lastname.contains('Queueable'));     
        }

    }
}



