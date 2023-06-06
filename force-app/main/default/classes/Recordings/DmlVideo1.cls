public class DmlVideo1 {
    public static void createContact() {
        contact cn = new contact();
        cn.salutation = 'Mr.';
        cn.lastname = 'Test Contact Apex';
        insert cn;
    }

    public static void createUpdateContact(){
        contact c = new contact ();
        c.lastname = 'Karaca';
        insert c;
        system.debug(c);

        c.FirstName= 'Cem';
        update c;
    }

    public static void updateOneContact(){
        contact cn = [select id, lastname, firstname from contact where lastname = 'Karaca'];
        cn.FirstName='Cem';
        cn.Phone='212452254';
        cn.email ='cemkaraca@gmail.com';
        update cn;

    }
    public static id createAccount() {
        account acc = new account();
        acc.name = 'Test Account Dml';
        insert acc;
        return acc.id;
    }

    public static void dmlInsertDemo3(){
         //soql to get acc record
        account acc =[select id, name from account order by cretaeddate desc limit 1];

         contact c = new contact();
         c.LastName='Biden';
         //relationship
         c.AccountId = acc.id; //get id from account record.

         //insert statement
         insert c;
    }
    

}