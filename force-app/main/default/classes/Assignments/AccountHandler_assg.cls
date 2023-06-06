public class AccountHandler_assg {
    public static void createContact(LIST<Account> accListNew, LIST< Account > accListOld ,MAP<ID, Account > accMapNew , MAP<ID, Account > accMapOld) {
       list<contact> conList = new list<contact>();
        for(account eachAcc : accListNew){
            contact c = new contact();
            c.LastName=eachAcc.Name;
            c.AccountId=eachAcc.id;
            conList.add(c);
        }
        if(!conList.isEmpty()){
            insert conList;
        }
    }

    @future
    public static void updateNumberOfContacts(set<id> accIds){
        
        list<account> listAcc=[SELECT Id, Name, Number_of_Contacts__c,(SELECT ID FROM Contacts) FROM Account WHERE ID IN :accIds];

        for(Account eachAcc: listAcc ){
            eachAcc.Number_of_Contacts__c = eachAcc.Contacts.size();
        }
        update listAcc;
    }
    
}