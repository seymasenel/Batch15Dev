list<String> ls = new list<string>{'ali', 'veli', 'selim'};
list<string> ls2 = GeneralList.toCaps(ls);
System.debug(ls2);

list<date> birtDateList = new list<date>();
date dt1 =date.newInstance(1991, 9, 27); 
date dt2 =date.newInstance(2019, 8, 21);
date dt3 =date.newInstance(1988, 6, 11);
birtDateList.add(dt1);
birtDateList.add(dt2);
birtDateList.add(dt3);
GeneralList.printAge(birtDateList);
