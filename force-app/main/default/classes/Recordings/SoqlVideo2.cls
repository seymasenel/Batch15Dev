public class SoqlVideo2 {
    public static void fetchOppsAndAccount(){
        list<Opportunity> listOfOpp = [SELECT Id, Name, Amount, StageName, AccountId, account.name, account.phone, account.type, account.industry FROM Opportunity WHERE stageName != 'Closed Won' and stageName !='Closed Lost' ];
        
        system.debug('List if Opps = ' + listOfOpp);

        for(Opportunity opp: listOfOpp){
            system.debug(opp);
            system.debug('Opp name is ' + opp.name + ', amount and stage name of opp is ' + opp.amount + '&' + opp.StageName);
            if(opp.AccountId !=null){
                System.debug('Bu opp nin bagli oldugu account ' + opp.Account.Name + ' ' + opp.Account.phone + ' ' + opp.Account.Industry);
            }else{
                System.debug('Bu opp bir accounta bagli degil.');
            }
        }
    }
}