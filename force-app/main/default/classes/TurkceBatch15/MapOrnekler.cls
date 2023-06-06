public  class MapOrnekler {
    public static void sehirSicakliklari() {
        map<string, list<decimal>> citiesOfHot = new map<string, list<decimal>>();
        list<decimal> istanbulOfHot = new list<decimal>{ 11.5, 17.4, 21.3, 15.5, 8.7, 22.2, 19.9};
        citiesOfHot.put('istanbul', istanbulOfHot);

        list<decimal> amsterdamOfHot = new list<decimal>{ 11.5, 17.4, 21.3, 15.5, 8.7, 22.2, 19.9};
        citiesOfHot.put('amsterdam', amsterdamOfHot);

        list<decimal> londonOfHot = new list<decimal>{ 11.5, 7.4, 21.3, 15.5, 8.7, 22.2, 19.9};
        citiesOfHot.put('london', londonOfHot);

        list<decimal> newYorkOfHot = new list<decimal>{ 1.5, 17.4, 21.3, 5.5, 8.7, 22.2, 19.9};
        citiesOfHot.put('istanbul', newYorkOfHot);

        list<decimal> nairobiOfHot = new list<decimal>{ 1.5, 7.4, 21.3, 15.5, 8.7, 22.2, 19.9};
        citiesOfHot.put('istanbul', nairobiOfHot);

        system.debug('Map--> ' + citiesOfHot);
        

        map<string, decimal> mapOrtSicaklik = new map<string, decimal>();
        for(string city : citiesOfHot.keyset()){
            system.debug(city);
            system.debug(citiesOfHot.get(city));
            decimal sum = 0;
            for(decimal item :citiesOfHot.get(city)){
                sum +=item;
            }
            decimal average= sum/(citiesOfHot.get(city).size());
            mapOrtSicaklik.put(city, average.setScale(1));
        }

        system.debug('Sicaklik ortalamalari => ' + mapOrtSicaklik);

        set<string> less10 = new set<string>();
        set<string> more10 = new set<string>();

        for(string city : mapOrtSicaklik.keyset()){
            if(mapOrtSicaklik.get(city)>10){
                more10.add(city);
            }else{
                less10.add(city);
            }
        }
    System.debug('10 derecenin ustu: ' + more10);
    System.debug('10 derecenin alti: ' + less10);
    }
}

