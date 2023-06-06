
public  class Dog {
    string name;
    string color;
    integer age;
    public Dog(){
        age =1;
        checkAge();
    }
    public Dog(string isim, string renk, integer yas){
        name=isim;
        color=renk;
        age=yas;
        checkAge();
    }
    public void checkAge(){
        if(0<age && age<=1){
            system.debug('Puppy Dog');
        }else if(1<age && age<=3){
            system.debug('Young Dog');
        }else if(3<age && age<=5){
            system.debug('Adult Dog');
        }else if(age>5){
            system.debug('Old Dog');
        }
           
    }
}