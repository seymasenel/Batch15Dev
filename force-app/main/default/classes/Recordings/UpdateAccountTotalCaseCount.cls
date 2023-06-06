public class UpdateAccountTotalCaseCount {
    @invocablemethod
    public static void updateTotalCaseCount(list<id> listaccountId ) {
        list<aggregateResult> caseAGR=[select count(id) casescount, accountid from case where accountid in :listaccountId group by accountid];
        list<account> updateAccounts = new list<account>();

        for(AggregateResult agr: caseAGR){
            System.debug('agr = ' + agr);
            System.debug('agr cases count = ' + agr.get('casesCount'));
            System.debug('agr accountid = ' + agr.get('accountId'));
            integer countOfCases = integer.valueOf(agr.get('casescount'));
            account acc= new account();
            acc.Total_Case_Count__c=countOfCases;
            acc.id=string.valueOf(agr.get('accountid'));
            updateAccounts.add(acc);
        }
        update updateAccounts;
    }
}