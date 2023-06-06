public class AccountTriggerHandler {
    //Account objecti'nin description field'inde bir update işlemi yapıldığında o account'a bağlı opportunity ve contact'ların description field'lerini account description ile aynı olacak şekilde update eden bir "future method" tasarlayınız.
    public static void updateDescription(list<account> newAccLIst, map<id, account> accOldMap) {
        set<id> accIDs = new set<id>();
        for(account acc: newAccLIst){
            if(acc.Description != accOldMap.get(acc.id).Description){
                accIds.add(acc.id);
        }
    }
    //Future method a idleri param olarak gonder
    futureDescriptionUpdate(accIds);
}
  
  


    @future
    public static void futureDescriptionUpdate(set<id> accIds) {
      //related cons
     list<contact> conList =[select id, description, account.description from contact where accountid in : accIds];
     
     for(contact con: conList){
        con.Description=con.Account.Description;
      }
      update conList;
      
      //related opps
      List<Opportunity> opplist =[select id, name, description , account.description from Opportunity where accountid =:accIds];

      for(opportunity opp: opplist){
        opp.Description= opp.Account.Description;
      }
      update opplist;
    }


}
