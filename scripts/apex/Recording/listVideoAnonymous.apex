list<string> shoppingList = new list<string>();
shoppingList.add('Camera');
shoppingList.add('Headphone');
shoppingList.add('Music System');
shoppingList.add('Clothes');
shoppingList.add('Bitcoin');

system.debug(shoppingList);
string item2= shoppingList.get(2);
string item4= shoppingList.get(4);
system.debug('Item 2 is ' + item2);
system.debug('Item 4 is ' + item4);

list<date> birtdateList = new list<date>();
date dt1 = date.newInstance(1991, 9, 27);
birtdateList.add(dt1);
date dt2 = date.newInstance(1996, 8, 27);
birtdateList.add(dt2);
birtdateList.add(date.newInstance(2021, 8, 21));
system.debug(birtdateList);

birtdateList.sort();
System.debug(birtdateList);

list<integer> lst = new list<integer>{1,2,3,55};

