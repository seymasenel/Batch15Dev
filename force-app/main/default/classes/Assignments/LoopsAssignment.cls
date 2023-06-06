public class LoopsAssignment {
    public integer whileLoopMethod(integer n){
        integer i=1;
        while(i<=n){
            system.debug(i);
            i++;
        }
        return i;
    }
    public void printEven(){
        for(integer i=1; i<100; i++ ){
            integer remainder = math.mod(i, 2);
            if(remainder == 0){
                system.debug(i);
            }
        }
    }
    public integer printPower(integer n){
        integer m = n;
        for(integer i=1; i<n; i++){
            m *=n;
        }
        return m;
    }
}