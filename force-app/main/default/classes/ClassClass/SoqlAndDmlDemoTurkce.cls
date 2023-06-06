public class SoqlAndDmlDemoTurkce {
    public static integer getAccWithOpp() {
        List<Opportunity> lstOpp =[select id, name, accountId from Opportunity where AccountId != null];

        set<id> accIds = new set<id>();

        for(Opportunity opp: lstOpp){
            accIds.add(opp.AccountId);
        }
        list<account> lstAcc = [select id, name from account where id in : accIds];

        system.debug(lstAcc.size());
        return lstAcc.size();
    }

    public static integer getAccWithOpp2(){
        List<Account> lstAcc = [select id, name from account where id in (select accountId from Opportunity where AccountId != null)];
    }

    public static void createAccount(string isim){
        Account acc = new Account();
        acc.name= isim;
        insert acc;
        
        // contact con = new Contact();
        // con.LastName='Contact';
        // con.FirstName='Demo';
        // con.AccountId = acc.Id;

        // insert con;

        list<contact> lstCon = new list<contact> ();
        for(integer i=1; i<=5 ; i++){
            contact con=new contact();
            con.firstname= isim;
            con.LastName='Contact ' + i;
            con.AccountId= acc.id;
            lstCon.add(con);
        }
        insert lstCon;
    }
    public static void highestAnnualRevenue(){
        account acc =[select id, name, annualRevenue, description from account where AnnualRevenue != null order by AnnualRevenue desc limit 1];
        string message = date.today() + ' tarihi itibariyle ' + acc.name + ' accountunun annualRevenue si ' + acc.AnnualRevenue + 'tum accountlar icinde en buyuktur.';
        acc.Description=message;

        update acc;


    }
}
