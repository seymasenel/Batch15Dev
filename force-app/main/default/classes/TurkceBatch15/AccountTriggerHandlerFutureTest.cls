
@isTest
public  class AccountTriggerHandlerFutureTest {
   @isTest
   private static void updateDescription() {
        account acc = new account();
        acc.name='Account Future Futuree';
        insert acc;

        Opportunity opp= new Opportunity();
        opp.name ='Opportunity FU Test';
        opp.CloseDate=date.today().addDays(30);
        opp.StageName='Prospecting';
        opp.Accountid=acc.id;
        insert opp;

        contact con = new contact();
        con.LastName='Contact Future T';
        con.AccountId=acc.id;
        insert con;

        acc.Description='Hello Description';

        test.startTest();
        update acc;
        test.stopTest();

        Opportunity opp1 = [select id, description from Opportunity where accountid =:acc.id limit 1];
        assert.isNotNull(opp1.Description);
        assert.isTrue(opp1.Description.contains('Hello'));


        contact con1= [select id, description from contact where accountid =:acc.id limit 1];
        assert.isNotNull(con1.Description);
        assert.isTrue(con1.Description.contains('Hello'));

   }
}