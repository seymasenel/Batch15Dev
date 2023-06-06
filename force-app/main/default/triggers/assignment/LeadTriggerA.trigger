trigger LeadTriggerA on lead (before insert, before update ){
    list<lead> leadList= trigger.new;
    if(trigger.isBefore){
        if(trigger.isInsert){
            for(lead eachLead: leadList){
                system.debug('Before lead record insert : ' + eachlead);
            }
        }
        if(trigger.isUpdate){
            for(lead eachLead: leadList){
                system.debug('Before lead record update id : ' + eachlead.id);
                system.debug('Before lead record update lastname : ' + eachlead.lastname);
                system.debug('Before lead record update description  : ' + eachlead.Description);
            }
        }
    }
   
}