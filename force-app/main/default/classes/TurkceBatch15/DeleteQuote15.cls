public class DeleteQuote15 {
    //Soru :  Quote objesinde bir recordda statu accepted yapildiginda o recordun bagli oldugu opportunitiniye bagli olan tum Quote recordlarindan statusu accepted olmayanlarin hepsi silinsin.. islem bitince ownera bir mail ile haber verilsin..
    @InvocableMethod
    public static void deleteQuotes(List<Requests> listRequest) {
        set<id> oppIds = new set<id>();
        for(Requests req : listRequest){
            oppIds.add(req.opp_record_id);
        }
        if(!oppIds.isEmpty()){
            list<Quote> listQuote = [SELECT id from Quote where opportunityId in: oppIds and status != 'Accepted'];
            delete listQuote;
            for(Requests re: listRequest){
                Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
                mail.setTargetObjectId(req.owner_id);
                mail.setSaveAsActivity(false);
                mail.setSubject('Kabul edilen teklif ile ilgilii...');
                mail.setPlainTextBody(req.opp_record_id + ' idli opp a ait quote recordlarindan biri kabul edildi.Digerleri ise silindi.');
                Messaging.sendEmail(new Messaging.SingleEmailMessage[] {mail} );
            }
        }
    }
    public class Requests {
        @invocableVariable
        public id opp_record_id;
        @invocableVariable
        public id owner_id;
    }
}


        
      