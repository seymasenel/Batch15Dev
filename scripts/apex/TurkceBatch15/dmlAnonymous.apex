account acc = new account();
acc.name='Account Dml';
acc.AnnualRevenue=100000;
acc.industry='Energy';
insert acc;

contact con = new contact();
con.lastname='Contact Dml';
con.LeadSource='Web';
insert con;

account acc1 = [select id from account where name = 'Lux'];
contact con2 = new contact();
con2.lastname='Contact Dml2';
con2.AccountId= acc1.id;
insert con2;


salesforce_project__c sp= new salesforce_project__c();
sp.Project_Name__c='Salesforce Project Dml';
sp.Status__c='New';
insert sp;

Salesforce_Ticket__c st = new Salesforce_Ticket__c();
st.Salesforce_Project__c=sp.id;
st.Subject__c='SAlesforce Ticket Dml';
insert st;

//Update
account acc3 =[select id, name from acocunt where name='Ytest' limit 1];
acc3.name ='Ztest';
update acc3;

//coklu update

list<account> accList =[select id, name, annualrevenue , description from account where annualrevenue != null order by annualrevenue desc limit 5];
    for (account acc : accList) {
    acc.Description = date.today() + ' itibariyle bu sirket yillik cirosu en yuksek olan 5 sirketten biri';
    }
update acclist;

// 5 tane Account create edin ve her accounta bagli 5 tane de opportuniy olsun.
List<Account> accList2 = new List<Account>();
for (Integer i = 1; i <= 5; i++) {
    account acc = new account();
    acc.name = 'Dml Demo Account ' + i;
    accList2.add(acc);
    //insert acc; for dongusu icinde dml yapilmaz..
}
insert accList2;

List<Opportunity> oppList = new List<Opportunity>();
for (account acc : accList2) {
    for (Integer i = 1; i <=5; i++) {
        Opportunity opp = new Opportunity();
        opp.Name = 'Dml Demo Opportunity ' + i;
        opp.CloseDate = date.today().addDays(30);
        opp.StageName = 'Prospecting';
        opp.AccountId = acc.id;
        oppList.add(opp);
    }
}
insert oppList;
