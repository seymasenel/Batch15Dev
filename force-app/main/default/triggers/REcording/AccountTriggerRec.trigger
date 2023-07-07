trigger AccountTriggerRec on Account (before insert) {

    // System.debug('Trigger tetiklendi.');
    // System.debug('Trigger isBefore= ' + trigger.isBefore);
    // System.debug('Trigger isAfter= ' +  trigger.isAfter);
    // System.debug('Trigger isInsert = ' + trigger.isInsert);
    // System.debug('Trigger isUpdate = ' + trigger.isUpdate);
    // if(trigger.isBefore && trigger.isInsert){
    //     System.debug('Before insert drumunda calisti.');
    // }
    // if(trigger.isAfter && trigger.isInsert){
    //     System.debug('After insert drumunda calisti.');
    // }
    // if(trigger.isBefore && trigger.isUpdate){
    //     System.debug('Before Update drumunda calisti.');
    // }
    // if(trigger.isAfter && trigger.isUpdate){
    //     System.debug('After update drumunda calisti.');
    // }
    // System.debug('===============END===============');

    // System.debug('============================================');
        //1 Account create edildiğinde. ona bağlı 7 tane Contact otomatik olarak create edilsin. first name'i account name ile aynı olsun. last name i contact 1 2 3.. diye isimlendirilsin..
    // if(trigger.isAfter && trigger.isInsert){
    //     list<contact> conList = new list<contact>();
    //     for(account acc: trigger.new){
    //         for(integer i =1; i<=7; i++){
    //             contact con = new contact();
    //             con.FirstName=acc.name;
    //             con.LastName='Contact' + i;
    //             con.AccountId= acc.id;
    //             conList.add(con);
    //         }
    //     }
    //     if(!conList.isEmpty()){
    //         insert conList;
    //     }  
    // }
     // 2. Bir account update edildiğinde name değişmişse description fieldine name değişti mesajı yazdır..
    //  if(trigger.isBefore && trigger.isUpdate){
    //     //yeni name ve eski name yazdiralim.
    //     for(account acc: trigger.new){
    //         System.debug('Account new name = ' + acc.name);
    //         System.debug(('Account old name = ' + trigger.oldMap.get(acc.id).name));
    //         if(acc.name != trigger.oldMap.get(acc.id).name){
    //             acc.Description= 'Bu recordun Name i degisti.';
    //         }
    //     }
    //  }
}