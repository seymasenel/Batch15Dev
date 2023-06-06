public class AccountQueueableExample implements Queueable {
    public list<account> accList;

    public AccountQueueableExample(list<account> accList) {
        this.accList = accList;
    }

    public void execute(QueueableContext qc){
        for(account acc : accList){
            acc.name = acc.name.removeEnd('--SI--SI');
        }
        update accList;
    }
    
}