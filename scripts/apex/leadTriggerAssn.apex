list<lead> leadList = new list<lead>();
for(integer i=1; i<=5; i++){
    lead l = new lead();
    l.LastName='Lead Trigger Assgn ' +i;
    l.Company='LEad Trigger Company ' + i;
    l.Status='Open - Not Contacted';
    leadList.add(l);
}
insert leadList;

for(lead eachLead: leadList){
    eachLead.Description='Field Updated from Anonymous';
}
update leadList;