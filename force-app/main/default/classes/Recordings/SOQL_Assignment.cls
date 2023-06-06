public  class SOQL_Assignment {
    
    public static void soql_WhereClause() {
        list<contact>  lstcontact =[select id from contact where name like 'A%'];
        system.debug('Size of lstcontact--> ' + lstcontact.size());
    }

    public static void soql_FromMethod(){
        list<contact>  lstcontact= [select id, LastName, Phone from contact];

        for(contact eachLNPhone : lstcontact){
            system.debug('Each contact phone is--> ' +eachLNPhone.Phone);
            system.debug('Each contact Lastname is --> ' +eachLNPhone.LastName);
            system.debug('-----------------------------------------');
        }
    } 

    public static void contactAcc(){
        list<contact> lstcontact =[select id, account.id, account.name from contact];
        
        for(contact eachCont : lstcontact){
            system.debug('Account id --> ' + eachCont.account.id );
            system.debug('Account name --> ' + eachCont.account.name);
        }
    }

    public static void accountCont(){
       
        list<account> lstaccount =[select id, name, (select id, name from contacts) from account where name in ('Apple', 'Tesla' , 'Meta' , 'Microsoft') ];

        for(account eachAcc : lstaccount){
            system.debug('Account name --> ' + eachAcc.name);
           
            for(contact eachCo : eachAcc.contacts){
                system.debug('Contact name --> ' + eachCo.name + 'Contact Id --> ' + eachCo.id);
          }
          list<Contact> totalContacts = [select id, account.name from contact where account.name  =: eachAcc.name ];
                system.debug( eachAcc + ' Total contacts of each company is --> ' + totalContacts.size());
                system.debug('==============================================================');
            }
    }

    public static list<employee__c> topEmployees(){
        list<employee__c> top5Emp = [SELECT Id, Salary__c FROM Employee__c order by salary__c desc limit 5];

        system.debug('Top 5 Employees by Salary is --> ' + top5Emp);

        return top5Emp;
    }

    public static Object mostPopulatedCountry(){
        aggregateresult country = [select count(id), country__c from employee__c group by country__c order by count(id) limit 1 ];

        system.debug('Most populate country is--> ' + country);

        return country;
    }


}