public class AccountScheduleable implements Schedulable{
    public void execute(SchedulableContext sc) {
        AccountsBatch ab =new AccountsBatch();
        Database.executeBatch(ab, 50);



        //database.execute

        DepartmentsBatch db = new DepartmentsBatch();
        id JobId = database.executeBatch(db, 5);
        System.debug('Job id is ' + JobId);
    }
}