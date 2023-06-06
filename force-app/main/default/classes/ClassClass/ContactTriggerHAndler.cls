public class ContactTriggerHAndler {
    public static void validateContactUpdate1(
        list<contact> cTriggerNew,
        list<contact> cTriggerOld,
        map<id, contact> cTriggerNewMap,
        map<id, contact> cTriggerOldMap) {

        for(contact newContact: cTriggerNew){
            contact oldContact = cTriggerOldMap.get(newContact.id);
            if(oldContact.LeadSource == 'Partner Referral'){
                oldContact.LeadSource.addError('Cannot update contact with lead source as Partner Referral');
            }
        }
    }
}