public class ContactTriggerHAndler {
    // public static void updateContactPhone(list<contact> conTriggerNEw>) {
    //     //1.Bir accounta bagli contactlarin bagli olduklari accountlarin id'lerini bir set yapida toplamaliyim.
    //     set<id> accIds = new set<id>();
    //     for(Contact cn: conTriggerNEw){
    //         if(cn.AccountId != null){
    //             accIds.add(cn.AccountId);
    //         }
    //     }
    //     //2. Soql ile bu accountlarin recordlarina ulasirim..
    //     list<account> accList = [SELECT id, phone FROM acoount WHERE id IN :accIds];

    //     if(!accList.isEmpty()){
    //         //3. Account recordlari id lerine gore bir map e donusturursem, guncellemeyi cok daha kolay yapmis olurum

    //         map<id, account> accMap = new map<id, account>();
    //         for(account ac: accList){
    //             accMap.put(ac.id, ac);
    //         }

    //         //4. contactlistesinin icine girip guncelleme yapalim.

    //         for(contact cn: conTriggerNEw){
    //             if(cn.AccountId != null){
    //                 cn.OtherPhone=accMap.get(cn.AccountId).Phone;
    //             }
    //         }
    //     }
        
    // }
}