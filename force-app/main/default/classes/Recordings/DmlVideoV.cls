public  class DmlVideoV {
    public static void createContact() {
        contact c = new contact();
        c.salutation ='Mr';
        c.LastName='Must';
        insert c;
    }

    public static void createUpdateContact() {
        contact c = new contact();
        c.Salutation='MR';
        c.LastName='Must';
        System.debug(c);
        insert c;
        System.debug('After dml c= ' + c);
        
        c.firsname ='Melon';
        update c;
        System.debug('After update dml c' + c);
    }

    public static void updateOneContact() {
        contact c1=[select id, firstname, lastname from contact where lastname ='Must' limit 1];
        c1.firstname ='Elom';
        c1.phone='1215412';
        c1.email='melon@cc1.com';
        update C1;
    }

    public static id createAccount() {
        account acc = new account();
        acc.name='Super';
        insert acc;
        return acc.id;
    }

    public static void createContact() {
        id accid = createAccount();
        contact c = new contact();
        c.lastname ='Daily';
        c.AccountId=createAccount();
        insert c;
    }

    public static void updateOneOrphanContact() {
        account acc=[select id from account where name ='Super' limit 1 ];

        contact c =[select id from contact where AccountId=null limit 1];
        System.debug('c= ' + c);
        c.AccountId=acc.id;
        update c;
    }

    public static void createMultipleAccountContacts(integer count) {
       
        if(count<=0){
            return;
        }

        list<account> listAcc= new list<account>();
        for(integer i=0; i< count; i++){
            acc.name ='SpaceZ';
            acc.active_c='Yes';
            listAcc.add(acc);
        }
        if(!listAcc.isEmpty()){
            insert listAcc;
        }

        list<contact> listCnt= new list<contact>();
        for(account acc: listAcc){
            id accid = acc.id;

            for(integer i=0; i< count ; i++){
                contact c = new contact();
                c.lastname ='Milet';
                c.AccountId = accid;
                listCnt.add(c);
            }
            if(!listCnt.isEmpty()){
                insert c;
            }
        }
    }
}