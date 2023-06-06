map<integer, string> cityPlate = new map<integer, string>{34 => 'Istanbul'  , 16 => 'Bursa' ,  35 =>  'Izmir', 42 => 'Konya'};
cityPlate.put(27, 'Gaziantep');
system.debug('Map\'in ilk hali---> ' + cityPlate);

boolean check= cityPlate.containsKey(34);
boolean check2= cityPlate.containsKey(61);
system.debug('Map te Istanbul var mi?--->' + check + ', Map te Trabzon var mi?----> ' + check2);

integer sizee = cityPlate.size();
system.debug('Map\'in eleman sayisi----> ' + sizee );
system.debug('Guncel map---> ' + cityPlate);

cityPlate.remove(16);

list<string> cities = cityPlate.values();
system.debug('Map\'teki sehirlerin listesi----> ' + cities);

set<integer> plate = cityPlate.keySet();
system.debug('Map\'teki plakalarin set\'i ---> ' + plate);

for(integer eachPlate : plate){
    string city= cityPlate.get(eachPlate);
    system.debug(city +' isimli ilimizin plakasi --->' + eachPlate);
}