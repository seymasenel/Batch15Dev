MixedDMLErrorDemo.myMethod();


BatchApex15 ba = new BatchApex15();
Database.executeBatch(ba, 5); 

Set<Id> accIDs = new Set<Id>();
list<Account> listAcc =[SELECT Id,(SELECT Id FROM Contacts) FROM Account];

for(Account eachAcc: listAcc){
    accIDs.add(eachAcc.id);
}

AccountHandler_assg.updateNumberOfContacts(accIDs);