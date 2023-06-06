public  class SalesforceTicketHAndler {
    public static void updateStatus(List<Salesforce_Ticket__c> stTriggerNEw, map<id, Salesforce_Ticket__c> stTriggerOldMAp ){
        //1. Etkilenen salesforce__project recordlarina ait id leri  bir set yapida toplayalim.
        set<id> spIds= new set<id>();
        for(Salesforce_Ticket__c st: stTriggerNEw){
            if(st.Status__c == 'Completed' && stTriggerOldMAp.get(st.id).status__c != st.status__c){
                spIds.add(st.Salesforce_Project__c);
            }
        }

        //2. bu id lere ait tum salesforce_project__c recordlarini tum bagli ticketlar ile beraber soql ile listeleyim.
        List<Salesforce_Project__c> spList = [select id, status__c, (select id, status__c from Salesforce_Tickets__r where status__c != 'Completed') from Salesforce_Project__c where id in :spIds];
        
        //salesforce_project__c recordlarini bir for dongusune alalim. Her bir recordun ticketlerini kontrol edecegiz. 'Completed' olmayan record yoksa bunun statusunnu 'Completed' yapacagiz.
        if(!spList.isEmpty()){
            for(Salesforce_Project__c sp: spList){
                if(sp.Salesforce_Tickets__r.isEmpty()){
                    sp.Status__c='Completed';
                }
            }
        }
        update spList;
    }

}