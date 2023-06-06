public class InsertAccountContact {
    public static void insertAccount(string accName, string cntName) {
        account a = new account();
        a.name=accName;
        insert a;

        contact c = new contact();
        c.lastname = cntName;
        c.AccountId=a.id;
        insert c;
    }
}