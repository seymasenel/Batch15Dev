Map<String,Integer> itemQuantityMap = new Map<String,Integer>();
itemQuantityMap.put('Apple', 5);
itemQuantityMap.put('Orange', 6);
itemQuantityMap.put('Football', 1);
itemQuantityMap.put('LED', 3);
itemQuantityMap.put('Notebooks', 12);
itemQuantityMap.put('Pen', 25);
system.debug(itemQuantityMap);

string itemOne ='Apple';
integer itemOneVal = itemQuantityMap.get(itemOne);

system.debug(itemOne + ' eyine ait value = ' + itemOneVal);

system.debug('Pen keyine ait value = ' + itemQuantityMap.get('Pen'));

system.debug('Pen keyine ait value = ' + itemQuantityMap.get('Apples'));


string itemTwo = 'Apples';
boolean check = itemQuantityMap.containsKey(itemTwo);
if(check){
   system.debug(itemTwo + ' keyine ait value = ' + itemQuantityMap.get(itemTwo));
}else{
    system.debug(itemTwo + ' keyi map listenizde bulunmamaktadir..');
}

set<string> itemKeys = itemQuantityMap.keySet();
system.debug('Mape ait keyler = ' + itemKeys);

List<intger> values =itemQuantityMap.values();
system.debug('Mape ait valuelar = ' + values);

integer sum =0;
for( integer eachValue : values){
    sum+= eachValue;
}
system.debug('Mapteki valuelar toplami = ' + sum);
