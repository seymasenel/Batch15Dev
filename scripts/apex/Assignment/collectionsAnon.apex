string m1 = Collections.listaAssignment(1);
system.debug('Name of month is ==>' + m1);
string m2 = Collections.listaAssignment(13);
system.debug(m2);
string m3 = Collections.listaAssignment(-2);
system.debug(m3);
string m4 = Collections.listaAssignment(10);
system.debug('Name of month is ==> ' + m4);
string m5 = Collections.listaAssignment(12);
system.debug('Name of month is ==> ' + m5);

Collections.listMethods();

list<string> listDays = new list<string>{'Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday'};

set<string> sDays = Collections.setMethods(listDays);




