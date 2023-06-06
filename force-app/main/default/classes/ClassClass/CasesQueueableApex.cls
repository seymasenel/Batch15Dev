public class CasesQueueableApex implements Queueable  {
    
    public id defaultAccId;
    public list<case> caselist;

    public CasesQueueableApex() {
        
    }

    public CasesQueueableApex(list<case> caselist, id defaultAccId){
        this.defaultAccId = defaultAccId;
        this.caselist = caselist;
    }

    public void execute(QueueableContext qc){
        System.debug('Inside constructor');
        for(case eachCase : caselist){
            eachCase.AccountId=defaultAccId;
        }
        update caselist;
    }
}