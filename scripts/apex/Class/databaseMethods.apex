 List<account> listAcc = new list<account> {
        new Account(name = 'Rolex', Industry = 'Energy', website = 'account.com'), //good guy
        new account(name = 'Timex', Active__c = 'Yes'), //good guy
        new Account(name = 'Omega', Active__c = 'Yes'), //good guy
        new account() //bad guy
    };
//insert listAcc; //how many accounts will be inserted here?
    //(account or listAcc, allOrNothing)
//Database.insert(listAcc, true) //=> all the records will be inserted (if all re good) or none of the record ll be inserted (if even 1 is bad)

list<database.SaveResult> allRes = Database.insert(listAcc, false); //justice => insert good ones, and bad ones will be not inserted

system.debug('Size of saveresult list=> ' + allRes.size());
//database.insert retunrs for each recs. Reault means, if account is succesfully inserted/ updated or is has error
for(Database.SaveResult result: allRes){
    if(result.isSuccess()){
        System.debug('Record inserted succflly. Acc rec id is  ' + result.getId());
    }else{
        System.debug('Failed. Error are : ' + result.getErrors());
    }
}

//for insert and update
List<Database.SaveResult> r1 = database.insert(ac, false);
List<Database.SaveResult> r2 = database.update(ac, false);

List<database.deleteresult> r3 = database.delete(ids, false);
List<database.undeleteresult> r4 = database.undelete(ids, false);