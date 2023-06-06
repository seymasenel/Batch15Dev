@isTest
public class OpportunityTriggerHandlerVitapTest {
    @TestSetup
    static void makeData(){
        profile p = [select id from profile where name='Standard User'];
        userRole r =[select id from userrole where name ='CEO'];

        string orgID=UserInfo.getOrganizationId();
        string dateString=string.valueOf(datetime.now()).replace('  ' ,'').replace(':','').replace(' -', '');

        integer randomInt = integer.valueOf(math.rint(math.random()*1000000));
        string uniquename=orgID + dateString +randomInt;
        user usr = new user();
        usr.firstname='Vitamin';
        usr.lastname='DVIT';
        usr.email='senelsyema@gamil.com';
        usr.ProfileId=p.id;
        usr.UserRoleId=r.id;
        usr.Username='vitamindvit@gmail.com';
        usr.EmailEncodingKey='ISO-8859-1 ';
        usr.Alias=uniquename.substring(18, 23);
        usr.timezonesidkey='America/Los_Angeles ';
        usr.LocaleSidKey='en_US';
        usr.LanguageLocaleKey='en_US';
        insert usr;
    }
    @isTest
    private static void testUpdatOwner() {
        //prepare data
        //opportunity
        //user
        user uNew = [select id from user where firstname = 'Vitamin'];

        Opportunity op = new Opportunity();
        op.name='Test Opp';
        op.stagename='Prospecting';
        op.CloseDate=date.today();
        op.new_owner__c= uNew.id;
        insert op;

        set<id> oppSetId = new set<id>{op.id};
        test.startTest();
        OpportunityTriggerHandlerrVitap.updateOwner(oppSetId);
        test.stopTest();

        //assert
        Opportunity getOpp =[select id, new_owner__c, ownerid from Opportunity limit 1];
        system.assertEquals(uNew.id, getOpp.OwnerId);

        //assert user title
        user u =[select id, title from user where id =:uNew.id];
        system.assertEquals('Test Opp Manager', u.Title, 'title update successfullllly');
    }
}