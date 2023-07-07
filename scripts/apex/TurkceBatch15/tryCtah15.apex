// account acc = new account();
// insert acc;

try {
    account acc = new account();
    insert acc;
}
catch (Exception e) {
    System.debug('hata mesaji = ' + e);
    System.debug('hata mesaji = ' + e.getMessage());
}
finally {
    System.debug('the end');
}
system.debug('----------------------------------------------');
try {
    account acc = new account();
    acc.AnnualRevenue = 10000;
    insert acc;
} catch(DmlException de){
    System.debug(de);
}
catch (Exception e) {
    System.debug('hata mesaji = ' + e);
    System.debug('message = ' + e.getMessage());
    System.debug('Exception Type = ' + e.getTypeName());
    System.debug('Line number = ' + e.getLineNumber());
    System.debug('stack trace =' + e.getStackTraceString());
}
finally {
    System.debug('the end');
}

system.debug('----------------------------------------------');

try{
    list<String> list1;
    string a =list1[0];
    system.debug(a);
}
catch(DmlException ex){
    System.debug('Dml = ' + ex);
}
catch(Exception e){
    system.debug('Genel = ' + e);
}

system.debug('----------------------------------------------');

try{
    list<string> list2 = new list<string>();
    string b = list2[0];
    system.debug(b);
}
catch (DmlException dex){
    system.debug('Dml : ' + dex);
}
catch(NullPointerException npe){
    system.debug('Null = ' + npe);
}
catch(ListException lex)[
    system.debug('list = ' +lex);
]
catch(Exception e){
    system.debug('Genel = ' + e);
}
    
system.debug('----------------------------------------------');


try{
    string s;
    Boolean c = s.contains('abc');
    system.debug(c);
}
catch(DmlException dex){
    system.debug('Dml : ' + dex);
}
catch (Exception e){
    system.debug('Genel = ' + e);
}

 