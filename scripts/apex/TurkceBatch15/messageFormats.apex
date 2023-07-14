Account acc = new Account();
acc.Name='Ali';
acc.AnnualRevenue=1000000;
acc.phone='2124578966';
System.debug(acc);

Account acc1 = new Account();
acc1.Name='Ali';
acc1.AnnualRevenue=1000000;
acc1.phone='2124578966';

list<Account> lstacc = new list<Account>{acc, acc1};

string jsonString=JSON.serialize(acc);
system.debug(jsonString);

string jsonString1=JSON.serialize(lstacc);
system.debug(jsonString1);

list<case> cslst =[SELECT Id, caseNumber, Subject, Description,Contact.firstname,contact.name,account.name FROM Case WHERE contactId != Null and accountID != null ];

string jsonSTR = JSON.serialize(cslst);
System.debug(jsonSTR);

CallOuts.getUsers();
RestCallOutsPreC.bearerAuth();

