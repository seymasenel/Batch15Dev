
// list<account> accL = [select id, name, createddate from Account where createddate = Last_month];

// AccountQueueableExample aq = new AccountQueueableExample(accL);

// id jobID = system.enqueueJob(aq);
// system.debug('JobID = ' + jobID);

// AsyncApexJob ap = [select status, jobtype, jobitemsprocessed, id, methodname, numberoferrors from AsyncApexJob where id =:jobID];
// system.debug(ap);

list<Account> accList =[SELECT Id FROM Account WHERE Active__c ='Yes'];

ContactQueableapex cQ = new ContactQueableapex(accList);
System.enqueueJob(cQ);