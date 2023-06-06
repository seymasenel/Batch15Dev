public class ModernMaths {
    public static void printFactor(integer num){
       list<integer> factors = new list<integer>();
        for(integer i=1; i<=num; i++){
            if(math.mod(num, i) ==0){
                factors.add(i);
            }
        }
        System.debug(factors);
    }
}