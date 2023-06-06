trigger AccountTriggerPrecise on account (before insert, after insert, before update, after update) {
    //1 account create edildiginde. ina bagli 7 tae contact otomatik olarak create edilsin. First namei accountun name ile ayni olsun. lastname i contact 1 2 3.. diye isimlendirilsin..
//     if(trigger.isInsert && trigger.isAfter){
//         AccountTriggeraHandlerPricesTest.createContacts(trigger.new);
//     }

//     //2. bir account update edildiginde name degismisse description filedine name degisti mesaji yazdir.
//     if(trigger.isUpdate && trigger.isBefore){
//         // for(account acc: trigger.new){
//         //     if(acc.name != trigger.oldMap.get(acc.id).name){
//         //         acc.Description='Bu recordda isim degisikligi oldu';
//         //     }
//         // }
//         AccountTriggeraHandlerPricesTest.updateName(trigger.new, trigger.OldMap);
//     }
}