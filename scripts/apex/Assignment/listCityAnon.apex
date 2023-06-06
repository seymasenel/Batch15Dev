list<string> listCity = new list<string>{'Madrid', 'Amsterdam', 'Istanbul', 'New York', 'Paris', 'Toronto'};

integer sizee = listCity.size();
system.debug('Listenin eleman sayisi---> ' + sizee);

string fisrt = listCity.get(0);
string last= listCity.get(sizee-1);
system.debug('Listenin son elemani---> ' + last + ', listenin ilk elemani ise ---> ' + fisrt);

boolean check = listCity.contains('Istanbul');
boolean check2 = listCity.contains('Roma');
system.debug('Listede Istanbul var mi?---> ' + check + ', listede Roma var mi?---> ' + check2 ); 

list<string> newList = new list<string>();

for(string eachCity : listCity ){
    string addCity='';

    addCity= eachCity + ' City ';
    newList.add(addCity);
}
 system.debug('New list with city  --->' +newList);

 set<string> setCity = new set<string>();

setCity.addAll(listCity);
system.debug('After we add all element of listCity to setCity--->' +setCity);
setCity.remove('Paris');
setCity.add('Istanbul');
setCity.add('Madrid');

system.debug('After we added istanbul and Madrid to set, Set didnt change because no allow duplicate elements in sets->' + setCity);

system.debug('Element number of set---> ' + setCity.size());

setCity.clear();
system.debug('After we clear our setcity----> ' + setCity+ '<-----');






