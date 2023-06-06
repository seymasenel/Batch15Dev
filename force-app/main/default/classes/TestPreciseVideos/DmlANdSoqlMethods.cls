public class DmlANdSoqlMethods {
    public static void createAccount() {
        account acc = new account();
        acc.name='Salesforce';
        insert acc;
    }

    public static void createAndUpdateAccount() {
        account acc = new account();
        acc.name ='Softinnovas';
        insert acc;

        acc.name='Softinnovas Inc.';
        update acc;
    }

    public static void createContact(){
        account acc = [select id, name from account where name='Salesforce' limit 1];

        contact c = new contact();
        c.lastname='Doe';
        c.AccountId=acc.id;
        insert c;
    }
}