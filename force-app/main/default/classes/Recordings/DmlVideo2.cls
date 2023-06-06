public class DmlVideo2 {
   public static id createAccount() {
        account acc= new account();
        acc.name ='Test Account Dml New';
        insert acc;
        return acc.id;
   }

   public static void createContact() {
        id accId = createAccount();
        contact con = new contact();
        con.lastname ='Conatact Dml';
        con.AccountId=accId;
        insert con;
   }

   public static void updateOneConatact() {
        //acount acc= [select id, name from account where name = 'Test Account DMl New' limit 1];
        account acc =[select id, name from account order by createddate desc limit 1];
        contact con =[select id, lastname from contact where accountid = null limit 1];
        system.debug('Contact ==>' + con);
        con.AccountId= acc.id;
        update con;
   }

   public static void createAccount2() {
          //5 account cretae etme..
          list<account> listAcc= new list<account>();
          for (integer i=0; i<5; i++ ) {
               account acc= new account();
               acc.name ='Account Demo';
               listAcc.add(acc);
          }
          if(!listAcc.isEmpty()){
               insert listAcc;
          }
          list<contact> listCon = new list<contact>();
          for(account acc: listAcc){
               for(integer i=0; i<5; i++){
                    contact con = new contact();
                    con.LastName='contact Demo';
                    con.AccountId=acc.id;
                    listCon.add(con);
               } 
          }
          if(!listCon.isEmpty()){
               insert listCon;
          }
   }
    
}