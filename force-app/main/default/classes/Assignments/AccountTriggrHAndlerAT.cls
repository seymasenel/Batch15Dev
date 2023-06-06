public class AccountTriggrHAndlerAT {
    public static void noDublicateAccountName(list<account> accNList, map<id, account> accOldMap) {
       
        //existing accounts
        list<account> allAccs = [select id, name from account];
        
        for(account eachAAcc : allAccs){
            for(account eachAcc : accNList){ //new accounts
                if(eachAcc.name == eachAAcc.name){
                    eachAcc.name.addError('Account cannot have dublicate name!');
                }
            }   
        }
       
        // set<string> accsNames = new set<string>();
    
        // for(account eachAcc : accNList){
        //     accsNames.add(eachAcc.name);
        // }
        // list<account> existingAccs =[select id, name from account where name = :accsNames];

        // set<string> existingAccNames = new set<string>();
        // for(account eachEAccs : existingAccs){
        //     existingAccNames.add(eachEAccs.name);
        // }
        
        // for(account eachAccs : accNList){
        //     if(existingAccNames.contains(eachAccs.name)){
        //         eachAccs.Name.addError('Cannot have the dublicate name on Accounts');
        //     }
        // }
    }

    public static void contactOppsCreate(list<account> accNList){
        list<Opportunity> listOpp = new list<Opportunity>();
        list<contact> listCon = new list<contact>();

        for(account eachAcc: accNList){
            Opportunity opp = new Opportunity();
            opp.name = 'New Opportunity' + eachAcc.id;
            opp.StageName='Prospecting';
            opp.CloseDate = date.today().addMonths(1);
            opp.AccountId= eachAcc.id;
            listOpp.add(opp);

            contact c = new contact();
            c.lastname= 'New Contact ' + eachAcc.id;
            c.AccountId= eachAcc.id;
            listCon.add(c);
        }
        if(!listOpp.isEmpty()){
            insert listOpp;
        }
        if(!listCon.isEmpty()){
            insert listCon;
        }

    }
    
}


        
       