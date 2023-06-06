@isTest
public class LeadTriggerHAndlerTest {
    @TestSetup
    static void makeDataLead(){
        list<lead> listLead = new list<lead>();
        for(integer i=0; i<10; i++){
            lead l = new lead();
            l.LastName='Weekday ' + i;
            l.Company='Calend';
            l.Status='Open - Not Contacted';
            listLead.add(l);
        }
        insert listLead;
    }
    
    @isTest
    private static void updateClosedLostDateTest() {
        list<lead> listLead = new list<lead>();
        for(integer i=0; i<100; i++){
            lead l = new lead();
            l.LastName='Weekdayyy ' + i;
            l.Company='Caaalend';
            l.Status='Open - Not Contacted';
            listLead.add(l);
        }
        test.startTest();
        insert listLead;
        test.stopTest();

        list<lead> allLeads=[select id, lastname, created_date__c, closed_Won_date__c from lead];
        for(lead l: allLeads){
            system.assert(l.created_date__c != null);
            system.assertNotEquals(datetime.now(), l.closed_Won_date__c);
        }
    }

    @isTest
    private static void updateClosedLostDateTest2() {
        list<lead> listLead=[select id, lastname, company, status from lead];

        for(lead l: listLead){
            l.status= 'Working - Contacted';
        }
        update listLead;

        list<lead> allLeads=[select id, lastname, Contacted_Date__c, closed_Won_Date__c from lead];
        for(lead l: allLeads){
            system.assert(l.Contacted_Date__c != null);
            system.assertNotEquals(datetime.now(), l.closed_Won_Date__c);
        }
    }

    @isTest
    private static void updateClosedLostDateTest3() {
        list<lead> listLead=[select id, lastname, company, status from lead];

        for(lead l: listLead){
            l.status= 'Closed - Converted';
        }
        update listLead;

        list<lead> allLeads=[select id, lastname, closed_lost_Date__c, closed_Won_Date__c from lead];
        for(lead l: allLeads){
            system.assert(l.closed_Won_Date__c != null);
            system.assertNotEquals(datetime.now(), l.closed_lost_Date__c);
        }
    }

    @isTest
    private static void updateClosedLostDateTest4() {
        list<lead> listLead=[select id, lastname, company, status from lead];

        for(lead l: listLead){
            l.status= 'Closed - Not Converted';
            l.Closed_Lost_Resson__c ='Lost beacuse I am done for the day.';
        }
        update listLead;

        
    }
    private static void testUpdateStatus1() {
        list<lead> listLead =[select id, lastname, company, status from lead];

        for(lead l : listLead){
            l.status='Closed - Not Converted';
        }
        try {
            update listLead;
        } catch (Exception ex) {
            system.assert(ex.getMessage().contains('FIELD_CUSTOM_VALIDATION_EXCETION'));
        }

    }

    private static void testUpdateStatus2() {
        list<lead> listLead = new list<lead>();
        for(integer i=0; i<100; i++){
            lead l = new lead();
            l.LastName='Weekdaay ' + i;
            l.Company='Caleend';
            l.Status='Closed - Not Converted';
            listLead.add(l);
        }
      
        try {
            test.startTest();
            insert listLead;
            test.stopTest();
        } catch (Exception ex) {
            system.assert(ex.getMessage().contains('FIELD_CUSTOM_VALIDATION_EXCETION'));
        }

    }
}