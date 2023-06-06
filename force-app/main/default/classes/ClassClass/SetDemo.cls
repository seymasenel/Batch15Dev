public class SetDemo {
    public static void citySet() {
        set<string> cities = new set<string>();
        cities.add('Tokyo');
        cities.add('Berlin');
        cities.add('Lisbon');
        cities.add('Tokyo');
        cities.add('TOKYO');
        cities.add('Nairobi');
        cities.add('Nairobi');
        cities.add('Nairobi');
        cities.add('Nairobi');
        cities.add('Nairobi');

        system.debug('Set of cities : ' + cities);
    }
    public static void randomIntegerSet(){
        set<integer> intSet = new set<integer>();
        intSet.add(15);
        intSet.add(14);
        intSet.add(15);
        intSet.add(15);
        intSet.add(10);
        intSet.add(15);
        intSet.add(15);
        system.debug(intSet);
    }

    public static void setFromList(){
        //addAll -----> adds all elements from one list or set to another one.

        list<integer> ls = new list<integer>{10,15,15,21,21,55,101,101};
        system.debug('List integer -> ' + ls);

        set<integer> ss= new set<integer>();
        ss.addAll(ls);
        system.debug('ss integer-> ' + ss);

        list<integer> newLs = new list<integer>();
        newLs.addAll(ss);
        system.debug('Deduplicatedd list is --> ' + newLs);
    }
    public static void upperCAseSet(){
        set<string> cities = new set<string>();
        cities.add('Tokyo');
        cities.add('Berlin');
        cities.add('Lisbon');
        cities.add('Tokyo');
        cities.add('TOKYO');
        cities.add('Nairobi');
        cities.add('NAIROBI');

        set<string> cityCap = new set<string>();
        for(string eachCity : cities){
            string tempStr = eachCity.toUpperCase();
            cityCap.add(tempStr);
        
        }
        system.debug('Cities in cap: s' +cityCap);
    }
    public static set<string> upperCAseSet(set<string> s1){
        set<string>s1InCaps = new set<string>();
        for(string eachStr : s1){
            string temp = eachStr.toUpperCase();
            s1InCaps.add(temp);
        }
        return s1InCaps;
    }
}