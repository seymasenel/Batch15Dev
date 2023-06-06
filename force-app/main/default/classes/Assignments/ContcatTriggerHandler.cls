public  class ContactTriggerHandler {
    //Soru : Yeni bir Contact create edilip bir Accounta bağlandığında, Accounta bağlı bir Contact delete edildiğinde veya Bir Contact update edilerek bir Account ile bağlantısı kesilirse veya baska bir Accounta bağlanırsa ya da bağlantı değişirse Accountta Number_of_Contacts__c fieldi güncellenecek..
   public static void insertMetot(List<Contact> conTriggerNew) {
      Set<Id> accIds = new Set<Id>();
      for (Contact con : conTriggerNew) {
         if (con.AccountId != null) {
             accIds.add(con.AccountId);
         }
      }
      if (!accIds.isEmpty()) {
         numberOfContacts(accIds);
      }
    } 
    public static void updateMetot(List<Contact> conTriggerNew, Map<Id,Contact> conTriggerOldMap) {
        Set<Id> accIds = new Set<Id>();
        for (Contact con : conTriggerNew) {
            contact oldCon = conTriggerOldMap.get(con.id);
            if (con.AccountId != oldCon.AccountId) {
               accIds.add(con.AccountId);
               accIds.add(oldCon.AccountId);
            }
        }
        if (!accIds.isEmpty()) {
         numberOfContacts(accIds);
        }
    } 
    public static void deleteMetot(List<Contact> conTriggerOld) {
        Set<Id> accIds = new Set<Id>();
        for (Contact con : conTriggerOld) {
           if (con.AccountId != null) {
               accIds.add(con.AccountId);
           }
        }
        if (!accIds.isEmpty()) {
         numberOfContacts(accIds);
        }
    }
    public static void numberOfContacts(Set<Id> accIds) {
       List<Account> accList = [select id, Number_of_Contacts__c, (select id from contacts) from account where id in : accIds];
       for (Account acc : accList) {
         List<Contact> conList = acc.Contacts;
         acc.Number_of_Contacts__c = conList.size();
          //acc.Number_of_Contacts__c = acc.Contacts.size();
       }
       update accList;
    }







       // set<id> accountIds = new set<id>();
        // for(contact eachCon: newConList){
        //     accountIds.add(eachCon.AccountId);
        // }
        // list<account> accList =[select id, Number_of_Contacts__c, (select id from contacts) from account where id in :accountIds ];

        // if(!accList.isEmpty()){
        //     list<account> updateAcc = new list<account>();
        //     for(account eachAcc: accList){
        //         account acc = new account(id= eachAcc.id, Number_of_Contacts__c = eachAcc.Contacts.size());
        //         updateAcc.add(acc);
        //     }
        //     if(!updateAcc.isEmpty()){
        //         update updateAcc;
        //     }
        // }
    
 }
       
       
       
       
     

