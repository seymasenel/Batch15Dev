public class BatchApexMail implements Database.Batchable<sObject>, Database.stateful {
    //Soru : Account recordlarinin name ler icindeki 'updated' kelimelerini cikartip islem bittiginde bir mail ile kac recordda islem yapildigini, islemin ne zaman bittigini, kac defa execute edildigini, bunlardan kac tanesinin basarili oldugunu kac tanesinin basarisiz oldugunu 'System Administrator' olan userlara bildirin..
    public integer updatedRecords = 0;

   public Database.QueryLocator start(Database.BatchableContext BC) {
       return Database.getQueryLocator([select id, name from Account where name like '%updated%']);
   }

   public void execute(Database.BatchableContext BC, List<Account> scope) {
       //updatedRecords += scope.size();
       if (!scope.isEmpty()) {
           updatedRecords += scope.size();
           for (Account acc : scope) {
               //updatedRecords++;
               acc.name = acc.name.remove('updated');
           }
           update scope;
       }
   }

   public void finish(Database.BatchableContext BC) {
       System.debug('islem bitti');
       AsyncApexJob a = [select id, status, JobType, NumberOfErrors, JobItemsProcessed, TotalJobItems, CompletedDate, ExtendedStatus from AsyncApexJob where id =:BC.getJobId()];

       List<user> userList = new List<User>();
       userList = [select id, email, isActive From user where Profile.Name = 'System Administrator' And IsActive = True];

       //for each ile her usera tek tek mail gonderecegiz..
       for (user u : userList) {
           Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
           mail.setTargetObjectId(u.id);
           mail.setSaveAsActivity(false);
           mail.setSubject('Account isimlerinden updated kelimesinin cikarilmasi ===> ' + a.status);
           mail.setPlainTextBody('The batch Apex job completed on : ' + a.CompletedDate + ',\n' + 'Job status : ' + a.status + ',\n' + 'Total Job Items processed : ' + a.TotalJobItems + ',\n' + 'Number of job Items processed : ' + a.JobItemsProcessed + ',\n' + 'Number of Failures : ' + a.NumberOfErrors + ',\n' + 'Update edilen record sayisi : ' + updatedRecords);
           Messaging.sendEmail(new Messaging.SingleEmailMessage[]{mail});
       }
   }
}