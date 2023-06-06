public with sharing class CntactHandlerTrigger {

//         //which all context variable we need here?
//             //new, old or oldMap
//     public static void validateContactUpdate1(
//             List<contact> cTriggerNew, 
//             List<contact> cTriggerOld,
//             Map<id, contact> cTriggerNewMap, 
//             Map<id, contact> cTriggerOldMap){
    
//                 for(Contact newContact: cTriggerNew){
//                     //check if existing leadsource was partner referral.
//                         //newContact.LeadSource can be partner referral. NO error there.
//                             //BUT
//                         //old contact's leadsource is Partner referral then throw error.
//                         Contact oldContact = cTriggerOldMap.get(newContact.Id);
//                         if(oldContact.LeadSource == 'Partner Referral'){
//                             newContact.addError('Cannot update contact with lead source as Partner Referral');
//                         }
//                 }
    
//         }


//     public static void validatecontactUpdate2(list<contact> cTriggerNew, list<contact> cTriggerOld, map<id, contact> cTriggerNewMap, map<id, contact> cTriggerOldMap){
//         //do not allow user to update leadsource

//         //for each for trigger.new
//             //check if leadsource is changed?
//                 //old contact lead source != new contact lead source
//                         //addError
//         for(contact newContact : cTriggerNew){
//             if(newContact.LeadSource != cTriggerOldMap.get(newContact.id).LeadSource){
//                 newContact.LeadSource.addError('Cannnot update leadsource. Please come on getout!');
//             }
//         }
//     }

//     public static void createContact(list<contact> conNList, map<id, contact> conOMap ){
//         for(contact eachCon : conNList){
//            System.debug('Yeni lastname --> ' + eachCon.LastName + ' - ' + ' eski lastname----> ' +conOMap.get(eachCon.id).LastName ); 
//         }
//     }
}