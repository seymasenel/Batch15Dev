//MapDemo.mapStringInteger();


//map of string, string
map<string, string> mapCC = new map<string, string>();
mapCC.put('USA', 'Dollar');
mapCC.put('France', 'Euro');
mapCC.put('Portugal', 'Euro');
mapCC.put('India', 'Rupees');//we added this first
mapCC.put('India', 'Rupee');//then we added same key, another value, it will update the value it KEY exists
mapCC.put('Turkiye', 'Lira');
mapCC.put('El Salvador', 'Bitcoin');
mapCC.put('usa','usd');
mapCC.put('El Salvador', 'BTC');//updates value
system.debug(mapCC);

//get value from map using KEY. method is .get(key)
string currUSA = mapCC.get('USA');
string currIndia = mapCC.get('India');
system.debug(currIndia);
string country = 'Turkiye';
string curr = mapcc.get(country);
system.debug(country + ' curency is ' + curr);

//get all the countries from map
set<string> allCountry = mapCC.keySet();
system.debug('All countries ' + allCountry);

//get all the currencies from map

list<string> allCurrencies = mapCC.values();
system.debug('All curriencies ' + );



set<string> allCountries = mapCC =.keySet();
//El salvador, france, india, portugal, urkiye, usa, USA


for(string eachCountry : allCountries){
    string eachCurrency = mapcc.get(eachCurrency);
    system.debug('Country is ' + eachCountry + ', Currency is ' + eachCurrency);
    system.debug('-----------------');   
}

integer v1 = map1.get('one');
integer v2 = map1.get('two');

set <string> s1 = map1.keySet();

for(string eachKey : s1){
    system.debug('Each key is ' + eachKey);

    integer eachValue = map1.get(eachKey);

    system.debug('Each value is ' + eachValue);
    }