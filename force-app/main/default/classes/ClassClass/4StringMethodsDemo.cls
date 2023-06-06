public class StringMethodsDemo {
    public void stringMethod1() {
        system.debug('Practice string methods');
        string sDesc = 'Learning string methods in apex language.';

        integer strLength = sDesc.length();
        system.debug('Length of string is ' + strLength);

        string upD =sDesc.toUpperCase();
        system.debug(upD);

        Boolean checkApex = sDesc.contains('apex');
        system.debug(checkApex);

        Boolean checkSalesforce = sDesc.contains('salesforce');
        system.debug(checkSalesforce);

        Boolean checkApex2 =sDesc.contains('Apex');
        system.debug(checkApex2);

        Boolean checkApex3 = sDesc.containsIgnoreCase('Apex');
        System.debug(checkApex);
    }

    public void stringMethod2(){
        string username =' Seyma ';
        system.debug(username.length());
        username = username.trim();
        system.debug(username);
        system.debug(username.length());
    
        string username2 = 'seyma';
        Boolean checkNames = username.equals(username2);
        system.debug(checkNames);
    
        Boolean checkName2 = username.equals('Seyma');
        system.debug(checkName2);
    
        Boolean checkNames3 = username.equalsIgnoreCase(' Seyma ');
        system.debug(checkNames3);


        string s22 = 'My name is Bond. James Bond.';
        integer indexOfBound = s22.indexOf('Bond');
        System.debug(indexOfBound);

        string str1 ='Welcome to SoftInnovas bootamp. Ready to learn?';
        string str2=str1.remove('to');
        System.debug(str2);

        string str3 = str1.removeEndIgnoreCase('EARN?');
        system.debug(str3);

        integer i = 55;
        integer j = 84;

        string iStr = string.valueOf(i);
        string.jStr = string.valueOf(j);
        system.debug(iStr+ jStr);


    
    
    }
}

   