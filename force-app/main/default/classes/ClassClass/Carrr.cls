public class Carrr {
    //variables created directly inside class 
    //body are called Class Variables
    private string carNumber;
    public string name;
    public integer mfgYear;
    public string color;
    decimal price;
   
    //class variables are accessible in all methods of the class.
    public void details(){
        system.debug('car number is ' + carNumber);
        system.debug('car name is ' + name);
        system.debug('manufacturing year ' + mfgYear);
        system.debug('color of carrr is ' + color);
        system.debug('price is ' + price);
    }

    //constructor is same as class name
    //constructor does not return anything
    //contructor which has NO parameters are called parameterLESS consturctor.
    public carrr(){
        //consturctor code is called automatially when new instance is created

        //constructors are used a lot to assign class variables values by default.
        //constructors are also used to do some operation as soon as object is created.
        
        mfgYear = 2023;
        system.debug('new car is created, consturctor called automatically');
    }
    
    public carrr(string nm){
        //nm is parameter
        //name is class variable
        name = nm;
        mfgYear = 2023;
    }
    public carrr(string nm, string carnum, string clr, integer yr){
        
        carNumber = carnum;
        color = clr;
        mfgYear = yr;
        name = nm;
        //automatically do some operation
        details();
    }
}