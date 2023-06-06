public class BatchApexAssignment1 implements Database.Batchable<sObject> {
        //Batch=>Tüm Accountların name lerininin yanına update kelimesini ekleyelim. Annual revenue si olmayanların da Annual Revenueleri 10000 yapılsın..
        public Database.QueryLocator start(Database.BatchableContext BC) {
            Database.QueryLocator q1 = database.getQueryLocator([SELECT Id, Description FROM Contact]);
            return q1;
        }
    
        public void execute(Database.BatchableContext BC, List<Contact> scope) {
            list<Contact> updateCons = new list<Contact>();

            for(Contact eachCon: scope){
                eachCon.Description += '. Updated by Batch';
            }
            update updateCons;
        }
    
        public void finish(Database.BatchableContext BC) {
            System.debug('Batch Over...');
        }
    
 }

