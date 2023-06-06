string str_cron = '13 13 13 * * ?'; //class runs every day at 1:13:13 pm
AccountScheduleable acs = new AccountScheduleable();

system.schedule('account schedule 13 13', str_cron, acs);

list<account > acclist =[select id, name from account];
for(account acc: acclist){
    if(acc.name.contains('update')){
        acc.name = acc.name.remove('update');
    }
}
update accList;