public class ContactQueableapex implements Queueable   {
   
    public list<Account> accList;
   
    public ContactQueableapex(list<Account> accList) {
        this.accList = accList;
    }
    public void execute(QueueableContext qc){
        list<Contact> conList = new list<Contact>();

        for( Account eachAcc: accList){
            Contact c = new Contact();
            c.LastName='Queueable Assginment Record';
            c.AccountId=eachAcc.Id;
            conList.add(c);
        }
        insert conList;
    }
}