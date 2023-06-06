public class Dml_AssignmentT {
    public static void accountss() {
        list<account> accounts= new list<account>();
        for(integer i=1; i<=2; i++){
            account acc = new account();
            acc.name= 'Assignment ' + i;
            acc.Phone='1234569';
            acc.site='accountsite';
            acc.Website='www.assignmnet.com';
            accounts.add(acc);
        }
        insert accounts;      
    }    
    public static void updateAcc() {
        list<account> accounts = [select id from account order by createddate desc limit 2];
        list<account> updatedAcc= new list<account>();
        for(account eachAcc: accounts){
            eachAcc.phone='12346987';
            eachAcc.name='Assignmnet Updated' + eachAcc.id;
            updatedAcc.add(eachAcc);
        }

        update updatedAcc;
    }   
    public static void deleteAcc() {
        list<account> accList =[select id from account order by createddate desc limit 2 ];
        delete accList;
    }
    public static void opportunityss(){
        List<Opportunity> oppList = new list<Opportunity>();
        for(integer i=1 ; i<=149; i++){
            Opportunity opp = new Opportunity();
            opp.name='Homework' + i;
            opp.Type='New Customer';
            opp.StageName='Qualification';
            opp.CloseDate=date.newInstance(2024, 02, 02);
            opp.Description='We have started crazy days with coding yay! ';
            oppList.add(opp);
        }
        insert oppList;
    }
    public static void deleteOpp() {
            List<Opportunity> oppList= [SELECT id FROM Opportunity ORDER BY CreatedDate DESC LIMIT 149];
            delete oppList;
    }
       
}