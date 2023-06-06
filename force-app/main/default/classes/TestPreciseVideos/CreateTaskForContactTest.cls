@isTest
public class CreateTaskForContactTest {
    @TestSetup
    static void makeContactsData(){
        list<contact> listContact = new list<contact>();
        for(integer i =0; i<5100; i++){
            contact c = new contact();
            c.lastname ='testContact ' + i;
            listContact.add(c);
        }
        insert listContact;
        
    }
    
    @isTest
    private static void createTaskTest() {
        //data preparation
        contact c = new contact();
        c.lastname ='testContact';

        //call actual method
        CreateTaskForContact.createTask('testContact');

        list<task> allTasks =[select id, subject, whoid from task where whoid = :c.id];
        System.assert(allTasks.size() == 1);
        System.assertNotEquals('call', allTasks[0].subject);
        System.assertEquals('Email', allTasks[0].Subject);
    }

    @isTest
    private static void createTaskTest2() {
        //1.data preparation
        
        //2.1 
        test.startTest();
        //3.call actual method
        CreateTaskForContact.createTask('testContact');
        test.stopTest();

        //4.assertion
        list<task> allTasks =[select id, subject, whoid from task];
        for(task  t : allTasks){
            System.assert(allTasks.size() == 1000);
            System.assertNotEquals('call', t.subject);
            System.assertEquals('Email', t.Subject);
        }        
    }

    @isTest
    private static void createOppTest2() {
        list<contact> listContact =[select id, name, lastname from contact];
        test.startTest();
        //call actual method
        CreateTaskForContact.createOpps(listContact);
        test.startTest();
        
        list<opportunity> allOpps =[select id, name, contactid from opportunity where contactid = :listContact];
            System.assert(allOpps.size() == 5100);        
    }
}