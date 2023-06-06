public class SoqlVideo3 {
    public static void fetchOppAndAccount(){
        List<Opportunity> listOfOpp = [ SELECT Id, Name, Amount, StageName, AccountId, account.name, account.phone, account.type, account.industry FROM Opportunity WHERE stageNAme != 'Closed Won' and StageName != 'Closed Lost'];

        system.debug('Listof opps = ' + listOfOpp);

        for(Opportunity opp: listOfOpp){
            system.debug(opp);
            system.debug('Opp name is ' + opp.name + ', amount and stage name of opp is ' + opp.Amount + '&' + opp.StageName );

            if (opp.AccountId != null) {
                System.debug('Opportunity\'s account --> ' + opp.Account.Name + ' ' + opp.Account.Phone + ' ' + opp.Account.Industry);
            } else {
                System.debug('Opportunity not related to any account.');
            }
        }
    }

    public static void totalAmounts(){
        List<Account> listAcc = [select id, name, (select id, name, amount from opportunities) from account];
        Map<Id,Decimal> accountTotalAmountMap = new Map<Id,Decimal>();

        for(account eachAcc : listAcc){
            System.debug('For dongusu start');
            System.debug('Account ismi => ' + eachAcc.name);
            List<Opportunity> listOpp = eachAcc.Opportunities;
            if(!listOpp.isEmpty()){
                decimal total =0;
                for(Opportunity eachOpp : listOpp){
                    total+= eachOpp.Amount;
                }
                accountTotalAmountMap.put(eachAcc.id, total);
            }
            System.debug('For dongusu finish');
        }
        System.debug('Accountlara bagli olan opportuniylerin amount toplmlari MAp = ' + accountTotalAmountMap);
    }
}