Dml_AssignmentT.accountss();
Dml_AssignmentT.updateAcc();
Dml_AssignmentT.deleteAcc();
Dml_AssignmentT.opportunityss();
Dml_AssignmentT.deleteOpp();

account acc= [select id from account where name = 'University of Arizona' limit 1];
account acc1 = new account();
acc1.name='Summer Fest LLC';
acc1.ParentId=acc.id;
acc1.Type='Technology Partner';
acc1.Rating='Hot';
acc1.AnnualRevenue=200000000;

insert acc1;

list<contact> conlist = new list<contact>();
    for(integer i=1; i<=3; i++){
        contact con =new contact();
        con.AccountId=acc1.id;
        con.LastName=' Event Planner ' + i;
        con.phone='+1 2345 7896';
        con.LeadSource='Web';
        conlist.add(con);
    }
insert conlist;

    


