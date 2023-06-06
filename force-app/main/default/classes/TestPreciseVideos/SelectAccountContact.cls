public class SelectAccountContact {
    public static void selectAccCont(string accName, string contNAme) {
        list<account> accs = [select id, name, phone, website from account where name =:accName];
        System.debug('Accs = ' + accs);
        list<opportunity> opp= new list<opportunity>();
        for(account a: accs){
            string s = a.name;
            Opportunity op = new Opportunity();
            op.name='opp of ' +a.name;
            op.accountid = a.id;
            op.StageName='New';
            op.CloseDate=date.today();
            opp.add(op);
        }

        list<contact> cons = [select id, lastname, accountid from contact where lastname =:contName];
        System.debug('Cons = ' + cons);
        for(contact c: cons){
            string s =c.LastName;
            System.debug('c name = ' + s);
        }
    }
}