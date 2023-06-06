@isTest
public class SoqlParentChildAssignmentTest {
    
    @TestSetup
    static void makeData(){
       
        list<account> accList = new list<account>();
        for(integer i =0; i<5; i++){
            account acc= new account(name='Assgnment Test ' +i);
            accList.add(acc);
        }
        insert accList;

        list<contact> conList = new list<contact>();
        for(integer i =0; i<5; i++){
            contact acc= new contact(lastname='Assgnment Test ' +i, AccountId = accList[0].id);
            conList.add(acc);
        }
        insert conList;

    }
    @isTest
    static void test1(){
        
        SoqlParentChildAssignment.printAccountContacts();
    }

    @isTest
    static void test2(){
        
        SoqlParentChildAssignment.printContactAccounts();
    }


}