ListDemo2.iterateList();

List<integer> intList = new list<integer>();
boolean checkEmp1 = intList.isEmpty();
system.debug('check empty 1 --> ' + checkEmp1);
intList.add(90);//0
intList.add(15);//1
intList.add(77);//2
intList.add(21);//3
intList.add(15);//4
intList.add(15);//5
boolean checkEmp2 = !intList.isEmpty();
system.debug('check empty 2 --> ' + checkEmp2);
------------------------------------------------------------
list<integer> tempList = new list<integer>{5,21,15,99,77,101};

integer sum1 =ListDemo2.add(tempList);
system.debug('Sum1 is ' + sum1);
----------------------------------------------------------------
list<string> ls = new list<string>{'list', 'set', 'map', 'array'};
ls.add('methods');
ls.add('constructor');
ListDemo2.iterateListString(ls);

----------------------------------------------------------------

list<string> concatstr = new list<string>{'melon', 'watermelon','strwaberry'};
system.debug(ListDemo2.add1(concatstr));

ListDemo2.iterateListString99();