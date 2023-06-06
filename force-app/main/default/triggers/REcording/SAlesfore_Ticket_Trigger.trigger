trigger SAlesfore_Ticket_Trigger on Salesforce_Ticket__c (before insert, before update, after insert, after update) {
    //Salesforce ticket completed olarak update edildiginde o salesforce project e ait tum ticketlari kontrol etsin statusu completed/cancelled ise otomatik olarak project'in statusu complete olsun.
//     if(trigger.isAfter && trigger.isUpdate){
//         SalesforceTicketHAndler.updateStatus(trigger.new, trigger.oldMap);
//     }
}