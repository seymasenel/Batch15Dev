@isTest
public class CaseTriggerHandlerPV {
       @isTest
    private static void createDefaultTaskTest() {
        contact ct = new contact();
        ct.LastName='Test LN';
        insert ct;
        
        list<case> listCase = new list<case>();
        for(integer i=0; i<1000; i++){
            case c = new case ();
            c.status ='New';
            c.Origin='Phone';
            c.Contactid=ct.id;

            c.Subject='Case tset for tset case ' +i;
            listCase.add(c);
        }
        test.startTest();
        insert listCase;
        test.stopTest();

        //4.asserrtion
        list<task> listTasks =[select id, subject,  whatid, whoid, activitydate from task];
        for(task t : listTasks){
            system.assertEquals('Email', t.Subject);
            system.assertEquals('Normal', t.Priority);
            system.assertEquals(ct.id, t.WhoId);
        }  
    }
}