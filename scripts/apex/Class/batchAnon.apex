// AccountsBatch ab = new accountsBatch();
// database.executeBatch(ab, 50);

// BatchApexAssignment1 b = new BatchApexAssignment1();
// Database.executeBatch(b, 10);

// DepartmentsBatch db = new DepartmentsBatch();
// // Database.executeBatch(db, 40);

// Id JobId = Database.executeBatch(new DepartmentsBatch(), 5);
// system.debug('JOB ID is ' + JobId);

// List<Account> accList = [select id, name from account];
// for (account acc : accList) {
//     if (acc.name.contains('updated')) {
//         acc.name = acc.name.remove('updated');
//     }
// }
// update accList;

BatchApex15 b15 = new BatchApex15();
Database.executeBatch(b15, 5);

//Database.executeBatch(new BatchApex15(), 5);

Queuable15first q15 = new Queuable15first();
system.enqueueJob(q15);

System.enqueueJob(new Queuable15first());

System.enqueueJob(new Queuable15second());

BatchApexMail b = new BatchApexMail();
Database.executeBatch(b);