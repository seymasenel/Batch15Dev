public class LeadBatchApexSchedule implements Schedulable {

    public void execute(SchedulableContext SC) {
        LeadBatchApexAssg lB = new LeadBatchApexAssg();
        Database.executeBatch(lB, 10);
    }

}

