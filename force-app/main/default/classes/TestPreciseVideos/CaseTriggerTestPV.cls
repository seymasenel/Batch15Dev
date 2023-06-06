@isTest
public class CaseTriggerTestPV {
    @isTest
    private static void createCaseTest() {
        list<case> listCase = new list<case>();
        for(integer i=0; i<1000; i++){
            case c = new case ();
            c.status ='New';
            c.Origin='Phone';

            c.Subject='Case tset for tset case ' +i;
            listCase.add(c);
        }
        test.startTest();
        insert listCase;
        test.stopTest();

        //4.asserrtion
        integer casesCount =[select count() from case];
        system.assert(casesCount == 1000);
    }
}