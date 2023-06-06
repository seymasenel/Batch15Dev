public class AccountTriggeraHandlerPricesTest {
    public static void createContacts(list<account> triggerNew) {
        list<contact> conList = new list<contact>();

        for(account acc: triggerNew){
            for(integer i=1; i<=7; i++){
                contact con = new contact();
                con.firstname= acc.name;
                con.lastname='Contact ' + i;
                con.AccountId=acc.id;
                conList.add(con);
            }
        }
        insert conList;
    }

    public static void updateName(list<account> triggerNew, map<id, account> triggerOldMap) {
        for(account acc: triggerNew){
            if(acc.name != triggerOldMap.get(acc.id).name){
                acc.Description='Bu recordda isim degisikligi oldu';
            }
        }
    }
}