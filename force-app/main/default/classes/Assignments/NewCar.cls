public class NewCar {
    integer currentSpeed=0;
    string carType;
    string carName;
    public void startCar(string carType, string carName){
        system.debug('Car name is==> ' +carName+ ', car type is ' + carType);
    }
    public void accelerate(integer x){
        currentSpeed +=x;
        system.debug(currentSpeed );
    }
    public void brake(integer y){
        currentSpeed -=y;
        system.debug(currentSpeed );
    }
    public void stopCar(){
        currentSpeed =0;
        system.debug(currentSpeed );
    }
    public void checkSpeed(){
        if(0<currentSpeed  && currentSpeed <=30){
            system.debug('City Mode.');
        }else if(31<currentSpeed  && currentSpeed <=60){
            system.debug('Economy Mode');
        }else if(currentSpeed >60){
            system.debug('Sports Mode');  
    }   
    }
}