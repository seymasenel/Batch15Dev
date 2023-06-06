public class GeneralList {
    public static List<String> toCaps(list<string> lst) {
        list<string> newList =new list<string>();
        for(string eachStr : lst){
            system.debug(eachStr);
            string caps = eachStr.capitalize();
            newList.add(caps);
        }
        return newList;
    }
    public static void printAge(list<date> dts){ 
        date todayDate = date.today(); 
        for(date d : dts){
            system.debug(d);
            integer days = d.daysBetween(todayDate);
            integer yas = integer.valueOf(days/365); 
            system.debug('Yas ==> ' + yas);
        }
    }
   
}