// account acc = new account();
// acc.name='Trigger Account';
// insert acc;

// acc.name='Trigger Account Update';
// update acc;

// list<contact> conList = new list<contact>();
// contact c1 = new contact();
// c1.FirstName='John';
// c1.LastName='Doe';
// conlist.add(c1);

// contact c2 = new contact();
// c2.FirstName='Marry';
// c2.LastName='Doe';
// conlist.add(c2);

// insert conList;

// c2.FirstName='Joe Updated';
// c2.LastName='Doe Updated';

// c2.FirstName='Marry Updated';
// c2.LastName='Doe UPdated';

// update conList;

// Opportunity opp = new Opportunity();
// opp.name='Trigger Opp 2';
// opp.StageName='Prospecting';
// opp.CloseDate=date.today().addDays(60);
// insert opp;

// opp.name +=' update';
// update opp;

// list<account> accList = new list<account>();

// account acc1 = new account();
// acc1.name = 'Toyota';
// accList.add(acc1);

// account acc2 = new account();
// acc2.name = 'Volvo';
// accList.add(acc1);

// insert accList;

// List<Salesforce_Project__c> spList = new List<Salesforce_Project__c>();
// for(integer i=0; i<5; i++){
//     Salesforce_Project__c sp = new Salesforce_Project__c();
//     sp.Project_Name__c= 'Trigger check ' + i;
//     sp.Status__c='New';
//     spList.add(sp);
// }


// list<case> listCase = new list<case>();
// for(integer i=1; i<=205 ; i++){
//     case c = new case();
//     c.subject=' There is a bug' + i;
//     c.Description='Resolve it';
//     c.Status='New';
//     c.Origin='Web';
//     listCase.add(c);
// }
// insert listCase;
account acc =[select id, name from account order by lastmodifieddate desc limit 1];
System.debug('acc = ' + acc);
list<asset> la = new list<asset>();
for(integer i=0; i<1210; i++){
    asset a = new asset();
    a.name='aa'+i;
    a.AccountId=acc.id;
    la.add(a);
}
insert la;

delete[select id from asset where accountid='0013x00002SNp1vAAD'];







