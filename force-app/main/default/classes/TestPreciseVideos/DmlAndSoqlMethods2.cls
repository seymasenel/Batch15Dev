public class DmlAndSoqlMethods2 {
    public static integer accountSelectindustry(string indst) {
        list<account> accList =[select id, name, industry from account where industry =:indst];
        integer recordSayisi = accList.size();
        return recordSayisi;
    }

    public static void childToParentSoql() {
        list<contact> conList =[select id, lastname from contact where account.industry ='Energy'];

        for(contact eachCon: conList){
            eachCon.lastname= eachCon.lastname + ' update';
        }
        update conList;
    }
}