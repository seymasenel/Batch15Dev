public class CreateTaskForContact {
    public static void createTask(string contactLastname) {
        string queryString ='Select id, name from contact where lastname like\'%' + contactLastname + '%\'';

        list<contact> allContacts =Database.query(queryString);

        list<task> tkList = new list<task>();
        for(contact c: allContacts){
            task t = new task();
            t.WhoId = c.id;
            t.Subject ='Email';
            t.Description='a task a contact';
            t.ActivityDate = date.today();
            tkList.add(t);
        }
        if(!tkList.isEmpty()){
            insert tklist;
        }  
    }
    @testVisible
    private static void createOpps(list<contact> listContact) {
        list<Opportunity> opps = new List<Opportunity>();
        for(contact c: listContact){
            Opportunity o = new Opportunity();
            o.name='opp for ct :' +c.name;
            o.StageName='New';
            o.CloseDate=date.today();
            o.ContactId=c.id;
            opps.add(o);
        }        
        if(!opps.isEmpty()){
            insert opps;
        }
    }
}