List<string> listC = new list<string>();
listC.add('Marc');
listC.add('Bill');
listC.add('Kunal');
listC.add('Marc');
system.debug('list of candidates ==> ' + listC);


//equals
List<string> listC3 = new list<string>();
listC3.add('Marc');
listC3.add('Marc');
listC3.add('Bill');
listC3.add('Kunal');
boolean equalCheck2 = listC.equals(listC3);
system.debug('qual check 2 is ' + equalCheck2);

List<string> listC2 = new list<string>();
listc2.addall(listC);//we are adding all elements from listC to listC2.
boolean equalCheck = listC.equals(listC2);//check if lists are equal
system.debug('equal check is ' + equalCheck);


//contains is case sensitive
boolean check2 = listC.contains('Marc');
system.debug('check 2 is ' + check2);
boolean check1 = listC.contains('marc');
system.debug('check 1 is ' + check1);


