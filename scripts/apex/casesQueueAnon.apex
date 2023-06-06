//creating one default account
account acc = new account(name ='Default Acc');
insert acc;

//getting all cases which has no accointid
list<case> allCase =[select id, accountid from case where accountid = null];

//contsructor
CasesQueueableApex cq = new CasesQueueableApex(allCase, acc.id);

//our class executio will be queues in apex jobs
    //it will be picked by system and it will call execute method
system.enqueueJob(cq);