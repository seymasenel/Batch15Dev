public class DML2_Assgn {
    public static void insert_dml() {
        Account acc = new Account();
        acc.Name ='Seyma\'s Assignment';
        insert acc;

        account acc1 = new account();
        acc1.name='Friday Assignment';
        insert acc1;
    }

    public static void updating_dml(){
        Account acc = new Account();
        acc.name ='Account Created';
        insert acc;

        acc.name='Account Updated';
        update acc;
    }
}