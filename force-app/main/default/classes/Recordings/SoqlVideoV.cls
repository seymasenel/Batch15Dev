public  class SoqlVideoV {
    public static void allContacts() {
        list<contact> conList =[select id, name, phone from Contact];
        system.debug(conList);
    }

    public static void latestContactOnly() {
        contact latestCnt =[select name, email from contact order by CreatedDate desc limit 1];
        System.debug('Latest created contact is ...............' + latestCnt);
        string latestCntNAme =latestCnt.name;
        System.debug('Latest contact name is ' + latestCntNAme);
        System.debug('Latest email is ' + latestCnt.email);
    }

    public static void contactWithEMail() {
        list<contact> listEmailContacts =[select id, name, email, Phone from contact where email != null];
        System.debug(listEmailContacts.size());

        for(contact eachCnt : listEmailContacts){
            system.debug('Emails --> ' +eachCnt.email.toUpperCase()  + ', names-->' + eachCnt.name.toUpperCase());
            System.debug(eachCnt.phone);
            System.debug('--------------');    
        }
    }   
    
    public static void contactFilterName(string fname){
        
        list<contact> filteredListCont =[select id, name, email, phone from contact where FirstName = :fname];
            System.debug(filteredListCont);
    }

    private static void fetchOppAndAccount() {
        list<opportunity> listOfOpps =[select id, name, amount, stagename, accountId, account.name, account.phone, account.type, account.industry from Opportunity where (StageName != 'Closed Won' and StageName != 'Closed Lost') ];
        System.debug(listOfOpps);

        for(opportunity eachOpp : listOfOpps){
            string printString ='Opp name is ' + eachOpp.name;
            printString += ', amount and stagename of opp is ' + eachOpp.amount + '&' + eachOpp.StageName;
            if(eachOpp.accountId != null){
                printstring += ', Account name od opp is ' + eachOpp.Account.Name + '('+ eachOpp.account.phone + ')';
                printString +=' account industry is ' + eachOpp.Account.Industry;
            }
            System.debug(printString);
            
        }
    }

    public static void generalMethod(){
        fetchOppAndAccount();
    }

    public static void parentToChild() {
        list<opportunity> oppList =[select id, stagename, name, account.name, (select id, name, quantity, totalprice, unitprice from opportunityLineItems) from opportunity ];
        map<id, decimal> opportunityTotalPrice =new map<id, decimal>();
        
        for (Opportunity eachOpp : oppList) {
            System.debug('EachOpp name is ' + eachOpp.name);
            if(eachOpp.OpportunityLineItems != null){
                List<OpportunityLineItem> eachOppLine = eachOpp.OpportunityLineItems;
                decimal oppTotalPrice=0;
                for(OpportunityLineItem pl : eachOppLine){
                    System.debug('Product name is ' + pl.Product2.name);
                     oppTotalPrice += pl.totalprice;
                }
                opportunityTotalPrice.put(eachOpp.id, oppTotalPrice);
            }
        }
        System.debug('Map of opp id vs total price is ' + opportunityTotalPrice);
    }
}
