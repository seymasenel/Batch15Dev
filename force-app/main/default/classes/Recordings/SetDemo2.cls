public class SetDemo2 {
    public static void tekcift(set<integer> numbers) {
       set<integer> tekSayilar = new set<integer>();
       set<integer> ciftSayilar = new set<integer>();
        for(integer i: numbers){
            if(math.mod(i, 2)==0){
                system.debug(i + ' sayisi cifttir.');
                ciftSayilar.add(i);
            }else{
                system.debug(i + ' sayisi tektir.');
                tekSayilar.add(i);
            }
        }
        system.debug('Tek sayilar --> ' + tekSayilar);
        system.debug('Cift sayilar --> ' + ciftSayilar);
    }
}