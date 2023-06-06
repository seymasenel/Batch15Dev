public with sharing class SoqlVideo {
    public static void allContacts() {
        List<Contact> listContacts = [select name, phone from Contact];
        system.debug(listContacts);
    }
    public static void latestContactOnly(){
        Contact latestCnt = [select name, email from Contact order by CreatedDate desc limit 1];
        system.debug('Son olusturalan contact recordu = ' + latestCnt);
        system.debug(latestCnt.name);
        system.debug(latestCnt.email);
    }
    public static void contactWithEmail(){
        List<Contact> listEmailContacts =[select id, name, email from contact where email != ''];
        system.debug('Listamizin kayit sayisi = ' + listEmailContacts.size());
        for(contact eachCnt : listEmailContacts){
            system.debug(eachCnt.name);
            system.debug(eachCnt.email);
            system.debug('------------------');
        }
    }
    public static void contactFilterName(string fName){
        list<Contact> filteredContacts =[select name, email, phone from Contact where firstName =: fName];
        system.debug(filteredContacts);
    }
}