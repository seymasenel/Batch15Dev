map<string>, list<string> m4 = new map<string, list<string>>();
list<string> ulke1 =new list<string>{'Istanbul', 'Ankara', 'Izmir', 'Bursa'};
m4.put('Turkiye', ulke1);
list<string> ulke2  = new list<string>{'NewYork', 'Texas', 'Califirnia', 'Dallas'};
m4.put('USA', ulke2);
list<string> ulke3  = new list<string>{'Amsterdam', 'Roterdam', 'Eindhoven'};
m4.put('Hollanda', ulke3);

system.debug(m4);

//put(key, value)--------->value yu key ile iliskilendirir
//containsKey(key--------->mapte arana key varsa true 
//keySet()---------------->only keys
//get(key)---------------->map'teki key'in spesifik bir valuesu varsa onu dondurur
//values()---------------->map'teki tum value'lari iceren bir list dondurur
//size()------------------>map'teki elemanlarin sayisini dondurur.
//equals(map2)------------>bir map ile diger map'i karsilastirir, esit degilse false
//isEmpty()--------------->mapt'te hic eleman yoksa true dondurur

map<string,integer> itemQuantityMap = new map<string, integer>();

itemQuantityMap.put('Apple', 5);
itemQuantityMap.put('Orange', 6);
itemQuantityMap.put('Football', 1);
itemQuantityMap.put('LED', 3);
itemQuantityMap.put('Notebooks', 12);
itemQuantityMap.put('Pen', 25);

system.debug(itemQuantityMap);

string itemOne = 'Apple';
integer itemOneVal = itemQuantityMap.get(itemOne);

system.debug(itemOne + ' key\'ine ait value = ' + itemOneVal);

system.debug('Pen key\'ine ait value = ' + itemQuantityMap.get('Pen'));

system.debug('Pen key\'ine ait value = ' + itemQuantityMap.get('Apple'));

string itemTwo = 'Apples';

boolean check = itemQuantityMap.containsKey(itemTwo);
if(check){
    system.debug(itemTwo + 'keyine ait value =' + itemQuantityMap.get(itemTwo));
}else{
    system.debug(itemTwo + ' keyi map listenzide bulunmamaktadir..');
}

set<string> itemvalues = itemQuantityMap.values();
system.debug('MApe ait valuelar =' + itemvalues);

integer sum = 0;
for(integer eachValue : itemvalues){
    sum += eachValue;
}

system.debug('MApteki value toplami = ' + sum);
