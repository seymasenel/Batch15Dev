public with sharing class SoqlDemo3 {
    public static void oppAccQuery() {
        List<Opportunity> listOpp = [select id, name, amount, account.name, account.industry from Opportunity where Account.industry ='energy'];

        for (Opportunity eachOpp : listOpp) {
            System.debug('Opp name is ' + eachOpp.name + ' , op amount is ' + eachOpp.Amount);
            System.debug('Account name is ' + eachOpp.Account.name + ' industry is ' + eachOpp.Account.Industry);
        }
    }

    public static void accContactQuery(){
        list<account> listAcc = [select id, name, website,(select id, name ,email from contacts) from account];
        //each account name
            //all its contact name and email
            //f no contact, no contact found

            for(account eachAcc : listAcc){
                System.debug('Each acc is ' + eachAcc.name);
                List<Contact> accContacts = eachAcc.Contacts;
                if(!accContacts.isEmpty()){
                    System.debug(eachAcc.name + ' account has  ' + accContacts.size() + ' contacts');
                    for(contact eachcontact : accContacts){
                        system.debug('contact name is ' + eachcontact.name + ', email is ' + eachcontact.Email );
                    }  
                }else{
                    system.debug('**** NO contact found for this account name ***');
                }
                system.debug('=================================');
            }
    }
    ////for each department we want to print number of employees, firstname, lastname and country of employee, total salary for each department, OVERALL TOTAL SALARY ALSO(optional).
    public static void detmenDetails(){
        list<department__c> listDept = [Select name__c, (select first_name__c, last_name__c, country__c, salary__c from employees__r) from department__c];

        decimal totalSalary =0;
        for(department__c eachDept : listDept){
            system.debug('Dept name is  ' +  eachDept.name__c);
            list<employee__c> listEmp = eachDept.employees__r;
            
            decimal deptSalary =0;

            for(Employee__c eachEmp : listEmp){
                System.debug('======= NAme is  ' +  eachEmp.first_name__c + ' ' + eachEmp.last_name__c
            + ', country is ' + eachEmp.country__c);
            deptSalary += eachEmp.salary__c;
            totalSalary += eachEmp.salary__c;
          }
          System.debug('Department total salary is ' + deptSalary);
        }
        System.debug('Overall total salary is ' + totalSalary);
    }
}