public class LoopDemo {
    public void printIntWhile() {
        integer i = 1;
        while(i<=25){
            i++;
        }
        system.debug('After while i ==> ' + i);
    }
    //printing multipli of 5 for numbers
    public void print5multiple(integer n){
        integer i =0;
        while (i<=n){   
            //remainder of 5/1, 5/2, 5/3
            integer remainder = math.mod(i,5);
            if(remainder ==0){
                system.debug(i);
            }
            i++;
        }
    }
}