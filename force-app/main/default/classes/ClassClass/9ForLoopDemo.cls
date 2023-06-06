public  class ForLoopDemo {
    //PRintint Hello 10 times
    public void printNumbers() {
        for(integer i=1; i<=10; i++){
            system.debug('Hello');
        }
    }
    public void printNumbers(integer n) {
        for(integer i=1; i<=n; i++){
            system.debug(i);
        }
    }
    public void printNumberss(integer n) {
        string printStr = '';
        for(integer i=0; i<n; i++){
            printStr = printStr + i + ' , ';
        }
        system.debug(printStr);
    }
    public void printNumber2(integer n){
        string s ='this';
        s+= 'is a string';
        for (Integer i =0; i<n; i++){
            s +=i;
            system.debug(s);
        }
    //public void print_N_numbers(integer n){
    //     string printStr = '';
    //     for (Integer i = 0; i < n; i++) {
    //         //system.debug(i);
    //         printStr += i + ',';
    //     }
    //     system.debug(printStr);
        
    // }

    }
    public void printNOddNumber(integer startInt, integer endInt){
        for(integer i =startInt; i< endInt; i++){
            integer modI = math.mod(i, 2);
            if(modI ==1) {
                system.debug(i);
        }
    }
  }
}